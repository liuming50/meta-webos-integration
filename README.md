# meta-webos-integration
OpenEmbedded/Yocto WebOS integration layer


# Dependencies

```
URI: git://git.openembedded.org/openembedded-core.git
branch: thud
revision: HEAD

URI: git://git.openembedded.org/bitbake.git
branch: thud
revision: HEAD

URI: git://git.openembedded.org/meta-openembedded.git
branch: thud
revision: HEAD

URI: git://github.com/meta-qt5/meta-qt5.git
branch: warrior
revision: HEAD

URI: git://github.com/meta-qt5/meta-qt5.git
branch: warrior
revision: HEAD

URI: git://git.yoctoproject.org/meta-security.git
branch: thud
revision: HEAD

URI: git://github.com/advancedtelematic/meta-updater.git
branch: thud
revision: HEAD

URI: git://git.yoctoproject.org/meta-virtualization.git
branch: thud
revision: HEAD

URI: git://github.com/webosose/meta-webosose.git
branch: thud
revision: HEAD
```


# Getting started

meta-webos-integration consist of multiple Git repositories and repo is the tool that makes it easier to work with those repositories as a whole. Create a local bin/ directory, download the repo tool to that directory, and allow the binary executable with the following commands:

```
$ make -p ~/bin
$ curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
$ chmod a+x ~/bin/repo
$ export PATH=~/bin:$PATH
```


# Download the source

Create an empty directory that will hold the meta-webos-integration and Yocto source files and serve as the working directory. Enter the following commands to bring down the latest version of repo tool, including its most recent fixes. The URL specifies the manifest that refers various repositories used by meta-webos-integration, which are placed within the working directory. For now, a .repo folder is created to store the manifest and the metadata of the source repositories.

```
$ mkdir ~/webos-workspace
$ cd ~/webos-workspace
$ repo init -u https://github.com/liuming50/webos-manifest.git -b master
```

Enter the following command to pull down the source tree to your working directory. The repo sync operation might take time depending on your Internet download speed.

```
$ repo sync
```


# Build the source

Set up the environment:

```
$ cd ~/webos-workspace
$ sudo ./prerequisites.sh
$ . poky-init-build-env /path/to/pre-built-folder 
$ bitbake webos-image
```


Layer Maintainer: [Ming Liu](<mailto:liu.ming50@gmail.com>)
