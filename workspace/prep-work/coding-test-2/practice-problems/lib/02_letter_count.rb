def letter_count(str)
  newhash = Hash.new(0)
  
  str.each_char do |e|
    newhash[e] += 1 unless e == " "
  end
  newhash
end
