function! OpenTestAlternate()
  let new_file = AlternateForCurrentFile()
  exec ':e ' . new_file
endfunction

function! OpenTestAlternateInSplit()
  let new_file = AlternateForCurrentFile()
  exec ':vs ' . new_file
endfunction

function! AlternateForCurrentFile()
  let current_file = expand("%")
  let new_file = current_file
  let in_spec = match(current_file, '^spec/') != -1
  let going_to_spec = !in_spec
  let in_app = match(current_file, '\<controllers\>') != -1 || match(current_file, '\<models\>') != -1 || match(current_file, '\<views\>') != -1 || match(current_file, '\<helpers\>') != -1 || match(current_file, '\<presenters\>') != -1 || match(current_file, '\<middleware\>') != -1 || match(current_file, '\<services\>') != -1
  if going_to_spec
    if in_app
      let new_file = substitute(new_file, '^app/views/helpers', 'view_helpers', '')
      let new_file = substitute(new_file, '^app/', '', '')
    end
    let new_file = substitute(new_file, '\.e\?js$', '_spec.js', '')
    let new_file = 'spec/' . new_file
  else
    let new_file = substitute(new_file, '_spec\.js$', '.js', '')
    let new_file = substitute(new_file, '^spec/', '', '')
    if in_app
      let new_file = 'app/' . new_file
    end
  endif
  return new_file
endfunction

command A call OpenTestAlternate()
command AV call OpenTestAlternateInSplit()
