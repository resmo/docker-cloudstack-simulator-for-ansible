# CloudStack Simulator as Docker Image

The purpose of this docker image is to run automated integration tests for the CloudStack modules in Ansible.

## Setup

The docker image runs the CloudStack simulator and contains two zones for the different network setups: `basic` and `advanced` networking.

* CloudStack Zone: Sandbox-simulator-advanced
* Zone: Sandbox-simulator-basic

Modules related to the specific network setup must set the correct `zone`

## Build

    docker build -t cloudstack/simulator .

## Run

    docker run --name cloudstack -d cloudstack/simulator

NOTE: It may take some time until the zones are deployed. 
