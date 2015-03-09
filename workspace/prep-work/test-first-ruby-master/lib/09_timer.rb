class Timer
  def initialize
    @seconds = 0
    @minutes = 0
    @hours = 0
  end
  
  def seconds=(seconds)
    @seconds = seconds
  end
  def seconds
    @seconds
  end
  
  def time_string
    while @seconds > 60
      if @seconds >= 3600
        @seconds -= 3600
        @hours += 1
      elsif @seconds >= 60
        @seconds -= 60
        @minutes += 1
      end
      end
    if @seconds < 10                  #need PADDED method to get this 100% correct
      "0#{@hours}:0#{@minutes}:0#{@seconds}"
    else
      "0#{@hours}:0#{@minutes}:#{@seconds}"
    end
  end
  
end