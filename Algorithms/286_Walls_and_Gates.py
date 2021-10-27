

class Solution:
    def wallsAndGates(self, rooms: List[List[int]]) -> None:
        """
        Do not return anything, modify rooms in-place instead.
        """
        
        #find the gates. 
        #i&j specify the location the the third variable specifies the number of step.
        #as it takes zero step to the gate itself. it is assinged as zero.
        deq=collections.deque((i,j,0) for i in range(len(rooms)) for j in range(len(rooms[0])) if rooms[i][j]==0)
        
        #limit the boundry whn traversing 
        num_row=len(rooms)-1
        num_col=len(rooms[0])-1

        #traversing from the gates. 
        #counting steps from 1 as those closed around the gates should be considered as one with the nearest gate
        #add the condition of "rooms[row_i][col_j]==2147483647" to make sure those empty cell wouldn't be 
        #double counted when the value is not 2147483647 
        while deq:
            row,col,step=deq.popleft()
            for (row_i,col_j) in ([row+1,col],[row,col+1],[row-1,col],[row,col-1]):
                if 0<=row_i<=num_row and 0<=col_j<=num_col and rooms[row_i][col_j]==2147483647:
                    rooms[row_i][col_j]=step+1
                    deq.append([row_i,col_j,step+1])
                
