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

![alt text](https://learningintution.github.io/image/IncomeBySubscriber.png)

## Sumarizing Investment Amount by subscriber

Both the summary and box plot reveals a marked difference between the subscriber and non subscriber groups with respect to the investment amount.

|WSJ Subscriber   |Min. |1st Qu.  |Median    |Mean |3rd Qu.    |Max.| 
|-------|-------:|-------:|---------:|---------:|---------:|---------:|
|No  |   2.30|   19.30|   24.00|   24.95|   31.90|   51.00| 
|Yes  |36.40|   47.45|   55.50|   53.00|   59.30|   66.60| 

![alt text](https://learningintution.github.io/image/InvestmentAmountBySubscriber.png)

### Comparing the density plot

Density plots of income shows there is a significant overlap (28.15%) between the subscriber and non subscriber group. 

![alt text](https://learningintution.github.io/image/IncomeBySubscriberDensity.png)

Density plots of investment amount does not have a overlap (11.4%) as big as income. 

![alt text](https://learningintution.github.io/image/InestmentAmtBySubscriberDensity.png)

## Discriminant Analsysis:

Goal of the discriminant analysis is to maximize the mean difference between the two groups with respect to both Income and Investment Amount.

![alt text](https://learningintution.github.io/image/ZScoreDensity.png)

Above diagram shows a zscore density plot which has lesser overlap (10.75%) compared to invesemnt amount and income. It also has the great distance between the mean of the two groups.


|Independent Variable|Scaled Mean Distance|Overlaping Area %|
|---|---:|---:|
| Income | 0.9639 | 28.15% |
| Investment Amount | 1.7198 | 11.40% |
| Z Score | 2.9904 | 10.75% |

<span style="font-size: xx-small">Scaled mean distance denotes both income and investment amount scaled to make it comparable to zscore.</span>


This seems to be a better indicator to divide the two groups than Income and Investment Amount individually. Our goal is to get such a parameter from Income and Investment Amount.

The following discussion shows how to get such a zscore from income and investment amount.

```
z1 = a1 * (mean income of owners) + a2 * (mean lotsize of owners)
z2 = a1 * (mean income of non-owners) + a2 * (mean lotsize of non owners)

z1 - z2 = a1 (x1g1 - x1g2) + a2 (x2g2 - x2g2)
```

Goal is to Maximise (z1 - z2)

Constraint: Pooled Variance of group 1 and group 2

Pooled variance = ((variance of g1) * (dfG1 - 1) + (variance of g2) * (dfG2 - 1))/(dfg1 + dfg2 - 2)

Solving for a1 and a2 with these goal and constraint will leads us to an equation that maximises.

[Linear Discriminant Analysis - Wikipidea link filed with Maths](https://en.wikipedia.org/wiki/Linear_discriminant_analysis)
