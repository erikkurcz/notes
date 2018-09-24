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

sudo apt install unzip
# cd spark-2.2.0...
unzip *.zip
rm *.zip

# export SPARK_HOME=~/spark-2.2.0...

# at this point ready to run the shell
# use either of the following. spark-shell is scala.
# $SPARK_HOME/bin/spark-shell
# $SPARK_hOME/bin/pyspark

# sublime
# http://tipsonubuntu.com/2017/05/30/install-sublime-text-3-ubuntu-16-04-official-way/

wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -

echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-text

# sublime can be opened off command line with 'subl'


