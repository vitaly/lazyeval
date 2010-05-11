require 'helper'

class TestLazyeval < Test::Unit::TestCase
  should "call a simple method lazily" do
    src = [:a, :b]
    x = src.lazy.shift
    assert_equal [:a, :b], src
    assert_equal x, :a # :a.==(x) will fail, as x is a proxy. x.==(a) works
    assert_equal [:b], src
  end

  should "call a block lazily" do
    src = [1, 2]
    x = src.lazy { |x| x.shift*3 }

    assert_equal [1, 2], src
    assert_equal x, 3
    assert_equal [2], src
  end
end
