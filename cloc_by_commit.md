### vig.py cloc by commit

Generated with `perl ~/Downloads/cloc-2.10.pl vig.py` against each commit version of `vig.py`.

| Commit | Code | Blank | Comment | Subject |
|---|---:|---:|---:|---|
| `5745f9c` | 759 | 79 | 89 | minimal vi-inspired editor in python.  Works including basic motions, dycpv operators |
| `9b7e6af` | 720 | 84 | 91 | fix cursor, refactor |
| `651a532` | 792 | 88 | 99 | Phase 10: search (/ ? n N) with regex, SEARCH mode, 6 tests |
| `52aedcf` | 842 | 96 | 103 | Phase 11: substitute :[range]s/pat/repl/[g], 6 tests |
| `9866242` | 930 | 103 | 111 | Phase 12: line wrap (:set wrap/nowrap), wrap-aware rendering and scroll, 4 tests |
| `f234314` | 969 | 105 | 113 | Phase 13: line numbers (:set number/relativenumber), substitute delimiter fix, 4 tests |
| `c42ae30` | 971 | 105 | 113 | Phase 14: arrow keys in insert mode, fix test harness CSI sequence delivery, 2 tests |
| `f0e2dcc` | 971 | 105 | 113 | updated document and added management section |
| `04a324e` | 971 | 105 | 113 | Remove accidentally committed __pycache__ |
| `286635e` | 1050 | 111 | 122 | Phase 15: undo/redo with full-buffer snapshots |
| `a389002` | 1625 | 140 | 182 | Phases 17-27: gg/G/0 motions, f/t/F/T/;/, find-char, >>/<<indent, autoindent, % bracket match, o/O open line, iw/iW/aw/aW word objects, bracket/quote text objects, gcc/gc comment toggle, dot repeat, :read/:/exitead ! |
| `22ad344` | 1614 | 141 | 183 | Refactor 1: Extract _enter_op_pending() helper |
| `d12dbdf` | 1620 | 141 | 183 | Refactor 2: Init all pending flags in __init__, drop hasattr |
| `266b390` | 1609 | 142 | 183 | Refactor 3: Deduplicate _exec_find/_repeat_find dispatch |
| `65ce880` | 1607 | 143 | 184 | Refactor 4: Extract _open_line(below) helper |
| `fdcfca8` | 1598 | 143 | 184 | Refactor 5: Route find motions through _exec_operator |
| `aa2d3fe` | 1596 | 143 | 185 | Refactor 6: Share pending flags between normal and visual |
| `8bcfe1e` | 1580 | 143 | 185 | Refactor 7: Consolidate render wrap paths |
| `1c9b310` | 1714 | 150 | 194 | Phase 28: Multi-buffer support |
| `3b4520b` | 1688 | 151 | 194 | Refactor: extract _close_buffer, deduplicate :q/:k, add :qall/:qall! |
| `8140a7d` | 1717 | 152 | 196 | Phase 29: x/X delete and space-leader |
| `e4f3751` | 1726 | 152 | 196 | Phase 29.5: Refactor motion keys - add ^, $, Home, End to _MOTION_KEYS |
| `355d2c8` | 1739 | 163 | 196 | Refactor motion dispatch and add phase test selection |
| `fa48ed8` | 1749 | 163 | 196 | Phase 30: add ^/$, Home/End, Tab, and Delete support |
| `0461c16` | 1771 | 164 | 197 | Phase 31: add J line join and visual ^/$ coverage |
| `9c41142` | 1782 | 166 | 199 | Phase 32: resolve :e/:w and argv paths with ~ and buffer-relative rules |
| `56e7acd` | 1794 | 168 | 199 | Phase 33: add Ctrl-D/Ctrl-U half-page motions |
| `d6754c7` | 1815 | 168 | 199 | Phase 34: add scrolloff option and margin-aware scrolling |
| `cafadab` | 1828 | 168 | 200 | Fix Home/End SS3 decode and ; repeat for t/T motions |
| `01126cb` | 1832 | 168 | 200 | Fix home and end for various terminals |
| `329c3cd` | 1847 | 168 | 200 | Fix :w/:wq write errors to avoid crash and report message |
| `6042e93` | 1847 | 168 | 200 | delete asdf and foo |
| `44c772d` | 1893 | 171 | 203 | Phase 35: add clipboard modes and default to auto |
| `4847417` | 1938 | 171 | 204 | add crash log |
| `689ff40` | 1968 | 171 | 207 | fix word boundary crash bug w W b B e E and associated tests and diagnostics |
| `1554ef7` | 1968 | 171 | 207 | interim AGENTS changes |
| `578da32` | 1968 | 171 | 207 | update specs |
| `6cd1455` | 2029 | 177 | 211 | Implement small editor fixes from todo |
| `93becd1` | 2032 | 177 | 211 | Finish todo fixes for dw and suspension docs |
| `3e3ce22` | 2053 | 177 | 211 | Fix Ctrl-Z suspension and directory edit errors |
| `f690e83` | 2074 | 177 | 213 | Improve Ctrl-Z job control suspension |
| `a72f356` | 2074 | 177 | 213 | Remove notes file |
| `bb57cf4` | 2077 | 177 | 213 | Horizontally scroll current line at right edge |
| `7087262` | 2076 | 177 | 213 | Apply horizontal scroll to full window |
| `9d1427f` | 2076 | 177 | 213 | install script, update todo.md |
| `8184aac` | 2122 | 182 | 218 | Add quit aliases and startup config |
| `b195bc5` | 2122 | 182 | 218 | add cloc script |
| `4ce6d85` | 2245 | 186 | 222 | Add ripgrep quickfix buffer |
