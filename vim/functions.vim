function! GitLog()
  execute "!git log"
endfunction

function! DockerTestNearest()
  let command = "docker-compose run --rm app bundle exec rspec " . expand('%:~:.') . ":" . line(".")
  call ClearEchoAndExecute(command)
endfunction

function! DockerTestFile()
  let command = "docker-compose run --rm app bundle exec rspec ". expand('%:~:.')
  call ClearEchoAndExecute(command)
endfunction

function! RubocopFixCs()
  let command = "bundle exec rubocop -a " . expand('%')
  call ClearEchoAndExecute(command)
endfunction

function! ClearEchoAndExecute(command)
  if has('nvim')
    -tabnew
    call termopen(a:command)
    startinsert
    return
  endif

  let message = '.editor/project.vim => ' . a:command
  let command = "echo -e '" . message . "' && " . a:command
  echo command

  if has('nvim')
    -tabnew
    call termopen(command)
    startinsert
    return
  endif

  let command = '! clear && ' . command
  execute command
endfunction
