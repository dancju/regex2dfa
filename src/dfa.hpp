#include <map>
#include <vector>
using namespace std;

#ifndef DFA_H
#define DFA_H

struct NFA;

struct DFA {
  struct State {
    bool final;
    map<char, size_t> trans;
  };

  size_t init;
  vector<State> pool;

  template <class I> static DFA from_regex(I, I);

  void insert(size_t, char, size_t);
  string to_dot() const;
  NFA reverse() const;
};

#endif // DFA_H
