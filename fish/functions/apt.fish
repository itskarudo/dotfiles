# Defined in - @ line 1
function apt --wraps=aptitude --description 'alias apt=aptitude'
  aptitude  $argv;
end
