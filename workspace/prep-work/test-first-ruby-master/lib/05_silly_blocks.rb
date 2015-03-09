def reverser(string = '')
  yield.split(' ').map{|x| x.reverse}.join(' ') #love that I can do all this on one line
end 

def adder(int = 1)
  yield + int
end

def repeater(int=1)
  int.times do yield
  end
end


