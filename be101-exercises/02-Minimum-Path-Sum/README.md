# Specs

Find the minimum path sum by starting at the top of the triangle below and moving to adjacent numbers on the row below, the minimum total from top to bottom is 13.


&nbsp;&nbsp;&nbsp;**3**<br>
&nbsp;&nbsp;7&nbsp;**4**<br>
&nbsp;2&nbsp;**4**&nbsp;6<br>
8&nbsp;5&nbsp;**2**&nbsp;9


That is, 3 + 4 + 4 + 2 = 13.

Complete the method `minimum_path_sum` of `triangle.rb` in order to find the minimum path sum from the triangle defined in `lib/data`.

Make sure you only take into account valid paths, in the example the path "3,7,6,2" would be invalid because 7 is not adjacent to 6 in the row below.

Make sure you can also detect paths like this:

&nbsp;&nbsp;&nbsp;**3**<br>
&nbsp;&nbsp;4&nbsp;**7**<br>
&nbsp;2&nbsp;4&nbsp;**1**<br>
9&nbsp;9&nbsp;9&nbsp;**1**

That is, 3 + 7 + 1 + 1 = 12.
