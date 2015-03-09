def no_repeats(year_start, year_end)
  no_repeats = []
  (year_start..year_end).each do |year|
    no_repeats << year if no_repeats?(year)
  end
  
  no_repeats
end



def no_repeats?(year)
  cs = []
  year.to_s.each_char do |c|
    return false if cs.include?(c)
    cs << c
  end
  return true
end
