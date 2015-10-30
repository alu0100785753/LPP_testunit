task :default => :tu

desc "Pruebas unitarias de la clase Fractnum"
task :tu do
  sh "ruby -I. test/fractnum_testunit.rb"
end

desc "Ejecutar solo las pruebas simples"
task :simple do
  sh "ruby -I. Fractnum_testunit.rb -n /simple/"
end