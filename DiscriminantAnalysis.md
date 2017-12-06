# Linear Discriminant Analysis

## Example: Lawn Mover Ownership

Lets say, we like to understand how Income of a person and the lot size of his garden affects the ownership of a Mover. In other words can we discriminate the two groups, owners and non-owners based on the income of the person and lot size.
There are two groups in this problem. Group1 owning movers (Owners) and Group2 not owning movers (Non-Owners).

**Given:**

* Y (Dependent Variable) = Ownership
* X (Independent Variables) = Income and Lot Size

[Linear Discriminant Analysis - Wikipidea link filed with Maths](https://en.wikipedia.org/wiki/Linear_discriminant_analysis)

Let us try to understand intutively with a example.

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


