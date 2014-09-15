# zshrc file written for antigen's tests. Might not be a good one for daily use.

# See cram's documentation for some of the variables used below.

export ADOTDIR="$PWD/dot-antigen"

test -f "$TESTDIR/.zcompdump" && rm "$TESTDIR/.zcompdump"

source "$TESTDIR/../antigen.zsh"

# A test plugin repository to test out antigen with.

export PLUGIN_DIR="$PWD/test-plugin"
mkdir "$PLUGIN_DIR"

# A wrapper function over `git` to work with the test plugin repo.
alias pg='git --git-dir "$PLUGIN_DIR/.git" --work-tree "$PLUGIN_DIR"'

echo 'alias hehe="echo hehe"' > "$PLUGIN_DIR"/aliases.zsh
echo 'export PS1="prompt>"' > "$PLUGIN_DIR"/silly.zsh-theme

{
    pg init
    pg add .
    pg commit -m 'Initial commit'
} > /dev/null

# Another test plugin.

export PLUGIN_DIR2="$PWD/test-plugin2"
mkdir "$PLUGIN_DIR2"

# A wrapper function over `git` to work with the test plugin repo.
alias pg2='git --git-dir "$PLUGIN_DIR2/.git" --work-tree "$PLUGIN_DIR2"'

echo 'alias hehe2="echo hehe2"' > "$PLUGIN_DIR2"/init.zsh
echo 'alias unsourced-alias="echo unsourced-alias"' > "$PLUGIN_DIR2"/aliases.zsh

{
    pg2 init
    pg2 add .
    pg2 commit -m 'Initial commit'
} > /dev/null

# Another test prezto style plugin.

export PLUGIN_DIR3="$PWD/test-plugin3"
mkdir "$PLUGIN_DIR3"

# A wrapper function over `git` to work with the test plugin repo.
alias pg3='git --git-dir "$PLUGIN_DIR3/.git" --work-tree "$PLUGIN_DIR3"'

echo 'alias hehe3="echo hehe3"' > "$PLUGIN_DIR3"/main.zsh
ln -s "$PLUGIN_DIR3"/main.zsh "$PLUGIN_DIR3"/init.zsh
echo 'alias unsourced-alias3="echo unsourced-alias3"' > "$PLUGIN_DIR3"/aliases.zsh

{
    pg3 init
    pg3 add .
    pg3 commit -m 'Initial commit'
} > /dev/null

# Another test oh-my-zsy style plugin.

export PLUGIN_DIR4="$PWD/test-plugin4"
mkdir "$PLUGIN_DIR4"

# A wrapper function over `git` to work with the test plugin repo.
alias pg4='git --git-dir "$PLUGIN_DIR4/.git" --work-tree "$PLUGIN_DIR4"'

echo 'alias hehe4="echo hehe4"' > "$PLUGIN_DIR4"/test4.plugin.zsh
echo 'alias unsourced-alias4="echo unsourced-alias4"' > "$PLUGIN_DIR4"/aliases.zsh

{
    pg4 init
    pg4 add .
    pg4 commit -m 'Initial commit'
} > /dev/null

# Another test oh-my-zsh style plugin.

export PLUGIN_DIR5="$PWD/test-plugin5"
mkdir "$PLUGIN_DIR5"

# A wrapper function over `git` to work with the test plugin repo.
alias pg5='git --git-dir "$PLUGIN_DIR5/.git" --work-tree "$PLUGIN_DIR5"'

echo 'alias hehe5="echo hehe5"' > "$PLUGIN_DIR5"/main.zsh
ln -s "$PLUGIN_DIR5"/main.zsh "$PLUGIN_DIR5"/test5.plugin.zsh
echo 'alias unsourced-alias5="echo unsourced-alias5"' > "$PLUGIN_DIR5"/aliases.zsh

{
    pg5 init
    pg5 add .
    pg5 commit -m 'Initial commit'
} > /dev/null

