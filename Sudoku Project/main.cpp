#include <iostream>
#include <fstream>

using namespace std;
const int MAX_SIZE = 9;

// read the txt file into the program
void fileInSudoku(ifstream&fin, int board[][MAX_SIZE])
{
    int number = 0;
    for (int row = 0; row < MAX_SIZE; ++row) {
        for (int col = 0; col < MAX_SIZE; ++col) {
            fin >> number;
            board[row][col] = number;
        }
    }
}

//check if there is any repeated number in a collum
bool checkCol(int col, int board[][MAX_SIZE], int matchingNum)
{
    for (int row = 0; row < MAX_SIZE; ++row) {
        if (board[row][col] == matchingNum)
        {
            return false;
        }
    }
    return true;
}

//check if there is any repeated number in a row
bool checkRow(int row, int board[][MAX_SIZE], int matchingNum)
{
    for (int col = 0; col < MAX_SIZE; ++col) {
        if (board[row][col] == matchingNum)
        {
            return false;
        }
    }
    return true;
}

//check if there is any repeated number in a 3x3 block
bool check3x3Block(int row, int col, int board[][MAX_SIZE],
                   int matchingNum)
{
    int block_start_row = row - row % 3;
    int block_start_col = col - col % 3;

    for (int i = block_start_row; i < block_start_row + 3; i++){
        for (int j = block_start_col; j < block_start_col + 3; j++){
            if (board[i][j] == matchingNum && i != row && j != col){
                return false;
            }
        }
    }
    return true;
}

//return true when all the rules are satisfied
bool isSatisfied(int row, int col, int num, int board[][MAX_SIZE])
{
    if (checkRow(row,board,num) && checkCol(col,board,num) &&
        check3x3Block((row - row % 3), (col - col % 3),
                      board, num)){
        return true;
    }
    return false;
}

bool findSolution(int board[][MAX_SIZE])
{
    int row = 0;
    int col = 0;
    bool isFound = false;

    // loop to find an empty space in the sudoku
    for (row = 0; row < MAX_SIZE; ++row) {
        for (col = 0; col < MAX_SIZE; ++col) {
            if (board[row][col] == 0){
                isFound = true;
                break;
            }
        }
        if(isFound) break;
    }
    if (!isFound) return true;

    for (int trial = 1; trial <= MAX_SIZE; ++trial) {  // check all numbers from 1 to 9
        if(isSatisfied(row, col,trial, board)) // check if all rules are satisfied
        {
            board[row][col] = trial;
            if (findSolution(board)){ // repeat the same process recursively for all empty spaces
                return true;
            }
            board[row][col] = 0;
        }
    }
    return false;
}

int main() {
    ifstream fin("sudoku.txt");
    if(!fin)
    {
        cout << "File not found";
        return EXIT_FAILURE;
    }

    int sudoku[MAX_SIZE][MAX_SIZE] = {0};
    fileInSudoku(fin, sudoku);
    if (findSolution(sudoku))
    {
        for (int row = 0; row < MAX_SIZE; ++row) {
            for (int col = 0; col < MAX_SIZE; ++col) {
                cout << sudoku[row][col];
            }
            cout << endl;
        }
    } else{
        cout << "no solution" << endl;
    }
    return 0;
}
