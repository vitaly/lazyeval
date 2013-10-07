require 'spec_helper'

describe Lazyeval::Lazy do
  it "should call a simple method lazily" do
    src = [:a, :b]
    x = src.lazy.shift
    src.must_equal [:a, :b]
    x.must_equal :a
    src.must_equal [:b]
  end

  it 'should call method with args and block lazily' do
    i = 0
    sum = [1, 2].lazy.inject(3) do |res, x|
      i += 1
      res + x
    end
    i.must_equal 0
    sum.must_equal 6
    i.must_equal 2
  end

  it "should call a block lazily" do
    src = [1, 2]
    x = src.lazy { |x| x.shift*3 }

    src.must_equal [1, 2]
    x.must_equal 3
    src.must_equal [2]
  end
end
