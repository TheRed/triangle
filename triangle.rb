class Triangle
  def initialize(sides)
    # 文字列引数の場合はARGVと同じフォーマットの配列に変換
    if sides.class == String
      sides = sides.split(" ")
    end

    # エラー処理
    if sides.class != Array
      exit 1
    end
    if sides.length != 3
      puts "エラー：引数は3つにしてください！"
      exit 2
    end

    # 全要素をIntegerに変換してインスタンス変数を宣言
    @sides = sides.map(&:to_i).sort
  end

  def judge
    if @sides[0] + @sides[1] > @sides[2]
      # 重複しない値の数で三角形の形を求める
      case @sides.uniq.length
      when 3
        "不等辺三角形ですね！"
      when 2
        "二等辺三角形ですね！"
      when 1
        "正三角形ですね！"
      end
    else
      "三角形じゃないです＞＜"
    end
  end

  if $0 == __FILE__
    puts self.new(ARGV).judge
  end
end
