# Defined in - @ line 1
function cat --wraps='bat --theme=nord' --wraps='bat --theme=Nord' --description 'alias cat=bat --theme=Nord'
  bat --theme=Nord $argv;
end
