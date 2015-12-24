################################
# malpaw.vagrant.elasticsearch #
# Vagrant provisioning script  #
################################

# install components
cd
sudo apt-get update
sudo apt-get install openjdk-8-jre-headless -y
wget -qO - http://packages.elasticsearch.org/GPG-KEY-elasticsearch | sudo apt-key add -
sudo bash -c "echo >> /etc/apt/sources.list"
sudo bash -c "echo deb http://packages.elasticsearch.org/elasticsearch/2.x/debian stable main >> /etc/apt/sources.list"
sudo apt-get update 
sudo apt-get install elasticsearch -y

# install plugins
sudo /usr/share/elasticsearch/bin/plugin install analysis-icu
sudo /usr/share/elasticsearch/bin/plugin install elasticsearch/elasticsearch-mapper-attachments/3.1.1
sudo /usr/share/elasticsearch/bin/plugin install royrusso/elasticsearch-HQ
#sudo /usr/share/elasticsearch/bin/plugin install lukas-vlcek/bigdesk

# copy config
sudo cp /vagrant/etc/elasticsearch/elasticsearch.yml /etc/elasticsearch/
sudo cp /vagrant/etc/default/elasticsearch /etc/default/
sudo chmod -x /etc/elasticsearch/elasticsearch.yml
sudo chmod -x /etc/default/elasticsearch

# set service autostart
sudo update-rc.d elasticsearch defaults
sudo service elasticsearch start
