class Bowling
  def self.score(result)
    pins =  result.chars.to_a


    point = 0
    pins.each_with_index do |pin, index|
      if pin == '-'
        #nothing to do
      elsif pin == '/'
        point = 10
      else
        point += pin.to_i
      end
    end

    point
  end
end
