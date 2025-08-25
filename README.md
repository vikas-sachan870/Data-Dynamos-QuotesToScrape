# 🧠 Data Dynamos — QuotesToScrape

![Status](https://img.shields.io/badge/status-active-success)
![Made with](https://img.shields.io/badge/Made%20with-Python-blue)
![Jupyter](https://img.shields.io/badge/Notebook-Jupyter-orange)
![Web Scraping](https://img.shields.io/badge/Web%20Scraping-BeautifulSoup-brightgreen)
![SQL](https://img.shields.io/badge/SQL-Insights-informational)
![License](https://img.shields.io/badge/License-MIT-green)

Scrape quotes from **quotes.toscrape.com**, analyze patterns across **authors** and **tags**, and present insights with clean visuals and SQL. This repo is a tidy, end‑to‑end mini‑project you can reuse for other scraping targets.

---

## ✨ Highlights

- 🔎 **Scraping**: Paginated crawl of quotes, authors, tags
- 🧹 **Clean dataset**: Saved to CSV for reproducibility
- 📊 **EDA & Visuals**: Explore top authors, tag trends, text lengths
- 🧮 **SQL Insights**: Quick, reusable queries
- 🖼️ **Presentation**: Slide deck summarizing findings

---

## 🗂️ Project Structure

```
├── Quotes Web Scrapping.ipynb              # Scrape quotes, authors, tags
├── quotes.csv                              # Exported dataset
├── Quotes SQL Insights.sql                 # Handy SQL queries
├── Quotes EDA and Data Visualization.ipynb # Visual analytics
└── Quotes Presentation.pptx                # Summary slides
```
> Update names/paths here if your repo differs.

---

## 🧰 Tech Stack

- **Python**: requests, BeautifulSoup4, pandas, numpy
- **Viz**: matplotlib, seaborn, plotly (optional)
- **SQL**: SQLite / any SQL client for the provided queries
- **Environment**: Jupyter Notebooks

---

## ⚙️ Setup

```bash
git clone https://github.com/vikas-sachan870/Data-Dynamos-QuotesToScrape.git
cd Data-Dynamos-QuotesToScrape

# (Optional) create a virtual env
python -m venv .venv
# Windows: .venv\Scripts\activate
source .venv/bin/activate

pip install -r requirements.txt  # if present
# or install the common libs:
pip install requests beautifulsoup4 pandas matplotlib seaborn plotly ipykernel
```

Launch notebooks:
```bash
jupyter notebook
```
Run in order:
1) `Quotes Web Scrapping.ipynb`  
2) `Quotes EDA and Data Visualization.ipynb`  
(Optional) Explore `Quotes SQL Insights.sql` in your SQL client.  
Review `Quotes Presentation.pptx` for a stakeholder‑friendly summary.

---

## 📦 Data Schema (quotes.csv)

| column       | type    | description                         |
|--------------|---------|-------------------------------------|
| `text`       | string  | Quote content                       |
| `author`     | string  | Quote author                         |
| `tags`       | string  | Comma‑separated tags                 |
| `length`     | int     | Character length (derived feature)   |

> Add/adjust fields based on your scraper output.

---

## 🔍 Example Analyses (Notebook)

- **Top Authors** by number of quotes  
- **Tag Popularity** and co‑occurrence  
- **Quote Length** distributions (by tag/author)  
- **Word Clouds** or frequent n‑grams (optional)  

---

## 🗃️ Example SQL Queries

```sql
-- 1) Most prolific authors
SELECT author, COUNT(*) AS total_quotes
FROM quotes
GROUP BY author
ORDER BY total_quotes DESC;

-- 2) Longest quotes (by length)
SELECT author, text, length
FROM quotes
ORDER BY length DESC
LIMIT 10;

-- 3) Tag frequency (if tags are normalized)
SELECT t.tag, COUNT(*) AS uses
FROM quote_tags qt
JOIN tags t ON t.id = qt.tag_id
GROUP BY t.tag
ORDER BY uses DESC;
```

> If tags are stored as a comma‑separated string in one column, consider normalizing into a `tags` table first.

---

## 📈 Visual Preview (placeholders)

Add images exported from your EDA notebook:

```
/assets/top_authors.png
/assets/tag_popularity.png
/assets/length_distribution.png
```

```md
![Top Authors](/assets/top_authors.png)
![Tag Popularity](/assets/tag_popularity.png)
![Length Distribution](/assets/length_distribution.png)
```

---

## 🧪 Reproducibility Tips

- Keep raw vs processed data separated
- Use consistent user‑agent & polite delays when scraping
- Parameterize page limits for quick reruns
- Document any manual fixes in the scraping notebook

---

## 🚀 Roadmap

- [ ] Add **Scrapy** spider for scalability
- [ ] Add **Sentiment Analysis** on quotes
- [ ] Build **Streamlit** mini‑dashboard
- [ ] Normalize tags into relational tables
- [ ] Unit tests for the scraper

---

## 🤝 Contributing

PRs/issues welcome! Please describe your proposal and keep notebooks clean & re‑runnable.

---

## 📜 License

This project is released under the **MIT License**. See `LICENSE` for details.

---

## 👤 Author

**Vikas Sachan**  
Open an issue for ideas, improvements, or feedback.

---

> ⭐ If this was useful, consider starring the repo!
