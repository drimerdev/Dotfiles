winget install neovim
winget install firefox
winget install git.git
cls
Move-Item $env:LOCALAPPDATA\nvim $env:LOCALAPPDATA\nvim.b
Move-Item $env:LOCALAPPDATA\nvim-data $env:LOCALAPPDATA\nvim-data.bak
git clone https://github.com/LazyVim/starter $env:LOCALAPPDATA\nvim
Remove-Item $env:LOCALAPPDATA\nvim\.git -Recurse -Force
nvim

rem made by miguel draws
