local function SetFoldText()
  vim.cmd([[
    function! SetFoldText()
        let line = getline(v:foldstart)
        let line2 = trim(getline(v:foldstart + 1))
        let last = trim(getline(v:foldend))
        let sub = line 
        if v:foldend - v:foldstart > 2 
            let sub = sub . ' ' . line2
        endif
        let lines = v:foldend-v:foldstart + 1
        return sub . ' ---(' . lines . ' lines)--- '.last   
    endfunction

    set foldtext=SetFoldText()
  ]])
end

local function GoTo(r,c)
  vim.cmd("normal " .. c .. "|")
  vim.cmd(":" .. r)
end

local function NextBrace()
  vim.cmd("/{")
end

local function SelectBlock() 
  vim.cmd("normal mav%v")
end

local function FoldSelectedBlock()
  vim.cmd(":*fold")
end

local function UnFoldAll()
  vim.cmd('normal `azR')  
end

local function FoldNext(...)
  local arg = {...}
  if #arg >= 2 then
    local row = arg[1]
    local col = arg[2]
    GoTo(row,col)
  else
    NextBrace()
  end
  SelectBlock()
  FoldSelectedBlock()
  UnFoldAll()
end

local function FoldDocument() 
  local lines = vim.api.nvim_buf_get_lines(0,0,-1,false)
  local open_braces = 0
  for row = 1,#lines do  

    local col = 0
    while col ~= nil do
      col = lines[row]:find('[{(%[]',col+1)
      if col ~= nil then
        FoldNext(row,col)
      end
    end
  end 
  print(open_braces, "matches found")
end
SetFoldText()

return {
  FoldNext = FoldNext,
  FoldDocument = FoldDocument,
  GoTo = GoTo,
  NextBrace = NextBrace,   
  SelectBlock = SelectBlock,  
  FoldSelectedBlock = FoldSelectedBlock,  
  UnFoldAll = UnFoldAll,
}
