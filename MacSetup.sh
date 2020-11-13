#!/bin/bash

##------------- Install XCode Command Line Tools
## Accept license
## use xcode-select -p to check whether Xcode is installed
xcode-select --install
sudo xcodebuild -license

##------------- Installing Homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
# /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

##------------- Refresh repositories
brew update
brew tap caskroom/cask

##------------- Automation section
brew cask install alfred

##------------- File Hosting Services
brew cask install google-backup-and-sync

##------------- Browsers
brew cask install google-chrome

##------------- Drawings
brew cask install drawio

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
brew cask install github

mkdir ~/git
cd ~/git
git clone https://github.ibm.com/CASE/openshift-migration-guide.git
git clone https://github.com/ibm-garage-cloud/ibm-garage-iteration-zero.git
git clone https://github.com/IBM/ibm-garage-tekton-tasks.git
git clone https://github.ibm.com/dcavanau/cp4mcm-cert-admin.git
git clone https://github.ibm.com/demohub/cp4mcm-cert.git
cd ..

## ------------ Nodejs
brew install node@10
brew link node@10 --force

## ------------ Tekton
brew tap tektoncd/tools
brew install tektoncd/tools/tektoncd-cli

##------------- Cloud tools
brew cask install docker
brew install docker-completion

#brew cask install virtualbox
#brew cask install virtualbox-extension-pack

#brew cask install vagrant
## auto update virtual box guest additions
#vagrant plugin install vagrant-vbguest
#vagrant plugin install vagrant-scp

#brew install terraform
brew install tfenv
tfenv use 0.12.0

brew install openshift-cli
brew install kubectl
brew install helm

#brew cask install minishift
#brew cask install minikube

#brew install prometheus
#brew install grafana
#brew services start prometheus
#brew services start grafana

brew cask install the-unarchiver
brew install wget

##------------- IBM Cloud CLIs
curl -sL https://ibm.biz/idt-installer | bash

##------------- Visual Studio code
brew cask install visual-studio-code

##------------- Atom, Packages, Theme & Keybindings
# Appplication
#brew cask install atom
# Packages
#apm install ascii-unicode-escape
#apm install atom-beautify
#apm install color-picker
#apm install dictionary
#apm install file-icons
#apm install highlight-selected
#apm install language-terraform
#apm install language-markdown
#apm install ide-json
#apm install line-ending-converter
#apm install markdown-preview-plus
#apm install split-diff

##------------- Terminal
brew cask install iterm2
bash -c  "$(curl -sLo- https://git.io/vQgMr)"

##------------- Applications from Mac App store
brew install mas
mas signin david_cavanaugh2001@yahoo.com

## bear
mas install 1091189122
