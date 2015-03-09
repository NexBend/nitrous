def laceStrings(s1, s2):
    
    if len(s1) >= len(s2):
      while True:
        if s2 == '':
          return s1 
        x = len(s2) 
        s1 = s1[:x] + s2[-1] + s1[x:]
        s2 = s2[:-1]
        
    if len(s2) > len(s1):
      while True:
        if s1 == '':
          return s2 
        x = len(s1) 
        s2 = s2[:x - 1] + s1[-1] + s2[x - 1:]
        s1 = s1[:-1]
    
print laceStrings('hl', '12dfdfd3')