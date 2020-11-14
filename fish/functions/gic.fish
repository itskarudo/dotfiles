# Defined in - @ line 1
function gic --wraps='git clone' --description 'alias gic=git clone'
  git clone $argv;
end
