class Bowling
  def self.score(result)

    Frame.new(result).pins.reduce(&:+)
  end

  def self.parse(result)
    result.scan(/..|X/)
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
