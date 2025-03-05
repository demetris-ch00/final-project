# Digital Habits & Social Media Sentiment Analysis Dashboard

[Live Dashboard](https://demetris-ch00.github.io/final-project/)  
*A data-driven dashboard analyzing digital behavior trends and Facebook review sentiment using R, Quarto, and machine learning.*

---

## 🌟 Features
👉 **Interactive Tabs**: Explore analysis, visualizations, and survey results.  
👉 **Sentiment Analysis**: AFINN lexicon and Llama model classifications.  
👉 **Synthetic Data Generation**: Customizable R scripts for data simulation.  
👉 **Responsive Design**: Mobile-friendly CSS styling.  

---

## 📎 Project Structure
```
.
├── quarto.yml                 # Quarto configuration
├── index.qmd                  # Main dashboard page
├── generate_synthetic_data.R  # Synthetic data generation script
├── llama.R                    # Llama model implementation
├── docs/                      # GitHub Pages deployment output
├── tab-/                      # Dashboard sections (analysis, contact, visualization)
├── data/
│   ├── digital_habits_survey.csv   # Survey dataset
│   ├── fb_reviews.csv              # Raw Facebook reviews
│   ├── fb_sentiment_afinn.csv      # AFINN sentiment results
│   └── fb_llama.csv                # Llama model outputs
└── styles.css                      # Custom CSS styling
```

---

## 🛠️ Technologies Used
- **R**: Data wrangling (`tidyverse`), sentiment analysis (`sentimentr`).
- **Quarto**: Website rendering and dynamic reporting.
- **AFINN Lexicon**: Rule-based sentiment scoring.
- **Llama Model**: Custom classification logic (R-implemented).
- **GitHub Pages**: Static site hosting.

---

## 🚀 Installation & Usage

### 1️⃣ Prerequisites
- Install [R](https://www.r-project.org/) and [RStudio](https://posit.co/download/rstudio-desktop/).
- Install [Quarto CLI](https://quarto.org/docs/get-started/).

### 2️⃣ Clone Repository
```bash
git clone https://github.com/demetris-ch00/final-project.git
cd final-project
```

### 3️⃣ Install Dependencies
```r
install.packages(c("tidyverse", "quarto", "sentimentr", "caret"))
```

### 4️⃣ Run the Dashboard
```bash
quarto render  # Generates docs/ folder
open docs/index.html  # View locally (or manually open the file)
```

---

## 🌐 Deployment
- Hosted on **GitHub Pages** via the `docs/` folder.
- To redeploy after changes:
```bash
quarto render
```
- Commit and push updated `docs/` files.

---

## 📊 Data Sources
📌 **Synthetic Survey Data**: Generated via `generate_synthetic_data.R`.  
📌 **Facebook Reviews**: Classified using **AFINN** and custom **Llama** models.  

---

## ❓ FAQ
❔ **How do I customize the tabs?**  
💡 Edit `.qmd` files in the `tab-analysis`, `tab-visualization`, etc., folders.  

❔ **How do I update sentiment models?**  
💡 Modify `llama.R` and rerun `quarto render`.

---

## 📝 License
This project is distributed under the **MIT License**.