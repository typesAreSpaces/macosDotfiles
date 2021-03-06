export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="simple"
plugins=(git)

export PATH="/usr/local/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export GITHUB_PROJECTS_DIR="$HOME/Documents/GithubProjects"
#export DYLD_LIBRARY_PATH="$HOME/AXDInterpolator/lib"

[ -f $ZSH/oh-my-zsh.sh ] && source $ZSH/oh-my-zsh.sh
[ -f $HOME/.fzf.zsh ] && source $HOME/.fzf.zsh

#[[ $TERM != "screen" ]] && exec tmux
#if which tmux 2>&1 >/dev/null; then
  #if [ $TERM != "screen-256color" ] && [ $TERM != "screen" ]; then
    #tmux attach -t hack || tmux new -s hack; exit
  #fi
#fi


# program aliases
alias v="vim"
alias nv="nvim"
alias config='/usr/bin/git --git-dir=/Users/types/.cfg/ --work-tree=/Users/types'

alias math_logic="cd $GITHUB_PROJECTS_DIR/phd-thesis/Documents/Courses/Math\ 439"
alias math_logic_hw="cd $GITHUB_PROJECTS_DIR/phd-thesis/Documents/Courses/Math\ 439/Homework"
 
updateBrewPackages(){ brew bundle dump }
installBrewPackages() { brew bundle }
pwdclip(){ pwd | awk '{gsub( " ","\\ " ); print}' | xclip -selection c }
cdclip(){ $(xclip -o) }
