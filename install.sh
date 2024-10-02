# Create symbolic links
ln -sf ~/dotfiles/.tmux.conf ~/.tmux.conf
ln -sf ~/dotfiles/.config/nvim ~/.config/nvim
ln -sf ~/dotfiles/.bashrc ~/.bashrc

# Install LazyVim if not already installed
if [ ! -f "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/lazy/lazy.nvim/lua/lazy.lua ]; then
  echo "Installing LazyVim..."
  git clone https://github.com/LazyVim/LazyVim "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim
fi
echo "Dotfiles installed successfully!"
