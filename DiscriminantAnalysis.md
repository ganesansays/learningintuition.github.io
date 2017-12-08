# Linear Discriminant Analysis

## Example: Wall Street Journal Subscription

Let us say, we like to understand how income of a person and the amount he has invested affects his subscription choice to Wall Street Journal. In other words can we discriminate the two groups, subscribers and non-subscribrs based on the income of the person and the amount he has invested.  

* Y (Dependent Variable) = Subscription
* X (Independent Variables) = Income and Investment Amount

[Linear Discriminant Analysis - Wikipidea link filed with Maths](https://en.wikipedia.org/wiki/Linear_discriminant_analysis)

Let us try to understand intutively with an sample data set.

|Person	|Income	|InvestAmt	|WSJSubscriber|
|-------:|-------:|-------:|---------|
|1	|66.4	|26.9	|No|
|2	|68	|7.1	|No|
|3	|54.9	|21.5	|No|
|4	|50.6	|19.3	|No|
|5	|54.1	|16.7	|No|
|6	|78.2	|31.9	|No|
|7	|66.2	|23.8	|No|
|8	|43.9	|12.4	|No|
|9	|41.9	|5	|No|
|10	|61.1	|25.2	|No|
|11	|64.5	|11.8	|No|
|...	|...	|...	|...|
|...	|...	|...	|...|
|...	|...	|...	|...|
|58	|77.8	|48.5	|Yes|
|59	|86.6	|66.6	|Yes|
|60	|72.9	|39.4	|Yes|
|61	|90.9	|63.8	|Yes|
|62	|64.3	|50.1	|Yes|
|63	|53.9	|36.4	|Yes|
|64	|74.8	|56	|Yes|
|...	|...	|...	|...|
|...	|...	|...	|...|
|...	|...	|...	|...|


Exploratory analysis of the data:




To Do: 
- Density plot for group 1 and group 2
- Density plot for overall for the complete data set

To Do:
- Density plot for group 1 and group 2 soiled by some arbitraty a1 and a2
- Density plot for overall for the complete data set soiled by some arbitraty a1 and a2

```
z1 = a1 * (mean income of owners) + a2 * (mean lotsize of owners)
z2 = a1 * (mean income of non-owners) + a2 * (mean lotsize of non owners)

z1 - z2 = a1 (x1g1 - x1g2) + a2 (x2g2 - x2g2)
```

Goal is to Maximise (z1 - z2)

Constraint: Pooled Variance of group 1 and group 2

Pooled variance = ((variance of g1) * (dfG1 - 1) + (variance of g2) * (dfG2 - 1))/(dfg1 + dfg2 - 2)

Solving for a1 and a2 with these goal and constraint will leads us to an equation that maximises.

To Do:
- Density plot for group 1 and group 2 soiled by optimal arbitraty a1 and a2
- Density plot for overall for the complete data set soiled by optimal a1 and a2


