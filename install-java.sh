#!/bin/bash

# Install the Java SE Development Kit 11
apt install default-jre
apt install openjdk-11-jre

# Check installation
javac -version
java -version

# Install princeton command-line tools
cd /usr/local
curl -O "https://lift.cs.princeton.edu/java/linux/lift-cli.zip"
unzip lift-cli.zip
rm lift-cli.zip

# Check installation
java-introcs StdAudio

# Download IntelliJ from here
echo "  Please download IntelliJ from the following link"
echo "    https://www.jetbrains.com/idea/download/index.html"
echo "  Remember to download free version: Common edition, and there is an option for IdeaVim plugin during installation setup"

check="Not Yet"
while [ "$check" != "Done" ];
do
  read -p "  Type \"Done\" after completing installation of IntelliJ: " check
done

# Overwrite oringinal settings with new one
cd
rm -rf .IdeaIC2018.2
curl -O "https://lift.cs.princeton.edu/java/linux/IdeaIC2018.2.zip"
unzip IdeaIC2018.2.zip
rm IdeaIC2018.2.zip
