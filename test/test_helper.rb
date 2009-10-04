require 'stringio'
require 'test/unit'
require 'set'

if !defined? assert_contains_path
  def assert_contains_path( set, relative_path )
    absolute_path = File.expand_path( relative_path )
    assert(set.include?(absolute_path), "Does not contain: " + relative_path)
  end
end

if !defined? assert_does_not_contain_path
  def assert_does_not_contain_path( set, relative_path )
    absolute_path = File.expand_path( relative_path )
    assert(!set.include?(absolute_path), "Incorrectly contains: " + relative_path)
  end
end