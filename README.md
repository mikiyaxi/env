

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

**4.1) karabiner (virtual keyboard for mac)**
```shell
brew install barabiner-elements --cask
```

**4.2) key mapping in ubuntu** 
```shell
sudo apt install gnome-tweak
```
```
# search for tweak, open it 
1) Startup Applications
    + Caffeine indicator 
2) Top Bar 
    + Weekday 
    + Date 
3) Keyboard & Mouse 
    + Show Extended Input Sources ? 
    + Mouse 
        > Pointer Location 
        > Middle Click Paste 
    + Touchpad 
        > Disable While Typing 
    + Mouse Click Emulation 
        > Fingers 
    + Additional Layout Option 
        > Caps Lock Behavior: ...
        > Ctrl Position
            - Caps Lock as Ctrl
            - (you can move between tabs using capslock + key1...9)
        > Alt and Win behavior 
            - Meta is mapped to win (disable super for search)
    + Enable Emacs input (======== not perfect, better to use vim-style moving like karabiner =======)
        > Ctrl+a: to move the cursor to the beginning of the line
        > Ctrl+e: to move the cursor to the end of the line
        > Ctrl+k: to cut the text from the cursor to the end of the line
        > Ctrl+y/v: to paste the most recently cut text
        > Ctrl+p: (previous) and `Ctrl+N` (next) to navigate up and down in history or suggestions
        > Ctrl+b: to move the cursor back one character
        > Ctrl+f: to move the cursor forward one character
        > Ctrl+d: to delete the character under the cursor
        > Ctrl+h: to delete the character before the cursor
    - lose some shortcut once Emacs input enable (you have to do it by hand)
        > ctrl + a: select all 
        > ctrl + w: can't close tab is on text/typing
    + still missing two shortcut, move a line up and down globally like karabiner does

# Find something like xbindkeys, or find out why xbindkeys is not working

# Open setting |- Keyboard |- View and Customize Shortcuts 
1) Accessibility
    ( don't know why, but zoom in and zoom out could use ctrl+= & ctrl+-)
    + Zoom in: Disabled 
    + Zoom out: Disabled
2) Launchers 
    + Home folder: Alt+Super+H
    + Launch terminal: Alt+Super+T
    + Launch web browser: Alt+Super+B
    + Setting: Alt+Super+S
3) System 
    + Focus the active notification: Disabled (leave super + N)
    + Show the notification list: Disabled (leave super + M and super + V)
    + Restore the keyboard shortcuts: Disabled (avoid miss type)
    + Show the overview: Super + Space (it's like Alfred)
    + Lock Screen: Alt + L 
    + Show all application: Alt + A
4) Windows 
    + Hide window: Disabled (free Super + H)

# alacritty 
    + key_bindings
        > setup copy and paste with super key in alacritty 
            # copy 
            - { key: C mods: Super, action: Copy }
            # paste 
            - { key: V mods: Super, action: Paste }
            # remember to use ctrl + c/v outside of alacritty, ctrl + t for new tabs or something
        > change all tmux binding from using Command to Super
            # split pane left and right
            - { key: M, mods: Super, chars: "\x01\x4d" }          
            # split pane top and down
            - { key: B, mods: Super, chars: "\x01\x42" }
            # save neovim 
            - { key: S, mods: Super, chars: "\x1b\x3a\x77\x0a" }
            # rename current session
            - { key: R, mods: Super, chars: "\x01\x24" }
            # new tmux window 
            - { key: T, mods: Super, chars: "\x01\x63" }
            # detach current session 
            - { key: D, mods: Super, chars: "\x01\x64" }
            # select a tmux session to attach while inside tmux (p stands for preview): original command prefix + w 
            - { key: P, mods: Super, chars: "x01\x77" }
            # select window 1-9 
            - { key: Key1, mods: Super, chars: "\x01\x31" }
            - { key: Key2, mods: Super, chars: "\x01\x32" }
            - ...

        > option will be considered as Alt, so you need to remove other minor keybind used Alt 
            # comment out
            - { key: D, mods: Option, chars: "\x64\x73\x65" }
            # comment out
            - { key: C, mods: Option, chars: "\x63\x73\x65" }

# enable Emacs input 
    + navigation mapping
        > Super + a = Home key 
        > Super + e = End key 
        > Super + h = Ctrl + leftarrow
        > Super + j = Ctrl + Downarrow
        > Super + k = Ctrl + Uparrow
        > Super + l = Ctrl + rightarrow
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
b) TreeSitter (syntax highlighting with treesitter)
    + command for installing syntax highlighting for new language
        - open xxx.ex file 
        - :TSInstall elixir
    + check Installed Syntax
        - :TSInstallInfo
b.1) start_up_screen: vim ~/.config/nvim/lua/core/default_config.lua 
    + find nvdash = { load_on_startup = true, ... }
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
o) mouse on the line where error indicate type shortcut to view error in floating windows: <leader>f 
p) previous error floating window: [+d
q) next error floating: 

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
# you might need to :wq, and restart neovim, that should work. 
# Just exit the plugins.lua is enough.
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

**17) undo git add**
```
>> git reset <file> 
>> git reset
```
