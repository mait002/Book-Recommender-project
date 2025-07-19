# Book-Recommender

This project is an interactive book recommendation system powered by Large Language Models (LLMs). It uses Python, OpenAI, LangChain, and Hugging Face to analyze book metadata, vectors, sentiment, and user preferences to suggest relevant books. The application is deployed using Gradio for an intuitive and responsive interface.

This project was initially created in **Python 3.11**. To run the project, the following dependencies are required:
- `kagglehub` (Download dataset following the [link](https://www.kaggle.com/datasets/dylanjcastillo/7k-books-with-metadata))
- `pandas`
- `matplotlib`
- `seaborn`
- `python-dotenv`
- `langchain-community`
- `langchain-opencv`
- `langchain-chroma`
- `transformers`
- `gradio`
- `notebook`
- `ipywidgets`

All dependencies are listed in `requirements.txt`.

## Project Structure 
.
├── app                      # Gradio dashboard and primary app logic
│   ├── books_with_emotions.csv
│   └── gradio-dashboard.py
├── assets                  # Static images
│   └── cover-not-found.jpeg
├── book-recommender-key.pem # (Optional) EC2 deployment key
├── data                    # Cleaned book data and tags
│   ├── books_cleaned.csv
│   ├── books_with_categories.csv
│   └── tagged_descriptions.txt
├── notebooks               # Exploratory notebooks
│   ├── data-exploration.ipynb
│   ├── sentiment-analysis.ipynb
│   └── vector-search.ipynb
├── requirements.txt        # Python dependencies
├── test.py                 # Testing / demo script
└── README.md               # You're here!

## Installation Guide
### 1. Clone the repository

<pre> ```bash git clone https://github.com/your-username/Book-Recommender-project.git
cd Book-Recommender-project``` </pre>

### 2. Create a virtual environment
<pre> ```bash python3 -m venv venv
source venv/bin/activate``` </pre>

### 3. Install dependencies
<pre> ```bash pip install -r requirements.txt```</pre>

### 4. Set up the .env file
Create a .env file in the root of the repo with the following content:
<pre>
  ``` env  OPENAI_API_KEY=your-openai-api-key
HUGGINGFACEHUB_API_TOKEN=your-huggingface-token```
</pre>


### 5. Run the App
<pre> ```bash cd app
python3 gradio-dashboard.py```</pre>

Hope you can find a book you like! 😊




