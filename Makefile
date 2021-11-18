# MAKEFILE

CXX = g++
CFLAGS=-c -std=c++11
LDFLAGS=-lm

SRC=lesq.cpp
OBJ=$(SRC:.cpp=.o)
EXE=lesq

DEPS=$(SRC:%.cpp=%.d)

all: $(EXE)

$(EXE): $(OBJ)
	$(CXX) $(OBJ) $(LDFLAGS) -o $@

%.o: %.cpp
	$(CXX) $(CFLAGS) -MMD -MP $< -o $@

clean:
	rm -rf *.o *.d $(EXE)

-include $(DEPS)
