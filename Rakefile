require 'rake'
require 'rake/testtask'
require 'rake/rdoctask'
require 'rubygems'

desc 'Default: run unit tests.'
task :default => :test

desc 'Test the fleximage plugin.'
Rake::TestTask.new(:test) do |t|
  t.libs << 'lib'
  t.pattern = 'test/*_test.rb'
  t.verbose = true
end


desc 'Generate documentation for the rails-settings plugin.'
Rake::RDocTask.new(:rdoc) do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title    = 'Rails Settings'
  rdoc.options << '--line-numbers' << '--inline-source'
  rdoc.rdoc_files.include('README.rdoc')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "rails-settings"
    gem.summary = <<EOF
Settings is a plugin that makes managing a table of global key, value pairs
easy. Think of it like a global Hash stored in your database, that uses simple
ActiveRecord like methods for manipulation. Keep track of any global setting
that you don't want to hard code into your rails app. You can store any kind
of object. Strings, numbers, arrays, or any serializable object.
EOF
    gem.description = <<EOF
Settings is a plugin that makes managing a table of global key, value pairs
easy.
EOF
    gem.email = "ruby@beautifulpixel.com"
    gem.homepage = "http://github.com/Squeegy/rails-settings"
    gem.authors = `git log --pretty=format:"%an"`.split("\n").uniq.sort
    gem.add_development_dependency "rails", ">=2.0.1"
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available."
  puts "Install it with: gem install jeweler"
end
