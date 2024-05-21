## Introduction
The purpose of this project is to create a universally accessible InstructLab Podman container. The container is designed to be run ad-hoc and immedidately connected to in the terminal. It will not run persistently. Once you exit the chat, the container will stop.</br>
For more information on InstructLab, visit their github at: https://github.com/instructlab/instructlab </br>
In brief, InstructLab is a trainable, CLI generative LLM AI -- basically, a chat bot that can train on your data.

## Prerequisites
To run this script, you will need the following installed on your computer:
<ul>
  <li>Podman</li>
  <li>Internet Connection</li>
</ul>

## How to use
<ol>
  <li>Navigate to folder with Containerfile</li>
  <li>Build the container from the Containerfile</li>
      podman build -t instructlab .
  <li>Run the resulting container</li>
      podman run -i -t localhost/instructlab:latest
  <li>You should be at the prompt:</li>
    ╭─────────────────────────────────── system ───────────────────────────────────╮ </br>
    │ Welcome to InstructLab Chat w/ MERLINITE-7B-LAB-Q4_K_M (type /h for help)    │ </br>
    ╰──────────────────────────────────────────────────────────────────────────────╯ </br>
    >>>
  <li>Ask it some questions!
  <li>Type `exit` to leave and stop the container</li>
</ol>

## Notes

## Contributing
Contributions are not accepted at this time. This repo is for demonstrative purposes only and is not monitored.
