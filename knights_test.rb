gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'knights'

class KnightTest < Minitest::Test
  def test_knight_has_a_name
    klo = Knight.new("Klo")
    assert_equal "Klo", klo.name
  end

  def test_knight_has_different_name
    shmo = Knight.new("Shmo")
    assert_equal "Shmo", shmo.name
  end

  def test_knight_has_rank
    klo = Knight.new("Klo")
    assert_equal "Master", klo.rank
  end

  def test_knight_has_different_rank
    klo = Knight.new("Klo", "Junior")
    assert_equal "Junior", klo.rank
  end

  def test_knight_has_sword
    klo = Knight.new("Klo")
    assert klo.sword?
  end

  def test_knight_has_a_battleaxe
    klo = Knight.new("Klo")
    assert_equal "battleaxe", klo.battleaxe
  end

  def test_knight_has_no_sword
    klo = Knight.new("Klo")
    klo.battleaxe
    refute klo.sword?
  end
end
