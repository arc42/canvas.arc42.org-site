---
title: ACC for RecipeRecommender
layout: splash
permalink: /canvas-details/acc-recipe-recommender
header:
    overlay_image: /examples/acc-RecipeRecommender-1920px.webp
    overlay_filter: rgba(0, 0, 0, 0.6)
---

![architecture communication canvas for RecipeRecommender](/examples/acc-RecipeRecommender-1920px.webp)

**The RecipeRecommender is a system that gives personalized recipe recommendations and was developed by Per Starke in the scope of his Bachelor Thesis in order to find out which recommendation algorithms work best in the context of recipe recommendations**

## Value Proposition
The system has the main purpose of being used for the study of the thesis to collect the data needed to find out how good different recommendation algorithms work.  
Additionally, it offers a platform for individuals, athletes and nutrition coaches to get personalized recipe recommendations that optionally match required macronutrients.


## Key Stakeholders
* Researches, that use the system to collect data and evaluate recommendation algorithms
* Users, that want to get personalized recipe recommendations
* Nutrition coaches, that use the system to get personalized recipe recommendations for their clients
* Raters, people who helped with getting initial ratings for all recipes to provide a basis for making recommendations


## Core functions
* Recipes from the underlying recipe database can be displayed.  
* Users can rate these recipes.  
* Two different recommendation algorithms (a collaborative filtering ItemKNN algorithm and a content-based algorithm) are used to make personalized recipe recommendations.  
* Ratings for recommended recipes are collected for evaluation / answering the research question. 

## Quality Requirements
* The system has a good user experience
* The system can be used on different devices
* The development effort is adequate for the scope of a Bachelor Thesis
* The recipe database is large and diverse enough to make good recipe recommendations for users with various different tastes

## Business context

| Neighbor                                       | Description                                                                                                               |
| ---------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- |
| [Spoonacular Food API](https://spoonacular.com/food-api) | A food API used to create the recipe database.                                                                           |
| Rater                                          | Gives initial ratings for recipes to create a sufficiently large rating database before making recommendations.            |
| User                                           | Uses the ‘Recipe Recommender’ to get personalized recipe recommendations.                                                    |
| Coach                                          | Can access user accounts that he/she manages and give ratings and get recommendations in the user’s name.                  |
| Researcher                                     | Views and evaluates the research data that can be gained with the ‘Recipe Recommender’.                                      |



## Core Decisions
<div markdown="1" class="decision-box good-decisions">
* Using a public GitHub repository for the development and the collaboration with the thesis supervisor, using GitHub Issues and a Kanban-board for a good overview
* Using an efficient tech-stack
* Using the [Spoonacular API](https://spoonacular.com/food-api) for creating the recipe database
</div>

<div markdown="1" class="decision-box bad-decisions">
* Manuel deployment of the system to the server it runs on
* Using csv- and json-files instead of having a relational database
* Not having any automated tests
</div>

## Components / Modules

| Building block              | Description                                                                                                                 |
|-----------------------------|-----------------------------------------------------------------------------------------------------------------------------|
| Recipe Collector            | Creates a recipe database using the Spoonacular API.                                                                        |
| Similarity Calculator       | Calculates the similarity between recipes.                                                                                 |
| Initial Rating Collector    | Allows raters to give initial ratings to recipes to have a sufficiently large rating database before making recommendations. Contains a graphical user interface (GUI). |
| User & Coach App             | The piece of the software that users and coaches use, makes personalized recipe recommendations. Contains a GUI.            |
| RatedRec Writer              | Writes the ratings that are needed to answer the research question into a file.                                            |
| Ratings                     | A CSV file containing all given ratings for recipes.                                                                      |
| Recipes                     | Several CSV and JSON files containing recipe information and recipe similarities.                                        |
| Rated Recommendations        | The ratings and corresponding information needed to answer the research question.                                         |

## Technologies

Python and additional libraries: 
* [Flask](https://flask.palletsprojects.com/en/3.0.x/)
* [Pandas](https://pandas.pydata.org/)
* [CaseRecommender](https://github.com/caserec/CaseRecommender)

CSV and JSON files as data storage