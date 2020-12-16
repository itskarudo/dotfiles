# Defined in - @ line 1
function con --wraps=eval\ /opt/anaconda3/bin/conda\ \'shell.fish\'\ \'hook\'\ \ \|\ source --description alias\ con=eval\ /opt/anaconda3/bin/conda\ \'shell.fish\'\ \'hook\'\ \ \|\ source
  eval /opt/anaconda3/bin/conda 'shell.fish' 'hook'  | source $argv;
end
