def myLog(x, b):
  
  
  
  if b ** (1 + myLog(x,b - 1)) <= x:
      return 1
    
  else:
      return b
    
print (myLog(26,3))