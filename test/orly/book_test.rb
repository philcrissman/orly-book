require 'test_helper'

class Orly::BookTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Orly::Book::VERSION
  end

  def test_it_does_something_useful
    assert false
  end
end
