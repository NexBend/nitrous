class RPNCalculator
  def initialize
    @the_stack = [] 
    @the_tokens = []
    @value = 0.0
  end
  
  def push(number)
    @the_stack << number
  end
  
  def plus
    raise "calculator is empty" if @the_stack == []
    @value = @the_stack.pop
    @the_stack. << @the_stack.pop + @value
  end
  
  def minus
    raise "calculator is empty" if @the_stack == []
    @value = @the_stack.pop
    @the_stack. << @the_stack.pop - @value
  end
  
  def divide
    raise "calculator is empty" if @the_stack == []
    @value = @the_stack.pop
    @the_stack. << @the_stack.pop / @value.to_f
  end
  
  def times
    raise "calculator is empty" if @the_stack == []
    @value = @the_stack.pop
    @the_stack. << @the_stack.pop * @value.to_f
  end
  
  def tokens(string)
    @the_tokens = string.split.map! { |i| i[/\d/] ? i.to_f : i.to_sym }
  end
  
  def value
    @the_stack[-1].to_f
  end
  
  def evaluate(string)
    @the_stack = []

    symbols = {
        :+ => Proc.new{plus}, 
        :- => Proc.new{minus}, 
        :/ => Proc.new{divide}, 
        :* => Proc.new{times} 
        }

    tokens(string).chunk {|n| n.is_a?(Float)}.each do |condition, chunk|
        if condition == true
            chunk.each{|b| push(b)}
        else
            chunk.each{|o| (symbols[o].call)}
        end
    end
    @the_stack[0]
  end
  
  
  
end
