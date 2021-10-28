class Solution:
    def maxAreaOfIsland(self, grid: List[List[int]]) -> int:
        
        n=len(grid)
        m=len(grid[0])
        max_area=0
        
        def dfs(x,y):
            if x>=n or y>=m or grid[x][y]==0 or x<0 or y<0: 
                return 0  
            grid[x][y]=0
            return 1+dfs(x-1,y)+dfs(x+1,y)+dfs(x,y-1)+dfs(x,y+1)
                  
        for i in range(n):
            for j in range(m):
                if grid[i][j]==1:
                    curr_area=dfs(i,j)
                    max_area=max(max_area,curr_area)
        
        return max_area
