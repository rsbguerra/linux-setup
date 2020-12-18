sudo apt-get install haskell-platform
wget -qO- https://get.haskellstack.org/ | sh
export PATH=/home/raquel/.local/bin:$PATH
source ~/.zshrc
stack install hlint