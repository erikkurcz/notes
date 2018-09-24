#!/bin/sh

# how to set up computer for spark stuff
# need to just install all this instead of using usb iso

sudo apt update
sudo apt install git

# installing java
sudo add-apt-repository ppa:wepupd8team/java
sudo apt update
sudo apt install oracle-java8-set-default

# wait / respond to their prompts here

# download spark 2.2.0 prebuilt
# untar
# tar -xzf spark...

# export SPARK_HOME=~/spark-2.2.0...

# cd into it
$SPARK_HOME/bin/spark-shell

# there ya go
