require_relative 'bracket'
require 'test/unit'

class TestBracket < Test::Unit::TestCase
  def test_false
    assert_false brackets(11)
  end

  def test_empty
    assert_equal brackets(0), ['']
  end

  def test_2
    assert_equal brackets(2), ['()']
  end

  def test_4
    assert_equal brackets(4), ['()()', '(())']
  end

  def test_6
    assert_equal brackets(6) - ['()()()', '(())()', '()(())', '((()))', '(()())'], []
  end

  def test_8
    res = ['()()()()', '(())()()', '()()(())', '(((())))',
      '(()())()', '(()())()', '()(()())', '()((()))',
      '((()))()', '(()()())', '((())())',
      '((()()))', '(()(()))', '()(())()'
    ]
    assert_equal brackets(8) - res, []
  end

end