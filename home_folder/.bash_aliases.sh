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
alias tmp='cd $HOME/tmp'


#################################################################
# CD Aliases go here - MAC OS
#################################################################
if [[ "$HOSTNAME" == *"MacBook-Pro.local"* ]]; then
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
alias lazybum='cd $HOME/cp_src/lazybum'
fi

#################################################################
# CD Aliases - Linux VM
#################################################################
if [ "$HOSTNAME" = "UbuntuVirtualBox" ]; then
KERNEL=linux
alias home='cd $HOME'
alias rpi='cd $HOME/rpi/rpi_iot_kernel'
alias linux='cd $HOME/rpi/rpi_iot_kernel/linux'
alias firmware='cd $HOME/rpi/rpi_iot_kernel/firmware'
alias support='cd $HOME/rpi/rpi_iot_kernel/support'
alias interviewprep='cd $HOME/tmp/01_linux_learning'

#ChargePoint Specific
alias cp4k='cd $HOME/cp_src/cp4k'
alias chaps='cd $HOME/cp_src/emb-chaps'
alias core='cd $HOME/cp_src/emb-core'
alias mcu='cd $HOME/cp_src/emb-mcu'
alias platform='cd $HOME/cp_src/emb-platform'
alias chui='cd $HOME/cp_src/emb-chui'
alias sitara='cd $HOME/cp_src/emb-sitara-chaps'
alias ct4k='cd $HOME/cp_src/emb-ct4k-chaps'
alias cpnk='cd $HOME/cp_src/emb-cpnk'
alias panda='cd $HOME/cp_src/emb-panda-dev'
alias jansson='cd $HOME/cp_src/jansson'
alias lazybum='cd $HOME/cp_src/lazybum'
fi

#################################################################
# CD Aliases - Raspberry Pi
#################################################################
if [ "$HOSTNAME" = "raspberrypi" ]; then
KERNEL=linux
alias home='cd $HOME'
fi

#################################################################
# Linux Kernel Related stuff
#################################################################
if [ "$KERNEL" = "linux" ]; then
# Kernel Module
# =============
alias load='sudo insmod '
alias unload='sudo rmmod '
alias list_module='lsmod '

# Kernel Hacking
# ==============
alias update='sudo apt-get update '
alias upgrade='sudo apt-get upgrade '
alias install_initramfs='sudo update-initramfs -c -k '
alias grub_update='sudo update-grub '
fi

#################################################################
# Telnet Aliases
#################################################################

# ChargePoint Charging Stations
# =============================
# CP-1
alias telnet_CP1_172_16_251_43__2100='telnet 172.16.251.43 2100'
# CP-2 - [ MAC : 0024b10000038794 ]
alias telnet_CP2_172_16_251_42__2200='telnet 172.16.251.42 2200'
alias telnet_CP2_172_16_250_70__23='telnet 172.16.250.70 23'
# CP-3 - [ MAC : 0024b10000039f7e ]
alias telnet_CP3_172_16_251_42__2400='telnet 172.16.251.42 2400'
alias telnet_CP3_172_16_250_66__23='telnet 172.16.250.66 23'
# CP-4 - [ MAC : 0024b100000385a3 ] - My station, New Meter
alias telnet_CP4_172_16_251_31__2031='telnet 172.16.251.31 2031'
alias telnet_CP4_172_16_250_64__23='telnet 172.16.250.64 23'
# CP5 - [ MAC : 0024b1000002ab86 ] - Braj Station with meter, UI cam, single port
alias telnet_CP5_172_16_251_41__2001='telnet 172.16.251.41 2001'
alias telnet_CP5_172_16_250_31__23='telnet 172.16.250.31 23'
# CP6 - [ MAC : 0024b1000002c5df ] - Dual Port QA gurugram station with meter
alias telnet_CP6_172_16_251_41__2023='telnet 172.16.251.41 2023'
alias telnet_CP6_172_16_250_54__23='telnet 172.16.250.54 23'
# CP7 - [ MAC : 0024b1000002a429 ] - Shiv Kumar, Old meter
alias telnet_CP7_172_16_251_41__2018='telnet 172.16.251.41 2018'
alias telnet_CP7_172_16_250_52__23='telnet 172.16.250.52 23'
# CP8 - [ MAC : 0024b10000038ce9 ] - Braj Station, UI Cam, single port
alias telnet_CP7_172_16_251_41__2048='telnet 172.16.251.41 2048'
alias telnet_CP7_172_16_250_71__23='telnet 172.16.250.71 23'





#################################################################
# SSH Aliases - check .ssh/config for IP address of Hosts
#################################################################
alias connect_rpi='ssh pi@rpi'
alias connect_vm='ssh sudhanshu@vm'
alias connect_mac='ssh sudhanshu@mac'

# ChargePoint TFTP Server
# =======================
alias connect_tftp_cp='ssh sgupta@tftp_cp'

