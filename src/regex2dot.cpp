#include <emscripten/bind.h>

#include "dfa.hpp"
#include "nfa.hpp"

string regex2dot(const string &regex) {
  DFA dfa = move(DFA::from_regex(regex.begin(), regex.end()));
  string res = dfa.to_dot();
  return res;
}

EMSCRIPTEN_BINDINGS(my_module) {
  emscripten::function("regex2dot", &regex2dot);
}
