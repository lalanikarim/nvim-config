function! s:simplefoldplugin()
  lua for k in pairs(package.loaded) do if k:match("simplefold") then package.loaded[k] = nil end end
  return luaeval("require('simplefold')")
endfunction

let g:simpleFold = s:simplefoldplugin()
