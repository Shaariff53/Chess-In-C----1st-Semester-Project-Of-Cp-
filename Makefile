CXX = g++
CXXFLAGS = -std=c++11 -Wall -g
TARGET = chess
SRC = src/chess.cpp

all: $(TARGET)

$(TARGET): $(SRC)
	$(CXX) $(CXXFLAGS) -o $(TARGET) $(SRC)

run: $(TARGET)
	./$(TARGET)

clean:
	rm -f $(TARGET) *.o

help:
	@echo "Available targets:"
	@echo "  make          - Compile the chess game"
	@echo "  make run      - Compile and run the game"
	@echo "  make clean    - Remove compiled files"
	@echo "  make help     - Show this help message"

.PHONY: all run clean help
