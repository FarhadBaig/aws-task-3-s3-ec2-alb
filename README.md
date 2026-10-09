# AWS Task 3: S3, EC2 and Application Load Balancer

## Project Overview

This project demonstrates private S3 object storage with activity logging and a web application running on two EC2 instances behind an Application Load Balancer.

## AWS Services

* Amazon S3: Private object storage
* AWS CloudTrail: Records S3 object-level activity
* Amazon CloudWatch Logs: Displays S3 activity logs
* Amazon EC2: Hosts two web servers
* Application Load Balancer: Distributes HTTP traffic between the servers

## Part 1: S3 and CloudWatch

1. Create an S3 bucket with Block Public Access enabled.
2. Upload a sample file.
3. Configure CloudTrail S3 data events.
4. Send the events to CloudWatch Logs.
5. Verify the upload activity in the log group.

## Part 2: EC2 and Application Load Balancer

1. Launch two EC2 instances.
2. Install and configure Nginx on both instances.
3. Configure a different web page on each server.
4. Register both instances in an ALB target group.
5. Configure an HTTP listener on port 80.
6. Verify that both targets are healthy.
7. Test the application using the ALB DNS name.

## Repository Structure

* `s3-cloudwatch/`: S3 and CloudWatch evidence
* `ec2-alb/`: EC2, target group and ALB evidence
* `user-data-server1.sh`: Server 1 setup script
* `user-data-server2.sh`: Server 2 setup script

## Verification

Capture screenshots showing the private S3 bucket, CloudWatch activity logs, both EC2 instances, both server web pages, healthy ALB targets and successful ALB access.

## Security

Keep the S3 bucket private. Never commit AWS credentials, GitHub tokens, passwords or private SSH keys.

