sudo apt-get install ghc libx11-dev
sudo apt-get install wget
sudo apt-get install zsh
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

wget http://hackage.haskell.org/package/cabal-install-2.0.0.1/cabal-install-2.0.0.1.tar.gz
tar xzf cabal-install-2.0.0.1.tar.gz
cd cabal-install-2.0.0.1/
./bootstrap.sh
echo "export PATH=$PATH:~/.cabal/bin" >> ~/.profile
cabal install xmonad
cabal install xmonad-contrib --flags="-use_xft"
cabal install xmobar

