
#################################################################
# Environment Macros defined here CD
#################################################################
export EXCHANGE_FOLDER=$HOME/support_package/exchange_folder


#################################################################
# CD Aliases go here - MAC OS
#################################################################
alias linux='cd /Users/sudhanshu/Documents/R_Drive/01_Programming_Stuff/03_raspberry_pi/03_Kernel_Sources/linux'
alias algo='cd /Users/sudhanshu/Documents/R_Drive/01_Programming_Stuff/16_Algos/algorithm'
alias arduino='cd /Users/sudhanshu/Documents/R_Drive/01_Programming_Stuff/17_Arduino/arduino'
alias r='cd /Users/sudhanshu/Documents/R_Drive'
alias q='cd /Users/sudhanshu/Documents/Q_Drive'
alias expense='cd /Users/sudhanshu/Documents/R_Drive/02_My_Personal_Docs/01_Expenses_Investments'
alias ebook='cd /Users/sudhanshu/Documents/R_Drive/01_Programming_Stuff/13_MyBookWritting'
alias ai='/Users/sudhanshu/Documents/R_Drive/01_Programming_Stuff/18_AI/coursera/dlaicourse/TensorFlow Deployment/Course 2 - TensorFlow Lite'

#################################################################
# CD Aliases go here - Linux VM
#################################################################
alias rpi='cd /home/sudhanshu/rpi/rpi_iot_kernel'
alias linux='cd /home/sudhanshu/rpi/rpi_iot_kernel/linux'
alias firmware='cd /home/sudhanshu/rpi/rpi_iot_kernel/firmware'
alias support='cd /home/sudhanshu/rpi/rpi_iot_kernel/support'


#################################################################
# CD Aliases go here - Raspberry Pi
#################################################################
alias exchange='cd $EXCHANGE_FOLDER'


#################################################################
# SSH Aliases go here
#################################################################
alias connect_rpi='ssh pi@192.168.29.8'


#######################################
# Global Environment Variables exports
#######################################
export CLICOLOR=1

# Show dirty state in prompt when in Git repos
export GIT_PS1_SHOWDIRTYSTATE=1


# ################################################
# Prompt Customization - Ref http://blog.taylormcgann.com/2012/06/13/customize-your-shell-command-prompt/
# ################################################
# \! - the history number of this command
# \w - the current working directory, with $HOME abbreviated with a tilde
# \u - the username of the current user
# \t - the current time in 24-hour HH:MM:SS format
# \a - produces a beep sound when enter is pressed
# \H - the hostname
# \[\033[1;92m\] - bold color green
# \[\033[0m\]    - turn color off
PS1_OLD=${PS1}
export PS1="\n\rUser:\[\033[1;92m\]\u\[\033[0m\]   Host:\[\033[1;92m\]\H\[\033[0m\]  Date:\[\033[1;92m\]\d\[\033[0m\]   Time:\[\033[1;92m\]\t\[\033[0m\] \n\r\[\033[1;34m\]\!\[\033[0m\]  \[\033[1;35m\]\w\[\033[0m\] \n\r$ "


#################################################################
# Aliases go here
#################################################################

alias ls='ls -alhG'
alias ll='ls -alhG'

# --show-control-chars: help showing Korean or accented characters
#alias ls='ls -alhG --color=auto --show-control-chars'
#alias ll='ls -alhG'

alias dir='ll'
alias cls='clear'


alias finder='open .'
alias back='cd -'

# lock computer
# =============
alias lock='/System/Library/CoreServices/"Menu Extras"/User.menu/Contents/Resources/CGSession -suspend'

# hibernation and sleep settings
# ==============================
alias hibernate='sudo pmset -a hibernatemode 25'
alias sleep='sudo pmset -a hibernatemode 0'
alias safesleep='sudo pmset -a hibernatemode 3'
alias smartsleep='sudo pmset -a hibernatemode 2'

