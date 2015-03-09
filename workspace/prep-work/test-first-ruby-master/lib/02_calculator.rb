def add(a,b)
  return a + b
end

def subtract(a,b)
  return a - b
end

def sum(array)
  return array.inject(0, :+) 
end

def multiply(*numbers)
  return numbers.inject(1) {|sum, number| sum * number}
end

def power(a,b)
  return a ** b
end

def factorial(a)
  return 1 if a == 0
  return (1..a).inject(:*)
end

