def measure(n = 1)
  t1 = Time.now.to_f #start the stopwatch
  n.times do yield   #do a thing
  end
  t2 = Time.now.to_f  #stop the stopwatch
  (t2-t1) / n        
end