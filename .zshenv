## Homebrew
export PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin

## Java
export JAVA_HOME=`/usr/libexec/java_home`
export _JAVA_OPTIONS=-Dfile.encoding=UTF-8

## Scala
export SCALA_HOME=$(brew --prefix scala)
export PATH=$PATH:$SCALA_HOME/bin

## Clojure
export CLOJURE_HOME=$(brew --prefix clojure)

## Python
# pythonz
[[ -s $HOME/.pythonz/etc/bashrc ]] && source $HOME/.pythonz/etc/bashrc
PYTHON_HOME=$HOME/.pythonz/pythons/$(cat $HOME/.selected/python | grep -v "^#")
export PATH="${PYTHON_HOME}/bin:${PATH}"

# virtualenv
VIRTUALENVWRAPPER_PYTHON=`which python`
if [ -f /usr/local/bin/virtualenvwrapper.sh ]; then
  export WORKON_HOME=${HOME}/virtualenv
  source /usr/local/bin/virtualenvwrapper.sh
fi

# http://toggtc.hatenablog.com/entry/2012/02/06/023807
export VIRTUALENV_USE_DISTRIBUTE=true
# pip
export PIP_DOWNLOAD_CACHE=$HOME/.pip_download_cache


## Ruby
export PATH="$HOME/.rbenv/bin:$PATH"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

## node.js
export PATH=$PATH:/usr/local/share/npm/bin/
