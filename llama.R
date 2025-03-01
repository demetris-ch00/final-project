# Load required libraries
library(tidyverse)
library(ollamar)
library(ellmer)
library(mall)

# Load dataframe
fb_reviews <- read_csv("fb_reviews.csv")

# Load LLM
ollamar::test_connection() # test connection
list_models() # get a list of locally installed models
ollamar::pull('llama3.1:latest') # pull a model

# Define Meta's llama
llm_use(
  backend = "ollama",
  model = "llama3.1:latest",
  .silent = TRUE,
  seed = 123,
  temperature = 0
)

# Perform sentiment analysis
fb_sentiment_llama <- fb_reviews |>
  llm_sentiment(
    col = Comments,
    pred_name = "llama_sentiment"
  )

# Save sentiment results
fb_sentiment_llama |>
  write_csv("fb_sentiment_llama.csv")

# Define relevant categories for app reviews
frame_values <- c(
  "User Interface Issues", 
  "Technical Bugs",
  "Privacy Concerns",
  "Advertisement Complaints",
  "Feature Requests"
)

# Perform classification analysis
fb_classification_llama <- fb_reviews |>
  llm_classify(
    col = Comments,
    labels = frame_values,
    pred_name = "llama_classification"
  )

# Save classification results
fb_classification_llama |>
  write_csv("fb_classification_llama.csv")