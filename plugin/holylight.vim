let g:holylight_checker_path = expand('<sfile>:p:h:h').'/bin/holylight-checker'
au BufNewFile,BufRead *.* call HolyLight()
au CursorHold * call HolyLight() " Run HolyLight on CursorHold (see 'updatetime').

function! HolyLight()
  let brightness  = system(g:holylight_checker_path)
  let exit_status = v:shell_error

  if (exit_status != 0)
    echo "Holy Light: Failed to initialize the ambient light sensor"
    return
  endif

  if !exists('g:holylight_threshold')
    let g:holylight_threshold = 1000000
  endif

  if (brightness < g:holylight_threshold)
    set background=dark
  else
    set background=light
  endif
endfunction
