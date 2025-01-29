# Set environment variables
export ELASTICSEARCH_HOSTS="your-elasticsearch-endpoint"
export ELASTICSEARCH_USERNAME="elastic"
export ELASTICSEARCH_PASSWORD="your-password"
export CLOUD_ID="your-cloud-id"

# Create necessary directories
mkdir -p config/{agent,logstash,apm,alerts}
mkdir -p dashboards
mkdir -p scripts

# Download and install Elastic Agent
curl -L -O https://artifacts.elastic.co/downloads/beats/elastic-agent/elastic-agent-8.x-linux-x86_64.tar.gz
tar xzvf elastic-agent-8.x-linux-x86_64.tar.gz
cd elastic-agent-8.x-linux-x86_64
sudo ./elastic-agent install

# Download and configure Logstash
sudo apt-get install logstash
sudo systemctl enable logstash
sudo systemctl start logstash

# Configure APM for Spring Pet Clinic
# Download Spring Pet Clinic
git clone https://github.com/spring-projects/spring-petclinic.git
cd spring-petclinic

# Add APM agent to Spring Pet Clinic
wget https://search.maven.org/remotecontent?filepath=co/elastic/apm/elastic-apm-agent/1.36.0/elastic-apm-agent-1.36.0.jar -O elastic-apm-agent.jar

echo "Setup complete! Please configure your credentials in the respective configuration files."
