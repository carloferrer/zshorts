# Prepend source to .zshrc
ZSH=~/.zshrc
SRCPATH="source ${PWD}/index.zsh"
REPO="https://github.com/carloferrer/zhorts"

if grep -q $SRCPATH $ZSH
then
    echo "Source path to zhorts exists!"
else
    echo -e "# $REPO\n$SRCPATH\n\n$(cat $ZSH)" > $ZSH
    echo "Source path to zhorts added!"
fi

# Apply zhorts aliases etc.
for zhort in $PWD/*.zsh
do
    if [ "${zhort}" != "${PWD}/index.zsh" ]
    then
        source $zhort
    fi
done

# Add alias to apply new aliases
alias sz="source ~/.zshrc"
