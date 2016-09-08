require 'spec_helper'
require File.expand_path(File.dirname(__FILE__) + '/../triangle')

describe 'Triangle' do
  specify '不等辺三角形' do
    expect(Triangle.new("2, 3, 4").judge).to eq "不等辺三角形ですね！"
    expect(Triangle.new("3, 4, 5").judge).to eq "不等辺三角形ですね！"
    expect(Triangle.new("3, 4, 6").judge).to eq "不等辺三角形ですね！"
    expect(Triangle.new("4, 5, 6").judge).to eq "不等辺三角形ですね！"
    expect(Triangle.new("4, 5, 8").judge).to eq "不等辺三角形ですね！"
  end


  specify '二等辺三角形' do
    expect(Triangle.new("2, 2, 1").judge).to eq "二等辺三角形ですね！"
    expect(Triangle.new("2, 2, 3").judge).to eq "二等辺三角形ですね！"
    expect(Triangle.new("3, 3, 2").judge).to eq "二等辺三角形ですね！"
    expect(Triangle.new("3, 3, 4").judge).to eq "二等辺三角形ですね！"
    expect(Triangle.new("3, 3, 5").judge).to eq "二等辺三角形ですね！"
    expect(Triangle.new("4, 4, 3").judge).to eq "二等辺三角形ですね！"
    expect(Triangle.new("4, 4, 5").judge).to eq "二等辺三角形ですね！"
    expect(Triangle.new("4, 4, 7").judge).to eq "二等辺三角形ですね！"
    expect(Triangle.new("5, 5, 4").judge).to eq "二等辺三角形ですね！"
  end

  specify '正三角形' do
    expect(Triangle.new("1, 1, 1").judge).to eq "正三角形ですね！"
    expect(Triangle.new("2, 2, 2").judge).to eq "正三角形ですね！"
    expect(Triangle.new("3, 3, 3").judge).to eq "正三角形ですね！"
    expect(Triangle.new("4, 4, 4").judge).to eq "正三角形ですね！"
  end

  specify '三角形じゃない' do
    expect(Triangle.new("1, 1, 2").judge).to eq "三角形じゃないです＞＜"
    expect(Triangle.new("1, 2, 3").judge).to eq "三角形じゃないです＞＜"
    expect(Triangle.new("2, 2, 4").judge).to eq "三角形じゃないです＞＜"
    expect(Triangle.new("2, 3, 5").judge).to eq "三角形じゃないです＞＜"
    expect(Triangle.new("3, 3, 6").judge).to eq "三角形じゃないです＞＜"
    expect(Triangle.new("3, 4, 7").judge).to eq "三角形じゃないです＞＜"
    expect(Triangle.new("4, 4, 8").judge).to eq "三角形じゃないです＞＜"
    expect(Triangle.new("4, 5, 9").judge).to eq "三角形じゃないです＞＜"
    expect(Triangle.new("0, 0, 0").judge).to eq "三角形じゃないです＞＜"
    expect(Triangle.new("0, 0, 1").judge).to eq "三角形じゃないです＞＜"
    expect(Triangle.new("0, 1, 1").judge).to eq "三角形じゃないです＞＜"
    expect(Triangle.new("1, a, 三角形").judge).to eq "三角形じゃないです＞＜"
  end
end
