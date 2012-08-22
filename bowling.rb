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

  class Frame
    attr_reader :pins
    def initialize(str)
      pins = str.split("").map do |c|
        if c == '-'
          0
        elsif c == 'X'
          10
        elsif c == '/'
          c
        else
          c.to_i
        end
      end
      if pins[1] == '/'
        pins[1] = 10 - pins.first
      end
      @pins = pins
    end
  end
end
