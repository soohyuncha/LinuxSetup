# Install zsh and some useful plugins
sudo apt install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install plugin
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-syntax-highlighting ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

git clone https://github.com/wting/autojump.git
cd autojump
./install.py
cd ..
rm -rf autojump

# After this command
# 1) Copy 'zshrc' file into home directory
# cp zshrc ~/.zshrc

# 2) source ~/.zshrc
