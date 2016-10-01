require_relative 'tree'
require 'test/unit'

class TestTree < Test::Unit::TestCase
  def test_h_2_true
    tree = {
      v: 3,
      l: {v: 2, l: nil , r: nil},
      r: {v: 5, l: nil , r: nil}
    }

    assert_true b_tree(tree)

  end

  def test_h_2_l_false
    tree = {
      v: 3,
      l: {v: 4, l: nil , r: nil},
      r: {v: 5, l: nil , r: nil}
    }
    
    assert_false b_tree(tree)
  end

#     3
#    / \
#    2   5
#   / \
#  1   4

  def test_h_3_r_false
    tree = {
      v: 3,
      l: {v: 2, l: { v:1, l: nil, r: nil } , r: {v:4, l: nil, r: nil}},
      r: {v: 5, l: nil , r: nil}
    }
    assert_false b_tree(tree)
  end

  def test_h_3_r_l_false
    tree = {
      v: 3,
      l: {v: 2, l: { v:1, l: nil, r: nil } , r: nil },
      r: {v: 5, l: {v:1, l:nil, r:nil} , r: {v:8, l: nil,r: nil}}
    }
    assert_false b_tree(tree)
  end

  def test_h_3_r_r_false
    tree = {
      v: 3,
      l: {v: 2, l: { v:1, l: nil, r: nil } , r: nil },
      r: {v: 5, l: {v:4, l:nil, r:nil} , r: {v:4, l: nil,r: nil}}
    }
    assert_false b_tree(tree)
  end

  def test_h_4_true
    tree = {
      v: 3,
      l: {v: 2, l: { v:1, l: nil, r: nil } , r: nil },
      r: {v: 5, l: {v:4, l:nil, r:nil} , r: {v:8, l: {v: 6, l:nil, r:nil},r: nil}}
    }
    assert_true b_tree(tree)
  end
end