class Friend
  def greeting(who = nil)    #I'm horrible at remembering names, maybe I can just call everybody nil?
    if who != nil
      "Hello, #{who}!"
    else
      "Hello!"
    end
  end
end
