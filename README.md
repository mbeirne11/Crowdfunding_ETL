# Crowdfunding_ETL

For this project I am scraping the web to find where I can buy my favorite beers. I gathered data from six websites, four breweries and two stores. From there I was able to create four tables: a master list of beer from my favorite local breweries, information about those breweries, a list of the beers that are currently being sold at a store near me, and information about those stores. The goal is to be able to find a beer that I want based on a variety of options. 

To start, you will need scrape the data from all the websites then use the 'Merge Data' notebook to combine all the data. 
NOTE: When you run the 'Plaza Soup' notebook, you will need to click through the prompts on the webpage after you visit the url and before you start scraping the data. Some other websites have similar prompts but they weren't an issue.

Next you will upload the files into the postreSQL database using the SQLquerey. You will need to import the data as follows.
1  Import the BreweriesInfo.csv file to the breweries table
2  Import the Beers.csv file to the beers table
3  Import the StoreInfo.csv file to the stores table
4  Import the BeersForSale.csv file to the beers_for_sale table

I ran into an issue with the beers_for_sale table that I am still working on. The names of the beer listed on the stores' websites did not match the names of the beer listed on the brewery's website. So I wasn't able to make a foriegn key to match the beer name to the beerID.
