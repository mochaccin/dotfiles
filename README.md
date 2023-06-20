# dotfiles
Personal config for endeavourOS bspwm, with the rosepine theme.

## Requirements
* nvim
* java jdk
* clang > for java formatting
* ripgrep
* bspwm
* polybar
* kitty
* fish
* picom
* nerd-fonts
* firefox rose-pine theme

## Installation

### Java JDK (17)

Install the openjdk of your liking
```
yay jdk
```
Add the java env variable.
> replace '17' with your version
```
export JAVA_HOME=/usr/lib/jvm/java-17-openjdk
```
Add to path and check the version
```
export PATH=$PATH:$JAVA_HOME/bin
java -version
```

