# Git branch in prompt.

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

# Set JAVA_HOME

export JAVA_HOME="$(/usr/libexec/java_home)"

# For local stups setup

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

ANDROID_HOME = /Users/wseobseo/Library/Android/sdk
