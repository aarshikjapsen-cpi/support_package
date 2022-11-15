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
if [[ "$HOSTNAME" == *"MacBook"* ]]; then
alias home='cd $HOME'
alias linux='cd $HOME/Documents/R_Drive/01_Programming_Stuff/03_raspberry_pi/03_Kernel_Sources'
alias algo='cd $HOME/Documents/R_Drive/01_Programming_Stuff/16_Algos/algorithm'
alias arduino='cd $HOME/Documents/R_Drive/01_Programming_Stuff/17_Arduino/arduino'
alias r='cd $HOME/Documents/R_Drive'
alias q='cd $HOME/Documents/Q_Drive'
alias expense='cd $HOME/Documents/R_Drive/02_My_Personal_Docs/01_Expenses_Investments'
alias ebook='cd $HOME/Documents/R_Drive/01_Programming_Stuff/13_MyBookWritting'
alias ai='cd $HOME/Documents/R_Drive/01_Programming_Stuff/18_AI'
alias interviewprep='cd $HOME/Documents/R_Drive/01_Programming_Stuff/16_Algos/algorithm/interview_preparation'

#ChargePoint Specific
alias cp4k='cd $HOME/cp_src/emb-cphm400-build'
alias generic='cd $HOME/cp_src/cp4k/emb-cphm400-build-generic'
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
alias buildroot='cd $HOME/cp_src/buildroot'
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
alias generic='cd $HOME/cp_src/cp4k/emb-cphm400-build-generic'
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
alias buildroot='cd $HOME/cp_src/buildroot'
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

# Linux Related commands
# ======================
alias packagelist='dpkg-query -l '

# sudo dpkg -i package_file.deb
alias packageinstall='sudo dpkg -i '

# sudo apt-get remove package_name
alias packageremove='sudo apt-get remove '
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
# CP-4 - [ MAC : 0024b100000385a3 ] - Sudhanshu station, New Meter
#alias telnet_CP4_172_16_251_31__2031='telnet 172.16.251.31 2031'   # Older port number - 2031
alias telnet_CP4_172_16_251_31__2043='telnet 172.16.251.31 2043'
alias telnet_CP4_172_16_250_64__23='telnet 172.16.250.64 23'
# CP-5 - [ MAC : 0024b1000002ab86 ] - Braj Station with meter, UI cam, single port
alias telnet_CP5_172_16_251_41__2001='telnet 172.16.251.41 2001'
alias telnet_CP5_172_16_250_31__23='telnet 172.16.250.31 23'
# CP-6 - [ MAC : 0024b1000002c5df ] - Dual Port QA gurugram station with meter
alias telnet_CP6_172_16_251_41__2023='telnet 172.16.251.41 2023'
alias telnet_CP6_172_16_250_54__23='telnet 172.16.250.54 23'
# CP-7 - [ MAC : 0024b1000002a429 ] - Shiv Kumar, Old meter
alias telnet_CP7_172_16_251_41__2018='telnet 172.16.251.41 2018'
alias telnet_CP7_172_16_250_52__23='telnet 172.16.250.52 23'
# CP-8 - [ MAC : 0024b10000038ce9 ] - Braj Station, UI Cam, single port
alias telnet_CP8_172_16_251_41__2048='telnet 172.16.251.41 2048'
alias telnet_CP8_172_16_250_71__23='telnet 172.16.250.71 23'
# CP-9 - [ MAC : 0024b10000038d4b ] - Ankit, Raspberry Pi based, Cam Access
alias telnet_CP9_172_16_251_xx__xxxx='telnet 172.16.251.xx xxxx'
alias telnet_CP9_172_16_250_73__23='telnet 172.16.250.73 23'
# CP10 - [ MAC : 0024b10000038ce9 ] - Dual Port , Braj
alias telnet_CP10_172_16_251_31__2034='telnet 172.16.251.31 2034'
alias telnet_CP10_172_16_250_71__23='telnet 172.16.250.71 23'
# CP11 - [ MAC : 0024b1000003863e ] - Sudhir QA
alias telnet_CP10_172_16_251_41__2039='telnet 172.16.251.41 2039'
alias telnet_CP10_172_16_250_72__23='telnet 172.16.250.72 23'


