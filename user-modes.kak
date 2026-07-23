declare-user-mode anchor
map global user 'a' ': enter-user-mode anchor<ret>' -docstring 'enter anchor mode' 
map global anchor a '<esc><a-;>;'     -docstring 'reduce to anchor'
map global anchor c '<esc>;'          -docstring 'reduce to cursor'
map global anchor f '<esc><a-;>'      -docstring 'flip cursor and anchor'
map global anchor h '<esc><a-:><a-;>' -docstring 'ensure anchor after cursor'
map global anchor l '<esc><a-:>'      -docstring 'ensure cursor after anchor'
map global anchor s '<esc><a-S>'      -docstring 'split at cursor and anchor'

declare-user-mode rotation
map global user 'r' ': enter-user-mode rotation<ret>' -docstring 'enter rotation mode' 
map global rotation h '<esc><a-(>' -docstring '← rotate selections content'
map global rotation j '<esc>('     -docstring '← rotate main selection'
map global rotation k '<esc>)'     -docstring '→ rotate main selection'
map global rotation l '<esc><a-)>' -docstring '→ rotate selections content'

declare-user-mode trim
map global user 't' ': enter-user-mode trim<ret>'  -docstring 'enter trim mode' 
map global trim h '<esc>s^\h+<ret><a-d>'           -docstring '← trim selections content start'
map global trim j '<esc>S^\s+<ret><a-k>\S<ret>'    -docstring '← trim start'
map global trim T '<esc>s^\h+|\h+$<ret><a-d>'      -docstring '↔ trim selections content both'
map global trim t '<esc>_'                         -docstring '↔ trim both'
map global trim k '<esc>S\s+$|\n<ret><a-k>\S<ret>' -docstring '→ trim end'
map global trim l '<esc>s\h+$<ret><a-d>'           -docstring '→ trim selections content end'

declare-user-mode lint
map global user 'h' ': enter-user-mode lint<ret>' -docstring 'enter lint mode' 
map global lint l ': lint<ret>'                   -docstring 'lint'
map global lint n ': lint-next-message<ret>'      -docstring 'next'
map global lint p ': lint-previous-message<ret>'  -docstring 'prev'
map global lint b ': b *lint-output*<ret>'        -docstring 'output buffer'
