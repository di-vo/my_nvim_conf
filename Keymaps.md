# Keymaps Cheatsheet

## Table of Contents

- [Keymaps Cheatsheet](#keymaps-cheatsheet)
  - [Table of Contents](#table-of-contents)
  - [Motions](#motions)
  - [Misc](#misc)

## Basic Motions

- h -> **l**eft
- j -> **d**own
- k -> **u**p
- l -> **r**ight

## Horizontal Movement

- i -> insert before cursor
- a insert after cursor
- gg -> go to top of file
- w -> start of next word
- e -> end of next word
- $ -> end of line
- _ -> start of line
- 0 -> start of line (first character)
- f<c> -> find next occurence of c and move onto it
- t<c> -> find next occurence of c and move before it
- F<c> -> inverse of f
- T<c> -> inverse of t
  - , -> go to previous occurence of c
  - ; -> go to next occurence of c


## Vertical Movements

- / -> search word
- ? -> backwards search word
- * -> search hovered word
- # -> backwards search hovered word
  - n -> go to next occurence
  - N -> go to previous ocurrence
- C-d -> move down half your sceen
- C-u -> move up half your screen

## Misc

- qq -> record macro -> q (to exit) -> @q (to call)
- v + <motion> -> select
- V -> select line
- u -> undo
- C-r -> redo
- S-g -> go to end of file
- S-h -> go to top of visible lines
- S-l -> go to end of visible lines
- r -> replace at cursor
- x -> delete at cursor
- d<motion> -> delete selection
- dd -> delete line
- o -> add line below and enter insert mode
- O -> add line above and enter insert mode
- y -> yank selection
- yy -> yank line
- p -> paste after cursor
- P -> paste before cursor