if [ "$HOSTNAME" = "Sudhanshus-MacBook-Pro.local" ]; then
alias ssh_key_gen='ssh-keygen -t rsa -b 4096 -C "softwares.unleashed@gmail.com"'
fi

if [ "$HOSTNAME" = "UbuntuVirtualBox" ]; then
alias ssh_key_gen='ssh-keygen -t rsa -b 4096 -C "softwares.unleashed@gmail.com"'
fi

if [ "$HOSTNAME" = "raspberrypi" ]; then
alias ssh_key_gen='ssh-keygen -t rsa -b 4096 -C "softwares.unleashed@gmail.com"'
fi

# Alias to copy public key to remote host
# HOST_NAME_REMOTE format => user@host_ip
function ssh_key_copy_to_remotehost(){
    KEY_FILE_PATH=$1
    HOST_NAME_REMOTE=$2

    if [ "$#" -ne 2 ];
        then
           echo "Illegal number of parameters"
           echo "Usage :"
           echo "$ ssh_key_copy_to_remotehost key_file_path user@remote_hostname"
           echo ""
        else
            ssh-copy-id -i $KEY_FILE_PATH $HOST_NAME_REMOTE
    fi
}


#################################################################
# SCP Aliases - check .ssh/config for IP address of Hosts
#################################################################

# Usage : copy_to_remote user@remote_hostname local_file_name.txt remote_dir/
function copy_to_remote(){
    HOST_NAME_REMOTE=$1
    PATH_LOCAL=$2
    PATH_REMOTE=$3

    if [ "$#" -ne 3 ];
        then
            echo "Illegal number of parameters"
            echo "Usage :"
            echo "$ copy_to_remote user@remote_hostname local_file_name.txt remote_dir/"
            echo ""
        else
            echo "Copying local file to remote path..."
            echo "[ LOCAL ] $PATH_LOCAL ----> [ REMOTE ] $PATH_REMOTE"
            echo ""
            scp -r $PATH_LOCAL $HOST_NAME_REMOTE:$PATH_REMOTE
    fi
}

# Usage : copy_from_remote user@remote_hostname remote_path_file_name local_dir_path/
function copy_from_remote(){
    HOST_NAME_REMOTE=$1
    PATH_LOCAL=$3
    PATH_REMOTE=$2

    if [ "$#" -ne 3 ];
        then
            echo "Illegal number of parameters"
            echo "Usage :"
            echo "$ copy_from_remote user@remote_host remote_path_file_name local_dir_path/"
            echo ""
        else
            echo "Copying local file from remote path..."
            echo "[ LOCAL ] $PATH_LOCAL <---- [ REMOTE ] $PATH_REMOTE"
            echo ""
            scp -r $HOST_NAME_REMOTE:$PATH_REMOTE $PATH_LOCAL
    fi
}



#######################################
# Global Environment Variables exports
#######################################
export CLICOLOR=1

# Show dirty state in prompt when in Git repos
export GIT_PS1_SHOWUPSTREAM="auto"     # '<' behind, '>' ahead, '<>' diverged, '=' no difference
export GIT_PS1_SHOWDIRTYSTATE=1        # staged '+', unstaged '*'
export GIT_PS1_SHOWSTASHSTATE=1        # '$' something is stashed
export GIT_PS1_SHOWUNTRACKEDFILES=1    # '%' untracked files

# Invoke Git Prompt Enhancement script
source ~/support_package/home_folder/.git-prompt.sh

# To display git branch when inside a git repo
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# To display git tag when inside a git repo
parse_git_tag() {
    # get the tag currently, suppress error message if no tag is set in repo
    git describe --tags --abbrev=0 2>/dev/null
}

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
export PS1='\n\r┌─ User:\[\033[1;92m\]\u\[\033[0m\]   Host:\[\033[1;92m\]\H\[\033[0m\]   Date:\[\033[1;92m\]\d\[\033[0m\]   Time:\[\033[1;92m\]\t\[\033[0m\]   \n\r|  Git:\[\033[1;92m\] $(__git_ps1) \[\033[0m\]   Branch:\[\033[1;92m\]$(parse_git_branch)\[\033[0m\]   Tag:\[\033[1;92m\]$(parse_git_tag)\[\033[0m\]  \n\r| \[\033[1;34m\] \!\[\033[0m\]  \[\033[1;35m\]\w\[\033[0m\] \n\r└─▶ $ '


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

# =======================================
# hibernation / sleep / shutdown / reboot
# =======================================
if [ "$HOSTNAME" = "Sudhanshus-MacBook-Pro.local" ]; then
alias hibernate='sudo pmset -a hibernatemode 25'
alias sleep='sudo pmset -a hibernatemode 0'
alias safesleep='sudo pmset -a hibernatemode 3'
alias smartsleep='sudo pmset -a hibernatemode 2'
fi

if [ "$HOSTNAME" = "UbuntuVirtualBox" ]; then
alias shutdown='shutdown -h now'
alias shutdown_cancel='shutdown -c'
alias reboot='shutdown -r now'
alias halt='shutdown -H now'
alias sleep='shutdown -s now'
fi

