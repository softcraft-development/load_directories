require 'set'
require File.expand_path(File.dirname(__FILE__) + '/test_helper.rb')
require File.expand_path(File.dirname(__FILE__) + '/../lib/load_directories.rb')

class TestLoadDirectories < Test::Unit::TestCase

  def setup
    @original_load_path = $LOAD_PATH
  end
  
  def test_load
    test_root = File.dirname(__FILE__) + "/test_directory_root"
    loaded = LoadDirectories.load(test_root)
    assert_contains_path(loaded, test_root)
    assert_contains_path(loaded, test_root + "/one")
    assert_contains_path(loaded, test_root + "/one/one_one")
    assert_contains_path(loaded, test_root + "/two")
    assert_does_not_contain_path(loaded, test_root + "/one/one.rb")
    assert_does_not_contain_path(loaded, test_root + "/one/one_one/one_one.rb")
    assert_does_not_contain_path(loaded, test_root + "/two/two.rb")
    
    require "one"
    assert_equal(1, one)

    require "one_one"
    assert_equal(1.1, one_one)

    require "two"
    assert_equal(2, two)    
  end
  
  def teardown
    $LOAD_PATH.replace @original_load_path
  end
end
