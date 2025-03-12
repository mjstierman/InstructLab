## Introduction
The purpose of this project is to create a universally accessible InstructLab Docker container. The container is designed to be run ad-hoc and immedidately connected to in the terminal. It will not run persistently. Once you exit the chat, the container will stop.</br>
For more information on InstructLab, visit their github at: https://github.com/instructlab/instructlab </br>
In brief, InstructLab is a trainable, CLI generative LLM AI -- basically, a chat bot that can train on your data.

## Prerequisites
To run this script, you will need the following installed on your computer:
<ul>
  <li>Docker</li>
  <li>Internet Connection</li>
</ul>

## How to use
<ol>
  <li>Navigate to folder with Containerfile</li>
  <li>Build the container from the Containerfile</li>
      docker build -t instructlab .
  <li>Or, add the container from this repository to your Docker source</li>
  <li>Run the resulting container</li>
      docker run -i -t localhost/instructlab:latest -e HUGGING_FACE_HUB_TOKEN
  <li>You should be at the prompt:</li>
    ╭─────────────────────────────────── system ───────────────────────────────────╮ </br>
    │ Welcome to InstructLab Chat w/ MERLINITE-7B-LAB-Q4_K_M (type /h for help)    │ </br>
    ╰──────────────────────────────────────────────────────────────────────────────╯ </br>
    >>>
  <li>Ask it some questions!
  <li>Type `exit` to leave and stop the container</li>
</ol>

## Notes
From the previous release, Hugging Face now requires an API key, which I do not have.
I am _somewhat_ confident that this should work. If you have a key, and it does not work, please submit an Issue.
Last update (2024-03-11) changed to Docker from Podman

## Contributing
Contributions are not accepted at this time. This repo is for demonstrative purposes only and is not monitored. It is updated as I have time.
