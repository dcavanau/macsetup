#!/bin/bash

##------------- Install XCode Command Line Tools
## Accept license
## use xcode-select -p to check whether Xcode is installed
xcode-select --install
## sudo xcodebuild -license

##------------- Installing Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
# /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

##------------- Refresh repositories
brew update
brew tap homebrew/cask

##------------- Automation section
brew install --cask alfred

##------------- File Hosting Services
brew install --cask google-backup-and-sync

##------------- Browsers
brew install --cask google-chrome

##------------- Drawings
brew install --cask drawio

##------------- Programming languages
brew install go
brew install python

##------------- Install and setup Git and Github
brew install git
git config --global color.diff auto
git config --global color.status auto
git config --global color.branch auto
git config --global user.name "David Cavanaugh"
git config --global user.email "dcavanau@us.ibm.com"
git config --global github.user "dcavanau"
# git config --global core.editor "atom --wait"
git config --global core.editor "code --wait"
brew install --cask github

mkdir ~/git
cd ~/git
git clone https://github.ibm.com/CASE/openshift-migration-guide.git
git clone https://github.com/ibm-garage-cloud/ibm-garage-iteration-zero.git
git clone https://github.com/IBM/ibm-garage-tekton-tasks.git
#git clone https://github.ibm.com/dcavanau/cp4mcm-cert-admin.git
#git clone https://github.ibm.com/demohub/cp4mcm-cert.git
cd ..

## ------------ Nodejs
brew install node@10
brew link node@10 --force

## ------------ Tekton
brew install tektoncd-cli

##------------- Cloud tools
brew install docker
brew install docker-completion

#brew install terraform
brew install tfenv
tfenv use 0.12.0

brew install openshift-cli
brew install kubectl
brew install helm
brew install jq


brew install --cask the-unarchiver
brew install wget

##------------- IBM Cloud CLIs
curl -sL https://ibm.biz/idt-installer | bash

##------------- Visual Studio code
brew install --cask visual-studio-code

##------------- Terminal
brew install --cask iterm2
bash -c  "$(curl -sLo- https://git.io/vQgMr)"

##------------- Applications from Mac App store
brew install mas
mas signin david_cavanaugh2001@yahoo.com

## bear
mas install 1091189122
