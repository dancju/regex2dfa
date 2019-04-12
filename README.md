# regex2dfa

This is a compiler that converts regular expressions to images of minimised DFA.

It is a pure front-end application, i.e. the server only hosts static assets and all logics are executed on the browser. The process of "from regex to DFA" can be split into three steps:

1. Transforming the regular expression to the corresponding minimised DFA with
    1. [Thompson's construction algorithm](https://en.wikipedia.org/wiki/Thompson%27s_construction),
    1. [powerset construction](https://en.wikipedia.org/wiki/Powerset_construction),
    1. [Brzozowski's DFA minimization algorithm](https://en.wikipedia.org/wiki/DFA_minimization#Brzozowski's_algorithm).
1. Serialising the topological structure of the DFA into [DOT format](https://en.wikipedia.org/wiki/DOT_%28graph_description_language%29).
1. Transforming the DFA from DOT to SVG format with the help of [Viz.js](https://github.com/mdaines/viz.js).

The first two steps were implemented in C++ and compiled into WebAssembly with the help of [Emscripten](https://github.com/kripken/emscripten).

## License

This repository is distributed under a WTFPL.
