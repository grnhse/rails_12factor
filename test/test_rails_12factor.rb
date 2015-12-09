require 'helper'

class TestRails12factor < Minitest::Test
  def test_gem_dependencies_are_loaded
    assert !defined?(RailsServeStaticAssets)
    require 'rails_12factor'
    assert defined?(RailsServeStaticAssets)
  end
end
