# Linear Discriminant Analysis Intution

Linear discriminant analysis is a method to find a linear combination of features that seperates two or more classes/groups of objects or events. LDA is a predisisor to logistic regression to perform classification. If the problem statement and dataset satisfies the requirement of linear discriminant analysis, it always out performs logistic regression interms of accuracy.

Find a very rough comparision of logistic regression and linear discriminant analysis [here](https://stats.stackexchange.com/questions/95247/logistic-regression-vs-lda-as-two-class-classifiers).

## Example: Wall Street Journal Subscription

Let us say, we like to understand how income of a person and the amount he has invested affects his subscription choice to Wall Street Journal. In other words can we discriminate the two groups, subscribers and non-subscribrs based on the income of the person and the amount he has invested.  

* Y (Dependent Variable) = Subscription
* X (Independent Variables) = Income and Investment Amount

Let us try to understand with a sample data set.

|Person	|Income	|InvestAmt	|WSJSubscriber|
|-------:|-------:|-------:|---------|
|1	|66.4	|26.9	|No|
|2	|68	|7.1	|No|
|3	|54.9	|21.5	|No|
|4	|50.6	|19.3	|No|
|...	|...	|...	|...|
|...	|...	|...	|...|
|58	|77.8	|48.5	|Yes|
|59	|86.6	|66.6	|Yes|
|60	|72.9	|39.4	|Yes|
|61	|90.9	|63.8	|Yes|
|...	|...	|...	|...|

Download the full csv file [here](https://learningintution.github.io/data/DiscriWinston.csv).

# Exploring the data

## Summarizing Income by subscriber

Both Summary and box plot reveals a visible difference between the subscriber and non subscriber groups with respect to  income.

|WSJ Subscriber   |Min. |1st Qu.  |Median    |Mean |3rd Qu.    |Max.| 
|-------|-------:|-------:|---------:|---------:|---------:|---------:|
|No  |32.70   |57.80   |64.50   |66.04   |76.40   |93.70| 
|Yes  |53.90   |74.45   |83.50   |80.49   |87.15  |100.70|  

Mean of scaled income values are -0.3098 for Non subscribers and 0.6541 for subscribers. We will be using this in subsequent discussion.

![alt text](https://learningintution.github.io/image/IncomeBySubscriber.png)

## Sumarizing Investment Amount by subscriber

Both the summary and box plot reveals a marked difference between the subscriber and non subscriber groups with respect to the investment amount.

|WSJ Subscriber   |Min. |1st Qu.  |Median    |Mean |3rd Qu.    |Max.| 
|-------|-------:|-------:|---------:|---------:|---------:|---------:|
|No  |   2.30|   19.30|   24.00|   24.95|   31.90|   51.00| 
|Yes  |36.40|   47.45|   55.50|   53.00|   59.30|   66.60| 

Mean of scaled investment amount values are -0.5528 for Non subscribers and 1.1670 for subscribers. We will be using this in subsequent discussion.

![alt text](https://learningintution.github.io/image/InvestmentAmountBySubscriber.png)

### Comparing the density plot

Density plots of income shows there is a significant overlap (28.15%) between the subscriber and non subscriber group. 

![alt text](https://learningintution.github.io/image/IncomeBySubscriberDensity.png)

Density plots of investment amount does not have a overlap (11.4%) as big as income. 

![alt text](https://learningintution.github.io/image/InestmentAmtBySubscriberDensity.png)

## Goal of Discriminant Analsysis

The following diagram shows a visual represntation of the two groups with respect to income and investment amount. The aim is to maximize the distance between the blue and the red dots.

![alt text](https://learningintution.github.io/image/ScatterPlotIncomeInvestment.png)

Let us assume we modify the mean of income and investment by some arbitraty values a1 and a2 and arrive at a new set of income and investment values that gives maximum distance between the mean and a less overlapping area.

Let us call the sum of values of modified income and investment as a result of the modified mean as zscore. Below is a mathematicsl representation of the zscores.

```
z1 = a1 * (mean income of subscribers) + a2 * (mean investment amount of subscribers)
z2 = a1 * (mean income of non-subscribers) + a2 * (mean investment amount of non subscribers)
```

Without worring about how we find out the optimal a1 and a2, the below diagram shows zscore density plots for z1 and z2 for an optimal a1 and a2 which has lesser overlap (10.75%) compared to invesemnt amount and income. 

![alt text](https://learningintution.github.io/image/ZScoreDensity.png)

The following table shows the distance between the means. We can see that the mean distance for the zscore is 2.9904 which is significantly higger than the other two mean distance of 0.96 and 1.72 respectively.

|Independent Variable|Scaled mean of Non Subscribers|Scaled mean of Subscribers|Scaled Mean Distance|Overlaping Area %|
|---|---:|---:|---:|---:|
| Income | -0.3098|0.6541|**0.9639** | 28.15% |
| Investment Amount |-0.5528|1.1670| **1.7198** | 11.40% |
| Z Score |  -1.4952|1.4952|**2.9904**| 10.75% |

Based on the discussions so far we can set our goal to get such variables a1 and a2 that gives zcore which maximizes the distance between the mean while keeping the overlaping area minimum.

## Solving for a1 and a2

Goal: Maximize the distance between the mean of subscriber and non subscriber, with a constraint of minimizing the overlap percentage.

Maximizing the distance between the mean of subscriber and non subscriber can be achieved by maximizing the distance between the zscores.

```
z1 - z2 =   a1 (mean of income of subscriber - mean of income of non subscriber) 
          + a2 (mean of investment amt of subscriber - mean of investment amt of non subscriber)
```

Constraining the overlap percentage to be minimal can be achieved by constraining the pooled variance to be less than or equal to one. 

Pooled variance is nothing but the variance weighted by the group contribution.
```
Pooled variance = ( (variance of subscriber) * (degrees of freedom of subscriber - 1) + 
                    (variance of non subscriber) * (degrees of freedom of non subscriber - 1)
                  )/
                  (
                     degrees of freedom of subscriber + 
                     degrees of freedom of non subscriber - 
                     2
                  )
```

Solving for a1 and a2 can be done using excel solver or using R. Keep watching the space for "Performing LDA using R"

## Conclusion
Though linear discriminant analysis has quite strigient prerequisites than logistic regression, it has a wide applicability in classification problems and out performs logistic regression. It has better explainatory power than logistic regression.

If you have reached thus far, you should have liked the posts! Please do mail me your feedback at ganesansays@gmail.com, until I add inline comment to the page.
