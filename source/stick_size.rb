class StickSize
  include Comparable
  attr :stick
 
  def <=>(other)
    stick.size <=> other.stick.size
  end
  
  def initialize(stick)
    @stick - stick
  end
  
  def inspect
    @stick
  end
end

stick1 = StickSize.new("---")
stick2 = StickSize.new("-----")
stick3 = StickSize.new("--------")
stick4 = StickSize.new("------------")
stick5 = StickSize.new("-----------------")

p stick1 > stick2
p stick2 < stick5
p stick4.between?(stick1, stick2)
p stick4.between?(stick3, stick5)
