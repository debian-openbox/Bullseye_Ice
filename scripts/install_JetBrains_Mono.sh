#!/bin/bash

## Download:
wget https://github.com/JetBrains/JetBrainsMono/releases/download/v2.242/JetBrains.Mono.2.242.zip -O ~/JetBrains.Mono.2.242.zip

## Unzip , send to ~/.local/share/fonts and remove zip file
unzip ~/JetBrains.Mono.2.242.zip -d ~/.local/share/fonts && fc-cache -fv && rm /home/peja/JetBrains.Mono.2.242.zip
