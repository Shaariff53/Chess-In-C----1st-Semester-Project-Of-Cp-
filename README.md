# ♟️ Chess Game in C++

A command-line chess game implemented in C++ with full move validation for all pieces. This project was developed as part of the 1st Semester Computer Programming (CP) course.

## 👥 Project Authors

- **Muhammad Bin Ahsan** (076)
- **Shaariff Mujtaba Bhatti** (112)
- **Laiba Tahir** (057)

## 🌟 Features

- **Full Chess Board Setup:** Standard 8x8 chessboard with all pieces properly positioned
- **Complete Move Validation:** Validates moves for all piece types:
  - **Pawns:** Forward movement, two-square initial moves, and diagonal captures
  - **Rooks:** Horizontal and vertical movement with obstruction detection
  - **Knights:** L-shaped movement (2 squares in one direction, 1 in perpendicular)
  - **Bishops:** Diagonal movement with obstruction detection
  - **Queens:** Combined rook and bishop movement
  - **Kings:** Single square movement in any direction
- **Two-Player Gameplay:** Alternating turns between White and Black players
- **Chess Notation:** Standard algebraic notation (e.g., `e2 e4`)
- **Piece Capture:** Valid capture of opponent pieces
- **Console-Based Interface:** Simple, text-based gameplay

## 🎯 Learning Outcomes

- Strengthened C++ programming and logic building skills
- Applied OOP concepts (classes, objects, and encapsulation) in a real project
- Gained hands-on experience in building game logic from scratch
- Implemented complex move validation algorithms

## 📋 Prerequisites

- **C++ Compiler:** g++, clang, or MSVC
- **C++ Standard:** C++11 or later
- **Operating System:** Linux, macOS, or Windows

## 🔧 Installation & Setup

### Step 1: Clone the Repository

```bash
git clone https://github.com/yourusername/Chess-In-Cpp.git
cd Chess-In-Cpp
```

### Step 2: Compile the Code

#### On Linux/macOS (using g++):
```bash
g++ -std=c++11 -o chess src/chess.cpp
```

#### On Windows (using MinGW g++):
```bash
g++ -std=c++11 -o chess.exe src/chess.cpp
```

#### Using Makefile (if available):
```bash
make
```

## 🎮 How to Play

### Starting the Game

**On Linux/macOS:**
```bash
./chess
```

**On Windows:**
```bash
chess.exe
```

### Game Instructions

1. The game displays an 8x8 chessboard with all pieces in their starting positions
2. **White plays first** (shown as uppercase letters: R, N, B, Q, K, P)
3. **Black plays second** (shown as lowercase letters: r, n, b, q, k, p)
4. Enter moves in algebraic notation: `source destination` (e.g., `e2 e4`)
   - Columns are labeled **a-h** (left to right)
   - Rows are labeled **1-8** (bottom to top)
5. Type `quit` to exit the game at any time

### Board Layout

```
  a b c d e f g h
8 r n b q k b n r 8
7 p p p p p p p p 7
6 - - - - - - - - 6
5 - - - - - - - - 5
4 - - - - - - - - 4
3 - - - - - - - - 3
2 P P P P P P P P 2
1 R N B Q K B N R 1
  a b c d e f g h
```

### Piece Notation

| Piece | White | Black | Count | Movement |
|-------|-------|-------|-------|----------|
| Pawn | P | p | 8 | Forward 1 (or 2 from start), captures diagonally |
| Rook | R | r | 2 | Horizontal/Vertical any distance |
| Knight | N | n | 2 | L-shaped (2+1 squares) |
| Bishop | B | b | 2 | Diagonal any distance |
| Queen | Q | q | 1 | Any direction any distance |
| King | K | k | 1 | Any direction 1 square |
| Empty | - | - | - | - |

### Example Game Session

```
  a b c d e f g h
8 r n b q k b n r 8
7 p p p p p p p p 7
6 - - - - - - - - 6
5 - - - - - - - - 5
4 - - - - - - - - 4
3 - - - - - - - - 3
2 P P P P P P P P 2
1 R N B Q K B N R 1
  a b c d e f g h

White's turn. Enter move (e.g., e2 e4): e2 e4

  a b c d e f g h
8 r n b q k b n r 8
7 p p p p p p p p 7
6 - - - - - - - - 6
5 - - - - - - - - 5
4 - - - - P - - - 4
3 - - - - - - - - 3
2 P P P P - P P P 2
1 R N B Q K B N R 1
  a b c d e f g h

Black's turn. Enter move (e.g., e2 e4): c7 c5
```

