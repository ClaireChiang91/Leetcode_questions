class Solution:
    def numIslands(self, grid: List[List[str]]) -> int:
        
        m=len(grid[0])
        n=len(grid)
        num_islands=0
        
        #build a dfs function
        def dfs(x,y):
            for (i,j) in ([x-1,y],[x,y-1],[x+1,y],[x,y+1]):
                if 0<=i<n and 0<=j<m and grid[i][j]=='1':
                    grid[i][j]='0'
                    dfs(i,j)
        
        #traverse 
        for i in range(n):
            for j in range(m):
                if grid[i][j]=='1':
                    grid[i][j]=='0'
                    num_islands+=1
                    dfs(i,j)
        
        return num_islands
                
            
