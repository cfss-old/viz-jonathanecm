Popular Twits in The Middle of a Political Crisis
========================================================
author: Camacho Jonathan
date: 05/31/2017
autosize: true

Context:
========================================================
- On April 12, 2017, the Venezuelan Supreme Court (SC) announced that it was taking over the Congress' functions; **a juditial coup d'état**. 
- The next day, the President asked the SC to consider retracting from its announcement. 
- That night, the SC did it; **talk about separation of powers** 
- Since then, a large sector of the population declared themselves in rebellion for what they consider as a breakage of the constitutional order. 
       - Protest has not stopped since then: sixty persons have died in the hands of the national police. 

**If you are interested in socila movements this is a nice chance.**

Question:
========================================================

- I wanted to explore, in the middle of the current political crisis, what are the characteristics of the most influential messages in the twiter social media?

- This is an important question related the use of socila media for political mobilization.

Methods:
========================================================
- I created a API to get tweets from 05/01 to 05/28.
       - No geolocation in tweets.
       - Search conducted using the terms "Venezuela," "gobierno," and "cambio."
       - Initial size: 45,000 tweets.
- Tidy data-set
       - Removed re-tweets.
       - Tokenized tweets by words and n-grams.
       - Added new variables: tweet type, and tweet popularity (Construct).
- Final size: 6,445 tweets.
- Translated the "nrc" and "bing" lexicons.

Frequency Analysis
========================================================
#### Total tweets by populatiry. (re-tweets count)









|Populatiry | Total|
|:----------|-----:|
|high       |   201|
|low        | 55283|
|medium     |  1940|

Terms' Frequency Counts.
========================================================
![plot of chunk unnamed-chunk-5](Presentation-figure/unnamed-chunk-5-1.png)

Terms' tf_idf Frequency.
========================================================
![plot of chunk unnamed-chunk-6](Presentation-figure/unnamed-chunk-6-1.png)
One-grams' tf_idf Frequency by Popularity.
========================================================
![plot of chunk unnamed-chunk-7](Presentation-figure/unnamed-chunk-7-1.png)

How to change individually the x-axis when using "facets."

N-grams' Frequency Counts. 
========================================================



|Word 1    |Word 2        |word 3    | Total|
|:---------|:-------------|:---------|-----:|
|venezuela |necesita      |gobierno  |   111|
|caracas   |tv            |venezuela |    84|
|radio     |caracas       |tv        |    84|
|tv        |venezuela     |necesita  |    84|
|estado    |más           |crítica   |    76|
|maduro    |prohíbe       |mandar    |    74|
|más       |injerencistas |santos    |    74|
|prohíbe   |mandar        |material  |    72|
|grupo     |transición    |pacífica  |    59|
|violencia |opositora     |forma     |    58|
|libertad  |edgar         |ramírez   |    55|
|mar       |d             |plata     |    49|
|rctv      |venezuela     |necesita  |    43|

N-grams Ranked by tf-idf and Group by Popularity
========================================================


![plot of chunk unnamed-chunk-11](Presentation-figure/unnamed-chunk-11-1.png)
- Figure why popular tweets has more than the selected top 5?
- Print in a better way.

Comparing Tweets by Time Posted.
========================================================



![plot of chunk unnamed-chunk-13](Presentation-figure/unnamed-chunk-13-1.png)


Sentiment Analysis.
========================================================




![plot of chunk unnamed-chunk-16](Presentation-figure/unnamed-chunk-16-1.png)

Topic Modeling.
========================================================
![plot of chunk unnamed-chunk-17](Presentation-figure/unnamed-chunk-17-1.png)


To Work On
========================================================
- Double check lexicons and tokenization process.
- Stylize plots and charts. 
- Organize files in repo. Right now is a mess!
- Streamline the code and pipeline.
- Finishing the AFINN lexicon.
- Get more tweets.
- Adding a Shiny app for exploration.
       - Bootstrapping the data.
       - Poisson measure.
       - Select tweets according to the popularity and tf-idf score.
- Editing website.




