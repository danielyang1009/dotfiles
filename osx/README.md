# MAC OSX Configuration

## Software
- Alfred
- Magnet
- iTerm2
- Context
- Skim
- HazeOver
- SteerMouse / Scroll reverser
- iStat
- HyperDock
- Handbrake
- Amphetamine(caffeinate) 

```bash
caffeinate -disu
```

- IINA(Video)
- NTFS for Mac
- Keka(zip)
- Hyper
- fish shell

```bash
fish_config
```

- inkscape
```base
brew install xquartz inkscape
```

### HomeBrew
```bash
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install wget curl git tmux zsh
```
- without auto update (in fish)
```bash
env HOMEBREW_NO_AUTO_UPDATE=1 brew install
```

### Oh-my-zsh
```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

### Miniconda
```bash
chmod +x 
```

- add to .zshrc `export PATH="/Users/dyang/miniconda3/bin:$PATH"`


### Repeated keyboard input
```bash
defaults write -g applepressandholdenabled -bool false
```
- Keyboard->Key Repeat('Fast'), Delay Unitl Repeat('Short') (adjusting the speed of repeat)

### Vim
#### MacVim
```bash
brew install macvim -with-override-system-vim
```
#### Vundle
```bash
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```
### Emacs
#### Install
```bash
brew tap d12frosted/emacs-plus
brew install emacs-plus
brew linkapps emacs-plus
```
#### ispell
```bash
brew install ispell --with-lang-en
```

### VS Code
#### Plugin
- Vim
- 1337 Theme
- Material Icon Theme
- Table Formatter
- Markdown TOC
- Auto-Open Markdown Preview

### Git
#### Setup
```bash
git config --global user.name "Daniel Yang"
git config --global user.email "danielyang1009@gmail.com"
```
#### Generating a new SSH key
```bash
ssh-keygen -t rsa -b 4096 -C "danielyang1009@gmail.com"
```
#### Adding your SSH key to the ssh-agent
```bash
eval $(ssh-agent -s)
```
#### Copy the SSH key to your clipboard
```bash
pbcopy < ~/.ssh/id_rsa.pub
```

### Xcode
```bash
xcode-select --install
```

## Keybinds
### Magnet
- `Control + Command + H`: Left half
- `Control + Command + L`: Right half
- `Control + Command + K`: Up half
- `Control + Command + J`: Down half
- `Control + Command + M`: Maximize
- `Command + M`: Minimize (Apple default)
- `Control + Command + →`: Move to next display
- `Control + Command + ←`: Move to previous display

### Input Source
- `Command + Space`

### Alfred
- `Ctrol + Space`

## Tips
### Menu bar
- Holde `command` key to rearrange menu bar

### Force Quit Menu
- `Command + Option + Esc`

### Show/hide hidden files
- `Command + Shift + .`