# Panther
alias panther1_US_172_18_1_12__2035='telnet 172.18.1.12 2035'
alias panther2_IN_172_16_251_41__2036='telnet 172.16.251.41 2036'
alias panther3_IN_172_16_251_41__2005='telnet 172.16.251.41 2005'
alias panther4_US_172_18_1_12__2047='telnet 172.18.1.12 2047'
alias panther5_IN_172_16_251_41__2003='telnet 172.16.251.41 2003'       # Same station panther5 (UCB / ACB)
alias panther5_IN_172_16_251_41__2034='telnet 172.16.251.41 2034'       # Same station panther5 (UCB / ACB)
alias panther6_IN_172_16_251_31__2028='telnet 172.16.251.31 2028'
alias panther7_IN_172_16_251_41__2043='telnet 172.16.251.41 2043'       # Same station panther7 (UCB / ACB)
alias panther7_IN_172_16_251_41__2044='telnet 172.16.251.41 2044'       # Same station panther7 (UCB / ACB)
alias panther8_US_172_18_1_12__2013='telnet 172.18.1.12 2013'           # US QA Automation station
alias panther9_IN_172_16_251_41__2022='telnet 172.16.251.41 2022'       # Singl porrt panther
alias panther10_IN_172_16_251_41__2004='telnet 172.16.251.41 2004'

# Falcon
alias falcon1_IN_172_16_250_34='ssh root@172.16.250.134'

# Macaw
alias macaw1_IN_172_16_251_31__2014='telnet 172.16.251.31 2014'         # Kavita Negi
alias macaw2_IN_172_16_251_41__2046='telnet 172.16.251.41 2046'         # Chayan
alias macaw3_IN_172_16_251_31__2023='telnet 172.16.251.31 2023'         # Gurliv
alias macaw4_IN_172_16_251_31__2030='telnet 172.16.251.31 2030'         # Mohit
alias macaw5_IN_172_16_251_31__2017='telnet 172.16.251.31 2017'         # Sudhanshu - Factory reset
alias macaw6_IN_172_16_251_68__2001='telnet 172.16.251.68 2001'
alias macaw7_IN_172_16_251_31__2027='telnet 172.16.251.31 2027'


# CT4k
alias ct4k1_IN_172_16_251_31__2042='telnet 172.16.251.31 2042'
alias ct4k2_IN_172_16_251_31__2047='telnet 172.16.251.31 2047'


#################################################################
# SSH Aliases - check .ssh/config for IP address of Hosts
#################################################################
alias connect_rpi='ssh pi@rpi'
alias connect_rpi4='ssh pi@rpi4'
alias connect_vm='ssh sudhanshu@vm'
alias connect_mac='ssh sudhanshu@mac'

alias connect_serial='screen /dev/tty.usbserial-0001 115200'


# ChargePoint
# ===========
alias connect_tftp_cp='ssh sgupta@tftp_cp'
alias connect_cpe250_1='ssh sudhanshu@lab_laptop'          # Sudhanshu chargepoint
alias connect_cpe250_2='ssh tftp1@172.16.251.62'           # Shubham india@123
alias connect_automationindia='ssh tftp@172.16.251.62'           # india@123

alias telnet_power_switch='telnet 172.16.251.31 2047'
alias telnet_dcc_serial='telnet 172.16.251.41 2047'
alias telnet_cpnk_serial='telnet 172.16.251.41 2048'


alias connect_build2server='ssh sgupta@build2server'          # Builtin server for building source
alias connect_build2server_buildin='ssh build-in@build2server'   # Builtin server for building source


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
alias l='ls -alhG'

# --show-control-chars: help showing Korean or accented characters
#alias ls='ls -alhG --color=auto --show-control-chars'
#alias ll='ls -alhG'

alias dir='ll'
alias cls='clear'

