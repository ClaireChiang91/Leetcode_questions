class Solution:
    def openLock(self, deadends: List[str], target: str) -> int:  
        
        #using set(hashtable) could help access faster
        deadends=set(deadends)
        
        #special cases
        if "0000" in deadends: return -1
        if target=="0000": return 0
        
        #the initial point
        queue=deque([("0000",0)])   
        #the dictionary visited is to save the visited combination and to avoid of duplicates
        visited={}
        
        while queue:
            
            element,level=queue.popleft()

            nums=[]
            
            #collect all eight connected numbers. as it's a four-digit lock, the total is eight.
            for i in range(4):
                nums.append( element[:i] + str(( int( element[i] ) + 1 ) % 10) +element[(i+1):] )
                nums.append( element[:i] + str(( int( element[i] ) - 1 ) % 10) +element[(i+1):] )
            
            # either append new number to queue with one level deeper or just pass it if visited or matched to deadends
            for num in nums:
                if num in visited or num in deadends: continue
                
                visited[num]=True
                
                if num==target:
                    return level+1
                
                queue.append((num,level+1))
                
        return -1
