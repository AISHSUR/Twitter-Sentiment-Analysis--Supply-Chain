# Twitter-Sentiment-Analysis-Supply Chain (Python)


Objective:
The intend of this project is to perform text analytics over the twitter data to identify trends and emerging patterns from conversational data using Python.
This project sets up a foundational platform to perform text analysis that helps finding out emerging themes in supply chain, with a focus on human rights issues. Building over the theme helps identify potential suppliers tagged with human right issues, that helps the organization act on strategies to improve their Environmental Social Governance(ESG) ratings over time.


Prerequities
1) Anaconda Navigator
2) R Studio:v2021.19.1
3) Jupyter Notebook: ipython v7.29.0

Files Available
1) Script for data extraction: Twitter-Data-Extraction.R
2) Script for data models : Twitter-Theme-Analysis.ipynb
3) Data: data.zip



## Step 1: Setting up a Twitter Developer Account
In order to get access to the twitter API, which we will use to extract the tweets, one must sign up for an access to Twitter developer account.
Read more at https://developer.twitter.com/

Once the account is set up, you would need to define an app for the project you intend to run. Initializing the app gives you access to Consumer Keys and authentication keys (https://developer.twitter.com/en/portal/dashboard). Note the credentials aside, which would be needed at the next step to set up the twitter account with Python/R-Studio.

Since I had access to academic research API, I used academictwitterR package in R to link to twitter and set up environment for data extraction.
Refer to CJBarrie's very useful tutorial on how the access can be set up: https://github.com/cjbarrie/academictwitteR

Once the bearer token is set up with credentials, file 'Twitter-Data-Extraction.R' can be used for reference to pull the necessary tweets based on keywords and date limits specified. Sample data I've extracted for this project is also available as data.zip with this repository.

The script 'Twitter-Data-Extraction' stores the tweets as json files to the directory and folder specified in the code. I used the json files to perform my pre-processing and building models in python environment



## Step 2: Data Extraction & Model Building
Download the sample data from the repository and save it in a local directory. 'Twitter-Theme-Analysis.ipynb' is used for building rest of the project

For this project, I extracted the tweets for the entire month of January 2022, using keywords like supply,supplier,forced labor and child labor. 

Change the path under section 'Importing twitter data to Jupyter notebook' to the location where the sample data resides.(14546 Tweets)

The rest of the code walks through pre-processing data from common stopwords,puntuations, special characters and web url links. The first approach was to find words with highest frequency. To aid in better analysis of emerging themse, N-gram analysis was performed. This was followed by topic modelling using Latent Dirichlet Association (LDA) and Non-Negative Matrix Factorization(NMF). Sentiment Analysis was also performed  on the twitter data to observe the polarity and subjectivity of the tweets.

Final conclusion about the emerging theme was taken considering results from all the above methods.


Questions? email: ash.p.suresh@gmail.com
