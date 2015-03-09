class Dictionary
  def initialize
    @entries = {}
  end
  
  def entries
    @entries
  end
  
  def add(key_or_hash)
    hash = key_or_hash.is_a?(Hash) ? key_or_hash : {key_or_hash => nil}
    @entries.merge!(hash)
  end
  
  def keywords
    @entries.keys.sort
  end
  
  def include?(word)
    @entries.keys.include?(word)
  end
  
  def find(string)
    @entries.select{|key,value| key.include?(string)}
  end
  
  def printable
    printable = ''
    @entries.sort.each {|key, value| printable << "[#{key}] \"#{value}\"\n"}
    printable.chomp
  end
end
