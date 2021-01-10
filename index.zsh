ZHORTS=$PWD

for zhort in $ZHORTS/*.zsh
do
    if [ "${zhort}" != "${ZHORTS}/index.zsh" ]
    then
        source $zhort
    fi
done