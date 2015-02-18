SSH = 'ssh -A -i ~/.ssh/mb30.pem -l ubuntu'
REPO = 'git@github.com:cokeko/puppetmaster-test-01.git'

desc "Run puppet on ENV['CLIENT']"
task :apply do
  client = ENV['CLIENT']
  sh "git push"
  sh "#{SSH} #{client} pull-updates"
end

desc "Bootstrap puppet on ENV['CLIENT'] with hostname ENV['HOSTNAME']"
task :bootstrap do
  client = ENV['CLIENT']
  hostname = ENV['HOSTNAME'] || client
  commands = <<BOOTSTRAP
sudo hostname #{hostname] && \
sudo su - c 'echo #{hostname} >/etc/hostname' && \
wget http://apt.puppetlabs.com/puppetlabs-release-trusty.deb && \
sudo dpkg -i puppetlabs-release-trusty.deb && \
sudo apt-get update && sudo apt-get -y install git puppet && \
git clone #{REPO} puppet && \
sudo puppet apply --modulepath=/home/ubuntu/puppet/modules /home/ubuntu/puppet/manifests/site.pp
BOOTSTRAP
  sh "#{SSH} #{client} '#{commands}'"
end
