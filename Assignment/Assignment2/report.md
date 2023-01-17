The Pearson correlation coefficient (PCC) is a measure of the linear correlation between two variables. It ranges from -1 (perfect negative correlation) to 1 (perfect positive correlation) and a value of 0 indicates no correlation. In Python, the PCC can be calculated using the pearsonr() function from the scipy.stats module.

Calculating the Pearson correlation coefficient (PCC) in Python without using libraries is relatively straightforward. The PCC is defined as the covariance of two variables divided by the product of their standard deviations.

To calculate the PCC without libraries, one can implement the following steps:

First I wrote a mean function to compute the means of list1 and list2
Secondly I created a function named mean_diff to create an array of numbers that the mean has been subtracted from.(x - mean(x))
After which I created a sum function to add all the numbers in an array.
Then it was much easier to join the above functions to form the Pearson correlation coefficient equation.

**Reading of csv file**

I used the traditional open() function to open task1.csv file.
After which I loop through and store values in a list for better manipulation.
Then I created a function to pick a particular column and save it as a dictionary.
After which I used the above function to create another function by saving all the columns as dictionary when you pass in the csv file as the function parameter.
Now it becomes easy to pick two columns from the data frame convert them to lists or arrays and use the Pearson correlation equation I initially created to calculate the Pearson correlation coefficient of the two lists.
**Creating Table**
This is the most difficult part and it requires an advance level of manipulating symbols using for loops and if statements, I did my best but the problem lies in the padding section.
