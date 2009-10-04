require 'set'

module LoadDirectories
  VERSION = "1.0.0"
  def self.load( root )
    root = root.to_s
    subdirectories = Set.new([File.expand_path(root)])
    Dir[root + "/**/**"].each do |f|
      if File.directory? f
        fullpath = File.expand_path f
        subdirectories << fullpath
      end
    end
    existing = Set.new($LOAD_PATH)
    to_add = subdirectories-existing
    to_add.each do |d| 
      $LOAD_PATH << d 
    end
    to_add
  end
end