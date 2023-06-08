

## Environment (finish up later)
**1) xcode tool**
```shell 
xcode-select --install
```

**2) homebrew**
```shell
# $HOME = /Users/username 

echo '# homebrew' >> $HOME/.zprofile 
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> $HOME/.zprofile 
```

**3) terminal emulator** 
*[configuration](./alacritty/alacritty.yml)*
```shell
brew install --cask alacritty
```

**4) karabiner (virtual keyboard)**
```shell
brew install barabiner-elements --cask
```

**5) git**

**6) tmux** 

**7) zsh**
```shell
# refer to the step in the old repo
# use powerlevel10k for now
# change zsh-prompt to my own one, you just need to replace the zsh-prompt file in ~/.config/zsh
```

**8) nerd font**
```shell
1) Monofur Nerd Font
2) JetBrainsMono Nerd Font 
3) SourceCodePro 
...
```

**9) neovim** 
```shell 
brew install neovim
```

*check [NvChad's update](https://github.com/NvChad/NvChad) or pull yours*
*[tutorial](https://www.youtube.com/watch?v=Mtgo-nP_r8Y)*
```
~/.config/nvim
├── init.lua
├── ...
├── lua/
│   ├── core/
│   ├── custom/
│   │   ├── chadrc.lua
│   │   └── init.lua
│   ├── xirong/
│   │   └── keymaps.lua
│   └── plugins
└── ...


# add your custom setting to chadrc.lua for NvChad 
# init.lua inside custom is for override neovim command and option 
```
*command*
``` 
# </leader> = <space> 
1) change theme: <space> t h 
2) nvim tree: ctrl n 
    a). when Nvim Tree is open, press <m> key for marking down the file
3) file navigation for all file: <space> f f 
4) file navigation for only open buffer: <space> f b 
5) cheatsheet for keybinding: <space> c h 
6) leader key combination: <space> + wait for a second

7) toggle number bar: <space> n 
8) toggle relative number bar: <space> r n 

9) open file to the buffer: 
    a) :e "path/to/file"
    b) ctrl n -> select the file and press enter key
10) navigate through buffer clock-wise: <tab> 
```

**10) [npm](https://nodejs.org/en/download)**
```
>> node --version
>> npm --version
```

**11) setup for python programming**

**12) yabai** 

**13) connect to remote ssh**
*.pem key*
```shell
# for it to connect successfully you need to ensure .pem could only read by you: chmod
>> chmod 600 ~/.ssh/xxx_xxx.pem
```

*with config file*
```shell
# create a config file within the same diectory as .pem 
>> touch ~/.ssh/config 
>> echo '
Host lambda-server
    HostName xxx.xx.xx.x
    User ubuntu
    IdentityFile ~/.ssh/xxx_xxx.pem
' >> ~/.ssh/config

# a HostName is defined inside the config file, so next time you can directly use 
>> ssh name_of_Host_defined
```

*directly through command*
```
>> ssh -i xxx_xxx.pem username@ip-address
```

**14) GPUs**
```shell
# General Info 
>> nvidia-smi 

# GPUs only 
>> nvidia-smi -L
```

**15) self-defined script**
```
# one time way 
>> sh ~/your_script your_remote_repo *

# universal script 
>> sudo mkdir /opt/bin 
>> mv your_script /opt/bin 

# export path 
>> echo 'export PATH="/opt/bin:${PATH}"' >> ~/.zprofile

# give execute permission 
chmod +x /opt/bin/gpush
```
