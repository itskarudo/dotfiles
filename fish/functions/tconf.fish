# Defined in - @ line 1
function tconf --wraps='vim ~/.tmux.conf' --description 'alias tconf=vim ~/.tmux.conf'
  vim ~/.tmux.conf $argv;
end
