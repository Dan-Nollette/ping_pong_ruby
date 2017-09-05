class Fixnum
  def ping_pong()
    return_array = []
    counter = 0
    while(self > counter )
      counter = counter + 1
      if counter % 3 == 0 && counter % 5 == 0
        return_array.push("ping-pong")
      elsif counter % 3 == 0
        return_array.push("ping")
      elsif counter % 5 == 0
        return_array.push("pong")
      else
        return_array.push(counter)
      end
    end
    return_array
  end
end
