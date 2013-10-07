require 'spec_helper'

describe Lazyeval::Lazy do
  it "should call a simple method lazily" do
    src = [:a, :b]
    x = src.lazy.shift
    src.must_equal [:a, :b]
    x.must_equal :a
    src.must_equal [:b]
  end

  it "should call a block lazily" do
    src = [1, 2]
    x = src.lazy { |x| x.shift*3 }

    src.must_equal [1, 2]
    x.must_equal 3
    src.must_equal [2]
  end
end
