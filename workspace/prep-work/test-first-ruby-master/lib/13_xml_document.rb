class XmlDocument
  def initialize(arg = false)
    @indents = arg == true ? true : false  #implementing the indents must be easier! This workaround is so ugly
    @indent_count = '  '                   #some of these are too long for one line and should be split up
    @doc
  end
  
  def hello(key_or_hash = nil)
    return "<hello>\n#{@indent_count}#{yield.to_s}</hello>\n" if block_given? && @indents == true 
    return "<hello>#{yield.to_s}</hello>" if block_given?
    hash = key_or_hash.is_a?(Hash) ? "<hello #{key_or_hash.keys.first.to_s}='#{key_or_hash.values.first.to_s}'/>" : "<hello/>"
    @doc = hash
  end

  def goodbye(key_or_hash = nil)
    return "<goodbye>\n#{@indent_count}#{@indent_count}#{yield.to_s}#{@indent_count}</goodbye>\n" if block_given? && @indents == true 
    return "<goodbye>#{yield.to_s}</goodbye>" if block_given?
    return "<goodbye/>"
  end
  
  def come_back(key_or_hash = nil)
    return "<come_back>\n#{@indent_count}#{@indent_count}#{@indent_count}#{yield.to_s}#{@indent_count}#{@indent_count}</come_back>\n" if block_given? && @indents == true 
    return "<come_back>#{yield.to_s}</come_back>" if block_given?
    return "<come_back/>"
  end
  
  def ok_fine(key_or_hash = nil)
    hash = "<ok_fine #{key_or_hash.keys.first.to_s}='#{key_or_hash.values.first.to_s}'/>" if key_or_hash.is_a?(Hash) && @indents == false
    hash = "<ok_fine #{key_or_hash.keys.first.to_s}='#{key_or_hash.values.first.to_s}'/>\n" if key_or_hash.is_a?(Hash) && @indents == true 
    @doc = hash
  end

  def send(tag)
    "<#{tag}/>"
  end
  
end
