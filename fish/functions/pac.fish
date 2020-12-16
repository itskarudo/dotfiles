# Defined in - @ line 1
function pac --wraps='sudo apt' --wraps='sudo aptitude' --description 'alias pac=sudo aptitude'
  sudo aptitude $argv;
end