## 📁 Project Structure

```
Chess-In-Cpp/
├── src/
│   └── chess.cpp              # Main chess game implementation
├── README.md                  # This file
├── .gitignore                 # Git ignore file
└── Makefile                   # Optional build automation
```

## 🛠️ Compilation Options

### Basic Compilation
```bash
g++ -std=c++11 -o chess src/chess.cpp
```

### With Warnings and Debug Info
```bash
g++ -std=c++11 -Wall -g -o chess src/chess.cpp
```

### Compilation Flags Explained
- `-std=c++11` - Use C++11 standard
- `-o chess` - Output executable name
- `-Wall` - Show all compiler warnings
- `-g` - Include debugging symbols

## 📝 Valid Move Examples

### Pawn Moves
- `e2 e3` - Pawn forward one square
- `e2 e4` - Pawn forward two squares (initial move)
- `e4 d5` - Pawn captures diagonally

### Rook Moves
- `a1 a8` - Rook moves vertically
- `a1 h1` - Rook moves horizontally

### Knight Moves
- `b1 c3` - Knight moves in L-shape
- `b1 a3` - Knight moves in L-shape

### Bishop Moves
- `c1 f4` - Bishop moves diagonally

### Queen Moves
- `d1 d4` - Queen moves like rook (vertical)
- `d1 a4` - Queen moves like bishop (diagonal)

### King Moves
- `e1 e2` - King moves one square in any direction

## ⚠️ Known Limitations

1. **No Check/Checkmate Detection** - Game doesn't detect check or checkmate
2. **No En Passant** - Special pawn capture move not implemented
3. **No Castling** - King-side or queen-side castling not implemented
4. **No Promotion** - Pawns reaching the end rank don't promote
5. **No Move Undo** - Moves cannot be undone
6. **No Move History** - Game moves are not recorded
7. **No Draw Detection** - Draw conditions not implemented
8. **Console Only** - No graphical user interface

## 🚀 Future Enhancements

- [ ] Implement check and checkmate detection
- [ ] Add piece promotion for pawns
- [ ] Add castling rules
- [ ] Add en passant capture
- [ ] Implement move undo/redo functionality
- [ ] Add move history and game logging
- [ ] Create a graphical interface (using graphics library)
- [ ] Add AI opponent with difficulty levels
- [ ] Add network multiplayer support
- [ ] Save/load game functionality

## 🐛 Troubleshooting

### Error: "g++ command not found"
**Solution:** Install a C++ compiler
- **Windows:** Install MinGW or Visual Studio
- **Linux:** `sudo apt-get install build-essential` (Ubuntu/Debian)
- **macOS:** Install Xcode Command Line Tools

### Error: "No such file or directory"
**Solution:** Make sure you're in the correct directory and the source file exists
```bash
ls src/chess.cpp  # Check if file exists
```

### Game compiles but won't run
**Solution:** Verify you're using the correct executable name
```bash
./chess        # Linux/macOS
chess.exe      # Windows
```

### Invalid move error
**Solution:** Ensure moves follow the format: `source destination` (e.g., `e2 e4`)

## 📚 Code Structure

The chess.cpp file contains:

- `initializeBoard()` - Sets up the starting board position
- `printBoard()` - Displays the current board state
- `parsePosition()` - Converts chess notation to coordinates
- `isValidPawnMove()`, `isValidRookMove()`, etc. - Validates moves for each piece
- `isValidMove()` - Main validation function
- `makeMove()` - Executes a move
- `playGame()` - Main game loop
- `main()` - Entry point

## 📄 License

This project is created for educational purposes as part of the 1st Semester Computer Programming course.

## 📧 Contact

For questions or issues, please contact the project authors.

---

**Made with ❤️ by Muhammad Bin Ahsan, Shaariff Mujtaba Bhatti, and Laiba Tahir**
