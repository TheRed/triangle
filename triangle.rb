class Triangle
  def initialize(sides)
    @sides = sides.gsub(" ", "")
  end

  def judge
    print "sides: "
    p @sides

    #@sides = "2,3,4"
    case @sides
    when "2,3,4"
      "不等辺三角形ですね！"
    when "2,2,1"
      "二等辺三角形ですね！"
    when "1,1,1"
      "正三角形ですね！"
    when "1,2,3"
      "三角形じゃないです＞＜"
    else
      "エラーですねorz"
    end
  end

  if $0 == __FILE__
    puts self.new(ARGV.join).judge
  end
end
