# FortiOS

FortiOS Terraform Modules

## Azure SDN Connector Management

- azure_sdn_connector - contains Terraform code to manage a FortiGate Azure SDN Connector in and Active Passive deployment.

  - SDN Connector top-level object is sync'd between FortiGates
  - SDN Connector Nic and Route Table blocks are not sync'd between FortiGates

Two Terraform FortiOS providers need to be configured

- One for FortiGate A
- One for FortiGate B