if [ "$HOSTNAME" = "raspberrypi" ]; then
alias shutdown='shutdown -h now'
alias shutdown_cancel='shutdown -c'
alias reboot='shutdown -r now'
alias halt='shutdown -H now'
alias sleep='shutdown -s now'
fi


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
alias editsshconfig='vim $HOME/.ssh/config'
#alias objdumpuboot='/home/sudhanshu/toolchain/gcc-linaro-6.3.1-2017.05-x86_64_aarch64-linux-gnu/bin/aarch64-linux-gnu-objdump -Dsl u-boot > dump'
#alias objdumplinux='/home/sudhanshu/toolchain/gcc-linaro-6.3.1-2017.05-x86_64_aarch64-linux-gnu/bin/aarch64-linux-gnu-objdump -Dsl vmlinux > objdump_linux'
alias pack_tar='tar cvf _archive_file.tar '
alias pack_gz='tar cvfz _archive_file.tar.gz '
alias pack_bz2='tar cvfj _archive_file.tar.bz2 '
alias unpack_tar='tar -xvf '
alias unpack_gz='tar -xvfz '
alias unpack_bz2='tar -xvfj '
alias changefilemode644='chmod 644  '
alias ll='ls -alrt'
alias install_essentials='sudo apt-get install screen vim git cscope build-essential libncurses-dev bison flex libssl-dev libelf-dev'
alias addr='ifconfig '
alias log='dmesg '
alias logtail='dmesg | tail '
alias dump_to_file_cmd_output='$1 |& tee -a command_output.txt'

# Find command shortcut
function f(){
    FILE_NAME_OR_EXPRESSION=$1


    if [ "$#" -ne 1 ];
        then
           echo "Illegal number of parameters"
           echo "Usage :"
           echo "$ f file_name_or_expression_to_search"
           echo ""
        else
            find . -name "$FILE_NAME_OR_EXPRESSION"
    fi
}


# Cscope Commands
# =============
function build_cscope_db_func()
{
     find $PWD -name *.c \
            -o -name *.h \
            -o -name *.mk \
            -o -name *.xml\
            -o -name *.cfg\
            -o -name *.ini\
            -o -name *.dat\
            -o -name *.cpp > $PWD/cscope.files
  cscope -RCbk
  export CSCOPE_DB=$PWD/cscope.out
}

function cscope_export_db_func()
{
   export CSCOPE_DB=$PWD/cscope.out
}

alias csd='cscope -d'
alias csr='cscope -R'
alias csbuild=build_cscope_db_func
alias csexport=cscope_export_db_func

# GIT Aliases
# ===========
function reload(){
    echo "Performing Update operation..."
    cp ~/support_package/home_folder/.screenrc ~
    cp ~/support_package/home_folder/.tmux.conf ~

    sh ~/support_package/home_folder/.ssh/install.sh
    sh ~/support_package/home_folder/.vim_runtime/install_awesome_vimrc.sh

    source ~/support_package/home_folder/.bash_aliases.sh
    echo "...Update Operation [ DONE ]."
}

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
alias pull_recursive='git pull --recurse-submodules '
alias push='git push '
alias push_branchname='git push origin HEAD:origin/$1'
alias forcepush_branchname='git push -f origin $1:$1'
#alias forcepush_branchname='git push -f $1:$1'
alias merge='git merge '
alias gd='git diff '
alias update='git remote update '
alias update_submodules='git submodule update --init --recursive '   # git checkout the tag on parent module before invoking this command. Sub-modules will be checkedout as per the parent's tag.


alias add='git add '
alias gadd='git add '

alias commit='git commit -m '
alias commitsignoff='git commit -s'
alias amend='git commit --amend'
alias co='git checkout '
alias merge='git merge '
alias fetch='git fetch '
# rebase your current checked out branch with 'master' branch
alias rebase='git rebase origin/master '

# Squash multicommits to single commit interactively
function squash_to_commitID(){
    START_COMMIT_ID=$1

    if [ "$#" -ne 1 ];
        then
            echo "Illegal number of parameters"
            echo "Usage :"
            echo "$0 base_commit_id"
            echo "base_commit_id - commit id on which all multiple commits would be squashed onto single commit"
            echo ""
        else
            git rebase --interactive "$1"
    fi
}

alias gabort='git am --abort'

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

alias show='git show '
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

function set_git_user_name_email(){
    USER_NAME=$1
    USER_EMAIL=$2

    if [ "$#" -ne 2 ];
        then
            echo "Illegal number of parameters"
            echo "Usage :"
            echo "set_git_user_name_email "User Name" "User Email" "
            echo ""
        else
            echo $1
            echo $2
            git config user.email "$2"
            git config user.name "$1"
    fi
}
  #git config --global user.email "you@example.com"
  #git config --global user.name "Your Name"

