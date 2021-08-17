# Disable your vim config
if [ -f $HOME/.vimrc ]; then
    echo "Disable $HOME/.vimrc"
    mv $HOME/.vimrc $HOME/.old_vimrc
fi

if [ -f $HOME/vimrc ]; then
    echo "Disable $HOME/vimrc"
    mv $HOME/vimrc $HOME/old_vimrc
fi

# Check your installation
if [ ! -d $HOME/.vim/ ]; then
    echo "Where is your $HOME/.vim/ ?"
    exit 1
fi

echo "Updating plugin ..."
cd $HOME/.vim/
git submodule update --depth 1 --init --remote --recursive
echo "Done!"

