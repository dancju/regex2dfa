CC := em++
CFLAGS := -std=c++14 -O3

SOURCES := $(wildcard src/*.cpp)
OBJECTS := $(patsubst src/%.cpp, obj/%.o, ${SOURCES})

assets/regex2dot.js: ${OBJECTS}
	${CC} $(CFLAGS) $^ -o $@ --bind

obj/%.o: src/%.cpp
	$(CC) $(CFLAGS) -c $< -o $@
