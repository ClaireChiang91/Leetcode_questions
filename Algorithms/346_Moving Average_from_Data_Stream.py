"""
The below test case provided by Leetcode:

Input
["MovingAverage", "next", "next", "next", "next"]
[[3], [1], [10], [3], [5]]

=>[3] as the size
=>[1], [10], [3], [5] are the stream of integers 

Output
[null, 1.0, 5.5, 4.66667, 6.0]

Explanation
MovingAverage movingAverage = new MovingAverage(3);
movingAverage.next(1); // return 1.0 = 1 / 1
movingAverage.next(10); // return 5.5 = (1 + 10) / 2
movingAverage.next(3); // return 4.66667 = (1 + 10 + 3) / 3
movingAverage.next(5); // return 6.0 = (10 + 3 + 5) / 3

===================================================================================
The below solution is using the concept of circular queue with array. 
The benefit of using circular queue is: 
(1)it would automatically discards the oldest element when addinga new element
(2)only a single index is required

For the below method, the time complexity is O(1) and the space complexity is O(n).
The time complexity is consistant as no loop in the next function; the space complexity is decided by the size.

"""

class MovingAverage:

    def __init__(self, size: int):
        self.size = size
        self.queue = [0] * self.size
        self.head = self.window_sum = 0
        self.count = 0

    def next(self, val: int) -> float:
        self.count += 1
        
        #calculate the new sum by shifting the window
        tail = (self.head + 1) % self.size
        self.window_sum = self.window_sum - self.queue[tail]+val
        
        self.head = (self.head + 1) % self.size
        self.queue[self.head]=val
        
        return self.window_sum / min(self.size,self.count)


# Your MovingAverage object will be instantiated and called as such:
# obj = MovingAverage(size)
# param_1 = obj.next(val)
