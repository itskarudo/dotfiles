# Defined in - @ line 1
function pac --wraps='sudo pacman' --description 'alias pac=sudo pacman'
  sudo pacman $argv;
end
