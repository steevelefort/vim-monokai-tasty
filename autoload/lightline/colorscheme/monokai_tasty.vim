" =============================================================================
" Author: Patrick Stockwell
" License: MIT License
" Email: longnow@tutanota.com
" =============================================================================

let s:yellow = { 'cterm': 228, 'gui': '#ffff87' }
let s:purple = { 'cterm': 141, 'gui': '#af77FF' }
let s:light_green = { 'cterm': 160, 'gui': '#84f470' }
let s:light_blue = { 'cterm': 81, 'gui': '#00aaff' }
let s:magenta = { 'cterm': 197, 'gui': '#FF2A50' }
let s:orange = { 'cterm': 208, 'gui': '#FFb700' }

let s:light_grey = { "cterm": 250, "gui": "#bcbcbc" }
let s:grey = { "cterm": 245, "gui": "#506077" }
let s:dark_grey = { "cterm": 59, "gui": "#203040" }
let s:darkest_grey = { "cterm": 238, "gui": "#001020" }
let s:light_charcoal = { "cterm": 236, "gui": "#ff0515" }
let s:charcoal = { "cterm": 235, "gui": "#000000" }

function! s:add(fg, bg, style)
  return [ a:fg["gui"], a:bg["gui"], a:fg["cterm"], a:bg["cterm"], a:style ]
endfunction

let s:palette = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}, 'command': {}}

" right
let s:palette.normal.right = [
      \ s:add(s:charcoal, s:light_blue, 'none'),
      \ s:add(s:charcoal, s:grey, 'none'),
      \ s:add(s:light_blue, s:dark_grey, 'none') ]
let s:palette.inactive.right = [
      \ s:add(s:charcoal, s:grey, 'none'),
      \ s:add(s:charcoal, s:dark_grey, 'none'),
      \ s:add(s:light_grey, s:dark_grey, 'none') ]
let s:palette.command.right = [
      \ s:add(s:charcoal, s:light_grey, 'none'),
      \ s:add(s:charcoal, s:grey, 'none'),
      \ s:add(s:light_grey, s:dark_grey, 'none') ]
let s:palette.insert.right = [
      \ s:add(s:charcoal, s:light_green, 'none'),
      \ s:add(s:charcoal, s:grey, 'none'),
      \ s:add(s:light_grey, s:dark_grey, 'none') ]
let s:palette.visual.right = [
      \ s:add(s:charcoal, s:yellow, 'none'),
      \ s:add(s:charcoal, s:grey, 'none'),
      \ s:add(s:light_grey, s:dark_grey, 'none') ]
let s:palette.replace.right = [
      \ s:add(s:charcoal, s:magenta, 'none'),
      \ s:add(s:charcoal, s:grey, 'none'),
      \ s:add(s:light_grey, s:dark_grey, 'none') ]

" left
let s:palette.normal.left = [
      \ s:add(s:light_blue, s:darkest_grey, 'bold'),
      \ s:add(s:charcoal, s:light_blue, 'none') ]
let s:palette.command.left =  [
      \ s:add(s:light_grey, s:darkest_grey, 'bold'),
      \ s:add(s:charcoal, s:light_grey, 'none') ]
let s:palette.replace.left = [
      \ s:add(s:magenta, s:darkest_grey, 'bold'),
      \ s:add(s:charcoal, s:magenta, 'none') ]
let s:palette.insert.left = [
      \ s:add(s:light_green, s:darkest_grey, 'bold'),
      \ s:add(s:charcoal, s:light_green, 'none') ]
let s:palette.visual.left = [
      \ s:add(s:yellow, s:darkest_grey, 'bold'),
      \ s:add(s:charcoal, s:yellow, 'none') ]
let s:palette.inactive.left = s:palette.inactive.right[1:]

" middle
let s:palette.normal.middle = [
      \ s:add(s:yellow, s:darkest_grey, 'none') ]
let s:palette.insert.middle = [
      \ s:add(s:light_blue, s:darkest_grey, 'none') ]
let s:palette.replace.middle = [
      \ s:add(s:magenta, s:darkest_grey, 'none') ]
let s:palette.visual.middle = [
      \ s:add(s:purple, s:darkest_grey, 'none') ]
let s:palette.inactive.middle = [
      \s:add(s:dark_grey, s:light_charcoal, 'none') ]

" tabs
let s:palette.tabline.left = [ [ '#d0d0d0', '#333333', 252, 242 ] ]
"let s:palette.tabline.tabsel = [ [ '#dadada', '#00aaff', 253, 233 ] ]
let s:palette.tabline.tabsel = [ [ '#dadada', '#0077ff', 253, 233 ] ]
let s:palette.tabline.middle = [ [ '#8a8a8a', '#001020', 245, 237 ] ]
let s:palette.tabline.right = [ [ '#d0d0d0', '#334455', 252, 242 ] ]

let s:palette.normal.error = [ [ '#d0d0d0', '#ff0000', 252, 196 ] ]
let s:palette.normal.warning = [ [ '#262626', '#ffff00', 235, 226 ] ]

let g:lightline#colorscheme#monokai_tasty#palette = s:palette

