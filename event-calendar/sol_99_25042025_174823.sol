Model NurseSchedulingProblem

  Variables:
    IsAssign : Size=112, Index=SHIFTTYPES*NURSES*DAYS
        Key            : Lower : Value : Upper : Fixed : Stale : Domain
         ('D', 'A', 0) :     0 :   0.0 :     1 : False : False : Binary
         ('D', 'A', 1) :     0 :   1.0 :     1 : False : False : Binary
         ('D', 'A', 2) :     0 :   1.0 :     1 : False : False : Binary
         ('D', 'A', 3) :     0 :   1.0 :     1 : False : False : Binary
         ('D', 'A', 4) :     0 :   1.0 :     1 : False : False : Binary
         ('D', 'A', 5) :     0 :   0.0 :     1 : False : False : Binary
         ('D', 'A', 6) :     0 :   0.0 :     1 : False : False : Binary
         ('D', 'A', 7) :     0 :   1.0 :     1 : False : False : Binary
         ('D', 'A', 8) :     0 :   1.0 :     1 : False : False : Binary
         ('D', 'A', 9) :     0 :   0.0 :     1 : False : False : Binary
        ('D', 'A', 10) :     0 :   0.0 :     1 : False : False : Binary
        ('D', 'A', 11) :     0 :   1.0 :     1 : False : False : Binary
        ('D', 'A', 12) :     0 :   1.0 :     1 : False : False : Binary
        ('D', 'A', 13) :     0 :   1.0 :     1 : False : False : Binary
         ('D', 'B', 0) :     0 :   1.0 :     1 : False : False : Binary
         ('D', 'B', 1) :     0 :   1.0 :     1 : False : False : Binary
         ('D', 'B', 2) :     0 :   1.0 :     1 : False : False : Binary
         ('D', 'B', 3) :     0 :   1.0 :     1 : False : False : Binary
         ('D', 'B', 4) :     0 :   1.0 :     1 : False : False : Binary
         ('D', 'B', 5) :     0 :   0.0 :     1 : False : False : Binary
         ('D', 'B', 6) :     0 :   0.0 :     1 : False : False : Binary
         ('D', 'B', 7) :     0 :   1.0 :     1 : False : False : Binary
         ('D', 'B', 8) :     0 :   1.0 :     1 : False : False : Binary
         ('D', 'B', 9) :     0 :   0.0 :     1 : False : False : Binary
        ('D', 'B', 10) :     0 :   0.0 :     1 : False : False : Binary
        ('D', 'B', 11) :     0 :   1.0 :     1 : False : False : Binary
        ('D', 'B', 12) :     0 :   1.0 :     1 : False : False : Binary
        ('D', 'B', 13) :     0 :   0.0 :     1 : False : False : Binary
         ('D', 'C', 0) :     0 :   1.0 :     1 : False : False : Binary
         ('D', 'C', 1) :     0 :   1.0 :     1 : False : False : Binary
         ('D', 'C', 2) :     0 :   1.0 :     1 : False : False : Binary
         ('D', 'C', 3) :     0 :   0.0 :     1 : False : False : Binary
         ('D', 'C', 4) :     0 :   0.0 :     1 : False : False : Binary
         ('D', 'C', 5) :     0 :   1.0 :     1 : False : False : Binary
         ('D', 'C', 6) :     0 :   1.0 :     1 : False : False : Binary
         ('D', 'C', 7) :     0 :   1.0 :     1 : False : False : Binary
         ('D', 'C', 8) :     0 :   0.0 :     1 : False : False : Binary
         ('D', 'C', 9) :     0 :   0.0 :     1 : False : False : Binary
        ('D', 'C', 10) :     0 :   1.0 :     1 : False : False : Binary
        ('D', 'C', 11) :     0 :   1.0 :     1 : False : False : Binary
        ('D', 'C', 12) :     0 :   0.0 :     1 : False : False : Binary
        ('D', 'C', 13) :     0 :  -0.0 :     1 : False : False : Binary
         ('D', 'D', 0) :     0 :   1.0 :     1 : False : False : Binary
         ('D', 'D', 1) :     0 :   1.0 :     1 : False : False : Binary
         ('D', 'D', 2) :     0 :   0.0 :     1 : False : False : Binary
         ('D', 'D', 3) :     0 :   0.0 :     1 : False : False : Binary
         ('D', 'D', 4) :     0 :   0.0 :     1 : False : False : Binary
         ('D', 'D', 5) :     0 :   1.0 :     1 : False : False : Binary
         ('D', 'D', 6) :     0 :   1.0 :     1 : False : False : Binary
         ('D', 'D', 7) :     0 :   1.0 :     1 : False : False : Binary
         ('D', 'D', 8) :     0 :   1.0 :     1 : False : False : Binary
         ('D', 'D', 9) :     0 :   1.0 :     1 : False : False : Binary
        ('D', 'D', 10) :     0 :   0.0 :     1 : False : False : Binary
        ('D', 'D', 11) :     0 :   0.0 :     1 : False : False : Binary
        ('D', 'D', 12) :     0 :   0.0 :     1 : False : False : Binary
        ('D', 'D', 13) :     0 :   0.0 :     1 : False : False : Binary
         ('D', 'E', 0) :     0 :  -0.0 :     1 : False : False : Binary
         ('D', 'E', 1) :     0 :   1.0 :     1 : False : False : Binary
         ('D', 'E', 2) :     0 :   1.0 :     1 : False : False : Binary
         ('D', 'E', 3) :     0 :   1.0 :     1 : False : False : Binary
         ('D', 'E', 4) :     0 :   1.0 :     1 : False : False : Binary
         ('D', 'E', 5) :     0 :   0.0 :     1 : False : False : Binary
         ('D', 'E', 6) :     0 :   0.0 :     1 : False : False : Binary
         ('D', 'E', 7) :     0 :   1.0 :     1 : False : False : Binary
         ('D', 'E', 8) :     0 :   1.0 :     1 : False : False : Binary
         ('D', 'E', 9) :     0 :   0.0 :     1 : False : False : Binary
        ('D', 'E', 10) :     0 :   0.0 :     1 : False : False : Binary
        ('D', 'E', 11) :     0 :   1.0 :     1 : False : False : Binary
        ('D', 'E', 12) :     0 :   1.0 :     1 : False : False : Binary
        ('D', 'E', 13) :     0 :   1.0 :     1 : False : False : Binary
         ('D', 'F', 0) :     0 :   1.0 :     1 : False : False : Binary
         ('D', 'F', 1) :     0 :   1.0 :     1 : False : False : Binary
         ('D', 'F', 2) :     0 :   1.0 :     1 : False : False : Binary
         ('D', 'F', 3) :     0 :   0.0 :     1 : False : False : Binary
         ('D', 'F', 4) :     0 :   0.0 :     1 : False : False : Binary
         ('D', 'F', 5) :     0 :   0.0 :     1 : False : False : Binary
         ('D', 'F', 6) :     0 :   0.0 :     1 : False : False : Binary
         ('D', 'F', 7) :     0 :   1.0 :     1 : False : False : Binary
         ('D', 'F', 8) :     0 :   1.0 :     1 : False : False : Binary
         ('D', 'F', 9) :     0 :   1.0 :     1 : False : False : Binary
        ('D', 'F', 10) :     0 :   0.0 :     1 : False : False : Binary
        ('D', 'F', 11) :     0 :   0.0 :     1 : False : False : Binary
        ('D', 'F', 12) :     0 :   1.0 :     1 : False : False : Binary
        ('D', 'F', 13) :     0 :   1.0 :     1 : False : False : Binary
         ('D', 'G', 0) :     0 :  -0.0 :     1 : False : False : Binary
         ('D', 'G', 1) :     0 :   0.0 :     1 : False : False : Binary
         ('D', 'G', 2) :     0 :   1.0 :     1 : False : False : Binary
         ('D', 'G', 3) :     0 :   1.0 :     1 : False : False : Binary
         ('D', 'G', 4) :     0 :   1.0 :     1 : False : False : Binary
         ('D', 'G', 5) :     0 :   0.0 :     1 : False : False : Binary
         ('D', 'G', 6) :     0 :   0.0 :     1 : False : False : Binary
         ('D', 'G', 7) :     0 :   0.0 :     1 : False : False : Binary
         ('D', 'G', 8) :     0 :   1.0 :     1 : False : False : Binary
         ('D', 'G', 9) :     0 :   1.0 :     1 : False : False : Binary
        ('D', 'G', 10) :     0 :   0.0 :     1 : False : False : Binary
        ('D', 'G', 11) :     0 :   0.0 :     1 : False : False : Binary
        ('D', 'G', 12) :     0 :   1.0 :     1 : False : False : Binary
        ('D', 'G', 13) :     0 :   1.0 :     1 : False : False : Binary
         ('D', 'H', 0) :     0 :   1.0 :     1 : False : False : Binary
         ('D', 'H', 1) :     0 :   1.0 :     1 : False : False : Binary
         ('D', 'H', 2) :     0 :   0.0 :     1 : False : False : Binary
         ('D', 'H', 3) :     0 :   0.0 :     1 : False : False : Binary
         ('D', 'H', 4) :     0 :   1.0 :     1 : False : False : Binary
         ('D', 'H', 5) :     0 :   1.0 :     1 : False : False : Binary
         ('D', 'H', 6) :     0 :   0.0 :     1 : False : False : Binary
         ('D', 'H', 7) :     0 :   0.0 :     1 : False : False : Binary
         ('D', 'H', 8) :     0 :   1.0 :     1 : False : False : Binary
         ('D', 'H', 9) :     0 :   1.0 :     1 : False : False : Binary
        ('D', 'H', 10) :     0 :   1.0 :     1 : False : False : Binary
        ('D', 'H', 11) :     0 :   1.0 :     1 : False : False : Binary
        ('D', 'H', 12) :     0 :   0.0 :     1 : False : False : Binary
        ('D', 'H', 13) :     0 :   0.0 :     1 : False : False : Binary
    IsRest : Size=112, Index=NURSES*DAYS
        Key       : Lower : Value : Upper : Fixed : Stale : Domain
         ('A', 0) :     0 :   1.0 :     1 : False : False : Binary
         ('A', 1) :     0 :  -0.0 :     1 : False : False : Binary
         ('A', 2) :     0 :  -0.0 :     1 : False : False : Binary
         ('A', 3) :     0 :  -0.0 :     1 : False : False : Binary
         ('A', 4) :     0 :   0.0 :     1 : False : False : Binary
         ('A', 5) :     0 :   1.0 :     1 : False : False : Binary
         ('A', 6) :     0 :   1.0 :     1 : False : False : Binary
         ('A', 7) :     0 :  -0.0 :     1 : False : False : Binary
         ('A', 8) :     0 :  -0.0 :     1 : False : False : Binary
         ('A', 9) :     0 :   1.0 :     1 : False : False : Binary
        ('A', 10) :     0 :   1.0 :     1 : False : False : Binary
        ('A', 11) :     0 :   0.0 :     1 : False : False : Binary
        ('A', 12) :     0 :   0.0 :     1 : False : False : Binary
        ('A', 13) :     0 :   0.0 :     1 : False : False : Binary
         ('B', 0) :     0 :   0.0 :     1 : False : False : Binary
         ('B', 1) :     0 :  -0.0 :     1 : False : False : Binary
         ('B', 2) :     0 :  -0.0 :     1 : False : False : Binary
         ('B', 3) :     0 :  -0.0 :     1 : False : False : Binary
         ('B', 4) :     0 :   0.0 :     1 : False : False : Binary
         ('B', 5) :     0 :   1.0 :     1 : False : False : Binary
         ('B', 6) :     0 :   1.0 :     1 : False : False : Binary
         ('B', 7) :     0 :   0.0 :     1 : False : False : Binary
         ('B', 8) :     0 :  -0.0 :     1 : False : False : Binary
         ('B', 9) :     0 :   1.0 :     1 : False : False : Binary
        ('B', 10) :     0 :   1.0 :     1 : False : False : Binary
        ('B', 11) :     0 :  -0.0 :     1 : False : False : Binary
        ('B', 12) :     0 :   0.0 :     1 : False : False : Binary
        ('B', 13) :     0 :   1.0 :     1 : False : False : Binary
         ('C', 0) :     0 :   0.0 :     1 : False : False : Binary
         ('C', 1) :     0 :  -0.0 :     1 : False : False : Binary
         ('C', 2) :     0 :   0.0 :     1 : False : False : Binary
         ('C', 3) :     0 :   1.0 :     1 : False : False : Binary
         ('C', 4) :     0 :   1.0 :     1 : False : False : Binary
         ('C', 5) :     0 :   0.0 :     1 : False : False : Binary
         ('C', 6) :     0 :   0.0 :     1 : False : False : Binary
         ('C', 7) :     0 :   0.0 :     1 : False : False : Binary
         ('C', 8) :     0 :   1.0 :     1 : False : False : Binary
         ('C', 9) :     0 :   1.0 :     1 : False : False : Binary
        ('C', 10) :     0 :   0.0 :     1 : False : False : Binary
        ('C', 11) :     0 :   0.0 :     1 : False : False : Binary
        ('C', 12) :     0 :   1.0 :     1 : False : False : Binary
        ('C', 13) :     0 :   1.0 :     1 : False : False : Binary
         ('D', 0) :     0 :   0.0 :     1 : False : False : Binary
         ('D', 1) :     0 :  -0.0 :     1 : False : False : Binary
         ('D', 2) :     0 :   1.0 :     1 : False : False : Binary
         ('D', 3) :     0 :   1.0 :     1 : False : False : Binary
         ('D', 4) :     0 :   1.0 :     1 : False : False : Binary
         ('D', 5) :     0 :   0.0 :     1 : False : False : Binary
         ('D', 6) :     0 :  -0.0 :     1 : False : False : Binary
         ('D', 7) :     0 :   0.0 :     1 : False : False : Binary
         ('D', 8) :     0 :  -0.0 :     1 : False : False : Binary
         ('D', 9) :     0 :   0.0 :     1 : False : False : Binary
        ('D', 10) :     0 :   1.0 :     1 : False : False : Binary
        ('D', 11) :     0 :   1.0 :     1 : False : False : Binary
        ('D', 12) :     0 :   1.0 :     1 : False : False : Binary
        ('D', 13) :     0 :   1.0 :     1 : False : False : Binary
         ('E', 0) :     0 :   1.0 :     1 : False : False : Binary
         ('E', 1) :     0 :  -0.0 :     1 : False : False : Binary
         ('E', 2) :     0 :  -0.0 :     1 : False : False : Binary
         ('E', 3) :     0 :   0.0 :     1 : False : False : Binary
         ('E', 4) :     0 :   0.0 :     1 : False : False : Binary
         ('E', 5) :     0 :   1.0 :     1 : False : False : Binary
         ('E', 6) :     0 :   1.0 :     1 : False : False : Binary
         ('E', 7) :     0 :  -0.0 :     1 : False : False : Binary
         ('E', 8) :     0 :  -0.0 :     1 : False : False : Binary
         ('E', 9) :     0 :   1.0 :     1 : False : False : Binary
        ('E', 10) :     0 :   1.0 :     1 : False : False : Binary
        ('E', 11) :     0 :   0.0 :     1 : False : False : Binary
        ('E', 12) :     0 :   0.0 :     1 : False : False : Binary
        ('E', 13) :     0 :   0.0 :     1 : False : False : Binary
         ('F', 0) :     0 :   0.0 :     1 : False : False : Binary
         ('F', 1) :     0 :  -0.0 :     1 : False : False : Binary
         ('F', 2) :     0 :   0.0 :     1 : False : False : Binary
         ('F', 3) :     0 :   1.0 :     1 : False : False : Binary
         ('F', 4) :     0 :   1.0 :     1 : False : False : Binary
         ('F', 5) :     0 :   1.0 :     1 : False : False : Binary
         ('F', 6) :     0 :   1.0 :     1 : False : False : Binary
         ('F', 7) :     0 :  -0.0 :     1 : False : False : Binary
         ('F', 8) :     0 :  -0.0 :     1 : False : False : Binary
         ('F', 9) :     0 :   0.0 :     1 : False : False : Binary
        ('F', 10) :     0 :   1.0 :     1 : False : False : Binary
        ('F', 11) :     0 :   1.0 :     1 : False : False : Binary
        ('F', 12) :     0 :   0.0 :     1 : False : False : Binary
        ('F', 13) :     0 :   0.0 :     1 : False : False : Binary
         ('G', 0) :     0 :   1.0 :     1 : False : False : Binary
         ('G', 1) :     0 :   1.0 :     1 : False : False : Binary
         ('G', 2) :     0 :   0.0 :     1 : False : False : Binary
         ('G', 3) :     0 :   0.0 :     1 : False : False : Binary
         ('G', 4) :     0 :   0.0 :     1 : False : False : Binary
         ('G', 5) :     0 :   1.0 :     1 : False : False : Binary
         ('G', 6) :     0 :   1.0 :     1 : False : False : Binary
         ('G', 7) :     0 :   1.0 :     1 : False : False : Binary
         ('G', 8) :     0 :  -0.0 :     1 : False : False : Binary
         ('G', 9) :     0 :  -0.0 :     1 : False : False : Binary
        ('G', 10) :     0 :   1.0 :     1 : False : False : Binary
        ('G', 11) :     0 :   1.0 :     1 : False : False : Binary
        ('G', 12) :     0 :   0.0 :     1 : False : False : Binary
        ('G', 13) :     0 :   0.0 :     1 : False : False : Binary
         ('H', 0) :     0 :   0.0 :     1 : False : False : Binary
         ('H', 1) :     0 :  -0.0 :     1 : False : False : Binary
         ('H', 2) :     0 :   1.0 :     1 : False : False : Binary
         ('H', 3) :     0 :   1.0 :     1 : False : False : Binary
         ('H', 4) :     0 :   0.0 :     1 : False : False : Binary
         ('H', 5) :     0 :   0.0 :     1 : False : False : Binary
         ('H', 6) :     0 :   1.0 :     1 : False : False : Binary
         ('H', 7) :     0 :   1.0 :     1 : False : False : Binary
         ('H', 8) :     0 :   0.0 :     1 : False : False : Binary
         ('H', 9) :     0 :   0.0 :     1 : False : False : Binary
        ('H', 10) :     0 :  -0.0 :     1 : False : False : Binary
        ('H', 11) :     0 :  -0.0 :     1 : False : False : Binary
        ('H', 12) :     0 :   1.0 :     1 : False : False : Binary
        ('H', 13) :     0 :   1.0 :     1 : False : False : Binary
    IsEndOfWorkBlock : Size=112, Index=NURSES*DAYS
        Key       : Lower : Value : Upper : Fixed : Stale : Domain
         ('A', 0) :     0 :   1.0 :     1 : False : False : Binary
         ('A', 1) :     0 :   0.0 :     1 : False : False : Binary
         ('A', 2) :     0 :   1.0 :     1 : False : False : Binary
         ('A', 3) :     0 :   1.0 :     1 : False : False : Binary
         ('A', 4) :     0 :   1.0 :     1 : False : False : Binary
         ('A', 5) :     0 :   1.0 :     1 : False : False : Binary
         ('A', 6) :     0 :   0.0 :     1 : False : False : Binary
         ('A', 7) :     0 :   0.0 :     1 : False : False : Binary
         ('A', 8) :     0 :   1.0 :     1 : False : False : Binary
         ('A', 9) :     0 :   1.0 :     1 : False : False : Binary
        ('A', 10) :     0 :   0.0 :     1 : False : False : Binary
        ('A', 11) :     0 :   0.0 :     1 : False : False : Binary
        ('A', 12) :     0 :   1.0 :     1 : False : False : Binary
        ('A', 13) :     0 :   0.0 :     1 : False : False : Binary
         ('B', 0) :     0 :   1.0 :     1 : False : False : Binary
         ('B', 1) :     0 :   1.0 :     1 : False : False : Binary
         ('B', 2) :     0 :   1.0 :     1 : False : False : Binary
         ('B', 3) :     0 :   1.0 :     1 : False : False : Binary
         ('B', 4) :     0 :   1.0 :     1 : False : False : Binary
         ('B', 5) :     0 :   1.0 :     1 : False : False : Binary
         ('B', 6) :     0 :   0.0 :     1 : False : False : Binary
         ('B', 7) :     0 :   0.0 :     1 : False : False : Binary
         ('B', 8) :     0 :   1.0 :     1 : False : False : Binary
         ('B', 9) :     0 :   1.0 :     1 : False : False : Binary
        ('B', 10) :     0 :   0.0 :     1 : False : False : Binary
        ('B', 11) :     0 :   0.0 :     1 : False : False : Binary
        ('B', 12) :     0 :   1.0 :     1 : False : False : Binary
        ('B', 13) :     0 :   0.0 :     1 : False : False : Binary
         ('C', 0) :     0 :   1.0 :     1 : False : False : Binary
         ('C', 1) :     0 :   1.0 :     1 : False : False : Binary
         ('C', 2) :     0 :   1.0 :     1 : False : False : Binary
         ('C', 3) :     0 :   1.0 :     1 : False : False : Binary
         ('C', 4) :     0 :   0.0 :     1 : False : False : Binary
         ('C', 5) :     0 :   0.0 :     1 : False : False : Binary
         ('C', 6) :     0 :   1.0 :     1 : False : False : Binary
         ('C', 7) :     0 :   1.0 :     1 : False : False : Binary
         ('C', 8) :     0 :   1.0 :     1 : False : False : Binary
         ('C', 9) :     0 :   0.0 :     1 : False : False : Binary
        ('C', 10) :     0 :   0.0 :     1 : False : False : Binary
        ('C', 11) :     0 :   1.0 :     1 : False : False : Binary
        ('C', 12) :     0 :   1.0 :     1 : False : False : Binary
        ('C', 13) :     0 :   0.0 :     1 : False : False : Binary
         ('D', 0) :     0 :   1.0 :     1 : False : False : Binary
         ('D', 1) :     0 :   1.0 :     1 : False : False : Binary
         ('D', 2) :     0 :   1.0 :     1 : False : False : Binary
         ('D', 3) :     0 :   0.0 :     1 : False : False : Binary
         ('D', 4) :     0 :   0.0 :     1 : False : False : Binary
         ('D', 5) :     0 :   0.0 :     1 : False : False : Binary
         ('D', 6) :     0 :   1.0 :     1 : False : False : Binary
         ('D', 7) :     0 :   1.0 :     1 : False : False : Binary
         ('D', 8) :     0 :   1.0 :     1 : False : False : Binary
         ('D', 9) :     0 :   1.0 :     1 : False : False : Binary
        ('D', 10) :     0 :   1.0 :     1 : False : False : Binary
        ('D', 11) :     0 :   0.0 :     1 : False : False : Binary
        ('D', 12) :     0 :   0.0 :     1 : False : False : Binary
        ('D', 13) :     0 :   0.0 :     1 : False : False : Binary
         ('E', 0) :     0 :   1.0 :     1 : False : False : Binary
         ('E', 1) :     0 :   0.0 :     1 : False : False : Binary
         ('E', 2) :     0 :   1.0 :     1 : False : False : Binary
         ('E', 3) :     0 :   1.0 :     1 : False : False : Binary
         ('E', 4) :     0 :   1.0 :     1 : False : False : Binary
         ('E', 5) :     0 :   1.0 :     1 : False : False : Binary
         ('E', 6) :     0 :   0.0 :     1 : False : False : Binary
         ('E', 7) :     0 :   0.0 :     1 : False : False : Binary
         ('E', 8) :     0 :   1.0 :     1 : False : False : Binary
         ('E', 9) :     0 :   1.0 :     1 : False : False : Binary
        ('E', 10) :     0 :   0.0 :     1 : False : False : Binary
        ('E', 11) :     0 :   0.0 :     1 : False : False : Binary
        ('E', 12) :     0 :   1.0 :     1 : False : False : Binary
        ('E', 13) :     0 :   0.0 :     1 : False : False : Binary
         ('F', 0) :     0 :   1.0 :     1 : False : False : Binary
         ('F', 1) :     0 :   1.0 :     1 : False : False : Binary
         ('F', 2) :     0 :   1.0 :     1 : False : False : Binary
         ('F', 3) :     0 :   1.0 :     1 : False : False : Binary
         ('F', 4) :     0 :   0.0 :     1 : False : False : Binary
         ('F', 5) :     0 :   0.0 :     1 : False : False : Binary
         ('F', 6) :     0 :   0.0 :     1 : False : False : Binary
         ('F', 7) :     0 :   0.0 :     1 : False : False : Binary
         ('F', 8) :     0 :   1.0 :     1 : False : False : Binary
         ('F', 9) :     0 :   1.0 :     1 : False : False : Binary
        ('F', 10) :     0 :   1.0 :     1 : False : False : Binary
        ('F', 11) :     0 :   0.0 :     1 : False : False : Binary
        ('F', 12) :     0 :   0.0 :     1 : False : False : Binary
        ('F', 13) :     0 :   0.0 :     1 : False : False : Binary
         ('G', 0) :     0 :   1.0 :     1 : False : False : Binary
         ('G', 1) :     0 :   0.0 :     1 : False : False : Binary
         ('G', 2) :     0 :   0.0 :     1 : False : False : Binary
         ('G', 3) :     0 :   1.0 :     1 : False : False : Binary
         ('G', 4) :     0 :   1.0 :     1 : False : False : Binary
         ('G', 5) :     0 :   1.0 :     1 : False : False : Binary
         ('G', 6) :     0 :   0.0 :     1 : False : False : Binary
         ('G', 7) :     0 :   0.0 :     1 : False : False : Binary
         ('G', 8) :     0 :   0.0 :     1 : False : False : Binary
         ('G', 9) :     0 :   1.0 :     1 : False : False : Binary
        ('G', 10) :     0 :   1.0 :     1 : False : False : Binary
        ('G', 11) :     0 :   0.0 :     1 : False : False : Binary
        ('G', 12) :     0 :   0.0 :     1 : False : False : Binary
        ('G', 13) :     0 :   0.0 :     1 : False : False : Binary
         ('H', 0) :     0 :   1.0 :     1 : False : False : Binary
         ('H', 1) :     0 :   1.0 :     1 : False : False : Binary
         ('H', 2) :     0 :   1.0 :     1 : False : False : Binary
         ('H', 3) :     0 :   0.0 :     1 : False : False : Binary
         ('H', 4) :     0 :   0.0 :     1 : False : False : Binary
         ('H', 5) :     0 :   1.0 :     1 : False : False : Binary
         ('H', 6) :     0 :   1.0 :     1 : False : False : Binary
         ('H', 7) :     0 :   0.0 :     1 : False : False : Binary
         ('H', 8) :     0 :   0.0 :     1 : False : False : Binary
         ('H', 9) :     0 :   1.0 :     1 : False : False : Binary
        ('H', 10) :     0 :   1.0 :     1 : False : False : Binary
        ('H', 11) :     0 :   1.0 :     1 : False : False : Binary
        ('H', 12) :     0 :   1.0 :     1 : False : False : Binary
        ('H', 13) :     0 :   0.0 :     1 : False : False : Binary
    IsEndOfRestBlock : Size=112, Index=NURSES*DAYS
        Key       : Lower : Value : Upper : Fixed : Stale : Domain
         ('A', 0) :     0 :   1.0 :     1 : False : False : Binary
         ('A', 1) :     0 :   1.0 :     1 : False : False : Binary
         ('A', 2) :     0 :   0.0 :     1 : False : False : Binary
         ('A', 3) :     0 :   0.0 :     1 : False : False : Binary
         ('A', 4) :     0 :   0.0 :     1 : False : False : Binary
         ('A', 5) :     0 :   0.0 :     1 : False : False : Binary
         ('A', 6) :     0 :   1.0 :     1 : False : False : Binary
         ('A', 7) :     0 :   1.0 :     1 : False : False : Binary
         ('A', 8) :     0 :   0.0 :     1 : False : False : Binary
         ('A', 9) :     0 :   0.0 :     1 : False : False : Binary
        ('A', 10) :     0 :   1.0 :     1 : False : False : Binary
        ('A', 11) :     0 :   1.0 :     1 : False : False : Binary
        ('A', 12) :     0 :   0.0 :     1 : False : False : Binary
        ('A', 13) :     0 :   0.0 :     1 : False : False : Binary
         ('B', 0) :     0 :   1.0 :     1 : False : False : Binary
         ('B', 1) :     0 :   0.0 :     1 : False : False : Binary
         ('B', 2) :     0 :   0.0 :     1 : False : False : Binary
         ('B', 3) :     0 :   0.0 :     1 : False : False : Binary
         ('B', 4) :     0 :   0.0 :     1 : False : False : Binary
         ('B', 5) :     0 :   0.0 :     1 : False : False : Binary
         ('B', 6) :     0 :   1.0 :     1 : False : False : Binary
         ('B', 7) :     0 :   1.0 :     1 : False : False : Binary
         ('B', 8) :     0 :   0.0 :     1 : False : False : Binary
         ('B', 9) :     0 :   0.0 :     1 : False : False : Binary
        ('B', 10) :     0 :   1.0 :     1 : False : False : Binary
        ('B', 11) :     0 :   1.0 :     1 : False : False : Binary
        ('B', 12) :     0 :   0.0 :     1 : False : False : Binary
        ('B', 13) :     0 :   0.0 :     1 : False : False : Binary
         ('C', 0) :     0 :   1.0 :     1 : False : False : Binary
         ('C', 1) :     0 :   0.0 :     1 : False : False : Binary
         ('C', 2) :     0 :   0.0 :     1 : False : False : Binary
         ('C', 3) :     0 :   0.0 :     1 : False : False : Binary
         ('C', 4) :     0 :   1.0 :     1 : False : False : Binary
         ('C', 5) :     0 :   1.0 :     1 : False : False : Binary
         ('C', 6) :     0 :   0.0 :     1 : False : False : Binary
         ('C', 7) :     0 :   0.0 :     1 : False : False : Binary
         ('C', 8) :     0 :   0.0 :     1 : False : False : Binary
         ('C', 9) :     0 :   1.0 :     1 : False : False : Binary
        ('C', 10) :     0 :   1.0 :     1 : False : False : Binary
        ('C', 11) :     0 :   0.0 :     1 : False : False : Binary
        ('C', 12) :     0 :   0.0 :     1 : False : False : Binary
        ('C', 13) :     0 :   0.0 :     1 : False : False : Binary
         ('D', 0) :     0 :   1.0 :     1 : False : False : Binary
         ('D', 1) :     0 :   0.0 :     1 : False : False : Binary
         ('D', 2) :     0 :   0.0 :     1 : False : False : Binary
         ('D', 3) :     0 :   1.0 :     1 : False : False : Binary
         ('D', 4) :     0 :   1.0 :     1 : False : False : Binary
         ('D', 5) :     0 :   1.0 :     1 : False : False : Binary
         ('D', 6) :     0 :   0.0 :     1 : False : False : Binary
         ('D', 7) :     0 :   0.0 :     1 : False : False : Binary
         ('D', 8) :     0 :   0.0 :     1 : False : False : Binary
         ('D', 9) :     0 :   0.0 :     1 : False : False : Binary
        ('D', 10) :     0 :   0.0 :     1 : False : False : Binary
        ('D', 11) :     0 :   1.0 :     1 : False : False : Binary
        ('D', 12) :     0 :   1.0 :     1 : False : False : Binary
        ('D', 13) :     0 :   0.0 :     1 : False : False : Binary
         ('E', 0) :     0 :   1.0 :     1 : False : False : Binary
         ('E', 1) :     0 :   1.0 :     1 : False : False : Binary
         ('E', 2) :     0 :   0.0 :     1 : False : False : Binary
         ('E', 3) :     0 :   0.0 :     1 : False : False : Binary
         ('E', 4) :     0 :   0.0 :     1 : False : False : Binary
         ('E', 5) :     0 :   0.0 :     1 : False : False : Binary
         ('E', 6) :     0 :   1.0 :     1 : False : False : Binary
         ('E', 7) :     0 :   1.0 :     1 : False : False : Binary
         ('E', 8) :     0 :   0.0 :     1 : False : False : Binary
         ('E', 9) :     0 :   0.0 :     1 : False : False : Binary
        ('E', 10) :     0 :   1.0 :     1 : False : False : Binary
        ('E', 11) :     0 :   1.0 :     1 : False : False : Binary
        ('E', 12) :     0 :   0.0 :     1 : False : False : Binary
        ('E', 13) :     0 :   0.0 :     1 : False : False : Binary
         ('F', 0) :     0 :   1.0 :     1 : False : False : Binary
         ('F', 1) :     0 :   0.0 :     1 : False : False : Binary
         ('F', 2) :     0 :   0.0 :     1 : False : False : Binary
         ('F', 3) :     0 :   0.0 :     1 : False : False : Binary
         ('F', 4) :     0 :   1.0 :     1 : False : False : Binary
         ('F', 5) :     0 :   1.0 :     1 : False : False : Binary
         ('F', 6) :     0 :   1.0 :     1 : False : False : Binary
         ('F', 7) :     0 :   1.0 :     1 : False : False : Binary
         ('F', 8) :     0 :   0.0 :     1 : False : False : Binary
         ('F', 9) :     0 :   0.0 :     1 : False : False : Binary
        ('F', 10) :     0 :   0.0 :     1 : False : False : Binary
        ('F', 11) :     0 :   1.0 :     1 : False : False : Binary
        ('F', 12) :     0 :   1.0 :     1 : False : False : Binary
        ('F', 13) :     0 :   0.0 :     1 : False : False : Binary
         ('G', 0) :     0 :   1.0 :     1 : False : False : Binary
         ('G', 1) :     0 :   1.0 :     1 : False : False : Binary
         ('G', 2) :     0 :   1.0 :     1 : False : False : Binary
         ('G', 3) :     0 :   0.0 :     1 : False : False : Binary
         ('G', 4) :     0 :   0.0 :     1 : False : False : Binary
         ('G', 5) :     0 :   0.0 :     1 : False : False : Binary
         ('G', 6) :     0 :   1.0 :     1 : False : False : Binary
         ('G', 7) :     0 :   1.0 :     1 : False : False : Binary
         ('G', 8) :     0 :   1.0 :     1 : False : False : Binary
         ('G', 9) :     0 :   0.0 :     1 : False : False : Binary
        ('G', 10) :     0 :   0.0 :     1 : False : False : Binary
        ('G', 11) :     0 :   1.0 :     1 : False : False : Binary
        ('G', 12) :     0 :   1.0 :     1 : False : False : Binary
        ('G', 13) :     0 :   0.0 :     1 : False : False : Binary
         ('H', 0) :     0 :   1.0 :     1 : False : False : Binary
         ('H', 1) :     0 :   0.0 :     1 : False : False : Binary
         ('H', 2) :     0 :   0.0 :     1 : False : False : Binary
         ('H', 3) :     0 :   1.0 :     1 : False : False : Binary
         ('H', 4) :     0 :   1.0 :     1 : False : False : Binary
         ('H', 5) :     0 :   0.0 :     1 : False : False : Binary
         ('H', 6) :     0 :   0.0 :     1 : False : False : Binary
         ('H', 7) :     0 :   1.0 :     1 : False : False : Binary
         ('H', 8) :     0 :   1.0 :     1 : False : False : Binary
         ('H', 9) :     0 :   0.0 :     1 : False : False : Binary
        ('H', 10) :     0 :   0.0 :     1 : False : False : Binary
        ('H', 11) :     0 :   0.0 :     1 : False : False : Binary
        ('H', 12) :     0 :   0.0 :     1 : False : False : Binary
        ('H', 13) :     0 :   0.0 :     1 : False : False : Binary
    HasWeekendWork : Size=16, Index=NURSES*WEEKS
        Key      : Lower : Value : Upper : Fixed : Stale : Domain
        ('A', 0) :     0 :   0.0 :     1 : False : False : Binary
        ('A', 1) :     0 :   1.0 :     1 : False : False : Binary
        ('B', 0) :     0 :   0.0 :     1 : False : False : Binary
        ('B', 1) :     0 :   1.0 :     1 : False : False : Binary
        ('C', 0) :     0 :   1.0 :     1 : False : False : Binary
        ('C', 1) :     0 :   0.0 :     1 : False : False : Binary
        ('D', 0) :     0 :   1.0 :     1 : False : False : Binary
        ('D', 1) :     0 :   0.0 :     1 : False : False : Binary
        ('E', 0) :     0 :   0.0 :     1 : False : False : Binary
        ('E', 1) :     0 :   1.0 :     1 : False : False : Binary
        ('F', 0) :     0 :   0.0 :     1 : False : False : Binary
        ('F', 1) :     0 :   1.0 :     1 : False : False : Binary
        ('G', 0) :     0 :   0.0 :     1 : False : False : Binary
        ('G', 1) :     0 :   1.0 :     1 : False : False : Binary
        ('H', 0) :     0 :   1.0 :     1 : False : False : Binary
        ('H', 1) :     0 :   0.0 :     1 : False : False : Binary
    PenaltyShiftOnReq : Size=112, Index=SHIFTTYPES*NURSES*DAYS
        Key            : Lower : Value : Upper : Fixed : Stale : Domain
         ('D', 'A', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'A', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'A', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'A', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'A', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'A', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'A', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'A', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'A', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'A', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D', 'A', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D', 'A', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D', 'A', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D', 'A', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'B', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'B', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'B', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'B', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'B', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'B', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'B', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'B', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'B', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'B', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D', 'B', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D', 'B', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D', 'B', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D', 'B', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'C', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'C', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'C', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'C', 3) :     0 :   1.0 :  None : False : False : NonNegativeReals
         ('D', 'C', 4) :     0 :   1.0 :  None : False : False : NonNegativeReals
         ('D', 'C', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'C', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'C', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'C', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'C', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D', 'C', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D', 'C', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D', 'C', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D', 'C', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'D', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'D', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'D', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'D', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'D', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'D', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'D', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'D', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'D', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'D', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D', 'D', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D', 'D', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D', 'D', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D', 'D', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'E', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'E', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'E', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'E', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'E', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'E', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'E', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'E', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'E', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'E', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D', 'E', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D', 'E', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D', 'E', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D', 'E', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'F', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'F', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'F', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'F', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'F', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'F', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'F', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'F', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'F', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'F', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D', 'F', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D', 'F', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D', 'F', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D', 'F', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'G', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'G', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'G', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'G', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'G', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'G', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'G', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'G', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'G', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'G', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D', 'G', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D', 'G', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D', 'G', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D', 'G', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'H', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'H', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'H', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'H', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'H', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'H', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'H', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'H', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'H', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'H', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D', 'H', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D', 'H', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D', 'H', 12) :     0 :   1.0 :  None : False : False : NonNegativeReals
        ('D', 'H', 13) :     0 :   1.0 :  None : False : False : NonNegativeReals
    PenaltyShiftOffReq : Size=112, Index=SHIFTTYPES*NURSES*DAYS
        Key            : Lower : Value : Upper : Fixed : Stale : Domain
         ('D', 'A', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'A', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'A', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'A', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'A', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'A', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'A', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'A', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'A', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'A', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D', 'A', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D', 'A', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D', 'A', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D', 'A', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'B', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'B', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'B', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'B', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'B', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'B', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'B', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'B', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'B', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'B', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D', 'B', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D', 'B', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D', 'B', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D', 'B', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'C', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'C', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'C', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'C', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'C', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'C', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'C', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'C', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'C', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'C', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D', 'C', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D', 'C', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D', 'C', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D', 'C', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'D', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'D', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'D', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'D', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'D', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'D', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'D', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'D', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'D', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'D', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D', 'D', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D', 'D', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D', 'D', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D', 'D', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'E', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'E', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'E', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'E', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'E', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'E', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'E', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'E', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'E', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'E', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D', 'E', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D', 'E', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D', 'E', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D', 'E', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'F', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'F', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'F', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'F', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'F', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'F', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'F', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'F', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'F', 8) :     0 :   3.0 :  None : False : False : NonNegativeReals
         ('D', 'F', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D', 'F', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D', 'F', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D', 'F', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D', 'F', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'G', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'G', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'G', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'G', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'G', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'G', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'G', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'G', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'G', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'G', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D', 'G', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D', 'G', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D', 'G', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D', 'G', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'H', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'H', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'H', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'H', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'H', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'H', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'H', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'H', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'H', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 'H', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D', 'H', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D', 'H', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D', 'H', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D', 'H', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
    UnderCover : Size=14, Index=SHIFTTYPES*DAYS
        Key       : Lower : Value : Upper : Fixed : Stale : Domain
         ('D', 0) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('D', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 2) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('D', 3) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('D', 4) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('D', 5) :     0 :   2.0 :  None : False : False : NonNegativeReals
         ('D', 6) :     0 :   3.0 :  None : False : False : NonNegativeReals
         ('D', 7) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('D', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 9) :     0 :  -0.0 :  None : False : False : NonNegativeReals
        ('D', 10) :     0 :  -0.0 :  None : False : False : NonNegativeReals
        ('D', 11) :     0 :  -0.0 :  None : False : False : NonNegativeReals
        ('D', 12) :     0 :   1.0 :  None : False : False : NonNegativeReals
        ('D', 13) :     0 :  -0.0 :  None : False : False : NonNegativeReals
    OverCover : Size=14, Index=SHIFTTYPES*DAYS
        Key       : Lower : Value : Upper : Fixed : Stale : Domain
         ('D', 0) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('D', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 2) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('D', 3) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('D', 4) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('D', 5) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('D', 6) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('D', 7) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('D', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 9) :     0 :  -0.0 :  None : False : False : NonNegativeReals
        ('D', 10) :     0 :  -0.0 :  None : False : False : NonNegativeReals
        ('D', 11) :     0 :  -0.0 :  None : False : False : NonNegativeReals
        ('D', 12) :     0 :  -0.0 :  None : False : False : NonNegativeReals
        ('D', 13) :     0 :  -0.0 :  None : False : False : NonNegativeReals
    PenaltyUnder : Size=14, Index=SHIFTTYPES*DAYS
        Key       : Lower : Value : Upper : Fixed : Stale : Domain
         ('D', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 5) :     0 : 200.0 :  None : False : False : NonNegativeReals
         ('D', 6) :     0 : 300.0 :  None : False : False : NonNegativeReals
         ('D', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D', 12) :     0 : 100.0 :  None : False : False : NonNegativeReals
        ('D', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
    PenaltyOver : Size=14, Index=SHIFTTYPES*DAYS
        Key       : Lower : Value : Upper : Fixed : Stale : Domain
         ('D', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
    MinTotalMinsUnder : Size=8, Index=NURSES
        Key : Lower : Value : Upper : Fixed : Stale : Domain
          A :     0 :  -0.0 :  None : False : False : NonNegativeReals
          B :     0 :  -0.0 :  None : False : False : NonNegativeReals
          C :     0 :  -0.0 :  None : False : False : NonNegativeReals
          D :     0 :  -0.0 :  None : False : False : NonNegativeReals
          E :     0 :  -0.0 :  None : False : False : NonNegativeReals
          F :     0 :  -0.0 :  None : False : False : NonNegativeReals
          G :     0 :  -0.0 :  None : False : False : NonNegativeReals
          H :     0 :  -0.0 :  None : False : False : NonNegativeReals

  Objectives:
    objective : Size=1, Index=None, Active=True
        Key  : Active : Value
        None :   True : 607.0

  Constraints:
    constraint_one_shift_one_day : Size=112
        Key       : Lower : Body : Upper
         ('A', 0) :   1.0 :  1.0 :   1.0
         ('A', 1) :   1.0 :  1.0 :   1.0
         ('A', 2) :   1.0 :  1.0 :   1.0
         ('A', 3) :   1.0 :  1.0 :   1.0
         ('A', 4) :   1.0 :  1.0 :   1.0
         ('A', 5) :   1.0 :  1.0 :   1.0
         ('A', 6) :   1.0 :  1.0 :   1.0
         ('A', 7) :   1.0 :  1.0 :   1.0
         ('A', 8) :   1.0 :  1.0 :   1.0
         ('A', 9) :   1.0 :  1.0 :   1.0
        ('A', 10) :   1.0 :  1.0 :   1.0
        ('A', 11) :   1.0 :  1.0 :   1.0
        ('A', 12) :   1.0 :  1.0 :   1.0
        ('A', 13) :   1.0 :  1.0 :   1.0
         ('B', 0) :   1.0 :  1.0 :   1.0
         ('B', 1) :   1.0 :  1.0 :   1.0
         ('B', 2) :   1.0 :  1.0 :   1.0
         ('B', 3) :   1.0 :  1.0 :   1.0
         ('B', 4) :   1.0 :  1.0 :   1.0
         ('B', 5) :   1.0 :  1.0 :   1.0
         ('B', 6) :   1.0 :  1.0 :   1.0
         ('B', 7) :   1.0 :  1.0 :   1.0
         ('B', 8) :   1.0 :  1.0 :   1.0
         ('B', 9) :   1.0 :  1.0 :   1.0
        ('B', 10) :   1.0 :  1.0 :   1.0
        ('B', 11) :   1.0 :  1.0 :   1.0
        ('B', 12) :   1.0 :  1.0 :   1.0
        ('B', 13) :   1.0 :  1.0 :   1.0
         ('C', 0) :   1.0 :  1.0 :   1.0
         ('C', 1) :   1.0 :  1.0 :   1.0
         ('C', 2) :   1.0 :  1.0 :   1.0
         ('C', 3) :   1.0 :  1.0 :   1.0
         ('C', 4) :   1.0 :  1.0 :   1.0
         ('C', 5) :   1.0 :  1.0 :   1.0
         ('C', 6) :   1.0 :  1.0 :   1.0
         ('C', 7) :   1.0 :  1.0 :   1.0
         ('C', 8) :   1.0 :  1.0 :   1.0
         ('C', 9) :   1.0 :  1.0 :   1.0
        ('C', 10) :   1.0 :  1.0 :   1.0
        ('C', 11) :   1.0 :  1.0 :   1.0
        ('C', 12) :   1.0 :  1.0 :   1.0
        ('C', 13) :   1.0 :  1.0 :   1.0
         ('D', 0) :   1.0 :  1.0 :   1.0
         ('D', 1) :   1.0 :  1.0 :   1.0
         ('D', 2) :   1.0 :  1.0 :   1.0
         ('D', 3) :   1.0 :  1.0 :   1.0
         ('D', 4) :   1.0 :  1.0 :   1.0
         ('D', 5) :   1.0 :  1.0 :   1.0
         ('D', 6) :   1.0 :  1.0 :   1.0
         ('D', 7) :   1.0 :  1.0 :   1.0
         ('D', 8) :   1.0 :  1.0 :   1.0
         ('D', 9) :   1.0 :  1.0 :   1.0
        ('D', 10) :   1.0 :  1.0 :   1.0
        ('D', 11) :   1.0 :  1.0 :   1.0
        ('D', 12) :   1.0 :  1.0 :   1.0
        ('D', 13) :   1.0 :  1.0 :   1.0
         ('E', 0) :   1.0 :  1.0 :   1.0
         ('E', 1) :   1.0 :  1.0 :   1.0
         ('E', 2) :   1.0 :  1.0 :   1.0
         ('E', 3) :   1.0 :  1.0 :   1.0
         ('E', 4) :   1.0 :  1.0 :   1.0
         ('E', 5) :   1.0 :  1.0 :   1.0
         ('E', 6) :   1.0 :  1.0 :   1.0
         ('E', 7) :   1.0 :  1.0 :   1.0
         ('E', 8) :   1.0 :  1.0 :   1.0
         ('E', 9) :   1.0 :  1.0 :   1.0
        ('E', 10) :   1.0 :  1.0 :   1.0
        ('E', 11) :   1.0 :  1.0 :   1.0
        ('E', 12) :   1.0 :  1.0 :   1.0
        ('E', 13) :   1.0 :  1.0 :   1.0
         ('F', 0) :   1.0 :  1.0 :   1.0
         ('F', 1) :   1.0 :  1.0 :   1.0
         ('F', 2) :   1.0 :  1.0 :   1.0
         ('F', 3) :   1.0 :  1.0 :   1.0
         ('F', 4) :   1.0 :  1.0 :   1.0
         ('F', 5) :   1.0 :  1.0 :   1.0
         ('F', 6) :   1.0 :  1.0 :   1.0
         ('F', 7) :   1.0 :  1.0 :   1.0
         ('F', 8) :   1.0 :  1.0 :   1.0
         ('F', 9) :   1.0 :  1.0 :   1.0
        ('F', 10) :   1.0 :  1.0 :   1.0
        ('F', 11) :   1.0 :  1.0 :   1.0
        ('F', 12) :   1.0 :  1.0 :   1.0
        ('F', 13) :   1.0 :  1.0 :   1.0
         ('G', 0) :   1.0 :  1.0 :   1.0
         ('G', 1) :   1.0 :  1.0 :   1.0
         ('G', 2) :   1.0 :  1.0 :   1.0
         ('G', 3) :   1.0 :  1.0 :   1.0
         ('G', 4) :   1.0 :  1.0 :   1.0
         ('G', 5) :   1.0 :  1.0 :   1.0
         ('G', 6) :   1.0 :  1.0 :   1.0
         ('G', 7) :   1.0 :  1.0 :   1.0
         ('G', 8) :   1.0 :  1.0 :   1.0
         ('G', 9) :   1.0 :  1.0 :   1.0
        ('G', 10) :   1.0 :  1.0 :   1.0
        ('G', 11) :   1.0 :  1.0 :   1.0
        ('G', 12) :   1.0 :  1.0 :   1.0
        ('G', 13) :   1.0 :  1.0 :   1.0
         ('H', 0) :   1.0 :  1.0 :   1.0
         ('H', 1) :   1.0 :  1.0 :   1.0
         ('H', 2) :   1.0 :  1.0 :   1.0
         ('H', 3) :   1.0 :  1.0 :   1.0
         ('H', 4) :   1.0 :  1.0 :   1.0
         ('H', 5) :   1.0 :  1.0 :   1.0
         ('H', 6) :   1.0 :  1.0 :   1.0
         ('H', 7) :   1.0 :  1.0 :   1.0
         ('H', 8) :   1.0 :  1.0 :   1.0
         ('H', 9) :   1.0 :  1.0 :   1.0
        ('H', 10) :   1.0 :  1.0 :   1.0
        ('H', 11) :   1.0 :  1.0 :   1.0
        ('H', 12) :   1.0 :  1.0 :   1.0
        ('H', 13) :   1.0 :  1.0 :   1.0
    constraint_shift_rotation_ub : Size=0
        Key : Lower : Body : Upper
    constraint_shift_rotation : Size=104
        Key            : Lower : Body : Upper
         ('D', 'A', 0) :  None :  0.0 :   1.0
         ('D', 'A', 1) :  None :  1.0 :   1.0
         ('D', 'A', 2) :  None :  1.0 :   1.0
         ('D', 'A', 3) :  None :  1.0 :   1.0
         ('D', 'A', 4) :  None :  1.0 :   1.0
         ('D', 'A', 5) :  None :  0.0 :   1.0
         ('D', 'A', 6) :  None :  0.0 :   1.0
         ('D', 'A', 7) :  None :  1.0 :   1.0
         ('D', 'A', 8) :  None :  1.0 :   1.0
         ('D', 'A', 9) :  None :  0.0 :   1.0
        ('D', 'A', 10) :  None :  0.0 :   1.0
        ('D', 'A', 11) :  None :  1.0 :   1.0
        ('D', 'A', 12) :  None :  1.0 :   1.0
         ('D', 'B', 0) :  None :  1.0 :   1.0
         ('D', 'B', 1) :  None :  1.0 :   1.0
         ('D', 'B', 2) :  None :  1.0 :   1.0
         ('D', 'B', 3) :  None :  1.0 :   1.0
         ('D', 'B', 4) :  None :  1.0 :   1.0
         ('D', 'B', 5) :  None :  0.0 :   1.0
         ('D', 'B', 6) :  None :  0.0 :   1.0
         ('D', 'B', 7) :  None :  1.0 :   1.0
         ('D', 'B', 8) :  None :  1.0 :   1.0
         ('D', 'B', 9) :  None :  0.0 :   1.0
        ('D', 'B', 10) :  None :  0.0 :   1.0
        ('D', 'B', 11) :  None :  1.0 :   1.0
        ('D', 'B', 12) :  None :  1.0 :   1.0
         ('D', 'C', 0) :  None :  1.0 :   1.0
         ('D', 'C', 1) :  None :  1.0 :   1.0
         ('D', 'C', 2) :  None :  1.0 :   1.0
         ('D', 'C', 3) :  None :  0.0 :   1.0
         ('D', 'C', 4) :  None :  0.0 :   1.0
         ('D', 'C', 5) :  None :  1.0 :   1.0
         ('D', 'C', 6) :  None :  1.0 :   1.0
         ('D', 'C', 7) :  None :  1.0 :   1.0
         ('D', 'C', 8) :  None :  0.0 :   1.0
         ('D', 'C', 9) :  None :  0.0 :   1.0
        ('D', 'C', 10) :  None :  1.0 :   1.0
        ('D', 'C', 11) :  None :  1.0 :   1.0
        ('D', 'C', 12) :  None :  0.0 :   1.0
         ('D', 'D', 0) :  None :  1.0 :   1.0
         ('D', 'D', 1) :  None :  1.0 :   1.0
         ('D', 'D', 2) :  None :  0.0 :   1.0
         ('D', 'D', 3) :  None :  0.0 :   1.0
         ('D', 'D', 4) :  None :  0.0 :   1.0
         ('D', 'D', 5) :  None :  1.0 :   1.0
         ('D', 'D', 6) :  None :  1.0 :   1.0
         ('D', 'D', 7) :  None :  1.0 :   1.0
         ('D', 'D', 8) :  None :  1.0 :   1.0
         ('D', 'D', 9) :  None :  1.0 :   1.0
        ('D', 'D', 10) :  None :  0.0 :   1.0
        ('D', 'D', 11) :  None :  0.0 :   1.0
        ('D', 'D', 12) :  None :  0.0 :   1.0
         ('D', 'E', 0) :  None : -0.0 :   1.0
         ('D', 'E', 1) :  None :  1.0 :   1.0
         ('D', 'E', 2) :  None :  1.0 :   1.0
         ('D', 'E', 3) :  None :  1.0 :   1.0
         ('D', 'E', 4) :  None :  1.0 :   1.0
         ('D', 'E', 5) :  None :  0.0 :   1.0
         ('D', 'E', 6) :  None :  0.0 :   1.0
         ('D', 'E', 7) :  None :  1.0 :   1.0
         ('D', 'E', 8) :  None :  1.0 :   1.0
         ('D', 'E', 9) :  None :  0.0 :   1.0
        ('D', 'E', 10) :  None :  0.0 :   1.0
        ('D', 'E', 11) :  None :  1.0 :   1.0
        ('D', 'E', 12) :  None :  1.0 :   1.0
         ('D', 'F', 0) :  None :  1.0 :   1.0
         ('D', 'F', 1) :  None :  1.0 :   1.0
         ('D', 'F', 2) :  None :  1.0 :   1.0
         ('D', 'F', 3) :  None :  0.0 :   1.0
         ('D', 'F', 4) :  None :  0.0 :   1.0
         ('D', 'F', 5) :  None :  0.0 :   1.0
         ('D', 'F', 6) :  None :  0.0 :   1.0
         ('D', 'F', 7) :  None :  1.0 :   1.0
         ('D', 'F', 8) :  None :  1.0 :   1.0
         ('D', 'F', 9) :  None :  1.0 :   1.0
        ('D', 'F', 10) :  None :  0.0 :   1.0
        ('D', 'F', 11) :  None :  0.0 :   1.0
        ('D', 'F', 12) :  None :  1.0 :   1.0
         ('D', 'G', 0) :  None : -0.0 :   1.0
         ('D', 'G', 1) :  None :  0.0 :   1.0
         ('D', 'G', 2) :  None :  1.0 :   1.0
         ('D', 'G', 3) :  None :  1.0 :   1.0
         ('D', 'G', 4) :  None :  1.0 :   1.0
         ('D', 'G', 5) :  None :  0.0 :   1.0
         ('D', 'G', 6) :  None :  0.0 :   1.0
         ('D', 'G', 7) :  None :  0.0 :   1.0
         ('D', 'G', 8) :  None :  1.0 :   1.0
         ('D', 'G', 9) :  None :  1.0 :   1.0
        ('D', 'G', 10) :  None :  0.0 :   1.0
        ('D', 'G', 11) :  None :  0.0 :   1.0
        ('D', 'G', 12) :  None :  1.0 :   1.0
         ('D', 'H', 0) :  None :  1.0 :   1.0
         ('D', 'H', 1) :  None :  1.0 :   1.0
         ('D', 'H', 2) :  None :  0.0 :   1.0
         ('D', 'H', 3) :  None :  0.0 :   1.0
         ('D', 'H', 4) :  None :  1.0 :   1.0
         ('D', 'H', 5) :  None :  1.0 :   1.0
         ('D', 'H', 6) :  None :  0.0 :   1.0
         ('D', 'H', 7) :  None :  0.0 :   1.0
         ('D', 'H', 8) :  None :  1.0 :   1.0
         ('D', 'H', 9) :  None :  1.0 :   1.0
        ('D', 'H', 10) :  None :  1.0 :   1.0
        ('D', 'H', 11) :  None :  1.0 :   1.0
        ('D', 'H', 12) :  None :  0.0 :   1.0
    constraint_max_nr_shifts : Size=8
        Key        : Lower : Body : Upper
        ('A', 'D') :  None :  9.0 :  14.0
        ('B', 'D') :  None :  9.0 :  14.0
        ('C', 'D') :  None :  8.0 :  14.0
        ('D', 'D') :  None :  7.0 :  14.0
        ('E', 'D') :  None :  9.0 :  14.0
        ('F', 'D') :  None :  8.0 :  14.0
        ('G', 'D') :  None :  7.0 :  14.0
        ('H', 'D') :  None :  8.0 :  14.0
    constraint_max_total_minutes : Size=8
        Key : Lower : Body   : Upper
          A :  None : 4320.0 : 4320.0
          B :  None : 4320.0 : 4320.0
          C :  None : 3840.0 : 4320.0
          D :  None : 3360.0 : 4320.0
          E :  None : 4320.0 : 4320.0
          F :  None : 3840.0 : 4320.0
          G :  None : 3360.0 : 4320.0
          H :  None : 3840.0 : 4320.0
    constraint_min_total_minutes : Size=8
        Key : Lower  : Body   : Upper
          A : 3360.0 : 4320.0 :  None
          B : 3360.0 : 4320.0 :  None
          C : 3360.0 : 3840.0 :  None
          D : 3360.0 : 3360.0 :  None
          E : 3360.0 : 4320.0 :  None
          F : 3360.0 : 3840.0 :  None
          G : 3360.0 : 3360.0 :  None
          H : 3360.0 : 3840.0 :  None
    constraint_max_cons_shifts_backward : Size=72
        Key       : Lower : Body : Upper
         ('A', 5) :   1.0 :  2.0 :  None
         ('A', 6) :   1.0 :  2.0 :  None
         ('A', 7) :   1.0 :  2.0 :  None
         ('A', 8) :   1.0 :  2.0 :  None
         ('A', 9) :   1.0 :  3.0 :  None
        ('A', 10) :   1.0 :  4.0 :  None
        ('A', 11) :   1.0 :  3.0 :  None
        ('A', 12) :   1.0 :  2.0 :  None
        ('A', 13) :   1.0 :  2.0 :  None
         ('B', 5) :   1.0 :  1.0 :  None
         ('B', 6) :   1.0 :  2.0 :  None
         ('B', 7) :   1.0 :  2.0 :  None
         ('B', 8) :   1.0 :  2.0 :  None
         ('B', 9) :   1.0 :  3.0 :  None
        ('B', 10) :   1.0 :  4.0 :  None
        ('B', 11) :   1.0 :  3.0 :  None
        ('B', 12) :   1.0 :  2.0 :  None
        ('B', 13) :   1.0 :  3.0 :  None
         ('C', 5) :   1.0 :  2.0 :  None
         ('C', 6) :   1.0 :  2.0 :  None
         ('C', 7) :   1.0 :  2.0 :  None
         ('C', 8) :   1.0 :  3.0 :  None
         ('C', 9) :   1.0 :  3.0 :  None
        ('C', 10) :   1.0 :  2.0 :  None
        ('C', 11) :   1.0 :  2.0 :  None
        ('C', 12) :   1.0 :  3.0 :  None
        ('C', 13) :   1.0 :  4.0 :  None
         ('D', 5) :   1.0 :  3.0 :  None
         ('D', 6) :   1.0 :  3.0 :  None
         ('D', 7) :   1.0 :  3.0 :  None
         ('D', 8) :   1.0 :  2.0 :  None
         ('D', 9) :   1.0 :  1.0 :  None
        ('D', 10) :   1.0 :  1.0 :  None
        ('D', 11) :   1.0 :  2.0 :  None
        ('D', 12) :   1.0 :  3.0 :  None
        ('D', 13) :   1.0 :  4.0 :  None
         ('E', 5) :   1.0 :  2.0 :  None
         ('E', 6) :   1.0 :  2.0 :  None
         ('E', 7) :   1.0 :  2.0 :  None
         ('E', 8) :   1.0 :  2.0 :  None
         ('E', 9) :   1.0 :  3.0 :  None
        ('E', 10) :   1.0 :  4.0 :  None
        ('E', 11) :   1.0 :  3.0 :  None
        ('E', 12) :   1.0 :  2.0 :  None
        ('E', 13) :   1.0 :  2.0 :  None
         ('F', 5) :   1.0 :  3.0 :  None
         ('F', 6) :   1.0 :  4.0 :  None
         ('F', 7) :   1.0 :  4.0 :  None
         ('F', 8) :   1.0 :  4.0 :  None
         ('F', 9) :   1.0 :  3.0 :  None
        ('F', 10) :   1.0 :  3.0 :  None
        ('F', 11) :   1.0 :  3.0 :  None
        ('F', 12) :   1.0 :  2.0 :  None
        ('F', 13) :   1.0 :  2.0 :  None
         ('G', 5) :   1.0 :  3.0 :  None
         ('G', 6) :   1.0 :  3.0 :  None
         ('G', 7) :   1.0 :  3.0 :  None
         ('G', 8) :   1.0 :  3.0 :  None
         ('G', 9) :   1.0 :  3.0 :  None
        ('G', 10) :   1.0 :  4.0 :  None
        ('G', 11) :   1.0 :  4.0 :  None
        ('G', 12) :   1.0 :  3.0 :  None
        ('G', 13) :   1.0 :  2.0 :  None
         ('H', 5) :   1.0 :  2.0 :  None
         ('H', 6) :   1.0 :  3.0 :  None
         ('H', 7) :   1.0 :  4.0 :  None
         ('H', 8) :   1.0 :  3.0 :  None
         ('H', 9) :   1.0 :  2.0 :  None
        ('H', 10) :   1.0 :  2.0 :  None
        ('H', 11) :   1.0 :  2.0 :  None
        ('H', 12) :   1.0 :  2.0 :  None
        ('H', 13) :   1.0 :  2.0 :  None
    constraint_max_cons_shifts_forward : Size=0
        Key : Lower : Body : Upper
    constraint_max_cons_shifts_in_between : Size=0
        Key : Lower : Body : Upper
    constraint_is_end_of_work_block : Size=112
        Key       : Lower : Body : Upper
         ('A', 0) :  None : -2.0 :   0.0
         ('A', 1) :  None :  0.0 :   0.0
         ('A', 2) :  None : -1.0 :   0.0
         ('A', 3) :  None : -1.0 :   0.0
         ('A', 4) :  None :  0.0 :   0.0
         ('A', 5) :  None : -1.0 :   0.0
         ('A', 6) :  None : -1.0 :   0.0
         ('A', 7) :  None :  0.0 :   0.0
         ('A', 8) :  None :  0.0 :   0.0
         ('A', 9) :  None : -1.0 :   0.0
        ('A', 10) :  None : -1.0 :   0.0
        ('A', 11) :  None :  0.0 :   0.0
        ('A', 12) :  None : -1.0 :   0.0
        ('A', 13) :   0.0 :  0.0 :   0.0
         ('B', 0) :  None : -1.0 :   0.0
         ('B', 1) :  None : -1.0 :   0.0
         ('B', 2) :  None : -1.0 :   0.0
         ('B', 3) :  None : -1.0 :   0.0
         ('B', 4) :  None :  0.0 :   0.0
         ('B', 5) :  None : -1.0 :   0.0
         ('B', 6) :  None : -1.0 :   0.0
         ('B', 7) :  None :  0.0 :   0.0
         ('B', 8) :  None :  0.0 :   0.0
         ('B', 9) :  None : -1.0 :   0.0
        ('B', 10) :  None : -1.0 :   0.0
        ('B', 11) :  None :  0.0 :   0.0
        ('B', 12) :  None :  0.0 :   0.0
        ('B', 13) :   0.0 :  0.0 :   0.0
         ('C', 0) :  None : -1.0 :   0.0
         ('C', 1) :  None : -1.0 :   0.0
         ('C', 2) :  None :  0.0 :   0.0
         ('C', 3) :  None : -1.0 :   0.0
         ('C', 4) :  None : -1.0 :   0.0
         ('C', 5) :  None :  0.0 :   0.0
         ('C', 6) :  None : -1.0 :   0.0
         ('C', 7) :  None :  0.0 :   0.0
         ('C', 8) :  None : -1.0 :   0.0
         ('C', 9) :  None : -1.0 :   0.0
        ('C', 10) :  None :  0.0 :   0.0
        ('C', 11) :  None :  0.0 :   0.0
        ('C', 12) :  None : -1.0 :   0.0
        ('C', 13) :   0.0 :  0.0 :   0.0
         ('D', 0) :  None : -1.0 :   0.0
         ('D', 1) :  None :  0.0 :   0.0
         ('D', 2) :  None : -1.0 :   0.0
         ('D', 3) :  None :  0.0 :   0.0
         ('D', 4) :  None : -1.0 :   0.0
         ('D', 5) :  None :  0.0 :   0.0
         ('D', 6) :  None : -1.0 :   0.0
         ('D', 7) :  None : -1.0 :   0.0
         ('D', 8) :  None : -1.0 :   0.0
         ('D', 9) :  None :  0.0 :   0.0
        ('D', 10) :  None : -1.0 :   0.0
        ('D', 11) :  None :  0.0 :   0.0
        ('D', 12) :  None :  0.0 :   0.0
        ('D', 13) :   0.0 :  0.0 :   0.0
         ('E', 0) :  None : -2.0 :   0.0
         ('E', 1) :  None :  0.0 :   0.0
         ('E', 2) :  None : -1.0 :   0.0
         ('E', 3) :  None : -1.0 :   0.0
         ('E', 4) :  None :  0.0 :   0.0
         ('E', 5) :  None : -1.0 :   0.0
         ('E', 6) :  None : -1.0 :   0.0
         ('E', 7) :  None :  0.0 :   0.0
         ('E', 8) :  None :  0.0 :   0.0
         ('E', 9) :  None : -1.0 :   0.0
        ('E', 10) :  None : -1.0 :   0.0
        ('E', 11) :  None :  0.0 :   0.0
        ('E', 12) :  None : -1.0 :   0.0
        ('E', 13) :   0.0 :  0.0 :   0.0
         ('F', 0) :  None : -1.0 :   0.0
         ('F', 1) :  None : -1.0 :   0.0
         ('F', 2) :  None :  0.0 :   0.0
         ('F', 3) :  None : -1.0 :   0.0
         ('F', 4) :  None :  0.0 :   0.0
         ('F', 5) :  None :  0.0 :   0.0
         ('F', 6) :  None : -1.0 :   0.0
         ('F', 7) :  None :  0.0 :   0.0
         ('F', 8) :  None : -1.0 :   0.0
         ('F', 9) :  None :  0.0 :   0.0
        ('F', 10) :  None : -1.0 :   0.0
        ('F', 11) :  None : -1.0 :   0.0
        ('F', 12) :  None :  0.0 :   0.0
        ('F', 13) :   0.0 :  0.0 :   0.0
         ('G', 0) :  None : -1.0 :   0.0
         ('G', 1) :  None : -1.0 :   0.0
         ('G', 2) :  None :  0.0 :   0.0
         ('G', 3) :  None : -1.0 :   0.0
         ('G', 4) :  None :  0.0 :   0.0
         ('G', 5) :  None : -1.0 :   0.0
         ('G', 6) :  None :  0.0 :   0.0
         ('G', 7) :  None : -1.0 :   0.0
         ('G', 8) :  None :  0.0 :   0.0
         ('G', 9) :  None :  0.0 :   0.0
        ('G', 10) :  None : -1.0 :   0.0
        ('G', 11) :  None : -1.0 :   0.0
        ('G', 12) :  None :  0.0 :   0.0
        ('G', 13) :   0.0 :  0.0 :   0.0
         ('H', 0) :  None : -1.0 :   0.0
         ('H', 1) :  None :  0.0 :   0.0
         ('H', 2) :  None : -1.0 :   0.0
         ('H', 3) :  None : -1.0 :   0.0
         ('H', 4) :  None :  0.0 :   0.0
         ('H', 5) :  None :  0.0 :   0.0
         ('H', 6) :  None : -1.0 :   0.0
         ('H', 7) :  None : -1.0 :   0.0
         ('H', 8) :  None :  0.0 :   0.0
         ('H', 9) :  None : -1.0 :   0.0
        ('H', 10) :  None : -1.0 :   0.0
        ('H', 11) :  None :  0.0 :   0.0
        ('H', 12) :  None : -1.0 :   0.0
        ('H', 13) :   0.0 :  0.0 :   0.0
    constraint_min_cons_shift_inscope : Size=112
        Key       : Lower : Body : Upper
         ('A', 0) :  None :  0.0 :   0.0
         ('A', 1) :  None :  1.0 :   1.0
         ('A', 2) :  None :  1.0 :   1.0
         ('A', 3) :  None :  1.0 :   1.0
         ('A', 4) :  None :  1.0 :   1.0
         ('A', 5) :  None :  1.0 :   1.0
         ('A', 6) :  None :  1.0 :   1.0
         ('A', 7) :  None :  1.0 :   1.0
         ('A', 8) :  None :  1.0 :   1.0
         ('A', 9) :  None :  1.0 :   1.0
        ('A', 10) :  None :  1.0 :   1.0
        ('A', 11) :  None :  1.0 :   1.0
        ('A', 12) :  None :  1.0 :   1.0
        ('A', 13) :  None :  0.0 :   1.0
         ('B', 0) :  None :  0.0 :   0.0
         ('B', 1) :  None :  1.0 :   1.0
         ('B', 2) :  None :  1.0 :   1.0
         ('B', 3) :  None :  1.0 :   1.0
         ('B', 4) :  None :  1.0 :   1.0
         ('B', 5) :  None :  1.0 :   1.0
         ('B', 6) :  None :  1.0 :   1.0
         ('B', 7) :  None :  1.0 :   1.0
         ('B', 8) :  None :  1.0 :   1.0
         ('B', 9) :  None :  1.0 :   1.0
        ('B', 10) :  None :  1.0 :   1.0
        ('B', 11) :  None :  1.0 :   1.0
        ('B', 12) :  None :  1.0 :   1.0
        ('B', 13) :  None :  0.0 :   1.0
         ('C', 0) :  None :  0.0 :   0.0
         ('C', 1) :  None :  1.0 :   1.0
         ('C', 2) :  None :  1.0 :   1.0
         ('C', 3) :  None :  1.0 :   1.0
         ('C', 4) :  None :  1.0 :   1.0
         ('C', 5) :  None :  1.0 :   1.0
         ('C', 6) :  None :  1.0 :   1.0
         ('C', 7) :  None :  1.0 :   1.0
         ('C', 8) :  None :  1.0 :   1.0
         ('C', 9) :  None :  1.0 :   1.0
        ('C', 10) :  None :  1.0 :   1.0
        ('C', 11) :  None :  1.0 :   1.0
        ('C', 12) :  None :  1.0 :   1.0
        ('C', 13) :  None :  1.0 :   1.0
         ('D', 0) :  None :  0.0 :   0.0
         ('D', 1) :  None :  1.0 :   1.0
         ('D', 2) :  None :  1.0 :   1.0
         ('D', 3) :  None :  1.0 :   1.0
         ('D', 4) :  None :  1.0 :   1.0
         ('D', 5) :  None :  1.0 :   1.0
         ('D', 6) :  None :  1.0 :   1.0
         ('D', 7) :  None :  1.0 :   1.0
         ('D', 8) :  None :  1.0 :   1.0
         ('D', 9) :  None :  1.0 :   1.0
        ('D', 10) :  None :  1.0 :   1.0
        ('D', 11) :  None :  1.0 :   1.0
        ('D', 12) :  None :  1.0 :   1.0
        ('D', 13) :  None :  1.0 :   1.0
         ('E', 0) :  None :  0.0 :   0.0
         ('E', 1) :  None :  1.0 :   1.0
         ('E', 2) :  None :  1.0 :   1.0
         ('E', 3) :  None :  1.0 :   1.0
         ('E', 4) :  None :  1.0 :   1.0
         ('E', 5) :  None :  1.0 :   1.0
         ('E', 6) :  None :  1.0 :   1.0
         ('E', 7) :  None :  1.0 :   1.0
         ('E', 8) :  None :  1.0 :   1.0
         ('E', 9) :  None :  1.0 :   1.0
        ('E', 10) :  None :  1.0 :   1.0
        ('E', 11) :  None :  1.0 :   1.0
        ('E', 12) :  None :  1.0 :   1.0
        ('E', 13) :  None :  0.0 :   1.0
         ('F', 0) :  None :  0.0 :   0.0
         ('F', 1) :  None :  1.0 :   1.0
         ('F', 2) :  None :  1.0 :   1.0
         ('F', 3) :  None :  1.0 :   1.0
         ('F', 4) :  None :  1.0 :   1.0
         ('F', 5) :  None :  1.0 :   1.0
         ('F', 6) :  None :  1.0 :   1.0
         ('F', 7) :  None :  1.0 :   1.0
         ('F', 8) :  None :  1.0 :   1.0
         ('F', 9) :  None :  1.0 :   1.0
        ('F', 10) :  None :  1.0 :   1.0
        ('F', 11) :  None :  1.0 :   1.0
        ('F', 12) :  None :  1.0 :   1.0
        ('F', 13) :  None :  0.0 :   1.0
         ('G', 0) :  None :  0.0 :   0.0
         ('G', 1) :  None :  1.0 :   1.0
         ('G', 2) :  None :  1.0 :   1.0
         ('G', 3) :  None :  1.0 :   1.0
         ('G', 4) :  None :  1.0 :   1.0
         ('G', 5) :  None :  1.0 :   1.0
         ('G', 6) :  None :  1.0 :   1.0
         ('G', 7) :  None :  1.0 :   1.0
         ('G', 8) :  None :  1.0 :   1.0
         ('G', 9) :  None :  1.0 :   1.0
        ('G', 10) :  None :  1.0 :   1.0
        ('G', 11) :  None :  1.0 :   1.0
        ('G', 12) :  None :  1.0 :   1.0
        ('G', 13) :  None :  0.0 :   1.0
         ('H', 0) :  None :  0.0 :   0.0
         ('H', 1) :  None :  1.0 :   1.0
         ('H', 2) :  None :  1.0 :   1.0
         ('H', 3) :  None :  1.0 :   1.0
         ('H', 4) :  None :  1.0 :   1.0
         ('H', 5) :  None :  1.0 :   1.0
         ('H', 6) :  None :  1.0 :   1.0
         ('H', 7) :  None :  1.0 :   1.0
         ('H', 8) :  None :  1.0 :   1.0
         ('H', 9) :  None :  1.0 :   1.0
        ('H', 10) :  None :  1.0 :   1.0
        ('H', 11) :  None :  1.0 :   1.0
        ('H', 12) :  None :  1.0 :   1.0
        ('H', 13) :  None :  1.0 :   1.0
    constraint_min_cons_shift_backward : Size=0
        Key : Lower : Body : Upper
    constraint_min_cons_shift_forward : Size=0
        Key : Lower : Body : Upper
    constraint_is_end_of_rest_block : Size=112
        Key       : Lower : Body : Upper
         ('A', 0) :  None :  0.0 :   0.0
         ('A', 1) :  None : -1.0 :   0.0
         ('A', 2) :  None :  0.0 :   0.0
         ('A', 3) :  None :  0.0 :   0.0
         ('A', 4) :  None : -1.0 :   0.0
         ('A', 5) :  None :  0.0 :   0.0
         ('A', 6) :  None :  0.0 :   0.0
         ('A', 7) :  None : -1.0 :   0.0
         ('A', 8) :  None : -1.0 :   0.0
         ('A', 9) :  None :  0.0 :   0.0
        ('A', 10) :  None :  0.0 :   0.0
        ('A', 11) :  None : -1.0 :   0.0
        ('A', 12) :  None :  0.0 :   0.0
        ('A', 13) :   0.0 :  0.0 :   0.0
         ('B', 0) :  None : -1.0 :   0.0
         ('B', 1) :  None :  0.0 :   0.0
         ('B', 2) :  None :  0.0 :   0.0
         ('B', 3) :  None :  0.0 :   0.0
         ('B', 4) :  None : -1.0 :   0.0
         ('B', 5) :  None :  0.0 :   0.0
         ('B', 6) :  None :  0.0 :   0.0
         ('B', 7) :  None : -1.0 :   0.0
         ('B', 8) :  None : -1.0 :   0.0
         ('B', 9) :  None :  0.0 :   0.0
        ('B', 10) :  None :  0.0 :   0.0
        ('B', 11) :  None : -1.0 :   0.0
        ('B', 12) :  None : -1.0 :   0.0
        ('B', 13) :   0.0 :  0.0 :   0.0
         ('C', 0) :  None : -1.0 :   0.0
         ('C', 1) :  None :  0.0 :   0.0
         ('C', 2) :  None : -1.0 :   0.0
         ('C', 3) :  None :  0.0 :   0.0
         ('C', 4) :  None :  0.0 :   0.0
         ('C', 5) :  None : -1.0 :   0.0
         ('C', 6) :  None :  0.0 :   0.0
         ('C', 7) :  None : -1.0 :   0.0
         ('C', 8) :  None :  0.0 :   0.0
         ('C', 9) :  None :  0.0 :   0.0
        ('C', 10) :  None : -1.0 :   0.0
        ('C', 11) :  None : -1.0 :   0.0
        ('C', 12) :  None :  0.0 :   0.0
        ('C', 13) :   0.0 :  0.0 :   0.0
         ('D', 0) :  None : -1.0 :   0.0
         ('D', 1) :  None : -1.0 :   0.0
         ('D', 2) :  None :  0.0 :   0.0
         ('D', 3) :  None : -1.0 :   0.0
         ('D', 4) :  None :  0.0 :   0.0
         ('D', 5) :  None : -1.0 :   0.0
         ('D', 6) :  None :  0.0 :   0.0
         ('D', 7) :  None :  0.0 :   0.0
         ('D', 8) :  None :  0.0 :   0.0
         ('D', 9) :  None : -1.0 :   0.0
        ('D', 10) :  None :  0.0 :   0.0
        ('D', 11) :  None : -1.0 :   0.0
        ('D', 12) :  None : -1.0 :   0.0
        ('D', 13) :   0.0 :  0.0 :   0.0
         ('E', 0) :  None :  0.0 :   0.0
         ('E', 1) :  None : -1.0 :   0.0
         ('E', 2) :  None :  0.0 :   0.0
         ('E', 3) :  None :  0.0 :   0.0
         ('E', 4) :  None : -1.0 :   0.0
         ('E', 5) :  None :  0.0 :   0.0
         ('E', 6) :  None :  0.0 :   0.0
         ('E', 7) :  None : -1.0 :   0.0
         ('E', 8) :  None : -1.0 :   0.0
         ('E', 9) :  None :  0.0 :   0.0
        ('E', 10) :  None :  0.0 :   0.0
        ('E', 11) :  None : -1.0 :   0.0
        ('E', 12) :  None :  0.0 :   0.0
        ('E', 13) :   0.0 :  0.0 :   0.0
         ('F', 0) :  None : -1.0 :   0.0
         ('F', 1) :  None :  0.0 :   0.0
         ('F', 2) :  None : -1.0 :   0.0
         ('F', 3) :  None :  0.0 :   0.0
         ('F', 4) :  None : -1.0 :   0.0
         ('F', 5) :  None : -1.0 :   0.0
         ('F', 6) :  None :  0.0 :   0.0
         ('F', 7) :  None : -1.0 :   0.0
         ('F', 8) :  None :  0.0 :   0.0
         ('F', 9) :  None : -1.0 :   0.0
        ('F', 10) :  None :  0.0 :   0.0
        ('F', 11) :  None :  0.0 :   0.0
        ('F', 12) :  None : -1.0 :   0.0
        ('F', 13) :   0.0 :  0.0 :   0.0
         ('G', 0) :  None : -1.0 :   0.0
         ('G', 1) :  None :  0.0 :   0.0
         ('G', 2) :  None : -1.0 :   0.0
         ('G', 3) :  None :  0.0 :   0.0
         ('G', 4) :  None : -1.0 :   0.0
         ('G', 5) :  None :  0.0 :   0.0
         ('G', 6) :  None : -1.0 :   0.0
         ('G', 7) :  None :  0.0 :   0.0
         ('G', 8) :  None : -1.0 :   0.0
         ('G', 9) :  None : -1.0 :   0.0
        ('G', 10) :  None :  0.0 :   0.0
        ('G', 11) :  None :  0.0 :   0.0
        ('G', 12) :  None : -1.0 :   0.0
        ('G', 13) :   0.0 :  0.0 :   0.0
         ('H', 0) :  None : -1.0 :   0.0
         ('H', 1) :  None : -1.0 :   0.0
         ('H', 2) :  None :  0.0 :   0.0
         ('H', 3) :  None :  0.0 :   0.0
         ('H', 4) :  None : -1.0 :   0.0
         ('H', 5) :  None : -1.0 :   0.0
         ('H', 6) :  None :  0.0 :   0.0
         ('H', 7) :  None :  0.0 :   0.0
         ('H', 8) :  None : -1.0 :   0.0
         ('H', 9) :  None :  0.0 :   0.0
        ('H', 10) :  None :  0.0 :   0.0
        ('H', 11) :  None : -1.0 :   0.0
        ('H', 12) :  None :  0.0 :   0.0
        ('H', 13) :   0.0 :  0.0 :   0.0
    constraint_min_cons_days_off_inscope : Size=112
        Key       : Lower : Body : Upper
         ('A', 0) :  None :  0.0 :   0.0
         ('A', 1) :  None :  0.0 :   0.0
         ('A', 2) :  None :  0.0 :   0.0
         ('A', 3) :  None :  0.0 :   0.0
         ('A', 4) :  None :  0.0 :   0.0
         ('A', 5) :  None :  0.0 :   0.0
         ('A', 6) :  None :  0.0 :   0.0
         ('A', 7) :  None :  0.0 :   0.0
         ('A', 8) :  None :  0.0 :   0.0
         ('A', 9) :  None :  0.0 :   0.0
        ('A', 10) :  None :  0.0 :   0.0
        ('A', 11) :  None :  0.0 :   0.0
        ('A', 12) :  None :  0.0 :   0.0
        ('A', 13) :  None :  0.0 :   0.0
         ('B', 0) :  None :  0.0 :   0.0
         ('B', 1) :  None :  0.0 :   0.0
         ('B', 2) :  None :  0.0 :   0.0
         ('B', 3) :  None :  0.0 :   0.0
         ('B', 4) :  None :  0.0 :   0.0
         ('B', 5) :  None :  0.0 :   0.0
         ('B', 6) :  None :  0.0 :   0.0
         ('B', 7) :  None :  0.0 :   0.0
         ('B', 8) :  None :  0.0 :   0.0
         ('B', 9) :  None :  0.0 :   0.0
        ('B', 10) :  None :  0.0 :   0.0
        ('B', 11) :  None :  0.0 :   0.0
        ('B', 12) :  None :  0.0 :   0.0
        ('B', 13) :  None :  0.0 :   0.0
         ('C', 0) :  None :  0.0 :   0.0
         ('C', 1) :  None :  0.0 :   0.0
         ('C', 2) :  None :  0.0 :   0.0
         ('C', 3) :  None :  0.0 :   0.0
         ('C', 4) :  None :  0.0 :   0.0
         ('C', 5) :  None :  0.0 :   0.0
         ('C', 6) :  None :  0.0 :   0.0
         ('C', 7) :  None :  0.0 :   0.0
         ('C', 8) :  None :  0.0 :   0.0
         ('C', 9) :  None :  0.0 :   0.0
        ('C', 10) :  None :  0.0 :   0.0
        ('C', 11) :  None :  0.0 :   0.0
        ('C', 12) :  None :  0.0 :   0.0
        ('C', 13) :  None : -1.0 :   0.0
         ('D', 0) :  None :  0.0 :   0.0
         ('D', 1) :  None :  0.0 :   0.0
         ('D', 2) :  None :  0.0 :   0.0
         ('D', 3) :  None :  0.0 :   0.0
         ('D', 4) :  None :  0.0 :   0.0
         ('D', 5) :  None :  0.0 :   0.0
         ('D', 6) :  None :  0.0 :   0.0
         ('D', 7) :  None :  0.0 :   0.0
         ('D', 8) :  None :  0.0 :   0.0
         ('D', 9) :  None :  0.0 :   0.0
        ('D', 10) :  None :  0.0 :   0.0
        ('D', 11) :  None :  0.0 :   0.0
        ('D', 12) :  None :  0.0 :   0.0
        ('D', 13) :  None : -1.0 :   0.0
         ('E', 0) :  None :  0.0 :   0.0
         ('E', 1) :  None :  0.0 :   0.0
         ('E', 2) :  None :  0.0 :   0.0
         ('E', 3) :  None :  0.0 :   0.0
         ('E', 4) :  None :  0.0 :   0.0
         ('E', 5) :  None :  0.0 :   0.0
         ('E', 6) :  None :  0.0 :   0.0
         ('E', 7) :  None :  0.0 :   0.0
         ('E', 8) :  None :  0.0 :   0.0
         ('E', 9) :  None :  0.0 :   0.0
        ('E', 10) :  None :  0.0 :   0.0
        ('E', 11) :  None :  0.0 :   0.0
        ('E', 12) :  None :  0.0 :   0.0
        ('E', 13) :  None :  0.0 :   0.0
         ('F', 0) :  None :  0.0 :   0.0
         ('F', 1) :  None :  0.0 :   0.0
         ('F', 2) :  None :  0.0 :   0.0
         ('F', 3) :  None :  0.0 :   0.0
         ('F', 4) :  None :  0.0 :   0.0
         ('F', 5) :  None :  0.0 :   0.0
         ('F', 6) :  None :  0.0 :   0.0
         ('F', 7) :  None :  0.0 :   0.0
         ('F', 8) :  None :  0.0 :   0.0
         ('F', 9) :  None :  0.0 :   0.0
        ('F', 10) :  None :  0.0 :   0.0
        ('F', 11) :  None :  0.0 :   0.0
        ('F', 12) :  None :  0.0 :   0.0
        ('F', 13) :  None :  0.0 :   0.0
         ('G', 0) :  None :  0.0 :   0.0
         ('G', 1) :  None :  0.0 :   0.0
         ('G', 2) :  None :  0.0 :   0.0
         ('G', 3) :  None :  0.0 :   0.0
         ('G', 4) :  None :  0.0 :   0.0
         ('G', 5) :  None :  0.0 :   0.0
         ('G', 6) :  None :  0.0 :   0.0
         ('G', 7) :  None :  0.0 :   0.0
         ('G', 8) :  None :  0.0 :   0.0
         ('G', 9) :  None :  0.0 :   0.0
        ('G', 10) :  None :  0.0 :   0.0
        ('G', 11) :  None :  0.0 :   0.0
        ('G', 12) :  None :  0.0 :   0.0
        ('G', 13) :  None :  0.0 :   0.0
         ('H', 0) :  None :  0.0 :   0.0
         ('H', 1) :  None :  0.0 :   0.0
         ('H', 2) :  None :  0.0 :   0.0
         ('H', 3) :  None :  0.0 :   0.0
         ('H', 4) :  None :  0.0 :   0.0
         ('H', 5) :  None :  0.0 :   0.0
         ('H', 6) :  None :  0.0 :   0.0
         ('H', 7) :  None :  0.0 :   0.0
         ('H', 8) :  None :  0.0 :   0.0
         ('H', 9) :  None :  0.0 :   0.0
        ('H', 10) :  None :  0.0 :   0.0
        ('H', 11) :  None :  0.0 :   0.0
        ('H', 12) :  None :  0.0 :   0.0
        ('H', 13) :  None : -1.0 :   0.0
    constraint_min_cons_days_off_backward : Size=0
        Key : Lower : Body : Upper
    constraint_min_cons_days_off_forward : Size=0
        Key : Lower : Body : Upper
    constraint_has_weekend_work_lb : Size=0
        Key : Lower : Body : Upper
    constraint_has_weekend_work : Size=32
        Key       : Lower : Body : Upper
         ('A', 5) :  None :  0.0 :   0.0
         ('A', 6) :  None :  0.0 :   0.0
        ('A', 12) :  None :  0.0 :   0.0
        ('A', 13) :  None :  0.0 :   0.0
         ('B', 5) :  None :  0.0 :   0.0
         ('B', 6) :  None :  0.0 :   0.0
        ('B', 12) :  None :  0.0 :   0.0
        ('B', 13) :  None : -1.0 :   0.0
         ('C', 5) :  None :  0.0 :   0.0
         ('C', 6) :  None :  0.0 :   0.0
        ('C', 12) :  None :  0.0 :   0.0
        ('C', 13) :  None :  0.0 :   0.0
         ('D', 5) :  None :  0.0 :   0.0
         ('D', 6) :  None :  0.0 :   0.0
        ('D', 12) :  None :  0.0 :   0.0
        ('D', 13) :  None :  0.0 :   0.0
         ('E', 5) :  None :  0.0 :   0.0
         ('E', 6) :  None :  0.0 :   0.0
        ('E', 12) :  None :  0.0 :   0.0
        ('E', 13) :  None :  0.0 :   0.0
         ('F', 5) :  None :  0.0 :   0.0
         ('F', 6) :  None :  0.0 :   0.0
        ('F', 12) :  None :  0.0 :   0.0
        ('F', 13) :  None :  0.0 :   0.0
         ('G', 5) :  None :  0.0 :   0.0
         ('G', 6) :  None :  0.0 :   0.0
        ('G', 12) :  None :  0.0 :   0.0
        ('G', 13) :  None :  0.0 :   0.0
         ('H', 5) :  None :  0.0 :   0.0
         ('H', 6) :  None : -1.0 :   0.0
        ('H', 12) :  None :  0.0 :   0.0
        ('H', 13) :  None :  0.0 :   0.0
    constraint_max_nr_weekend : Size=8
        Key : Lower : Body : Upper
          A :  None :  1.0 :   1.0
          B :  None :  1.0 :   1.0
          C :  None :  1.0 :   1.0
          D :  None :  1.0 :   1.0
          E :  None :  1.0 :   1.0
          F :  None :  1.0 :   1.0
          G :  None :  1.0 :   1.0
          H :  None :  1.0 :   1.0
    constraint_days_off : Size=8
        Key      : Lower : Body : Upper
        ('A', 0) :   1.0 :  1.0 :   1.0
        ('B', 5) :   1.0 :  1.0 :   1.0
        ('C', 8) :   1.0 :  1.0 :   1.0
        ('D', 2) :   1.0 :  1.0 :   1.0
        ('E', 9) :   1.0 :  1.0 :   1.0
        ('F', 5) :   1.0 :  1.0 :   1.0
        ('G', 1) :   1.0 :  1.0 :   1.0
        ('H', 7) :   1.0 :  1.0 :   1.0
    constraint_shift_on_request : Size=112
        Key            : Lower : Body : Upper
         ('D', 'A', 0) :   0.0 :  0.0 :   0.0
         ('D', 'A', 1) :   0.0 :  0.0 :   0.0
         ('D', 'A', 2) :   0.0 :  0.0 :   0.0
         ('D', 'A', 3) :   0.0 :  0.0 :   0.0
         ('D', 'A', 4) :   0.0 :  0.0 :   0.0
         ('D', 'A', 5) :   0.0 :  0.0 :   0.0
         ('D', 'A', 6) :   0.0 :  0.0 :   0.0
         ('D', 'A', 7) :   0.0 :  0.0 :   0.0
         ('D', 'A', 8) :   0.0 :  0.0 :   0.0
         ('D', 'A', 9) :   0.0 :  0.0 :   0.0
        ('D', 'A', 10) :   0.0 :  0.0 :   0.0
        ('D', 'A', 11) :   0.0 :  0.0 :   0.0
        ('D', 'A', 12) :   0.0 :  0.0 :   0.0
        ('D', 'A', 13) :   0.0 :  0.0 :   0.0
         ('D', 'B', 0) :   0.0 :  0.0 :   0.0
         ('D', 'B', 1) :   0.0 :  0.0 :   0.0
         ('D', 'B', 2) :   0.0 :  0.0 :   0.0
         ('D', 'B', 3) :   0.0 :  0.0 :   0.0
         ('D', 'B', 4) :   0.0 :  0.0 :   0.0
         ('D', 'B', 5) :   0.0 :  0.0 :   0.0
         ('D', 'B', 6) :   0.0 :  0.0 :   0.0
         ('D', 'B', 7) :   0.0 :  0.0 :   0.0
         ('D', 'B', 8) :   0.0 :  0.0 :   0.0
         ('D', 'B', 9) :   0.0 :  0.0 :   0.0
        ('D', 'B', 10) :   0.0 :  0.0 :   0.0
        ('D', 'B', 11) :   0.0 :  0.0 :   0.0
        ('D', 'B', 12) :   0.0 :  0.0 :   0.0
        ('D', 'B', 13) :   0.0 :  0.0 :   0.0
         ('D', 'C', 0) :   0.0 :  0.0 :   0.0
         ('D', 'C', 1) :   0.0 :  0.0 :   0.0
         ('D', 'C', 2) :   0.0 :  0.0 :   0.0
         ('D', 'C', 3) :   0.0 :  0.0 :   0.0
         ('D', 'C', 4) :   0.0 :  0.0 :   0.0
         ('D', 'C', 5) :   0.0 :  0.0 :   0.0
         ('D', 'C', 6) :   0.0 :  0.0 :   0.0
         ('D', 'C', 7) :   0.0 :  0.0 :   0.0
         ('D', 'C', 8) :   0.0 :  0.0 :   0.0
         ('D', 'C', 9) :   0.0 :  0.0 :   0.0
        ('D', 'C', 10) :   0.0 :  0.0 :   0.0
        ('D', 'C', 11) :   0.0 :  0.0 :   0.0
        ('D', 'C', 12) :   0.0 :  0.0 :   0.0
        ('D', 'C', 13) :   0.0 :  0.0 :   0.0
         ('D', 'D', 0) :   0.0 :  0.0 :   0.0
         ('D', 'D', 1) :   0.0 :  0.0 :   0.0
         ('D', 'D', 2) :   0.0 :  0.0 :   0.0
         ('D', 'D', 3) :   0.0 :  0.0 :   0.0
         ('D', 'D', 4) :   0.0 :  0.0 :   0.0
         ('D', 'D', 5) :   0.0 :  0.0 :   0.0
         ('D', 'D', 6) :   0.0 :  0.0 :   0.0
         ('D', 'D', 7) :   0.0 :  0.0 :   0.0
         ('D', 'D', 8) :   0.0 :  0.0 :   0.0
         ('D', 'D', 9) :   0.0 :  0.0 :   0.0
        ('D', 'D', 10) :   0.0 :  0.0 :   0.0
        ('D', 'D', 11) :   0.0 :  0.0 :   0.0
        ('D', 'D', 12) :   0.0 :  0.0 :   0.0
        ('D', 'D', 13) :   0.0 :  0.0 :   0.0
         ('D', 'E', 0) :   0.0 :  0.0 :   0.0
         ('D', 'E', 1) :   0.0 :  0.0 :   0.0
         ('D', 'E', 2) :   0.0 :  0.0 :   0.0
         ('D', 'E', 3) :   0.0 :  0.0 :   0.0
         ('D', 'E', 4) :   0.0 :  0.0 :   0.0
         ('D', 'E', 5) :   0.0 :  0.0 :   0.0
         ('D', 'E', 6) :   0.0 :  0.0 :   0.0
         ('D', 'E', 7) :   0.0 :  0.0 :   0.0
         ('D', 'E', 8) :   0.0 :  0.0 :   0.0
         ('D', 'E', 9) :   0.0 :  0.0 :   0.0
        ('D', 'E', 10) :   0.0 :  0.0 :   0.0
        ('D', 'E', 11) :   0.0 :  0.0 :   0.0
        ('D', 'E', 12) :   0.0 :  0.0 :   0.0
        ('D', 'E', 13) :   0.0 :  0.0 :   0.0
         ('D', 'F', 0) :   0.0 :  0.0 :   0.0
         ('D', 'F', 1) :   0.0 :  0.0 :   0.0
         ('D', 'F', 2) :   0.0 :  0.0 :   0.0
         ('D', 'F', 3) :   0.0 :  0.0 :   0.0
         ('D', 'F', 4) :   0.0 :  0.0 :   0.0
         ('D', 'F', 5) :   0.0 :  0.0 :   0.0
         ('D', 'F', 6) :   0.0 :  0.0 :   0.0
         ('D', 'F', 7) :   0.0 :  0.0 :   0.0
         ('D', 'F', 8) :   0.0 :  0.0 :   0.0
         ('D', 'F', 9) :   0.0 :  0.0 :   0.0
        ('D', 'F', 10) :   0.0 :  0.0 :   0.0
        ('D', 'F', 11) :   0.0 :  0.0 :   0.0
        ('D', 'F', 12) :   0.0 :  0.0 :   0.0
        ('D', 'F', 13) :   0.0 :  0.0 :   0.0
         ('D', 'G', 0) :   0.0 :  0.0 :   0.0
         ('D', 'G', 1) :   0.0 :  0.0 :   0.0
         ('D', 'G', 2) :   0.0 :  0.0 :   0.0
         ('D', 'G', 3) :   0.0 :  0.0 :   0.0
         ('D', 'G', 4) :   0.0 :  0.0 :   0.0
         ('D', 'G', 5) :   0.0 :  0.0 :   0.0
         ('D', 'G', 6) :   0.0 :  0.0 :   0.0
         ('D', 'G', 7) :   0.0 :  0.0 :   0.0
         ('D', 'G', 8) :   0.0 :  0.0 :   0.0
         ('D', 'G', 9) :   0.0 :  0.0 :   0.0
        ('D', 'G', 10) :   0.0 :  0.0 :   0.0
        ('D', 'G', 11) :   0.0 :  0.0 :   0.0
        ('D', 'G', 12) :   0.0 :  0.0 :   0.0
        ('D', 'G', 13) :   0.0 :  0.0 :   0.0
         ('D', 'H', 0) :   0.0 :  0.0 :   0.0
         ('D', 'H', 1) :   0.0 :  0.0 :   0.0
         ('D', 'H', 2) :   0.0 :  0.0 :   0.0
         ('D', 'H', 3) :   0.0 :  0.0 :   0.0
         ('D', 'H', 4) :   0.0 :  0.0 :   0.0
         ('D', 'H', 5) :   0.0 :  0.0 :   0.0
         ('D', 'H', 6) :   0.0 :  0.0 :   0.0
         ('D', 'H', 7) :   0.0 :  0.0 :   0.0
         ('D', 'H', 8) :   0.0 :  0.0 :   0.0
         ('D', 'H', 9) :   0.0 :  0.0 :   0.0
        ('D', 'H', 10) :   0.0 :  0.0 :   0.0
        ('D', 'H', 11) :   0.0 :  0.0 :   0.0
        ('D', 'H', 12) :   0.0 :  0.0 :   0.0
        ('D', 'H', 13) :   0.0 :  0.0 :   0.0
    constraint_shift_off_request : Size=112
        Key            : Lower : Body : Upper
         ('D', 'A', 0) :   0.0 :  0.0 :   0.0
         ('D', 'A', 1) :   0.0 :  0.0 :   0.0
         ('D', 'A', 2) :   0.0 :  0.0 :   0.0
         ('D', 'A', 3) :   0.0 :  0.0 :   0.0
         ('D', 'A', 4) :   0.0 :  0.0 :   0.0
         ('D', 'A', 5) :   0.0 :  0.0 :   0.0
         ('D', 'A', 6) :   0.0 :  0.0 :   0.0
         ('D', 'A', 7) :   0.0 :  0.0 :   0.0
         ('D', 'A', 8) :   0.0 :  0.0 :   0.0
         ('D', 'A', 9) :   0.0 :  0.0 :   0.0
        ('D', 'A', 10) :   0.0 :  0.0 :   0.0
        ('D', 'A', 11) :   0.0 :  0.0 :   0.0
        ('D', 'A', 12) :   0.0 :  0.0 :   0.0
        ('D', 'A', 13) :   0.0 :  0.0 :   0.0
         ('D', 'B', 0) :   0.0 :  0.0 :   0.0
         ('D', 'B', 1) :   0.0 :  0.0 :   0.0
         ('D', 'B', 2) :   0.0 :  0.0 :   0.0
         ('D', 'B', 3) :   0.0 :  0.0 :   0.0
         ('D', 'B', 4) :   0.0 :  0.0 :   0.0
         ('D', 'B', 5) :   0.0 :  0.0 :   0.0
         ('D', 'B', 6) :   0.0 :  0.0 :   0.0
         ('D', 'B', 7) :   0.0 :  0.0 :   0.0
         ('D', 'B', 8) :   0.0 :  0.0 :   0.0
         ('D', 'B', 9) :   0.0 :  0.0 :   0.0
        ('D', 'B', 10) :   0.0 :  0.0 :   0.0
        ('D', 'B', 11) :   0.0 :  0.0 :   0.0
        ('D', 'B', 12) :   0.0 :  0.0 :   0.0
        ('D', 'B', 13) :   0.0 :  0.0 :   0.0
         ('D', 'C', 0) :   0.0 :  0.0 :   0.0
         ('D', 'C', 1) :   0.0 :  0.0 :   0.0
         ('D', 'C', 2) :   0.0 :  0.0 :   0.0
         ('D', 'C', 3) :   0.0 :  0.0 :   0.0
         ('D', 'C', 4) :   0.0 :  0.0 :   0.0
         ('D', 'C', 5) :   0.0 :  0.0 :   0.0
         ('D', 'C', 6) :   0.0 :  0.0 :   0.0
         ('D', 'C', 7) :   0.0 :  0.0 :   0.0
         ('D', 'C', 8) :   0.0 :  0.0 :   0.0
         ('D', 'C', 9) :   0.0 :  0.0 :   0.0
        ('D', 'C', 10) :   0.0 :  0.0 :   0.0
        ('D', 'C', 11) :   0.0 :  0.0 :   0.0
        ('D', 'C', 12) :   0.0 :  0.0 :   0.0
        ('D', 'C', 13) :   0.0 :  0.0 :   0.0
         ('D', 'D', 0) :   0.0 :  0.0 :   0.0
         ('D', 'D', 1) :   0.0 :  0.0 :   0.0
         ('D', 'D', 2) :   0.0 :  0.0 :   0.0
         ('D', 'D', 3) :   0.0 :  0.0 :   0.0
         ('D', 'D', 4) :   0.0 :  0.0 :   0.0
         ('D', 'D', 5) :   0.0 :  0.0 :   0.0
         ('D', 'D', 6) :   0.0 :  0.0 :   0.0
         ('D', 'D', 7) :   0.0 :  0.0 :   0.0
         ('D', 'D', 8) :   0.0 :  0.0 :   0.0
         ('D', 'D', 9) :   0.0 :  0.0 :   0.0
        ('D', 'D', 10) :   0.0 :  0.0 :   0.0
        ('D', 'D', 11) :   0.0 :  0.0 :   0.0
        ('D', 'D', 12) :   0.0 :  0.0 :   0.0
        ('D', 'D', 13) :   0.0 :  0.0 :   0.0
         ('D', 'E', 0) :   0.0 :  0.0 :   0.0
         ('D', 'E', 1) :   0.0 :  0.0 :   0.0
         ('D', 'E', 2) :   0.0 :  0.0 :   0.0
         ('D', 'E', 3) :   0.0 :  0.0 :   0.0
         ('D', 'E', 4) :   0.0 :  0.0 :   0.0
         ('D', 'E', 5) :   0.0 :  0.0 :   0.0
         ('D', 'E', 6) :   0.0 :  0.0 :   0.0
         ('D', 'E', 7) :   0.0 :  0.0 :   0.0
         ('D', 'E', 8) :   0.0 :  0.0 :   0.0
         ('D', 'E', 9) :   0.0 :  0.0 :   0.0
        ('D', 'E', 10) :   0.0 :  0.0 :   0.0
        ('D', 'E', 11) :   0.0 :  0.0 :   0.0
        ('D', 'E', 12) :   0.0 :  0.0 :   0.0
        ('D', 'E', 13) :   0.0 :  0.0 :   0.0
         ('D', 'F', 0) :   0.0 :  0.0 :   0.0
         ('D', 'F', 1) :   0.0 :  0.0 :   0.0
         ('D', 'F', 2) :   0.0 :  0.0 :   0.0
         ('D', 'F', 3) :   0.0 :  0.0 :   0.0
         ('D', 'F', 4) :   0.0 :  0.0 :   0.0
         ('D', 'F', 5) :   0.0 :  0.0 :   0.0
         ('D', 'F', 6) :   0.0 :  0.0 :   0.0
         ('D', 'F', 7) :   0.0 :  0.0 :   0.0
         ('D', 'F', 8) :   0.0 :  0.0 :   0.0
         ('D', 'F', 9) :   0.0 :  0.0 :   0.0
        ('D', 'F', 10) :   0.0 :  0.0 :   0.0
        ('D', 'F', 11) :   0.0 :  0.0 :   0.0
        ('D', 'F', 12) :   0.0 :  0.0 :   0.0
        ('D', 'F', 13) :   0.0 :  0.0 :   0.0
         ('D', 'G', 0) :   0.0 :  0.0 :   0.0
         ('D', 'G', 1) :   0.0 :  0.0 :   0.0
         ('D', 'G', 2) :   0.0 :  0.0 :   0.0
         ('D', 'G', 3) :   0.0 :  0.0 :   0.0
         ('D', 'G', 4) :   0.0 :  0.0 :   0.0
         ('D', 'G', 5) :   0.0 :  0.0 :   0.0
         ('D', 'G', 6) :   0.0 :  0.0 :   0.0
         ('D', 'G', 7) :   0.0 :  0.0 :   0.0
         ('D', 'G', 8) :   0.0 :  0.0 :   0.0
         ('D', 'G', 9) :   0.0 :  0.0 :   0.0
        ('D', 'G', 10) :   0.0 :  0.0 :   0.0
        ('D', 'G', 11) :   0.0 :  0.0 :   0.0
        ('D', 'G', 12) :   0.0 :  0.0 :   0.0
        ('D', 'G', 13) :   0.0 :  0.0 :   0.0
         ('D', 'H', 0) :   0.0 :  0.0 :   0.0
         ('D', 'H', 1) :   0.0 :  0.0 :   0.0
         ('D', 'H', 2) :   0.0 :  0.0 :   0.0
         ('D', 'H', 3) :   0.0 :  0.0 :   0.0
         ('D', 'H', 4) :   0.0 :  0.0 :   0.0
         ('D', 'H', 5) :   0.0 :  0.0 :   0.0
         ('D', 'H', 6) :   0.0 :  0.0 :   0.0
         ('D', 'H', 7) :   0.0 :  0.0 :   0.0
         ('D', 'H', 8) :   0.0 :  0.0 :   0.0
         ('D', 'H', 9) :   0.0 :  0.0 :   0.0
        ('D', 'H', 10) :   0.0 :  0.0 :   0.0
        ('D', 'H', 11) :   0.0 :  0.0 :   0.0
        ('D', 'H', 12) :   0.0 :  0.0 :   0.0
        ('D', 'H', 13) :   0.0 :  0.0 :   0.0
    constraint_under_cover : Size=14
        Key       : Lower : Body : Upper
         ('D', 0) :   5.0 :  5.0 :  None
         ('D', 1) :   7.0 :  7.0 :  None
         ('D', 2) :   6.0 :  6.0 :  None
         ('D', 3) :   4.0 :  4.0 :  None
         ('D', 4) :   5.0 :  5.0 :  None
         ('D', 5) :   5.0 :  5.0 :  None
         ('D', 6) :   5.0 :  5.0 :  None
         ('D', 7) :   6.0 :  6.0 :  None
         ('D', 8) :   7.0 :  7.0 :  None
         ('D', 9) :   4.0 :  4.0 :  None
        ('D', 10) :   2.0 :  2.0 :  None
        ('D', 11) :   5.0 :  5.0 :  None
        ('D', 12) :   6.0 :  6.0 :  None
        ('D', 13) :   4.0 :  4.0 :  None
    constraint_penalty_under_cover : Size=14
        Key       : Lower : Body : Upper
         ('D', 0) :   0.0 :  0.0 :   0.0
         ('D', 1) :   0.0 :  0.0 :   0.0
         ('D', 2) :   0.0 :  0.0 :   0.0
         ('D', 3) :   0.0 :  0.0 :   0.0
         ('D', 4) :   0.0 :  0.0 :   0.0
         ('D', 5) :   0.0 :  0.0 :   0.0
         ('D', 6) :   0.0 :  0.0 :   0.0
         ('D', 7) :   0.0 :  0.0 :   0.0
         ('D', 8) :   0.0 :  0.0 :   0.0
         ('D', 9) :   0.0 :  0.0 :   0.0
        ('D', 10) :   0.0 :  0.0 :   0.0
        ('D', 11) :   0.0 :  0.0 :   0.0
        ('D', 12) :   0.0 :  0.0 :   0.0
        ('D', 13) :   0.0 :  0.0 :   0.0
    constraint_over_cover : Size=14
        Key       : Lower : Body : Upper
         ('D', 0) :  None :  5.0 :   5.0
         ('D', 1) :  None :  7.0 :   7.0
         ('D', 2) :  None :  6.0 :   6.0
         ('D', 3) :  None :  4.0 :   4.0
         ('D', 4) :  None :  5.0 :   5.0
         ('D', 5) :  None :  3.0 :   5.0
         ('D', 6) :  None :  2.0 :   5.0
         ('D', 7) :  None :  6.0 :   6.0
         ('D', 8) :  None :  7.0 :   7.0
         ('D', 9) :  None :  4.0 :   4.0
        ('D', 10) :  None :  2.0 :   2.0
        ('D', 11) :  None :  5.0 :   5.0
        ('D', 12) :  None :  5.0 :   6.0
        ('D', 13) :  None :  4.0 :   4.0
    constraint_penalty_over_cover : Size=14
        Key       : Lower : Body : Upper
         ('D', 0) :   0.0 :  0.0 :   0.0
         ('D', 1) :   0.0 :  0.0 :   0.0
         ('D', 2) :   0.0 :  0.0 :   0.0
         ('D', 3) :   0.0 :  0.0 :   0.0
         ('D', 4) :   0.0 :  0.0 :   0.0
         ('D', 5) :   0.0 :  0.0 :   0.0
         ('D', 6) :   0.0 :  0.0 :   0.0
         ('D', 7) :   0.0 :  0.0 :   0.0
         ('D', 8) :   0.0 :  0.0 :   0.0
         ('D', 9) :   0.0 :  0.0 :   0.0
        ('D', 10) :   0.0 :  0.0 :   0.0
        ('D', 11) :   0.0 :  0.0 :   0.0
        ('D', 12) :   0.0 :  0.0 :   0.0
        ('D', 13) :   0.0 :  0.0 :   0.0
