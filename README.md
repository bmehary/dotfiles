
# Notes
## GNU Stow
1 . Ignoring files/folders use `.stow-local-ignore` [link-to-doc](https://www.gnu.org/software/stow/manual/stow.html#Ignore-Lists)

## Brew
### Generate Brewfile (list of installed brew programs)
```
brew bundle dump --describe 
```

### Install from Brewfile

```zsh
# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# install brew apps from dotfiles dir
cd ~/.dotfiles && brew bundle

# or install brew apps from any dir
brew bundle --file ~/.dotfiles/Brewfile
```

## Steps to bootstrap a new Mac

1. Install Apple's Command Line Tools, which are prerequisites for Git and Homebrew.

```zsh
xcode-select --install
```
2. Manually setup SSH temporarily by looking at repo's ssh package.

3. Clone repo into new hidden directory. `~/.dotfiles`.  

4. Install Homebrew, followed by the software listed in the Brewfile.

5. Remove temporary ssh config file (not keys), from earlier step.

6. Create symlinks in the Home directory to the real files in the repo.

```zsh
stow
```  


## Useful git repos
- https://dotfiles.github.io/
- [Author of antidote (tool) example](https://github.com/getantidote/zdotdir)
- [Jake Wies - Youtuber](https://github.com/jakewies/.dotfiles)
  - [playlist](https://www.youtube.com/playlist?list=PL1C97G3GhlHdANMFUIXTcFr14R7b7EBj9)
- [Dotfiles in 100 secs](https://github.com/eieioxyz/Beyond-Dotfiles-in-100-Seconds)
  - [Youtube](https://www.youtube.com/watch?v=r_MpUP6aKiQ)


## TODO List

- Create install script
