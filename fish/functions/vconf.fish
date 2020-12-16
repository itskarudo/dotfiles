# Defined in - @ line 1
function vconf --wraps='vim ~/.config/nvim/init.vim' --description 'alias vconf=vim ~/.config/nvim/init.vim'
  vim ~/.config/nvim/init.vim $argv;
end
