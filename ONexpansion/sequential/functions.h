void to_cnf (int &vars, int &clauses, int matrix[], int iteration);
bool solveMinisat (int &vars, int &clauses, int matrix[]);
bool algorithm(int &vars, int &clauses, int matrix[]);
bool decompose(const int &vars, const int &clauses, const int matrix[]);
void disp(int &vars, int &clauses, int matrix[]);
void del_rows(int &vars, int &clauses, int matrix[], bool delrows[]);
bool reduce(int &vars, int &clauses, int matrix[], int literals[]);
void pureliterals(int &vars, int &clauses, int matrix[]);
void unitclauses(int &vars, int &clauses, int matrix[]);
void rem_redund(int &vars, int &clauses, int matrix[]);
void del_cols(int &vars, int &clauses, int matrix[], bool delcols[]);


