The Pearson correlation coefficient (PCC) is a measure of the linear correlation between two variables. It ranges from -1 (perfect negative correlation) to 1 (perfect positive correlation) and a value of 0 indicates no correlation. In Python, the PCC can be calculated using the pearsonr() function from the scipy.stats module.

Calculating the Pearson correlation coefficient (PCC) in Python without using libraries is relatively straightforward. The PCC is defined as the covariance of two variables divided by the product of their standard deviations.

To calculate the PCC without libraries, one can implement the following steps:

Compute the means of the two variables
Compute the standard deviations of the two variables
Compute the covariance of the two variables
Divide the covariance by the product of the standard deviations