# HOSTNAME specific commands.
# Checks for a substring(MacBook) in HOSTNAME
if [[ "$HOSTNAME" = *"MacBook"* ]]; then
    alias finder='open .'
else
    alias finder='nautilus . &'
fi

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
alias editgitmodules='vim .gitmodules'
alias editsshconfig='vim $HOME/.ssh/config'
#alias objdumpuboot='/home/sudhanshu/toolchain/gcc-linaro-6.3.1-2017.05-x86_64_aarch64-linux-gnu/bin/aarch64-linux-gnu-objdump -Dsl u-boot > dump'
#alias objdumplinux='/home/sudhanshu/toolchain/gcc-linaro-6.3.1-2017.05-x86_64_aarch64-linux-gnu/bin/aarch64-linux-gnu-objdump -Dsl vmlinux > objdump_linux'
alias pack_tar='tar cvf _archive_file.tar '
alias pack_rar='rar a _archive_file.tar '
alias pack_gz='tar cvfz _archive_file.tar.gz '
alias pack_bz2='tar cvfj _archive_file.tar.bz2 '
alias unpack_tar='tar -xvf '
alias unpack_rar='unrar e  '
alias unpack_gz='tar -xvfz '
alias unpack_bz2='tar -xvfj '
alias changefilemode644='chmod 644  '
alias ll='ls -alrt'
alias install_essentials='sudo apt-get install -y screen ctags vim git cscope build-essential libncurses-dev bison flex libssl-dev libelf-dev exuberant-ctags rar unrar'
alias install_essentials_mac='brew install wget cscope ctags dos2unix'
alias install_essentials_hack='sudo apt-get install -y aircrack-ng'
alias addr='ifconfig '
alias log='dmesg '
alias logtail='dmesg | tail '
alias dump_to_file_cmd_output='$1 |& tee -a command_output.txt'

function compile_cpp(){
    clang++ "$1.cpp" -std=c++2a -o "$1"
}

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

# Grep command shortcut
function g(){
    EXPRESSION_TO_SEARCH=$1


    if [ "$#" -ne 1 ];
        then
           echo "Illegal number of parameters"
           echo "Usage :"
           echo "$ g string_to_search_current_directory_recursively"
           echo ""
        else
            grep -rin "$EXPRESSION_TO_SEARCH" .
    fi
}

# Find and Delete a file or directory
function find_and_delete(){
    EXPRESSION_TO_DELETE=$1


    if [ "$#" -ne 1 ];
        then
           echo "Illegal number of parameters"
           echo "Usage :"
           echo "$ find_and_delete file_name_or_directory_to_delete"
           echo ""
        else
            find . -name "EXPRESSION_TO_DELETE" -exec rm -vrf {} \;
    fi
}

