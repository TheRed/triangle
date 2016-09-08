require 'spec_helper'
require File.expand_path(File.dirname(__FILE__) + '/../triangle')

describe 'Triangle' do
  specify { expect(Triangle.new("2, 3, 4").judge).to eq "不等辺三角形ですね！" }
  specify { expect(Triangle.new("2, 2, 1").judge).to eq "二等辺三角形ですね！" }
  specify { expect(Triangle.new("1, 1, 1").judge).to eq "正三角形ですね！" }
  specify { expect(Triangle.new("1, 2, 3").judge).to eq "三角形じゃないです＞＜" }
end
