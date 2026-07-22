# Honeypot Session Analyzer

A team cybersecurity capstone that automated a controlled SSH honeypot environment and transformed captured session logs into structured data for behavioral analysis.

This project was developed for the **HACS200 Capstone** in the **Advanced Cybersecurity Experience for Students (ACES)** program at the University of Maryland.

---

## Project Overview

The project combined a containerized decoy environment, connection-management scripts, firewall rules, session logging, and a Python analysis pipeline. The team used the resulting dataset to study how delay and other environmental choices affected automated and interactive sessions.

The public repository preserves the team implementation and a deliberately synthetic output sample. Raw captures, attempted credentials, institution-specific addresses, and deployment archives are excluded.

---

## Core Capabilities

- Provision and recycle isolated Linux honeypot containers
- Route authorized lab traffic through SSH decoy services
- Record timestamps, authentication attempts, commands, and keystroke counts
- Parse structured session events with Python
- Export analysis-ready CSV rows
- Compare interaction patterns across configured response delays

---

## System Design

### Collection Layer

Shell scripts coordinate container lifecycle, networking rules, session timeouts, and log capture in an authorized lab environment.

### Processing Layer

`src/logparse.py` extracts fields such as session duration, interaction type, command count, keystroke count, delay, and captured time into CSV records.

### Public Sample

[`dat/sample_sessions.csv`](dat/sample_sessions.csv) contains synthetic records using the RFC 5737 documentation address ranges. It demonstrates the output shape without publishing captured source addresses or credentials.

---

## Technologies

- Python
- Bash
- Linux and LXC containers
- SSH and network address translation
- `iptables`
- CSV data processing

---

## Repository Structure

```text
honeypot-session-analyzer/
├── dat/
│   └── sample_sessions.csv
├── src/
│   ├── firewall_rules.sh
│   ├── honey.sh
│   ├── logparse.py
│   ├── on_connect.sh
│   ├── on_connect_maker.sh
│   ├── recycle.sh
│   ├── recycling_manager.sh
│   └── setup_firewall.sh
├── .gitignore
└── README.md
```

---

## Security and Privacy

The public repository intentionally excludes:

- University or lab-specific public addresses
- Raw attacker/source addresses
- Captured or decoy credential attempts
- Raw session logs
- Honeypot filesystem archives
- Live endpoints and deployment secrets

Addresses remaining in the public code are loopback, private-network, or RFC 5737 documentation examples. The scripts are retained for technical review and are not a turnkey public deployment.

## Team and Attribution

This was a collaborative capstone project by **Group 1A — Weather App Warriors**:

- Jacob Demory
- Ryan Fleming
- Jack Greenwood
- Arush Gune
- Andrew Hill

This repository remains a fork of the team's shared repository to preserve its collaborative provenance.

---

## What the Project Demonstrates

- Automating Linux infrastructure with shell scripts
- Working with networking, SSH, containers, and firewall rules
- Converting unstructured security logs into analysis-ready data
- Reasoning about privacy when publishing security research
- Collaborating on a semester-long cybersecurity capstone

---

## Future Improvements

- Add unit tests around log parsing with synthetic fixtures
- Replace deployment-specific paths with a configurable local interface
- Add aggregate visualizations based only on anonymized data
- Document the experimental methodology and individual team contributions
