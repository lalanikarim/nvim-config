let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   MRU']            },
          \ { 'type': 'dir',       'header': ['   MRU '. getcwd()] },
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ { 'type': 'commands',  'header': ['   Commands']       },
          \ ]

let g:startify_change_to_vcs_root = 1

let g:startify_custom_header = [
  \'       _   __         _    ___              ____             __         ',
  \'      / | / /__  ____| |  / (_)___ ___     / __ \____  _____/ /_______  ',
  \'     /  |/ / _ \/ __ \ | / / / __ `__ \   / /_/ / __ \/ ___/ //_/ ___/  ',
  \'    / /|  /  __/ /_/ / |/ / / / / / / /  / _, _/ /_/ / /__/ ,< (__  )   ',
  \'   /_/ |_/\___/\____/|___/_/_/ /_/ /_/  /_/ |_|\____/\___/_/|_/____/    ',
  \]                                                                         
