CXXFLAGS=-std=c++17 -Wall -pthread -O4 -fwhole -ffast -funroll-loops -fcache-opt  -Iinclude
SOURCES=main.cpp

core-latency: $(SOURCES)
	$(CXX) $(CXXFLAGS) -o $@ $^

.PHONY: distclean test

distclean:
	rm core-latency

test: core-latency
	@./core-latency
