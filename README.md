[TOC]

# README 
A system to managing hours for peer tutoring for a university.

# [GIT (CVS)](http://git-scm.com/book/en/Getting-Started-About-Version-Control)
What is version control, and why should you care? Version control is a system that records changes to a file or set of files over time so that you can recall specific versions later. 

## Set up Git
[Installi git for Windows](https://confluence.atlassian.com/display/BITBUCKET/Set+up+Git+and+Mercurial#SetupGitandMercurial-Step1.InstallGitforWindows)

## Initilizing & retrieving repo

At an empty folder using cmd:
```
// initalizes an empty git repository
git init
// add remote current remoterepo
git remote add origin master git@bitbucket.org:geoif_rdok/sass-ms.git
// retrieve files from bitbucket repo
git pull origin master
```
[Official Guide](https://confluence.atlassian.com/display/BITBUCKET/Import+code+from+an+existing+project)

## Changing Branches
```
// retrieve what data are on server
git pull
// show remote(server) branches
git branch -r
// show local branch
git branch
// show both local and server branches
git branch -a
// change to branch develop
git checkout develop
// change to branch master
git checkout master
```

# Wamp - Virtual Host
- http://forum.wampserver.com/read.php?2,124482

# Gitflow  
[Training](https://github.com/nvie/gitflow)  

![Gitflow Diagram](http://nvie.com/img/2009/12/Screen-shot-2009-12-24-at-11.32.03.png "Visualize")

# localhost - emails
http://www.toolheap.com/test-mail-server-tool/
>Test Mail Server Tool is a full featured mail (SMTP) server emulation to test mail sending capabilities of a web or desktop application or to preview messages before they are actually sent.  

Just install the above app. Run "Test Mail Server Tool". Allow to connect to internet if prompted.  

# [ssh](https://help.github.com/articles/generating-ssh-keys)