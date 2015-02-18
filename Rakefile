SSH = 'ssh -A -i ~/.ssh/mb30.pem -l ubuntu'

desc "Run puppet on ENV['CLIENT']"
task :apply do
  client = ENV['CLIENT']
  sh "git push"
  sh "#{SSH} #{client} pull-updates"
end