# up 'n' folders
# ==============
alias ..='cd ..'
alias ...='cd ../..'


# simple ip
alias ip='ifconfig | grep "inet " | grep -v 127.0.0.1 | cut -d\ -f2'
# more details
alias ip1="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"
# external ip
alias ip2="curl -s http://www.showmyip.com/simple/ | awk '{print $1}'"

# grep with color
# ===============
alias grep='grep --color=auto'

# processes
# =========
alias ps='ps -ax'




# Misc Commands
# =============
alias v='vim '
alias vi='vim '
alias editbashalias='vim $HOME/support_package/home_folder/.bash_aliases.sh'
alias editgitconfig='vim .git/config'
#alias objdumpuboot='/home/sudhanshu/toolchain/gcc-linaro-6.3.1-2017.05-x86_64_aarch64-linux-gnu/bin/aarch64-linux-gnu-objdump -Dsl u-boot > dump'
#alias objdumplinux='/home/sudhanshu/toolchain/gcc-linaro-6.3.1-2017.05-x86_64_aarch64-linux-gnu/bin/aarch64-linux-gnu-objdump -Dsl vmlinux > objdump_linux'
alias pack='tar czf _archive_file.tar.gz '
alias unpack='tar -xvzf '
alias changefilemode644='chmod 644  '
alias ll='ls -alrt'


# GIT Aliases
# ===========
alias reload='source ~/support_package/home_folder/.bash_aliases.sh'
alias gl='git log '
alias gl_withfilechanges='git log --name-only '
alias gl_withfileandcodechanges='git log -p '
alias gs='git status '
alias br='git branch '
alias gt='git tag '
alias gtp='git push --tags '
alias gb='git blame'
alias ga='git add '

alias gst='git stash '
alias gsta='git stash apply '
alias gstc='git stash clear '
alias gstl='git stash list '

alias pull='git pull '
alias push='git push '
alias push_branchname='git push origin HEAD:origin/$1'
alias forcepush_branchname='git push -f origin $1:$1'
#alias forcepush_branchname='git push -f $1:$1'
alias merge='git merge '
alias gd='git diff '
alias update='git remote update '


alias add='git add '
alias gadd='git add '

alias commit='git commit -m '
alias commitsignoff='git commit -s'
alias amend='git commit --amend'
alias co='git checkout '
alias merge='git merge '
alias fetch='git fetch '
# rebase your current checked out branch with 'master' branch
alias rebase='git rebase origin/master 'i

alias gabort='git am --abort'

alias csd='cscope -d'
alias csr='cscope -R'

alias createpatch_all='git format-patch  origin/master --author priyanka --stdout >> patch_file.patch '
alias cpl='git format-patch -n HEAD^' 
alias createpatch_last='git format-patch -n HEAD^' 

alias chp='./scripts/checkpatch.pl '
alias checkpatch='./scripts/checkpatch.pl '
alias checkpatchfixinplace='./scripts/checkpatch.pl --fix-inplace '
alias cleanpatch='./scripts/cleanpatch ' 

alias createpatch_commitid='git format-patch -1 '
alias createpatch_startcommitid='git format-patch '

alias applypatch_patchfile_as_is='git am '  
alias applypatch_withcommitmesg='git am --signoff <  '  
alias applypatch_patchfile='patch -p1 < '

alias show_files_modifed_commitID='git show --pretty="" --name-only '

function create_branch(){
	git checkout -b  $1 && git push --progress -u origin $1
}

function create_loc_branch_and_fetch_remote_code(){
	git checkout -b $1 origin/$1  && git pull
}

function delete_branch(){
	git branch -d $1 && git push origin :$1
}

function rename_branch(){
	git branch -m $1 $2 && git push origin :$1 $2
}

function pull_all () {
    START=$(git branch | grep '\*' | set 's/^.//');
    for i in $(git branch | sed 's/^.//'); do
        git checkout $i;
        git pull || continue;
    done;
    git checkout $START;
};


