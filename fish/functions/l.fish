# Defined in - @ line 1
function l --wraps='ls -l' --description 'alias l=ls -l'
  ls -l $argv;
end
