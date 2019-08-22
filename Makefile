CC := em++
CFLAGS := -std=c++14 -O3

SOURCES := $(wildcard src/*.cpp)
OBJECTS := $(patsubst src/%.cpp, obj/%.o, ${SOURCES})

assets/regex2dot.js: ${OBJECTS}
	${CC} $(CFLAGS) $^ -o $@ --bind

obj/%.o: src/%.cpp
	@mkdir -p $(@D)
	$(CC) $(CFLAGS) -c $< -o $@

.PHONY : clean

clean:
	rm -r obj/
	rm assets/regex2dot.js assets/regex2dot.wasm
