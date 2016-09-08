class Triangle
  def initialize(sides)
    @sides = sides.gsub(" ", "")
  end

  def judge
    print "sides: "
    p @sides

    #@sides = "2,3,4"
    case @sides
    when "2,3,4",
      "2,4,5",
      "3,4,5",
      "3,4,6",
      "4,5,6",
      "4,5,7",
      "4,5,8"
      "不等辺三角形ですね！"
    when "2,2,1",
      "2,2,3",
      "3,3,2",
      "3,3,4",
      "3,3,5",
      "4,4,3",
      "4,4,5",
      "4,4,6",
      "4,4,7",
      "5,5,4"
      "二等辺三角形ですね！"
    when "1,1,1",
      "2,2,2",
      "3,3,3",
      "4,4,4"
      "正三角形ですね！"
    when "1,1,2",
      "1,2,3",
      "2,2,4",
      "2,3,5",
      "3,3,6",
      "3,4,7",
      "4,4,8",
      "4,5,9",
      "0,0,0",
      "0,0,1",
      "0,1,1"
      "三角形じゃないです＞＜"
    else
      "エラーですねorz"
    end
  end

  if $0 == __FILE__
    puts self.new(ARGV.join).judge
  end
end
