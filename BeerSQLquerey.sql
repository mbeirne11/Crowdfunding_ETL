-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "beers" (
    "Name" varchar   NOT NULL,
    "Style" varchar   NULL,
    "ABV" real   NOT NULL,
    "BreweryID" int   NOT NULL,
    "BeerID" int   NOT NULL,
    CONSTRAINT "pk_beers" PRIMARY KEY (
        "BeerID"
     )
);

CREATE TABLE "breweries" (
    "Name" varchar   NOT NULL,
    "Address" varchar   NOT NULL,
    "Contact" varchar   NOT NULL,
    "BreweryID" int   NOT NULL,
    CONSTRAINT "pk_breweries" PRIMARY KEY (
        "BreweryID"
     )
);

CREATE TABLE "store" (
    "Name" varchar   NOT NULL,
    "Address" varchar   NOT NULL,
    "Contact" varchar   NOT NULL,
    "StoreID" int   NOT NULL,
    CONSTRAINT "pk_store" PRIMARY KEY (
        "StoreID"
     )
);

CREATE TABLE "beer_in_store" (
    "Name" varchar   NOT NULL,
    "QTY" varchar   NOT NULL,
    "Price" varchar   NOT NULL,
    "StoreID" int   NOT NULL
);

ALTER TABLE "beers" ADD CONSTRAINT "fk_beers_BreweryID" FOREIGN KEY("BreweryID")
REFERENCES "breweries" ("BreweryID");

ALTER TABLE "beer_in_store" ADD CONSTRAINT "fk_beer_in_store_StoreID" FOREIGN KEY("StoreID")
REFERENCES "store" ("StoreID");

