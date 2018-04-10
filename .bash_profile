# Git branch in prompt.

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

# Set JAVA_HOME

export JAVA_HOME="$(/usr/libexec/java_home)"

# Add python executable and things installed by pip to PATH variable

export PATH=/Users/<username>/Library/Python/3.6/bin:$PATH
