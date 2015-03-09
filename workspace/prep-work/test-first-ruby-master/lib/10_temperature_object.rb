class Temperature
  def initialize(option = {})
    @option = option
    @temp = 0
  end
  
  def self.from_celsius(temp)
    self.new(:c => temp)
  end
  
  def self.from_fahrenheit(temp)
    self.new(:f => temp)
  end
  
  def in_celsius
    return @option[:c] if @option.has_key?(:c)
    return ctof(@option[:f]) if @option.has_key?(:f)
  end
  
  def in_fahrenheit
    return @option[:f] if @option.has_key?(:f)
    return ftoc(@option[:c]) if @option.has_key?(:c)
  end
   
  def ftoc(temp)
    (((temp * 9) / 5.000) + 32)
  end

  def ctof(temp)
    (((temp - 32) * 5) / 9.0000)
  end
end

class Celsius < Temperature
  def initialize(temp)
    super(c: temp)
  end
end

class Fahrenheit < Temperature
  def initialize(temp)
    super(f: temp)
  end
end
