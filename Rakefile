$:.unshift File.dirname(__FILE__) + 'lib'
$:.unshift './lib', './spec'

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new
task :default => :rspec

desc "Ejecutar las espectativas de la clase Fraccion"

task :test do
  
  sh "rspec -I. spec/fraccion_spec.rb --format documentation"
  
end

task :thtml do
  
  sh "rspec -I. spec/fraccion_spec.rb --format html"
  
end

task :bin do
  
  sh "ruby -X lib fraccion_main.rb"
  
end

task :rspec do

	sh "rspec -I. spec/fraccion_spec.rb"

end




