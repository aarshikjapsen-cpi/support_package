#################################################################
# To Install .bash_aliases.sh, copy following snippet to :-
# .bashrc   (Linux)
# .profile  (Mac)
# etc
#################################################################
#if [ -f ~/support_package/home_folder/.bash_aliases.sh ]; then
#    source ~/support_package/home_folder/.bash_aliases.sh
#fi

#################################################################
# Environment Macros defined here - Common Paths
#################################################################
export EXCHANGE_FOLDER=$HOME/support_package/exchange_folder
alias exchange='cd $EXCHANGE_FOLDER'
alias support_package='cd $HOME/support_package'


#################################################################
# CD Aliases go here - MAC OS
#################################################################
if [ "$HOSTNAME" = "Sudhanshus-MacBook-Pro.local" ]; then
alias home='cd $HOME'
alias linux='cd $HOME/Documents/R_Drive/01_Programming_Stuff/03_raspberry_pi/03_Kernel_Sources'
alias algo='cd $HOME/Documents/R_Drive/01_Programming_Stuff/16_Algos/algorithm'
alias arduino='cd $HOME/Documents/R_Drive/01_Programming_Stuff/17_Arduino/arduino'
alias r='cd $HOME/Documents/R_Drive'
alias q='cd $HOME/Documents/Q_Drive'
alias expense='cd $HOME/Documents/R_Drive/02_My_Personal_Docs/01_Expenses_Investments'
alias ebook='cd $HOME/Documents/R_Drive/01_Programming_Stuff/13_MyBookWritting'
alias ai='cd $HOME/Documents/R_Drive/01_Programming_Stuff/18_AI/coursera/dlaicourse/TensorFlow Deployment/Course 2 - TensorFlow Lite'
alias interviewprep='cd $HOME/Documents/R_Drive/01_Programming_Stuff/16_Algos/algorithm/interview_preparation'
fi

#################################################################
# CD Aliases - Linux VM
#################################################################
if [ "$HOSTNAME" = "UbuntuVirtualBox" ]; then
alias home='cd $HOME'
alias rpi='cd $HOME/rpi/rpi_iot_kernel'
alias linux='cd $HOME/rpi/rpi_iot_kernel/linux'
alias firmware='cd $HOME/rpi/rpi_iot_kernel/firmware'
alias support='cd $HOME/rpi/rpi_iot_kernel/support'
alias interviewprep='cd $HOME/tmp/01_linux_learning'
fi

#################################################################
# CD Aliases - Raspberry Pi
#################################################################
if [ "$HOSTNAME" = "raspberry" ]; then
alias home='cd $HOME'
fi


#################################################################
# SSH Aliases - check .ssh/config for IP address of Hosts
#################################################################
alias connect_rpi='ssh pi@rpi'
alias connect_vm='ssh sudhanshu@vm'
alias connect_mac='ssh sudhanshu@mac'

if [ "$HOSTNAME" = "Sudhanshus-MacBook-Pro.local" ]; then
alias ssh_key_gen='ssh-keygen -t rsa -b 4096 -C "softwares.unleashed@gmail.com"'
fi

if [ "$HOSTNAME" = "UbuntuVirtualBox" ]; then
alias ssh_key_gen='ssh-keygen -t rsa -b 4096 -C "softwares.unleashed@gmail.com"'
fi

if [ "$HOSTNAME" = "raspberry" ]; then
alias ssh_key_gen='ssh-keygen -t rsa -b 4096 -C "softwares.unleashed@gmail.com"'
fi



#################################################################
# SCP Aliases - check .ssh/config for IP address of Hosts
#################################################################

# Usage : copy_to_remote user@remote_hostname local_file_name.txt remote_dir/
function copy_to_remote(){
    HOST_NAME_REMOTE=$1
    PATH_LOCAL=$2
    PATH_REMOTE=$3

    if [ "$#" -ne 3 ]; then
        echo "Illegal number of parameters"
        echo "copy_to_remote user@remote_hostname local_file_name.txt remote_dir/"
        exit 2
    fi

    echo "Copying local file to remote path..."
    echo "[ LOCAL ] $PATH_LOCAL ----> [ REMOTE ] $PATH_REMOTE"
    echo ""
    scp -r $PATH_LOCAL $HOST_NAME_REMOTE:$PATH_REMOTE
}

# Usage : copy_from_remote user@remote_hostname remote_path_file_name local_dir_path/
function copy_from_remote(){
    HOST_NAME_REMOTE=$1
    PATH_LOCAL=$3
    PATH_REMOTE=$2

    if [ "$#" -ne 3 ]; then
        echo "Illegal number of parameters"
        echo "copy_from_remote user@remote_host remote_path_file_name local_dir_path/"
        exit 2
    fi

    echo "Copying local file from remote path..."
    echo "[ LOCAL ] $PATH_LOCAL <---- [ REMOTE ] $PATH_REMOTE"
    echo ""
    scp -r $HOST_NAME_REMOTE:$PATH_REMOTE $PATH_LOCAL
}



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

# screen aliases
# ==============
alias screenlist='screen -ls '
alias screencreate_session_name='screen -S '
alias screenrestore_session_name='screen -r '


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


