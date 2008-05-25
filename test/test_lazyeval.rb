require File.dirname(__FILE__) + '/test_helper.rb'

class TestLazyeval < Test::Unit::TestCase

  def setup
  end
  
  def test_simple_lazy_call
    src = [:a, :b]
    x = src.lazy.shift
    assert_equal [:a, :b], src
    assert_equal x, :a # :a.==(x) will fail, as x is a proxy. x.==(a) works
    assert_equal [:b], src
  end

  def test_block_lazy_call
    src = [1, 2]
    x = src.lazy { |x| x.shift*3 }

    assert_equal [1, 2], src
    assert_equal x, 3
    assert_equal [2], src
  end
end
