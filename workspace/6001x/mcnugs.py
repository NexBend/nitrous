def McNuggets(n):
    
    if n == 20:
        return True
    if n == 9:
        return True
    if n == 6:
        return True
    if n < 0:
        return False
    if (n % 6 == 0) or (n % 9 == 0) or (n % 20 == 0):
        return True
    if n - 20 >= 6:
        return McNuggets(n-20)
    elif n-9 >= 6:
        return McNuggets(n-9)
    elif n-6 >= 6:  
        return McNuggets(n-6)
    else:
        return False
      
      
print McNuggets(133)
        