# Cscope Commands
# =============
function build_cscope_db_func()
{
     find $PWD -name *.c \
            -o -name *.h \
            -o -name *.mk \
            -o -name "*.sh" \
            -o -name *.xml \
            -o -name *.cfg \
            -o -name *.ini \
            -o -name *.dat \
            -o -name *.py \
            -o -name *.hpp \
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

function reload(){
    echo "Performing Update operation..."
    cp ~/support_package/home_folder/.screenrc ~
    cp ~/support_package/home_folder/.tmux.conf ~

    sh ~/support_package/home_folder/.ssh/install.sh
    sh ~/support_package/home_folder/.vim_runtime/install_awesome_vimrc.sh

    source ~/support_package/home_folder/.bash_aliases.sh
    echo "...Update Operation [ DONE ]."
}


# GIT Aliases
# ===========
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
alias forcepush_branchname='git push origin +$1:$1'
#alias forcepush_branchname='git push -f origin $1:$1'
#alias forcepush_branchname='git push -f $1:$1'
alias merge='git merge '
alias revert='git revert '
alias gd='git diff '
alias update='git remote update '
alias update_submodules='git submodule update --init --recursive '   # git checkout the tag on parent module before invoking this command. Sub-modules will be checkedout as per the parent's tag.

# execute this command if you modify .gitmodules to reflect changes in sub modules.
# Ref :: https://stackoverflow.com/questions/913701/how-to-change-the-remote-repository-for-a-git-submodule
alias sync_submodule_path='git submodule sync --recursive '

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

# Apply cherry pick patches
function cherrypick_with_commitID(){
    _COMMIT_ID=$1

    if [ "$#" -ne 1 ];
        then
            echo "Illegal number of parameters"
            echo "Usage :"
            echo "$0 _commit_id"
            echo "_commit_id - commit id that needs to be cherry picked to current branch"
            echo ""
        else
            git cherry-pick -x "$1"
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
	git branch -D $1 && git push origin :$1
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

function set_git_user_name_email() {
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


#################################
# OpenCV / Python related aliases
#################################

# Install Python development related libs
function install_python_dev_libs() {
    # NumPy lib
    echo "--- Installing numpy..."
    pip3 install numpy
    echo "--- Installing opencv-contrib-python..."
    pip3 install opencv-contrib-python
    # Perhaps there is a bug in the latest version 4.1.1.26..Use below version if you face error.
    # pip install opencv-contrib-python==4.1.0.25

    # Matplotlib, SciPy, Pillow
    echo "--- Installing scipy matplotlib pillow..."
    pip3 install scipy matplotlib pillow
    echo "--- Installing imutils h5py requests progressbar2..."
    pip3 install imutils h5py requests progressbar2
    echo "--- Installing scikit-learn scikit-image..."
    pip3 install scikit-learn scikit-image

    # TensorFlow - without GPU support
    echo "--- Installing tensorflow without GPU support..."
    pip3 install tensorflow
    # TensorFlow - with GPU support
    # echo "--- Installing tensorflow with GPU support..."
    # pip3 install tensorflow-gpu==1.12.0

    # Kera
    echo "--- Installing keras..."
    pip3 install keras

    # Mahotas
    echo "--- Installing mahotas..."
    pip3 install mahotas

    # NSE tools - to get stock details realtime
    echo "--- Installing nsetools..."
    pip3 install nsetools


    # Yahoo Finance - to get stock details
    echo "--- Installing yfinance..."
    pip3 install yfinance

    # Pandas
    echo "--- Installing pandas..."
    pip3 install pandas

    # html5lib
    echo "--- Installing html5lib..."
    pip3 install html5lib

    # BeautifulSoup4
    echo "--- Installing BeautifulSoup4..."
    pip3 install BeautifulSoup4

    # earthpy - for os path related stuff, writing generic OS independent code
    echo "--- Installing earthpy..."
    pip3 install earthpy

    # pyside 2, 6
    echo "--- Installing PySide..."
    pip3 install PySide6 PySide2

}

# Install python dev libs
function install_opencv_python_libs(){
    # Install Necessary Libs
    echo "Installing necessary libs for Python / OpenCV development"
    echo "========================================================="
    echo "--- Installing build-essential cmake unzip pkg-config..." && sudo apt-get install -y build-essential cmake unzip pkg-config
    echo "--- Installing libxmu-dev libxi-dev libglu1-mesa libglu1-mesa-dev..." && sudo apt-get install -y libxmu-dev libxi-dev libglu1-mesa libglu1-mesa-dev
    echo "--- Installing libjpeg-dev libpng-dev libtiff-dev libjasper-dev..." && sudo apt-get install -y libjpeg-dev libpng-dev libtiff-dev libjasper-dev
    echo "--- Installing libavcodec-dev libavformat-dev libswscale-dev libv4l-dev..." && sudo apt-get install -y libavcodec-dev libavformat-dev libswscale-dev libv4l-dev
    echo "--- Installing libxvidcore-dev libx264-de..." && sudo apt-get install -y libxvidcore-dev libx264-dev
    echo "--- Installing libgtk-3-dev..." && sudo apt-get install -y libgtk-3-dev
    echo "--- Installing libopenblas-dev libatlas-base-dev liblapack-dev gfortran..." && sudo apt-get install -y libopenblas-dev libatlas-base-dev liblapack-dev gfortran
    echo "--- Installing libhdf5-serial-dev..." && sudo apt-get install -y libhdf5-serial-dev
    echo "--- Installing libqtgui4 python3-pyqt5 libqt4-test..." && sudo apt-get install -y libqtgui4 python3-pyqt5 libqt4-test
    echo "--- Installing python3-dev python3-tk python-imaging-tk..." && sudo apt-get install -y python3-dev python3-tk python-imaging-tk

    # Install PIP3
    echo "Get pip.py and install pip3" && wget https://bootstrap.pypa.io/get-pip.py && sudo python3 get-pip.py
}

# Install Virtual Environment
function install_virtual_env() {
    # Install virtual env
    echo "Installing Virtual Environment - virtualenv & virtualenvwrapper"
    echo "==============================================================="
    sudo pip3 install virtualenv virtualenvwrapper
}

# Define OpenCV environment variables
function define_opencv_env_var() {
    export WORKON_HOME=$HOME/.virtualenvs
    export VIRTUALENVWRAPPER_VIRTUALENV=$(which virtualenv)
    export VIRTUALENVWRAPPER_PYTHON=$(which python3)

    if [ -f "$(which virtualenvwrapper.sh)" ]; then
        source $(which virtualenvwrapper.sh)
    fi

    if [ -f "$(which python3)" ]; then
        export PYTHONPATH=$(which python3)
    fi

    # Load this library for error
    # opencv: undefined symbol: __atomic_fetch_add_8
    if [ -f "/usr/lib/arm-linux-gnueabihf/libatomic.so.1" ]; then
        export LD_PRELOAD=/usr/lib/arm-linux-gnueabihf/libatomic.so.1
    fi

    # Adds path only if its not already present in $PATH
    echo $PATH | grep -q "/usr/local/bin"
    if [ $? -ne 0 ]; then
        export PATH=/usr/local/bin:$PATH
    fi

    echo $PATH | grep -q "/usr/local/opt/python/libexec/bin"
    if [ $? -ne 0 ]; then
        export PATH=/usr/local/opt/python/libexec/bin:$PATH
    fi

    echo $PATH | grep -q "/usr/local/lib/python3.7/dist-packages"
    if [ $? -ne 0 ]; then
        export PATH=/usr/local/lib/python3.7/dist-packages:$PATH
    fi

}

# Function to install necessary OpenCV / Python libs
# & Other Environment settings
function setup_opencv_python_env() {
    # Update distribution with latest repo info
    echo "Updating"
    echo "========"
    sudo apt-get update

    # Upgrade system
    echo "Upgrade"
    echo "======="
    sudo apt-get upgrade -y

    # Install Necessary Libs
    install_opencv_python_libs

    # Install Python Deep Learning Libs (TensorFlow, Keras, Numpy, Etc)
    install_python_dev_libs

    # Install Virtual Env for Phython Developement
    install_virtual_env

    # Export Environment Defines
    define_opencv_env_var
}

# Exports / Environment Defines
define_opencv_env_var


#################################################################
# Git Clone Aliases
#################################################################
# Raspberry Pi
alias clone_rpi_iot_kernel='git clone https://github.com/softwaresunleashed/rpi_iot_kernel.git'
alias clone_rpi_iot_projects_src_code='git clone https://github.com/softwaresunleashed/iot_projects_src_code.git'

# Arduino
alias clone_arduino='git clone https://github.com/softwaresunleashed/arduino.git'

# Personal Docs
alias clone_personaldocs='git clone https://github.com/softwaresunleashed/personaldocs.git'

# Ebook Writing
alias clone_ebook_writing='git clone https://github.com/softwaresunleashed/ebook_writing.git'

# AI / DeepLearning
alias clone_ai='git clone https://github.com/softwaresunleashed/ai.git'
alias clone_opencv='git clone https://github.com/opencv/opencv.git'
alias clone_opencv_contrib='git clone https://github.com/opencv/opencv_contrib.git'

