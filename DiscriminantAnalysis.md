# Discriminant Analysis

## Example: Lawn Mover Ownership

We like to understand how Income of a person and the lot size of his garden affects the ownership of Mover. In other words can we discriminate the two groups, owners and non-owners based on the income of the person and lot size.
There are two groups in this problem. Group1 owning movers (Owners) and Group2 not owning movers (Non-Owners).

**Given:**

Y (Dependent Variable) = Ownership
X (Independent Variables) = Income and Lot Size

Fisher postulated that maximising the distance between the two groups, owners and non-owners by varying the mean of the independent variables which are affected by two arbitrary variable a1 and a2, while minimising the variance of the overall data affected by the two arbitrary variables leads to the maximum discrimination between the groups.

```
z1 = a1 * (mean income of owners) + a2 * (mean lotsize of owners)
z2 = a1 * (mean income of non-owners) + a2 * (mean lotsize of non owners)

z1 - z2 = a1 (x1g1 - x1g2) + a2 (x2g2 - x2g2)
```

Goal is to Maximise (z1 - z2)

Constraint: Pooled Variance of group 1 and group 2

Pooled variance = ((variance of g1) * (dfG1 - 1) + (variance of g2) * (dfG2 - 1))/(dfg1 + dfg2 - 2)

Solving for a1 and a2 with these goal and constraint will leads us to an equation that maximises.

Let us look at it with a example.
