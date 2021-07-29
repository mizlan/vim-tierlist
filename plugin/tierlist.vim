function! MoveToTier(tier)
  let word = expand('<cword>')
  let locs = { "S": 2, "A": 5, "B": 8, "C": 11, "D": 14 }
  let lnum = locs[a:tier]
  call setline(lnum, getline(lnum) . ' ' . word)
endfunction

function! TierListGen()
  " clear buffer
  execute '%d'

  hi STier ctermfg=white ctermbg=196
  hi ATier ctermfg=white ctermbg=166
  hi BTier ctermfg=white ctermbg=172
  hi CTier ctermfg=white ctermbg=178
  hi DTier ctermfg=white ctermbg=106

  call append(0,  '       ')
  call append(1,  '   S   ')
  call append(2,  '       ')
  call append(3,  '       ')
  call append(4,  '   A   ')
  call append(5,  '       ')
  call append(6,  '       ')
  call append(7,  '   B   ')
  call append(8,  '       ')
  call append(9,  '       ')
  call append(10, '   C   ')
  call append(11, '       ')
  call append(12, '       ')
  call append(13, '   D   ')
  call append(14, '       ')

  syntax region STier start="\%1l\%1c" end="\%1l\%8c"
  syntax region STier start="\%2l\%1c" end="\%2l\%8c"
  syntax region STier start="\%3l\%1c" end="\%3l\%8c"
  syntax region ATier start="\%4l\%1c" end="\%4l\%8c"
  syntax region ATier start="\%5l\%1c" end="\%5l\%8c"
  syntax region ATier start="\%6l\%1c" end="\%6l\%8c"
  syntax region BTier start="\%7l\%1c" end="\%7l\%8c"
  syntax region BTier start="\%8l\%1c" end="\%8l\%8c"
  syntax region BTier start="\%9l\%1c" end="\%9l\%8c"
  syntax region CTier start="\%10l\%1c" end="\%10l\%8c"
  syntax region CTier start="\%11l\%1c" end="\%11l\%8c"
  syntax region CTier start="\%12l\%1c" end="\%12l\%8c"
  syntax region DTier start="\%13l\%1c" end="\%13l\%8c"
  syntax region DTier start="\%14l\%1c" end="\%14l\%8c"
  syntax region DTier start="\%15l\%1c" end="\%15l\%8c"

  nnoremap <silent> gs <Cmd>call MoveToTier("S")<CR>
  nnoremap <silent> ga <Cmd>call MoveToTier("A")<CR>
  nnoremap <silent> gb <Cmd>call MoveToTier("B")<CR>
  nnoremap <silent> gc <Cmd>call MoveToTier("C")<CR>
  nnoremap <silent> gd <Cmd>call MoveToTier("D")<CR>
  
endfunction

command! TierListGen call TierListGen()
