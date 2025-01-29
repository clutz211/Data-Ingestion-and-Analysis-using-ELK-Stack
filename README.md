# Elastic Stack Data Ingestion and Analysis

This project demonstrates the implementation of data ingestion and analysis using the Elastic Stack, including metrics collection, log analysis, and application performance monitoring (APM).

## Project Overview

The project consists of three main components:

1. **System Metrics Collection**
   - Implementation of Elastic Agent for local system monitoring
   - CPU and Memory usage monitoring
   - Custom alert configurations

2. **Log Analysis**
   - Apache access log ingestion using Logstash
   - Custom Grok patterns for log parsing
   - Kibana visualizations and dashboards

3. **APM Integration**
   - Spring Pet Clinic application monitoring
   - Java APM agent configuration
   - Performance metrics visualization

## Prerequisites

- Elastic Cloud account
- Java Development Kit (JDK) 17
- Logstash
- Elastic Agent
- Spring Pet Clinic application

## Setup Instructions

### 1. Elastic Cloud Configuration

1. Create an Elastic Cloud trial account
2. Save the following credentials:
   - Elastic user credentials
   - Cloud ID
   - Elasticsearch endpoint

### 2. System Metrics Collection

1. Install Elastic Agent
   - Use the sytsem integration tool on Elastic website 

3. Configure system monitoring:
   - Location: `config/agent/elastic-agent.yml`
   - Disable log collection as specified

### 3. Logstash Setup

1. Configure Logstash input:
   - Source: Apache access logs
   - Configuration file: `config/logstash/apache.conf`

2. Configure Elasticsearch output:
   - Details in `config/logstash/output.conf`

### 4. APM Setup

1. Deploy Spring Pet Clinic:
   - Clone from repository
   - Configure application properties

2. Configure Java APM agent:
   - Download agent
   - Set Java agent parameters

## Alert Configuration

Two primary alerts are configured:

1. CPU Usage Alert:
   - Threshold: 50% system CPU usage
   - Duration: 1 minute average

2. Memory Usage Alert:
   - Threshold: 85% memory usage
   - Duration: 1 minute average

## Implementation Details

### Metrics Collection
- System metrics collected via Elastic Agent
- CPU, memory, and system metrics monitoring
- Custom alert configurations

### Log Analysis
- Apache log parsing using Grok patterns
- Custom visualizations in Kibana
- Dashboard creation for log analysis

### APM Integration
- Java agent configuration for Spring Pet Clinic
- Performance monitoring setup
- Trace analysis implementation

## Visualization and Dashboards

The project includes several Kibana dashboards:
1. System metrics overview
2. Apache log analysis
3. APM performance metrics


