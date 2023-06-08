

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


**6) zsh**
```shell
# refer to the step in the old repo
# use powerlevel10k for now
# change zsh-prompt to my own one, you just need to replace the zsh-prompt file in ~/.config/zsh
```

**7) nerd font**
```shell
a) Monofur Nerd Font
b) JetBrainsMono Nerd Font 
c) SourceCodePro 
...
```

**8) neovim** 
```shell 
brew install neovim
```

*check [NvChad's update](https://github.com/NvChad/NvChad) for pre-config neovim or pull yours*
*[tutorial](https://www.youtube.com/watch?v=Mtgo-nP_r8Y)*
```
# remove cache, don't know why, I guess it to make sure new config doesn't mixed with old ones
>> rm -rf ~/.local/share/nvim/
```

*structure*
```
~/.config/nvim
├── init.lua
├── ...
├── lua/
│   ├── core/
│   ├── custom/
│   │   ├── chadrc.lua
│   │   ├── init.lua
│   │   ├── plugins.lua
│   │   └── ...
│   └── plugins
└── ...


# add your custom setting to chadrc.lua for NvChad 
# init.lua inside custom is for override neovim command and option 
```
*command*
``` 
# </leader> = <space> 
a) change theme: <space> t h 
b) TreeSitter 
    + command for installing syntax highlighting for new language
        - open xxx.ex file 
        - :TSInstall elixir
    + check Installed Syntax
        - :TSInstallInfo

c) nvim tree: ctrl n 
    + when Nvim Tree is open, press <m> key for marking down the file
    + mark file in Nvim Tree file explorer: m
d) file navigation for all file: <space> f f 
e) file navigation for only open buffer: <space> f b 
f) cheatsheet for keybinding: <space> c h 
g) leader key combination: <space> + wait for a second
h) new terminal window (toggle windows plugin as used before/it's just toggle at the center)
    + horizontal new term: <space> h 
    + vertical new term: <space> v
i) toggle number bar: <space> n 
j) toggle relative number bar: <space> r n 

k) open file to the buffer: 
    a) :e "path/to/file"
    b) ctrl n -> select the file and press enter key
l) navigate through buffer clock-wise: <tab> 
m) autoformatting with null-ls, black(pep 8 style) plugin: <space> f m
n) yank all(copy all): ctrl + c
```

**9) [npm](https://nodejs.org/en/download)**
```
>> node --version
>> npm --version
```

**10) installation: Lazy.nvim | mason/lsp**
```
# normal way of install plugins with Lazy.nvim plugins manager
: Lazy sync 

# mason install all lsp related plugins 
: MasonInstallAll 

# for any reason you don't see the installed packages list with mason UI, 
# you might need to :wq, and restart neovim, that should work. Just exit the plugins.lua is enough.
```


**11) tmux** 
```
```

**12) setup for python programming**
```

```

**13) yabai** 

**14) connect to remote ssh**
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

**15) GPUs**
```shell
# General Info 
>> nvidia-smi 

# GPUs only 
>> nvidia-smi -L
```

**16) self-defined script**
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

**16) [FileZilla](https://filezilla-project.org/)** 
*go to website and download the client, looking into server later. Basic is enough, looking pro later*
```
# 1) unzip and put it into Application 
# 2) open FileZilla, click File on the top-left, select Site Manager... 
# 3) New site, name it
# 4) Protocol: select SFTP - SSH File Transfer Protocol 
# 5) Host: Enter the specific ip address for remote server 
# 6) Logon Type: select Keyfile 
# 7) User: xxxx [xxxx@xxx.xxx.xxx.xxx]
# 8) Browse your Keyfile
# 9) connect 
# 10) drag and draw
```
