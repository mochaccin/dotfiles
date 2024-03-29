# Dotfiles
Personal config for endeavourOS bspwm, with the rosepine theme.

## Overview

![alt text][logo]

[logo]: https://media.discordapp.net/attachments/911820541860646963/1120845272956801024/screenshot-2023-06-20_183845.png?width=1177&height=662 "Desktop"

![alt text][logo1]

[logo1]: https://cdn.discordapp.com/attachments/911820541860646963/1120841005986480200/screenshot-2023-06-20_182146.png "Firefox"

![alt text][logo2]

[logo2]: https://media.discordapp.net/attachments/911820541860646963/1120845129675198484/screenshot-2023-06-20_183754.png?width=1177&height=662 "nvim"

![alt text][logo3]

[logo3]: https://media.discordapp.net/attachments/911820541860646963/1120844499384541286/screenshot-2023-06-20_183536.png?width=1177&height=662 "split"

![alt text][logo4]

[logo4]: https://media.discordapp.net/attachments/911820541860646963/1120843200442146817/screenshot-2023-06-20_183026.png?width=1177&height=662 "discord"

## Requirements
* nvim
* java jdk
* clang
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

Download the JDK of your liking from [oracle downloads](https://www.oracle.com/java/technologies/downloads/#java17)
and unzip it.
```
cd Downloads/
tar zxvf jdk-17_linux-x64_bin.tar.gz
mv jdk-17_linux-x64_bin.tar.gz /usr/lib/jvm/
archlinux-java set jdk-17.0.7
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
> It should display something among the lines of
```
java version "17.0.7" 2023-04-18 LTS
Java(TM) SE Runtime Environment (build 17.0.7+8-LTS-224)
Java HotSpot(TM) 64-Bit Server VM (build 17.0.7+8-LTS-224, mixed mode, sharing)
```

### Nerd-fonts
First we need to clone the git repository
> We need it for the polybar and terminal icons
```
git clone https://github.com/ryanoasis/nerd-fonts
```
Then we just run the installer 
```
./install.sh
```
### Nvim, kitty, fish, picom & clang
Just run yay and the package to install
> We need clang for formatting with `:Neoformat` to format and save our java code with `<leader>w`
```
yay clang
```
### Install dotfiles
Just move the folders to the `.config/` directory
```
cd dotfiles/
mv -t ~/.config/ nvim/ kitty/ fish/ polybar/
mv picom.conf ~/.config
mv bspwmrc ~/.config/bspwm/
```
> adapters for the polybar modules can vary, so remember to change them in case they aren't working.

## Nvim personal keymaps
> `<leader>` defaults to `space`
### Quickexit nvim
`<leader>q`
### Quicksave + java formatting with clang
`<leader>w`
```
:Neoformat<cr>:w<cr>
```
### Quickcopy a full function
`YY`
```
va{Vy
```

