# DistressedTweeters
A pipeline to query Twitter, and load the response into a .csv \
It takes a query in the format specified by the Twitter API documentation, converts it into HTTP encoding, and uses a bash script to put it all together with the authorisation token (NOTE: the current token is my personal one, as this is a proof of concept)

## 1. How to use
First ensure you have the 'in2csv' library installed on your system. You can do this by opening a terminal and running: 
\
pip install in2csv
\
Download this project and unzip it. Traverse to the directory you've saved the project, from which you will be able write queries to the Twitter API

## 2. Making requests
The Twitter API uses queries in a very particular format. [It's worth familiarising yourself with how these are written](https://developer.twitter.com/en/docs/twitter-api/tweets/search/integrate/build-a-query). 
\
To receive data from Twitter, run: 
\
bash query.sh '[YOUR QUERY]'
\
For example,
\
bash query.sh '"distressed debt" -is:retweet'
\
will pull original tweets from the last few days that mention "distressed debt" exactly.

## 3. Output
This will create/overwrite a file named response.csv. 

