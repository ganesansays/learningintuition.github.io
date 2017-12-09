# Linear Discriminant Analysis

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

## Goal of Discriminant Analsysis:

Let us assume we modify the mean of income and investment by some arbitraty values a1 and a2 and arrive at a new set of income and investment values that gives maximum distance between the mean and a less overlapping area.

Let us call the sum of values of modified income and investment as a result of the modified mean as zscore. Below is a mathematicsl representation of the zscores.

```
z1 = a1 * (mean income of subscribers) + a2 * (mean investment amount of subscribers)
z2 = a1 * (mean income of non-subscribers) + a2 * (mean investment amount of non subscribers)
```

Below diagram shows a zscore density plots for z1 and z2 which has lesser overlap (10.75%) compared to invesemnt amount and income. 

![alt text](https://learningintution.github.io/image/ZScoreDensity.png)

The following diagram shows a visual represntation of the two groups with respect to income and investment amount. The aim is to maximize the distance between the blue and the red dots.

![alt text](https://learningintution.github.io/image/ScatterPlotIncomeInvestment.png)

The following table shows the distance between the means:

|Independent Variable|Scaled mean of Subscribers|Scaled mean of Non Subscribers|Scaled Mean Distance|Overlaping Area %|
|---|---:|---:|---:|---:|
| Income | -0.3098|0.6541|0.9639 | 28.15% |
| Investment Amount |-0.5528|1.1670| 1.7198 | 11.40% |
| Z Score | 2.9904 |-1.4952|1.4952| 10.75% |

Mean distance between zscore of the groups:
```
z1 - z2 = a1 (x1g1 - x1g2) + a2 (x2g2 - x2g2)
```

This seems to be a better indicator to divide the two groups than Income and Investment Amount individually. Our goal is to get such variables a1 and a2 that gives a zcore which maximizes the distance between the mean.

## Steps to perform discriminant analysis 

The following discussion shows how to get such a zscore from income and investment amount.


Goal is to Maximise (z1 - z2)

Constraint: Pooled Variance of group 1 and group 2

Pooled variance = ((variance of g1) * (dfG1 - 1) + (variance of g2) * (dfG2 - 1))/(dfg1 + dfg2 - 2)

Solving for a1 and a2 with these goal and constraint will leads us to an equation that maximises.

[Linear Discriminant Analysis - Wikipidea link filed with Maths](https://en.wikipedia.org/wiki/Linear_discriminant_analysis)
