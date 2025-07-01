Model NurseSchedulingProblem

  Variables:
    IsAssign : Size=840, Index=SHIFTTYPES*NURSES*DAYS
        Key              : Lower : Value : Upper : Fixed : Stale : Domain
         ('D3', 'A3', 0) :     0 :   0.0 :     1 : False : False : Binary
         ('D3', 'A3', 1) :     0 :   0.0 :     1 : False : False : Binary
         ('D3', 'A3', 2) :     0 :   1.0 :     1 : False : False : Binary
         ('D3', 'A3', 3) :     0 :   1.0 :     1 : False : False : Binary
         ('D3', 'A3', 4) :     0 :   1.0 :     1 : False : False : Binary
         ('D3', 'A3', 5) :     0 :   0.0 :     1 : False : False : Binary
         ('D3', 'A3', 6) :     0 :  -0.0 :     1 : False : False : Binary
         ('D3', 'A3', 7) :     0 :   0.0 :     1 : False : False : Binary
         ('D3', 'A3', 8) :     0 :   1.0 :     1 : False : False : Binary
         ('D3', 'A3', 9) :     0 :   1.0 :     1 : False : False : Binary
        ('D3', 'A3', 10) :     0 :   0.0 :     1 : False : False : Binary
        ('D3', 'A3', 11) :     0 :  -0.0 :     1 : False : False : Binary
        ('D3', 'A3', 12) :     0 :   1.0 :     1 : False : False : Binary
        ('D3', 'A3', 13) :     0 :   1.0 :     1 : False : False : Binary
         ('D3', 'B3', 0) :     0 :  -0.0 :     1 : False : False : Binary
         ('D3', 'B3', 1) :     0 :   1.0 :     1 : False : False : Binary
         ('D3', 'B3', 2) :     0 :   1.0 :     1 : False : False : Binary
         ('D3', 'B3', 3) :     0 :   1.0 :     1 : False : False : Binary
         ('D3', 'B3', 4) :     0 :   1.0 :     1 : False : False : Binary
         ('D3', 'B3', 5) :     0 :   0.0 :     1 : False : False : Binary
         ('D3', 'B3', 6) :     0 :   0.0 :     1 : False : False : Binary
         ('D3', 'B3', 7) :     0 :  -0.0 :     1 : False : False : Binary
         ('D3', 'B3', 8) :     0 :  -0.0 :     1 : False : False : Binary
         ('D3', 'B3', 9) :     0 :   1.0 :     1 : False : False : Binary
        ('D3', 'B3', 10) :     0 :   1.0 :     1 : False : False : Binary
        ('D3', 'B3', 11) :     0 :   1.0 :     1 : False : False : Binary
        ('D3', 'B3', 12) :     0 :   1.0 :     1 : False : False : Binary
        ('D3', 'B3', 13) :     0 :   0.0 :     1 : False : False : Binary
         ('D3', 'C3', 0) :     0 :  -0.0 :     1 : False : False : Binary
         ('D3', 'C3', 1) :     0 :   0.0 :     1 : False : False : Binary
         ('D3', 'C3', 2) :     0 :  -0.0 :     1 : False : False : Binary
         ('D3', 'C3', 3) :     0 :  -0.0 :     1 : False : False : Binary
         ('D3', 'C3', 4) :     0 :   0.0 :     1 : False : False : Binary
         ('D3', 'C3', 5) :     0 :   1.0 :     1 : False : False : Binary
         ('D3', 'C3', 6) :     0 :   1.0 :     1 : False : False : Binary
         ('D3', 'C3', 7) :     0 :   0.0 :     1 : False : False : Binary
         ('D3', 'C3', 8) :     0 :  -0.0 :     1 : False : False : Binary
         ('D3', 'C3', 9) :     0 :   0.0 :     1 : False : False : Binary
        ('D3', 'C3', 10) :     0 :   0.0 :     1 : False : False : Binary
        ('D3', 'C3', 11) :     0 :  -0.0 :     1 : False : False : Binary
        ('D3', 'C3', 12) :     0 :  -0.0 :     1 : False : False : Binary
        ('D3', 'C3', 13) :     0 :  -0.0 :     1 : False : False : Binary
         ('D3', 'D3', 0) :     0 :   0.0 :     1 : False : False : Binary
         ('D3', 'D3', 1) :     0 :   0.0 :     1 : False : False : Binary
         ('D3', 'D3', 2) :     0 :   0.0 :     1 : False : False : Binary
         ('D3', 'D3', 3) :     0 :   0.0 :     1 : False : False : Binary
         ('D3', 'D3', 4) :     0 :   0.0 :     1 : False : False : Binary
         ('D3', 'D3', 5) :     0 :   0.0 :     1 : False : False : Binary
         ('D3', 'D3', 6) :     0 :   0.0 :     1 : False : False : Binary
         ('D3', 'D3', 7) :     0 :   0.0 :     1 : False : False : Binary
         ('D3', 'D3', 8) :     0 :   0.0 :     1 : False : False : Binary
         ('D3', 'D3', 9) :     0 :   0.0 :     1 : False : False : Binary
        ('D3', 'D3', 10) :     0 :   0.0 :     1 : False : False : Binary
        ('D3', 'D3', 11) :     0 :   0.0 :     1 : False : False : Binary
        ('D3', 'D3', 12) :     0 :   0.0 :     1 : False : False : Binary
        ('D3', 'D3', 13) :     0 :   0.0 :     1 : False : False : Binary
         ('D3', 'E3', 0) :     0 :   0.0 :     1 : False : False : Binary
         ('D3', 'E3', 1) :     0 :   0.0 :     1 : False : False : Binary
         ('D3', 'E3', 2) :     0 :   0.0 :     1 : False : False : Binary
         ('D3', 'E3', 3) :     0 :   0.0 :     1 : False : False : Binary
         ('D3', 'E3', 4) :     0 :   0.0 :     1 : False : False : Binary
         ('D3', 'E3', 5) :     0 :   0.0 :     1 : False : False : Binary
         ('D3', 'E3', 6) :     0 :   0.0 :     1 : False : False : Binary
         ('D3', 'E3', 7) :     0 :   0.0 :     1 : False : False : Binary
         ('D3', 'E3', 8) :     0 :   0.0 :     1 : False : False : Binary
         ('D3', 'E3', 9) :     0 :   0.0 :     1 : False : False : Binary
        ('D3', 'E3', 10) :     0 :   0.0 :     1 : False : False : Binary
        ('D3', 'E3', 11) :     0 :   0.0 :     1 : False : False : Binary
        ('D3', 'E3', 12) :     0 :   0.0 :     1 : False : False : Binary
        ('D3', 'E3', 13) :     0 :   0.0 :     1 : False : False : Binary
         ('D3', 'F3', 0) :     0 :   0.0 :     1 : False : False : Binary
         ('D3', 'F3', 1) :     0 :  -0.0 :     1 : False : False : Binary
         ('D3', 'F3', 2) :     0 :   0.0 :     1 : False : False : Binary
         ('D3', 'F3', 3) :     0 :   1.0 :     1 : False : False : Binary
         ('D3', 'F3', 4) :     0 :   1.0 :     1 : False : False : Binary
         ('D3', 'F3', 5) :     0 :   0.0 :     1 : False : False : Binary
         ('D3', 'F3', 6) :     0 :  -0.0 :     1 : False : False : Binary
         ('D3', 'F3', 7) :     0 :  -0.0 :     1 : False : False : Binary
         ('D3', 'F3', 8) :     0 :  -0.0 :     1 : False : False : Binary
         ('D3', 'F3', 9) :     0 :   0.0 :     1 : False : False : Binary
        ('D3', 'F3', 10) :     0 :  -0.0 :     1 : False : False : Binary
        ('D3', 'F3', 11) :     0 :  -0.0 :     1 : False : False : Binary
        ('D3', 'F3', 12) :     0 :   1.0 :     1 : False : False : Binary
        ('D3', 'F3', 13) :     0 :   1.0 :     1 : False : False : Binary
         ('D3', 'G3', 0) :     0 :   1.0 :     1 : False : False : Binary
         ('D3', 'G3', 1) :     0 :   0.0 :     1 : False : False : Binary
         ('D3', 'G3', 2) :     0 :   0.0 :     1 : False : False : Binary
         ('D3', 'G3', 3) :     0 :  -0.0 :     1 : False : False : Binary
         ('D3', 'G3', 4) :     0 :   0.0 :     1 : False : False : Binary
         ('D3', 'G3', 5) :     0 :   1.0 :     1 : False : False : Binary
         ('D3', 'G3', 6) :     0 :   1.0 :     1 : False : False : Binary
         ('D3', 'G3', 7) :     0 :  -0.0 :     1 : False : False : Binary
         ('D3', 'G3', 8) :     0 :   0.0 :     1 : False : False : Binary
         ('D3', 'G3', 9) :     0 :   0.0 :     1 : False : False : Binary
        ('D3', 'G3', 10) :     0 :  -0.0 :     1 : False : False : Binary
        ('D3', 'G3', 11) :     0 :  -0.0 :     1 : False : False : Binary
        ('D3', 'G3', 12) :     0 :   0.0 :     1 : False : False : Binary
        ('D3', 'G3', 13) :     0 :  -0.0 :     1 : False : False : Binary
         ('D3', 'H3', 0) :     0 :  -0.0 :     1 : False : False : Binary
         ('D3', 'H3', 1) :     0 :  -0.0 :     1 : False : False : Binary
         ('D3', 'H3', 2) :     0 :  -0.0 :     1 : False : False : Binary
         ('D3', 'H3', 3) :     0 :  -0.0 :     1 : False : False : Binary
         ('D3', 'H3', 4) :     0 :  -0.0 :     1 : False : False : Binary
         ('D3', 'H3', 5) :     0 :  -0.0 :     1 : False : False : Binary
         ('D3', 'H3', 6) :     0 :  -0.0 :     1 : False : False : Binary
         ('D3', 'H3', 7) :     0 :  -0.0 :     1 : False : False : Binary
         ('D3', 'H3', 8) :     0 :  -0.0 :     1 : False : False : Binary
         ('D3', 'H3', 9) :     0 :   1.0 :     1 : False : False : Binary
        ('D3', 'H3', 10) :     0 :   1.0 :     1 : False : False : Binary
        ('D3', 'H3', 11) :     0 :   0.0 :     1 : False : False : Binary
        ('D3', 'H3', 12) :     0 :   0.0 :     1 : False : False : Binary
        ('D3', 'H3', 13) :     0 :  -0.0 :     1 : False : False : Binary
         ('D3', 'I3', 0) :     0 :   1.0 :     1 : False : False : Binary
         ('D3', 'I3', 1) :     0 :   1.0 :     1 : False : False : Binary
         ('D3', 'I3', 2) :     0 :   1.0 :     1 : False : False : Binary
         ('D3', 'I3', 3) :     0 :   1.0 :     1 : False : False : Binary
         ('D3', 'I3', 4) :     0 :  -0.0 :     1 : False : False : Binary
         ('D3', 'I3', 5) :     0 :  -0.0 :     1 : False : False : Binary
         ('D3', 'I3', 6) :     0 :   0.0 :     1 : False : False : Binary
         ('D3', 'I3', 7) :     0 :  -0.0 :     1 : False : False : Binary
         ('D3', 'I3', 8) :     0 :  -0.0 :     1 : False : False : Binary
         ('D3', 'I3', 9) :     0 :   0.0 :     1 : False : False : Binary
        ('D3', 'I3', 10) :     0 :  -0.0 :     1 : False : False : Binary
        ('D3', 'I3', 11) :     0 :  -0.0 :     1 : False : False : Binary
        ('D3', 'I3', 12) :     0 :  -0.0 :     1 : False : False : Binary
        ('D3', 'I3', 13) :     0 :  -0.0 :     1 : False : False : Binary
         ('D3', 'J3', 0) :     0 :   0.0 :     1 : False : False : Binary
         ('D3', 'J3', 1) :     0 :  -0.0 :     1 : False : False : Binary
         ('D3', 'J3', 2) :     0 :   0.0 :     1 : False : False : Binary
         ('D3', 'J3', 3) :     0 :  -0.0 :     1 : False : False : Binary
         ('D3', 'J3', 4) :     0 :   1.0 :     1 : False : False : Binary
         ('D3', 'J3', 5) :     0 :  -0.0 :     1 : False : False : Binary
         ('D3', 'J3', 6) :     0 :  -0.0 :     1 : False : False : Binary
         ('D3', 'J3', 7) :     0 :   1.0 :     1 : False : False : Binary
         ('D3', 'J3', 8) :     0 :   1.0 :     1 : False : False : Binary
         ('D3', 'J3', 9) :     0 :   1.0 :     1 : False : False : Binary
        ('D3', 'J3', 10) :     0 :   0.0 :     1 : False : False : Binary
        ('D3', 'J3', 11) :     0 :  -0.0 :     1 : False : False : Binary
        ('D3', 'J3', 12) :     0 :   1.0 :     1 : False : False : Binary
        ('D3', 'J3', 13) :     0 :   1.0 :     1 : False : False : Binary
         ('D3', 'K3', 0) :     0 :   1.0 :     1 : False : False : Binary
         ('D3', 'K3', 1) :     0 :   1.0 :     1 : False : False : Binary
         ('D3', 'K3', 2) :     0 :  -0.0 :     1 : False : False : Binary
         ('D3', 'K3', 3) :     0 :  -0.0 :     1 : False : False : Binary
         ('D3', 'K3', 4) :     0 :   0.0 :     1 : False : False : Binary
         ('D3', 'K3', 5) :     0 :   1.0 :     1 : False : False : Binary
         ('D3', 'K3', 6) :     0 :   1.0 :     1 : False : False : Binary
         ('D3', 'K3', 7) :     0 :   1.0 :     1 : False : False : Binary
         ('D3', 'K3', 8) :     0 :   1.0 :     1 : False : False : Binary
         ('D3', 'K3', 9) :     0 :   1.0 :     1 : False : False : Binary
        ('D3', 'K3', 10) :     0 :   1.0 :     1 : False : False : Binary
        ('D3', 'K3', 11) :     0 :   0.0 :     1 : False : False : Binary
        ('D3', 'K3', 12) :     0 :   0.0 :     1 : False : False : Binary
        ('D3', 'K3', 13) :     0 :  -0.0 :     1 : False : False : Binary
         ('D3', 'L3', 0) :     0 :   0.0 :     1 : False : False : Binary
         ('D3', 'L3', 1) :     0 :  -0.0 :     1 : False : False : Binary
         ('D3', 'L3', 2) :     0 :  -0.0 :     1 : False : False : Binary
         ('D3', 'L3', 3) :     0 :   0.0 :     1 : False : False : Binary
         ('D3', 'L3', 4) :     0 :   0.0 :     1 : False : False : Binary
         ('D3', 'L3', 5) :     0 :   1.0 :     1 : False : False : Binary
         ('D3', 'L3', 6) :     0 :   1.0 :     1 : False : False : Binary
         ('D3', 'L3', 7) :     0 :   1.0 :     1 : False : False : Binary
         ('D3', 'L3', 8) :     0 :   0.0 :     1 : False : False : Binary
         ('D3', 'L3', 9) :     0 :   0.0 :     1 : False : False : Binary
        ('D3', 'L3', 10) :     0 :  -0.0 :     1 : False : False : Binary
        ('D3', 'L3', 11) :     0 :  -0.0 :     1 : False : False : Binary
        ('D3', 'L3', 12) :     0 :  -0.0 :     1 : False : False : Binary
        ('D3', 'L3', 13) :     0 :  -0.0 :     1 : False : False : Binary
         ('D3', 'M3', 0) :     0 :  -0.0 :     1 : False : False : Binary
         ('D3', 'M3', 1) :     0 :   0.0 :     1 : False : False : Binary
         ('D3', 'M3', 2) :     0 :   1.0 :     1 : False : False : Binary
         ('D3', 'M3', 3) :     0 :   1.0 :     1 : False : False : Binary
         ('D3', 'M3', 4) :     0 :   0.0 :     1 : False : False : Binary
         ('D3', 'M3', 5) :     0 :  -0.0 :     1 : False : False : Binary
         ('D3', 'M3', 6) :     0 :   0.0 :     1 : False : False : Binary
         ('D3', 'M3', 7) :     0 :  -0.0 :     1 : False : False : Binary
         ('D3', 'M3', 8) :     0 :  -0.0 :     1 : False : False : Binary
         ('D3', 'M3', 9) :     0 :   0.0 :     1 : False : False : Binary
        ('D3', 'M3', 10) :     0 :   1.0 :     1 : False : False : Binary
        ('D3', 'M3', 11) :     0 :  -0.0 :     1 : False : False : Binary
        ('D3', 'M3', 12) :     0 :  -0.0 :     1 : False : False : Binary
        ('D3', 'M3', 13) :     0 :  -0.0 :     1 : False : False : Binary
         ('D3', 'N3', 0) :     0 :  -0.0 :     1 : False : False : Binary
         ('D3', 'N3', 1) :     0 :   1.0 :     1 : False : False : Binary
         ('D3', 'N3', 2) :     0 :   1.0 :     1 : False : False : Binary
         ('D3', 'N3', 3) :     0 :  -0.0 :     1 : False : False : Binary
         ('D3', 'N3', 4) :     0 :  -0.0 :     1 : False : False : Binary
         ('D3', 'N3', 5) :     0 :  -0.0 :     1 : False : False : Binary
         ('D3', 'N3', 6) :     0 :  -0.0 :     1 : False : False : Binary
         ('D3', 'N3', 7) :     0 :  -0.0 :     1 : False : False : Binary
         ('D3', 'N3', 8) :     0 :   0.0 :     1 : False : False : Binary
         ('D3', 'N3', 9) :     0 :   0.0 :     1 : False : False : Binary
        ('D3', 'N3', 10) :     0 :   1.0 :     1 : False : False : Binary
        ('D3', 'N3', 11) :     0 :   1.0 :     1 : False : False : Binary
        ('D3', 'N3', 12) :     0 :   0.0 :     1 : False : False : Binary
        ('D3', 'N3', 13) :     0 :   0.0 :     1 : False : False : Binary
         ('D3', 'O3', 0) :     0 :   0.0 :     1 : False : False : Binary
         ('D3', 'O3', 1) :     0 :  -0.0 :     1 : False : False : Binary
         ('D3', 'O3', 2) :     0 :  -0.0 :     1 : False : False : Binary
         ('D3', 'O3', 3) :     0 :   0.0 :     1 : False : False : Binary
         ('D3', 'O3', 4) :     0 :   1.0 :     1 : False : False : Binary
         ('D3', 'O3', 5) :     0 :   1.0 :     1 : False : False : Binary
         ('D3', 'O3', 6) :     0 :   1.0 :     1 : False : False : Binary
         ('D3', 'O3', 7) :     0 :   1.0 :     1 : False : False : Binary
         ('D3', 'O3', 8) :     0 :   1.0 :     1 : False : False : Binary
         ('D3', 'O3', 9) :     0 :   0.0 :     1 : False : False : Binary
        ('D3', 'O3', 10) :     0 :   0.0 :     1 : False : False : Binary
        ('D3', 'O3', 11) :     0 :  -0.0 :     1 : False : False : Binary
        ('D3', 'O3', 12) :     0 :  -0.0 :     1 : False : False : Binary
        ('D3', 'O3', 13) :     0 :  -0.0 :     1 : False : False : Binary
         ('D3', 'P3', 0) :     0 :  -0.0 :     1 : False : False : Binary
         ('D3', 'P3', 1) :     0 :  -0.0 :     1 : False : False : Binary
         ('D3', 'P3', 2) :     0 :   0.0 :     1 : False : False : Binary
         ('D3', 'P3', 3) :     0 :  -0.0 :     1 : False : False : Binary
         ('D3', 'P3', 4) :     0 :  -0.0 :     1 : False : False : Binary
         ('D3', 'P3', 5) :     0 :   0.0 :     1 : False : False : Binary
         ('D3', 'P3', 6) :     0 :   0.0 :     1 : False : False : Binary
         ('D3', 'P3', 7) :     0 :   1.0 :     1 : False : False : Binary
         ('D3', 'P3', 8) :     0 :   0.0 :     1 : False : False : Binary
         ('D3', 'P3', 9) :     0 :   0.0 :     1 : False : False : Binary
        ('D3', 'P3', 10) :     0 :  -0.0 :     1 : False : False : Binary
        ('D3', 'P3', 11) :     0 :  -0.0 :     1 : False : False : Binary
        ('D3', 'P3', 12) :     0 :  -0.0 :     1 : False : False : Binary
        ('D3', 'P3', 13) :     0 :  -0.0 :     1 : False : False : Binary
         ('D3', 'Q3', 0) :     0 :  -0.0 :     1 : False : False : Binary
         ('D3', 'Q3', 1) :     0 :  -0.0 :     1 : False : False : Binary
         ('D3', 'Q3', 2) :     0 :  -0.0 :     1 : False : False : Binary
         ('D3', 'Q3', 3) :     0 :  -0.0 :     1 : False : False : Binary
         ('D3', 'Q3', 4) :     0 :  -0.0 :     1 : False : False : Binary
         ('D3', 'Q3', 5) :     0 :  -0.0 :     1 : False : False : Binary
         ('D3', 'Q3', 6) :     0 :   0.0 :     1 : False : False : Binary
         ('D3', 'Q3', 7) :     0 :  -0.0 :     1 : False : False : Binary
         ('D3', 'Q3', 8) :     0 :   0.0 :     1 : False : False : Binary
         ('D3', 'Q3', 9) :     0 :   0.0 :     1 : False : False : Binary
        ('D3', 'Q3', 10) :     0 :   0.0 :     1 : False : False : Binary
        ('D3', 'Q3', 11) :     0 :   0.0 :     1 : False : False : Binary
        ('D3', 'Q3', 12) :     0 :   1.0 :     1 : False : False : Binary
        ('D3', 'Q3', 13) :     0 :   1.0 :     1 : False : False : Binary
         ('D3', 'R3', 0) :     0 :  -0.0 :     1 : False : False : Binary
         ('D3', 'R3', 1) :     0 :   0.0 :     1 : False : False : Binary
         ('D3', 'R3', 2) :     0 :  -0.0 :     1 : False : False : Binary
         ('D3', 'R3', 3) :     0 :   0.0 :     1 : False : False : Binary
         ('D3', 'R3', 4) :     0 :  -0.0 :     1 : False : False : Binary
         ('D3', 'R3', 5) :     0 :   0.0 :     1 : False : False : Binary
         ('D3', 'R3', 6) :     0 :  -0.0 :     1 : False : False : Binary
         ('D3', 'R3', 7) :     0 :   1.0 :     1 : False : False : Binary
         ('D3', 'R3', 8) :     0 :   0.0 :     1 : False : False : Binary
         ('D3', 'R3', 9) :     0 :   0.0 :     1 : False : False : Binary
        ('D3', 'R3', 10) :     0 :  -0.0 :     1 : False : False : Binary
        ('D3', 'R3', 11) :     0 :   1.0 :     1 : False : False : Binary
        ('D3', 'R3', 12) :     0 :   1.0 :     1 : False : False : Binary
        ('D3', 'R3', 13) :     0 :   1.0 :     1 : False : False : Binary
         ('D3', 'S3', 0) :     0 :   0.0 :     1 : False : False : Binary
         ('D3', 'S3', 1) :     0 :   0.0 :     1 : False : False : Binary
         ('D3', 'S3', 2) :     0 :   0.0 :     1 : False : False : Binary
         ('D3', 'S3', 3) :     0 :   0.0 :     1 : False : False : Binary
         ('D3', 'S3', 4) :     0 :   0.0 :     1 : False : False : Binary
         ('D3', 'S3', 5) :     0 :   0.0 :     1 : False : False : Binary
         ('D3', 'S3', 6) :     0 :   0.0 :     1 : False : False : Binary
         ('D3', 'S3', 7) :     0 :   0.0 :     1 : False : False : Binary
         ('D3', 'S3', 8) :     0 :   0.0 :     1 : False : False : Binary
         ('D3', 'S3', 9) :     0 :   0.0 :     1 : False : False : Binary
        ('D3', 'S3', 10) :     0 :   0.0 :     1 : False : False : Binary
        ('D3', 'S3', 11) :     0 :   0.0 :     1 : False : False : Binary
        ('D3', 'S3', 12) :     0 :   0.0 :     1 : False : False : Binary
        ('D3', 'S3', 13) :     0 :   0.0 :     1 : False : False : Binary
         ('D3', 'T3', 0) :     0 :  -0.0 :     1 : False : False : Binary
         ('D3', 'T3', 1) :     0 :  -0.0 :     1 : False : False : Binary
         ('D3', 'T3', 2) :     0 :  -0.0 :     1 : False : False : Binary
         ('D3', 'T3', 3) :     0 :  -0.0 :     1 : False : False : Binary
         ('D3', 'T3', 4) :     0 :  -0.0 :     1 : False : False : Binary
         ('D3', 'T3', 5) :     0 :  -0.0 :     1 : False : False : Binary
         ('D3', 'T3', 6) :     0 :  -0.0 :     1 : False : False : Binary
         ('D3', 'T3', 7) :     0 :  -0.0 :     1 : False : False : Binary
         ('D3', 'T3', 8) :     0 :  -0.0 :     1 : False : False : Binary
         ('D3', 'T3', 9) :     0 :  -0.0 :     1 : False : False : Binary
        ('D3', 'T3', 10) :     0 :  -0.0 :     1 : False : False : Binary
        ('D3', 'T3', 11) :     0 :   0.0 :     1 : False : False : Binary
        ('D3', 'T3', 12) :     0 :   0.0 :     1 : False : False : Binary
        ('D3', 'T3', 13) :     0 :  -0.0 :     1 : False : False : Binary
         ('E3', 'A3', 0) :     0 :   0.0 :     1 : False : False : Binary
         ('E3', 'A3', 1) :     0 :  -0.0 :     1 : False : False : Binary
         ('E3', 'A3', 2) :     0 :  -0.0 :     1 : False : False : Binary
         ('E3', 'A3', 3) :     0 :  -0.0 :     1 : False : False : Binary
         ('E3', 'A3', 4) :     0 :  -0.0 :     1 : False : False : Binary
         ('E3', 'A3', 5) :     0 :   0.0 :     1 : False : False : Binary
         ('E3', 'A3', 6) :     0 :   0.0 :     1 : False : False : Binary
         ('E3', 'A3', 7) :     0 :   1.0 :     1 : False : False : Binary
         ('E3', 'A3', 8) :     0 :   0.0 :     1 : False : False : Binary
         ('E3', 'A3', 9) :     0 :  -0.0 :     1 : False : False : Binary
        ('E3', 'A3', 10) :     0 :  -0.0 :     1 : False : False : Binary
        ('E3', 'A3', 11) :     0 :  -0.0 :     1 : False : False : Binary
        ('E3', 'A3', 12) :     0 :  -0.0 :     1 : False : False : Binary
        ('E3', 'A3', 13) :     0 :  -0.0 :     1 : False : False : Binary
         ('E3', 'B3', 0) :     0 :  -0.0 :     1 : False : False : Binary
         ('E3', 'B3', 1) :     0 :  -0.0 :     1 : False : False : Binary
         ('E3', 'B3', 2) :     0 :  -0.0 :     1 : False : False : Binary
         ('E3', 'B3', 3) :     0 :  -0.0 :     1 : False : False : Binary
         ('E3', 'B3', 4) :     0 :  -0.0 :     1 : False : False : Binary
         ('E3', 'B3', 5) :     0 :  -0.0 :     1 : False : False : Binary
         ('E3', 'B3', 6) :     0 :   0.0 :     1 : False : False : Binary
         ('E3', 'B3', 7) :     0 :  -0.0 :     1 : False : False : Binary
         ('E3', 'B3', 8) :     0 :   0.0 :     1 : False : False : Binary
         ('E3', 'B3', 9) :     0 :  -0.0 :     1 : False : False : Binary
        ('E3', 'B3', 10) :     0 :  -0.0 :     1 : False : False : Binary
        ('E3', 'B3', 11) :     0 :  -0.0 :     1 : False : False : Binary
        ('E3', 'B3', 12) :     0 :  -0.0 :     1 : False : False : Binary
        ('E3', 'B3', 13) :     0 :  -0.0 :     1 : False : False : Binary
         ('E3', 'C3', 0) :     0 :  -0.0 :     1 : False : False : Binary
         ('E3', 'C3', 1) :     0 :   0.0 :     1 : False : False : Binary
         ('E3', 'C3', 2) :     0 :   0.0 :     1 : False : False : Binary
         ('E3', 'C3', 3) :     0 :   1.0 :     1 : False : False : Binary
         ('E3', 'C3', 4) :     0 :   1.0 :     1 : False : False : Binary
         ('E3', 'C3', 5) :     0 :  -0.0 :     1 : False : False : Binary
         ('E3', 'C3', 6) :     0 :   0.0 :     1 : False : False : Binary
         ('E3', 'C3', 7) :     0 :  -0.0 :     1 : False : False : Binary
         ('E3', 'C3', 8) :     0 :  -0.0 :     1 : False : False : Binary
         ('E3', 'C3', 9) :     0 :   1.0 :     1 : False : False : Binary
        ('E3', 'C3', 10) :     0 :   1.0 :     1 : False : False : Binary
        ('E3', 'C3', 11) :     0 :  -0.0 :     1 : False : False : Binary
        ('E3', 'C3', 12) :     0 :  -0.0 :     1 : False : False : Binary
        ('E3', 'C3', 13) :     0 :   0.0 :     1 : False : False : Binary
         ('E3', 'D3', 0) :     0 :   0.0 :     1 : False : False : Binary
         ('E3', 'D3', 1) :     0 :  -0.0 :     1 : False : False : Binary
         ('E3', 'D3', 2) :     0 :   0.0 :     1 : False : False : Binary
         ('E3', 'D3', 3) :     0 :  -0.0 :     1 : False : False : Binary
         ('E3', 'D3', 4) :     0 :  -0.0 :     1 : False : False : Binary
         ('E3', 'D3', 5) :     0 :  -0.0 :     1 : False : False : Binary
         ('E3', 'D3', 6) :     0 :   0.0 :     1 : False : False : Binary
         ('E3', 'D3', 7) :     0 :   1.0 :     1 : False : False : Binary
         ('E3', 'D3', 8) :     0 :   1.0 :     1 : False : False : Binary
         ('E3', 'D3', 9) :     0 :  -0.0 :     1 : False : False : Binary
        ('E3', 'D3', 10) :     0 :   0.0 :     1 : False : False : Binary
        ('E3', 'D3', 11) :     0 :   0.0 :     1 : False : False : Binary
        ('E3', 'D3', 12) :     0 :   1.0 :     1 : False : False : Binary
        ('E3', 'D3', 13) :     0 :   1.0 :     1 : False : False : Binary
         ('E3', 'E3', 0) :     0 :   1.0 :     1 : False : False : Binary
         ('E3', 'E3', 1) :     0 :   1.0 :     1 : False : False : Binary
         ('E3', 'E3', 2) :     0 :   1.0 :     1 : False : False : Binary
         ('E3', 'E3', 3) :     0 :   0.0 :     1 : False : False : Binary
         ('E3', 'E3', 4) :     0 :   0.0 :     1 : False : False : Binary
         ('E3', 'E3', 5) :     0 :   0.0 :     1 : False : False : Binary
         ('E3', 'E3', 6) :     0 :   0.0 :     1 : False : False : Binary
         ('E3', 'E3', 7) :     0 :   0.0 :     1 : False : False : Binary
         ('E3', 'E3', 8) :     0 :   0.0 :     1 : False : False : Binary
         ('E3', 'E3', 9) :     0 :   1.0 :     1 : False : False : Binary
        ('E3', 'E3', 10) :     0 :   1.0 :     1 : False : False : Binary
        ('E3', 'E3', 11) :     0 :   1.0 :     1 : False : False : Binary
        ('E3', 'E3', 12) :     0 :   1.0 :     1 : False : False : Binary
        ('E3', 'E3', 13) :     0 :   1.0 :     1 : False : False : Binary
         ('E3', 'F3', 0) :     0 :   0.0 :     1 : False : False : Binary
         ('E3', 'F3', 1) :     0 :   1.0 :     1 : False : False : Binary
         ('E3', 'F3', 2) :     0 :   1.0 :     1 : False : False : Binary
         ('E3', 'F3', 3) :     0 :  -0.0 :     1 : False : False : Binary
         ('E3', 'F3', 4) :     0 :  -0.0 :     1 : False : False : Binary
         ('E3', 'F3', 5) :     0 :   0.0 :     1 : False : False : Binary
         ('E3', 'F3', 6) :     0 :   0.0 :     1 : False : False : Binary
         ('E3', 'F3', 7) :     0 :   1.0 :     1 : False : False : Binary
         ('E3', 'F3', 8) :     0 :   1.0 :     1 : False : False : Binary
         ('E3', 'F3', 9) :     0 :   1.0 :     1 : False : False : Binary
        ('E3', 'F3', 10) :     0 :  -0.0 :     1 : False : False : Binary
        ('E3', 'F3', 11) :     0 :   0.0 :     1 : False : False : Binary
        ('E3', 'F3', 12) :     0 :  -0.0 :     1 : False : False : Binary
        ('E3', 'F3', 13) :     0 :   0.0 :     1 : False : False : Binary
         ('E3', 'G3', 0) :     0 :   0.0 :     1 : False : False : Binary
         ('E3', 'G3', 1) :     0 :  -0.0 :     1 : False : False : Binary
         ('E3', 'G3', 2) :     0 :   0.0 :     1 : False : False : Binary
         ('E3', 'G3', 3) :     0 :   0.0 :     1 : False : False : Binary
         ('E3', 'G3', 4) :     0 :   0.0 :     1 : False : False : Binary
         ('E3', 'G3', 5) :     0 :   0.0 :     1 : False : False : Binary
         ('E3', 'G3', 6) :     0 :   0.0 :     1 : False : False : Binary
         ('E3', 'G3', 7) :     0 :  -0.0 :     1 : False : False : Binary
         ('E3', 'G3', 8) :     0 :  -0.0 :     1 : False : False : Binary
         ('E3', 'G3', 9) :     0 :  -0.0 :     1 : False : False : Binary
        ('E3', 'G3', 10) :     0 :  -0.0 :     1 : False : False : Binary
        ('E3', 'G3', 11) :     0 :  -0.0 :     1 : False : False : Binary
        ('E3', 'G3', 12) :     0 :   0.0 :     1 : False : False : Binary
        ('E3', 'G3', 13) :     0 :  -0.0 :     1 : False : False : Binary
         ('E3', 'H3', 0) :     0 :  -0.0 :     1 : False : False : Binary
         ('E3', 'H3', 1) :     0 :   0.0 :     1 : False : False : Binary
         ('E3', 'H3', 2) :     0 :   1.0 :     1 : False : False : Binary
         ('E3', 'H3', 3) :     0 :   1.0 :     1 : False : False : Binary
         ('E3', 'H3', 4) :     0 :   0.0 :     1 : False : False : Binary
         ('E3', 'H3', 5) :     0 :   0.0 :     1 : False : False : Binary
         ('E3', 'H3', 6) :     0 :   0.0 :     1 : False : False : Binary
         ('E3', 'H3', 7) :     0 :  -0.0 :     1 : False : False : Binary
         ('E3', 'H3', 8) :     0 :  -0.0 :     1 : False : False : Binary
         ('E3', 'H3', 9) :     0 :  -0.0 :     1 : False : False : Binary
        ('E3', 'H3', 10) :     0 :  -0.0 :     1 : False : False : Binary
        ('E3', 'H3', 11) :     0 :  -0.0 :     1 : False : False : Binary
        ('E3', 'H3', 12) :     0 :   0.0 :     1 : False : False : Binary
        ('E3', 'H3', 13) :     0 :   0.0 :     1 : False : False : Binary
         ('E3', 'I3', 0) :     0 :  -0.0 :     1 : False : False : Binary
         ('E3', 'I3', 1) :     0 :  -0.0 :     1 : False : False : Binary
         ('E3', 'I3', 2) :     0 :  -0.0 :     1 : False : False : Binary
         ('E3', 'I3', 3) :     0 :  -0.0 :     1 : False : False : Binary
         ('E3', 'I3', 4) :     0 :  -0.0 :     1 : False : False : Binary
         ('E3', 'I3', 5) :     0 :   0.0 :     1 : False : False : Binary
         ('E3', 'I3', 6) :     0 :   0.0 :     1 : False : False : Binary
         ('E3', 'I3', 7) :     0 :  -0.0 :     1 : False : False : Binary
         ('E3', 'I3', 8) :     0 :   0.0 :     1 : False : False : Binary
         ('E3', 'I3', 9) :     0 :  -0.0 :     1 : False : False : Binary
        ('E3', 'I3', 10) :     0 :   0.0 :     1 : False : False : Binary
        ('E3', 'I3', 11) :     0 :  -0.0 :     1 : False : False : Binary
        ('E3', 'I3', 12) :     0 :  -0.0 :     1 : False : False : Binary
        ('E3', 'I3', 13) :     0 :   0.0 :     1 : False : False : Binary
         ('E3', 'J3', 0) :     0 :   1.0 :     1 : False : False : Binary
         ('E3', 'J3', 1) :     0 :  -0.0 :     1 : False : False : Binary
         ('E3', 'J3', 2) :     0 :   0.0 :     1 : False : False : Binary
         ('E3', 'J3', 3) :     0 :   1.0 :     1 : False : False : Binary
         ('E3', 'J3', 4) :     0 :   0.0 :     1 : False : False : Binary
         ('E3', 'J3', 5) :     0 :   0.0 :     1 : False : False : Binary
         ('E3', 'J3', 6) :     0 :   0.0 :     1 : False : False : Binary
         ('E3', 'J3', 7) :     0 :  -0.0 :     1 : False : False : Binary
         ('E3', 'J3', 8) :     0 :  -0.0 :     1 : False : False : Binary
         ('E3', 'J3', 9) :     0 :  -0.0 :     1 : False : False : Binary
        ('E3', 'J3', 10) :     0 :   0.0 :     1 : False : False : Binary
        ('E3', 'J3', 11) :     0 :  -0.0 :     1 : False : False : Binary
        ('E3', 'J3', 12) :     0 :   0.0 :     1 : False : False : Binary
        ('E3', 'J3', 13) :     0 :   0.0 :     1 : False : False : Binary
         ('E3', 'K3', 0) :     0 :  -0.0 :     1 : False : False : Binary
         ('E3', 'K3', 1) :     0 :  -0.0 :     1 : False : False : Binary
         ('E3', 'K3', 2) :     0 :  -0.0 :     1 : False : False : Binary
         ('E3', 'K3', 3) :     0 :  -0.0 :     1 : False : False : Binary
         ('E3', 'K3', 4) :     0 :   0.0 :     1 : False : False : Binary
         ('E3', 'K3', 5) :     0 :  -0.0 :     1 : False : False : Binary
         ('E3', 'K3', 6) :     0 :  -0.0 :     1 : False : False : Binary
         ('E3', 'K3', 7) :     0 :  -0.0 :     1 : False : False : Binary
         ('E3', 'K3', 8) :     0 :  -0.0 :     1 : False : False : Binary
         ('E3', 'K3', 9) :     0 :  -0.0 :     1 : False : False : Binary
        ('E3', 'K3', 10) :     0 :  -0.0 :     1 : False : False : Binary
        ('E3', 'K3', 11) :     0 :  -0.0 :     1 : False : False : Binary
        ('E3', 'K3', 12) :     0 :  -0.0 :     1 : False : False : Binary
        ('E3', 'K3', 13) :     0 :   0.0 :     1 : False : False : Binary
         ('E3', 'L3', 0) :     0 :   0.0 :     1 : False : False : Binary
         ('E3', 'L3', 1) :     0 :   0.0 :     1 : False : False : Binary
         ('E3', 'L3', 2) :     0 :   0.0 :     1 : False : False : Binary
         ('E3', 'L3', 3) :     0 :   0.0 :     1 : False : False : Binary
         ('E3', 'L3', 4) :     0 :   0.0 :     1 : False : False : Binary
         ('E3', 'L3', 5) :     0 :   0.0 :     1 : False : False : Binary
         ('E3', 'L3', 6) :     0 :   0.0 :     1 : False : False : Binary
         ('E3', 'L3', 7) :     0 :   0.0 :     1 : False : False : Binary
         ('E3', 'L3', 8) :     0 :   0.0 :     1 : False : False : Binary
         ('E3', 'L3', 9) :     0 :   0.0 :     1 : False : False : Binary
        ('E3', 'L3', 10) :     0 :   0.0 :     1 : False : False : Binary
        ('E3', 'L3', 11) :     0 :   0.0 :     1 : False : False : Binary
        ('E3', 'L3', 12) :     0 :   0.0 :     1 : False : False : Binary
        ('E3', 'L3', 13) :     0 :   0.0 :     1 : False : False : Binary
         ('E3', 'M3', 0) :     0 :  -0.0 :     1 : False : False : Binary
         ('E3', 'M3', 1) :     0 :   0.0 :     1 : False : False : Binary
         ('E3', 'M3', 2) :     0 :  -0.0 :     1 : False : False : Binary
         ('E3', 'M3', 3) :     0 :  -0.0 :     1 : False : False : Binary
         ('E3', 'M3', 4) :     0 :  -0.0 :     1 : False : False : Binary
         ('E3', 'M3', 5) :     0 :  -0.0 :     1 : False : False : Binary
         ('E3', 'M3', 6) :     0 :  -0.0 :     1 : False : False : Binary
         ('E3', 'M3', 7) :     0 :  -0.0 :     1 : False : False : Binary
         ('E3', 'M3', 8) :     0 :   1.0 :     1 : False : False : Binary
         ('E3', 'M3', 9) :     0 :   1.0 :     1 : False : False : Binary
        ('E3', 'M3', 10) :     0 :  -0.0 :     1 : False : False : Binary
        ('E3', 'M3', 11) :     0 :  -0.0 :     1 : False : False : Binary
        ('E3', 'M3', 12) :     0 :  -0.0 :     1 : False : False : Binary
        ('E3', 'M3', 13) :     0 :   0.0 :     1 : False : False : Binary
         ('E3', 'N3', 0) :     0 :   0.0 :     1 : False : False : Binary
         ('E3', 'N3', 1) :     0 :   0.0 :     1 : False : False : Binary
         ('E3', 'N3', 2) :     0 :   0.0 :     1 : False : False : Binary
         ('E3', 'N3', 3) :     0 :   0.0 :     1 : False : False : Binary
         ('E3', 'N3', 4) :     0 :   0.0 :     1 : False : False : Binary
         ('E3', 'N3', 5) :     0 :   0.0 :     1 : False : False : Binary
         ('E3', 'N3', 6) :     0 :   0.0 :     1 : False : False : Binary
         ('E3', 'N3', 7) :     0 :   0.0 :     1 : False : False : Binary
         ('E3', 'N3', 8) :     0 :   0.0 :     1 : False : False : Binary
         ('E3', 'N3', 9) :     0 :   0.0 :     1 : False : False : Binary
        ('E3', 'N3', 10) :     0 :   0.0 :     1 : False : False : Binary
        ('E3', 'N3', 11) :     0 :   0.0 :     1 : False : False : Binary
        ('E3', 'N3', 12) :     0 :   0.0 :     1 : False : False : Binary
        ('E3', 'N3', 13) :     0 :   0.0 :     1 : False : False : Binary
         ('E3', 'O3', 0) :     0 :   0.0 :     1 : False : False : Binary
         ('E3', 'O3', 1) :     0 :   0.0 :     1 : False : False : Binary
         ('E3', 'O3', 2) :     0 :   0.0 :     1 : False : False : Binary
         ('E3', 'O3', 3) :     0 :   0.0 :     1 : False : False : Binary
         ('E3', 'O3', 4) :     0 :   0.0 :     1 : False : False : Binary
         ('E3', 'O3', 5) :     0 :   0.0 :     1 : False : False : Binary
         ('E3', 'O3', 6) :     0 :   0.0 :     1 : False : False : Binary
         ('E3', 'O3', 7) :     0 :   0.0 :     1 : False : False : Binary
         ('E3', 'O3', 8) :     0 :   0.0 :     1 : False : False : Binary
         ('E3', 'O3', 9) :     0 :   0.0 :     1 : False : False : Binary
        ('E3', 'O3', 10) :     0 :   0.0 :     1 : False : False : Binary
        ('E3', 'O3', 11) :     0 :   0.0 :     1 : False : False : Binary
        ('E3', 'O3', 12) :     0 :   0.0 :     1 : False : False : Binary
        ('E3', 'O3', 13) :     0 :   0.0 :     1 : False : False : Binary
         ('E3', 'P3', 0) :     0 :  -0.0 :     1 : False : False : Binary
         ('E3', 'P3', 1) :     0 :  -0.0 :     1 : False : False : Binary
         ('E3', 'P3', 2) :     0 :   0.0 :     1 : False : False : Binary
         ('E3', 'P3', 3) :     0 :  -0.0 :     1 : False : False : Binary
         ('E3', 'P3', 4) :     0 :  -0.0 :     1 : False : False : Binary
         ('E3', 'P3', 5) :     0 :   1.0 :     1 : False : False : Binary
         ('E3', 'P3', 6) :     0 :   1.0 :     1 : False : False : Binary
         ('E3', 'P3', 7) :     0 :  -0.0 :     1 : False : False : Binary
         ('E3', 'P3', 8) :     0 :  -0.0 :     1 : False : False : Binary
         ('E3', 'P3', 9) :     0 :  -0.0 :     1 : False : False : Binary
        ('E3', 'P3', 10) :     0 :   0.0 :     1 : False : False : Binary
        ('E3', 'P3', 11) :     0 :   1.0 :     1 : False : False : Binary
        ('E3', 'P3', 12) :     0 :  -0.0 :     1 : False : False : Binary
        ('E3', 'P3', 13) :     0 :  -0.0 :     1 : False : False : Binary
         ('E3', 'Q3', 0) :     0 :   0.0 :     1 : False : False : Binary
         ('E3', 'Q3', 1) :     0 :   0.0 :     1 : False : False : Binary
         ('E3', 'Q3', 2) :     0 :   0.0 :     1 : False : False : Binary
         ('E3', 'Q3', 3) :     0 :   0.0 :     1 : False : False : Binary
         ('E3', 'Q3', 4) :     0 :   0.0 :     1 : False : False : Binary
         ('E3', 'Q3', 5) :     0 :   0.0 :     1 : False : False : Binary
         ('E3', 'Q3', 6) :     0 :   0.0 :     1 : False : False : Binary
         ('E3', 'Q3', 7) :     0 :   0.0 :     1 : False : False : Binary
         ('E3', 'Q3', 8) :     0 :   0.0 :     1 : False : False : Binary
         ('E3', 'Q3', 9) :     0 :   0.0 :     1 : False : False : Binary
        ('E3', 'Q3', 10) :     0 :   0.0 :     1 : False : False : Binary
        ('E3', 'Q3', 11) :     0 :   0.0 :     1 : False : False : Binary
        ('E3', 'Q3', 12) :     0 :   0.0 :     1 : False : False : Binary
        ('E3', 'Q3', 13) :     0 :   0.0 :     1 : False : False : Binary
         ('E3', 'R3', 0) :     0 :  -0.0 :     1 : False : False : Binary
         ('E3', 'R3', 1) :     0 :   0.0 :     1 : False : False : Binary
         ('E3', 'R3', 2) :     0 :  -0.0 :     1 : False : False : Binary
         ('E3', 'R3', 3) :     0 :   0.0 :     1 : False : False : Binary
         ('E3', 'R3', 4) :     0 :   0.0 :     1 : False : False : Binary
         ('E3', 'R3', 5) :     0 :  -0.0 :     1 : False : False : Binary
         ('E3', 'R3', 6) :     0 :   0.0 :     1 : False : False : Binary
         ('E3', 'R3', 7) :     0 :  -0.0 :     1 : False : False : Binary
         ('E3', 'R3', 8) :     0 :  -0.0 :     1 : False : False : Binary
         ('E3', 'R3', 9) :     0 :   0.0 :     1 : False : False : Binary
        ('E3', 'R3', 10) :     0 :   0.0 :     1 : False : False : Binary
        ('E3', 'R3', 11) :     0 :   0.0 :     1 : False : False : Binary
        ('E3', 'R3', 12) :     0 :  -0.0 :     1 : False : False : Binary
        ('E3', 'R3', 13) :     0 :   0.0 :     1 : False : False : Binary
         ('E3', 'S3', 0) :     0 :  -0.0 :     1 : False : False : Binary
         ('E3', 'S3', 1) :     0 :   1.0 :     1 : False : False : Binary
         ('E3', 'S3', 2) :     0 :  -0.0 :     1 : False : False : Binary
         ('E3', 'S3', 3) :     0 :  -0.0 :     1 : False : False : Binary
         ('E3', 'S3', 4) :     0 :  -0.0 :     1 : False : False : Binary
         ('E3', 'S3', 5) :     0 :   1.0 :     1 : False : False : Binary
         ('E3', 'S3', 6) :     0 :   1.0 :     1 : False : False : Binary
         ('E3', 'S3', 7) :     0 :   1.0 :     1 : False : False : Binary
         ('E3', 'S3', 8) :     0 :   0.0 :     1 : False : False : Binary
         ('E3', 'S3', 9) :     0 :  -0.0 :     1 : False : False : Binary
        ('E3', 'S3', 10) :     0 :  -0.0 :     1 : False : False : Binary
        ('E3', 'S3', 11) :     0 :  -0.0 :     1 : False : False : Binary
        ('E3', 'S3', 12) :     0 :  -0.0 :     1 : False : False : Binary
        ('E3', 'S3', 13) :     0 :   0.0 :     1 : False : False : Binary
         ('E3', 'T3', 0) :     0 :  -0.0 :     1 : False : False : Binary
         ('E3', 'T3', 1) :     0 :  -0.0 :     1 : False : False : Binary
         ('E3', 'T3', 2) :     0 :  -0.0 :     1 : False : False : Binary
         ('E3', 'T3', 3) :     0 :   1.0 :     1 : False : False : Binary
         ('E3', 'T3', 4) :     0 :   1.0 :     1 : False : False : Binary
         ('E3', 'T3', 5) :     0 :   1.0 :     1 : False : False : Binary
         ('E3', 'T3', 6) :     0 :   1.0 :     1 : False : False : Binary
         ('E3', 'T3', 7) :     0 :  -0.0 :     1 : False : False : Binary
         ('E3', 'T3', 8) :     0 :  -0.0 :     1 : False : False : Binary
         ('E3', 'T3', 9) :     0 :  -0.0 :     1 : False : False : Binary
        ('E3', 'T3', 10) :     0 :  -0.0 :     1 : False : False : Binary
        ('E3', 'T3', 11) :     0 :   0.0 :     1 : False : False : Binary
        ('E3', 'T3', 12) :     0 :  -0.0 :     1 : False : False : Binary
        ('E3', 'T3', 13) :     0 :   0.0 :     1 : False : False : Binary
         ('L3', 'A3', 0) :     0 :   0.0 :     1 : False : False : Binary
         ('L3', 'A3', 1) :     0 :   0.0 :     1 : False : False : Binary
         ('L3', 'A3', 2) :     0 :   0.0 :     1 : False : False : Binary
         ('L3', 'A3', 3) :     0 :   0.0 :     1 : False : False : Binary
         ('L3', 'A3', 4) :     0 :   0.0 :     1 : False : False : Binary
         ('L3', 'A3', 5) :     0 :   0.0 :     1 : False : False : Binary
         ('L3', 'A3', 6) :     0 :   0.0 :     1 : False : False : Binary
         ('L3', 'A3', 7) :     0 :   0.0 :     1 : False : False : Binary
         ('L3', 'A3', 8) :     0 :   0.0 :     1 : False : False : Binary
         ('L3', 'A3', 9) :     0 :   0.0 :     1 : False : False : Binary
        ('L3', 'A3', 10) :     0 :   0.0 :     1 : False : False : Binary
        ('L3', 'A3', 11) :     0 :   0.0 :     1 : False : False : Binary
        ('L3', 'A3', 12) :     0 :   0.0 :     1 : False : False : Binary
        ('L3', 'A3', 13) :     0 :   0.0 :     1 : False : False : Binary
         ('L3', 'B3', 0) :     0 :  -0.0 :     1 : False : False : Binary
         ('L3', 'B3', 1) :     0 :  -0.0 :     1 : False : False : Binary
         ('L3', 'B3', 2) :     0 :  -0.0 :     1 : False : False : Binary
         ('L3', 'B3', 3) :     0 :  -0.0 :     1 : False : False : Binary
         ('L3', 'B3', 4) :     0 :  -0.0 :     1 : False : False : Binary
         ('L3', 'B3', 5) :     0 :  -0.0 :     1 : False : False : Binary
         ('L3', 'B3', 6) :     0 :   0.0 :     1 : False : False : Binary
         ('L3', 'B3', 7) :     0 :  -0.0 :     1 : False : False : Binary
         ('L3', 'B3', 8) :     0 :   0.0 :     1 : False : False : Binary
         ('L3', 'B3', 9) :     0 :  -0.0 :     1 : False : False : Binary
        ('L3', 'B3', 10) :     0 :  -0.0 :     1 : False : False : Binary
        ('L3', 'B3', 11) :     0 :  -0.0 :     1 : False : False : Binary
        ('L3', 'B3', 12) :     0 :   0.0 :     1 : False : False : Binary
        ('L3', 'B3', 13) :     0 :   1.0 :     1 : False : False : Binary
         ('L3', 'C3', 0) :     0 :   1.0 :     1 : False : False : Binary
         ('L3', 'C3', 1) :     0 :   0.0 :     1 : False : False : Binary
         ('L3', 'C3', 2) :     0 :  -0.0 :     1 : False : False : Binary
         ('L3', 'C3', 3) :     0 :  -0.0 :     1 : False : False : Binary
         ('L3', 'C3', 4) :     0 :  -0.0 :     1 : False : False : Binary
         ('L3', 'C3', 5) :     0 :  -0.0 :     1 : False : False : Binary
         ('L3', 'C3', 6) :     0 :  -0.0 :     1 : False : False : Binary
         ('L3', 'C3', 7) :     0 :   0.0 :     1 : False : False : Binary
         ('L3', 'C3', 8) :     0 :  -0.0 :     1 : False : False : Binary
         ('L3', 'C3', 9) :     0 :  -0.0 :     1 : False : False : Binary
        ('L3', 'C3', 10) :     0 :  -0.0 :     1 : False : False : Binary
        ('L3', 'C3', 11) :     0 :   1.0 :     1 : False : False : Binary
        ('L3', 'C3', 12) :     0 :  -0.0 :     1 : False : False : Binary
        ('L3', 'C3', 13) :     0 :  -0.0 :     1 : False : False : Binary
         ('L3', 'D3', 0) :     0 :   0.0 :     1 : False : False : Binary
         ('L3', 'D3', 1) :     0 :   1.0 :     1 : False : False : Binary
         ('L3', 'D3', 2) :     0 :   1.0 :     1 : False : False : Binary
         ('L3', 'D3', 3) :     0 :   1.0 :     1 : False : False : Binary
         ('L3', 'D3', 4) :     0 :   1.0 :     1 : False : False : Binary
         ('L3', 'D3', 5) :     0 :   0.0 :     1 : False : False : Binary
         ('L3', 'D3', 6) :     0 :  -0.0 :     1 : False : False : Binary
         ('L3', 'D3', 7) :     0 :   0.0 :     1 : False : False : Binary
         ('L3', 'D3', 8) :     0 :  -0.0 :     1 : False : False : Binary
         ('L3', 'D3', 9) :     0 :   1.0 :     1 : False : False : Binary
        ('L3', 'D3', 10) :     0 :   0.0 :     1 : False : False : Binary
        ('L3', 'D3', 11) :     0 :  -0.0 :     1 : False : False : Binary
        ('L3', 'D3', 12) :     0 :  -0.0 :     1 : False : False : Binary
        ('L3', 'D3', 13) :     0 :  -0.0 :     1 : False : False : Binary
         ('L3', 'E3', 0) :     0 :   0.0 :     1 : False : False : Binary
         ('L3', 'E3', 1) :     0 :   0.0 :     1 : False : False : Binary
         ('L3', 'E3', 2) :     0 :   0.0 :     1 : False : False : Binary
         ('L3', 'E3', 3) :     0 :   0.0 :     1 : False : False : Binary
         ('L3', 'E3', 4) :     0 :   0.0 :     1 : False : False : Binary
         ('L3', 'E3', 5) :     0 :   0.0 :     1 : False : False : Binary
         ('L3', 'E3', 6) :     0 :   0.0 :     1 : False : False : Binary
         ('L3', 'E3', 7) :     0 :   0.0 :     1 : False : False : Binary
         ('L3', 'E3', 8) :     0 :   0.0 :     1 : False : False : Binary
         ('L3', 'E3', 9) :     0 :   0.0 :     1 : False : False : Binary
        ('L3', 'E3', 10) :     0 :   0.0 :     1 : False : False : Binary
        ('L3', 'E3', 11) :     0 :   0.0 :     1 : False : False : Binary
        ('L3', 'E3', 12) :     0 :   0.0 :     1 : False : False : Binary
        ('L3', 'E3', 13) :     0 :   0.0 :     1 : False : False : Binary
         ('L3', 'F3', 0) :     0 :   0.0 :     1 : False : False : Binary
         ('L3', 'F3', 1) :     0 :   0.0 :     1 : False : False : Binary
         ('L3', 'F3', 2) :     0 :   0.0 :     1 : False : False : Binary
         ('L3', 'F3', 3) :     0 :   0.0 :     1 : False : False : Binary
         ('L3', 'F3', 4) :     0 :   0.0 :     1 : False : False : Binary
         ('L3', 'F3', 5) :     0 :   0.0 :     1 : False : False : Binary
         ('L3', 'F3', 6) :     0 :   0.0 :     1 : False : False : Binary
         ('L3', 'F3', 7) :     0 :   0.0 :     1 : False : False : Binary
         ('L3', 'F3', 8) :     0 :   0.0 :     1 : False : False : Binary
         ('L3', 'F3', 9) :     0 :   0.0 :     1 : False : False : Binary
        ('L3', 'F3', 10) :     0 :   0.0 :     1 : False : False : Binary
        ('L3', 'F3', 11) :     0 :   0.0 :     1 : False : False : Binary
        ('L3', 'F3', 12) :     0 :   0.0 :     1 : False : False : Binary
        ('L3', 'F3', 13) :     0 :   0.0 :     1 : False : False : Binary
         ('L3', 'G3', 0) :     0 :   0.0 :     1 : False : False : Binary
         ('L3', 'G3', 1) :     0 :   1.0 :     1 : False : False : Binary
         ('L3', 'G3', 2) :     0 :   1.0 :     1 : False : False : Binary
         ('L3', 'G3', 3) :     0 :  -0.0 :     1 : False : False : Binary
         ('L3', 'G3', 4) :     0 :   0.0 :     1 : False : False : Binary
         ('L3', 'G3', 5) :     0 :  -0.0 :     1 : False : False : Binary
         ('L3', 'G3', 6) :     0 :  -0.0 :     1 : False : False : Binary
         ('L3', 'G3', 7) :     0 :   1.0 :     1 : False : False : Binary
         ('L3', 'G3', 8) :     0 :  -0.0 :     1 : False : False : Binary
         ('L3', 'G3', 9) :     0 :  -0.0 :     1 : False : False : Binary
        ('L3', 'G3', 10) :     0 :   1.0 :     1 : False : False : Binary
        ('L3', 'G3', 11) :     0 :   1.0 :     1 : False : False : Binary
        ('L3', 'G3', 12) :     0 :   0.0 :     1 : False : False : Binary
        ('L3', 'G3', 13) :     0 :   0.0 :     1 : False : False : Binary
         ('L3', 'H3', 0) :     0 :   0.0 :     1 : False : False : Binary
         ('L3', 'H3', 1) :     0 :   0.0 :     1 : False : False : Binary
         ('L3', 'H3', 2) :     0 :  -0.0 :     1 : False : False : Binary
         ('L3', 'H3', 3) :     0 :  -0.0 :     1 : False : False : Binary
         ('L3', 'H3', 4) :     0 :   1.0 :     1 : False : False : Binary
         ('L3', 'H3', 5) :     0 :   1.0 :     1 : False : False : Binary
         ('L3', 'H3', 6) :     0 :   1.0 :     1 : False : False : Binary
         ('L3', 'H3', 7) :     0 :   0.0 :     1 : False : False : Binary
         ('L3', 'H3', 8) :     0 :  -0.0 :     1 : False : False : Binary
         ('L3', 'H3', 9) :     0 :  -0.0 :     1 : False : False : Binary
        ('L3', 'H3', 10) :     0 :  -0.0 :     1 : False : False : Binary
        ('L3', 'H3', 11) :     0 :   1.0 :     1 : False : False : Binary
        ('L3', 'H3', 12) :     0 :   0.0 :     1 : False : False : Binary
        ('L3', 'H3', 13) :     0 :  -0.0 :     1 : False : False : Binary
         ('L3', 'I3', 0) :     0 :  -0.0 :     1 : False : False : Binary
         ('L3', 'I3', 1) :     0 :  -0.0 :     1 : False : False : Binary
         ('L3', 'I3', 2) :     0 :   0.0 :     1 : False : False : Binary
         ('L3', 'I3', 3) :     0 :  -0.0 :     1 : False : False : Binary
         ('L3', 'I3', 4) :     0 :   0.0 :     1 : False : False : Binary
         ('L3', 'I3', 5) :     0 :  -0.0 :     1 : False : False : Binary
         ('L3', 'I3', 6) :     0 :   0.0 :     1 : False : False : Binary
         ('L3', 'I3', 7) :     0 :   1.0 :     1 : False : False : Binary
         ('L3', 'I3', 8) :     0 :   1.0 :     1 : False : False : Binary
         ('L3', 'I3', 9) :     0 :   1.0 :     1 : False : False : Binary
        ('L3', 'I3', 10) :     0 :  -0.0 :     1 : False : False : Binary
        ('L3', 'I3', 11) :     0 :   0.0 :     1 : False : False : Binary
        ('L3', 'I3', 12) :     0 :   1.0 :     1 : False : False : Binary
        ('L3', 'I3', 13) :     0 :   1.0 :     1 : False : False : Binary
         ('L3', 'J3', 0) :     0 :   0.0 :     1 : False : False : Binary
         ('L3', 'J3', 1) :     0 :   0.0 :     1 : False : False : Binary
         ('L3', 'J3', 2) :     0 :   0.0 :     1 : False : False : Binary
         ('L3', 'J3', 3) :     0 :   0.0 :     1 : False : False : Binary
         ('L3', 'J3', 4) :     0 :   0.0 :     1 : False : False : Binary
         ('L3', 'J3', 5) :     0 :   0.0 :     1 : False : False : Binary
         ('L3', 'J3', 6) :     0 :   0.0 :     1 : False : False : Binary
         ('L3', 'J3', 7) :     0 :   0.0 :     1 : False : False : Binary
         ('L3', 'J3', 8) :     0 :   0.0 :     1 : False : False : Binary
         ('L3', 'J3', 9) :     0 :   0.0 :     1 : False : False : Binary
        ('L3', 'J3', 10) :     0 :   0.0 :     1 : False : False : Binary
        ('L3', 'J3', 11) :     0 :   0.0 :     1 : False : False : Binary
        ('L3', 'J3', 12) :     0 :   0.0 :     1 : False : False : Binary
        ('L3', 'J3', 13) :     0 :   0.0 :     1 : False : False : Binary
         ('L3', 'K3', 0) :     0 :   0.0 :     1 : False : False : Binary
         ('L3', 'K3', 1) :     0 :   0.0 :     1 : False : False : Binary
         ('L3', 'K3', 2) :     0 :   0.0 :     1 : False : False : Binary
         ('L3', 'K3', 3) :     0 :   0.0 :     1 : False : False : Binary
         ('L3', 'K3', 4) :     0 :   0.0 :     1 : False : False : Binary
         ('L3', 'K3', 5) :     0 :   0.0 :     1 : False : False : Binary
         ('L3', 'K3', 6) :     0 :   0.0 :     1 : False : False : Binary
         ('L3', 'K3', 7) :     0 :   0.0 :     1 : False : False : Binary
         ('L3', 'K3', 8) :     0 :   0.0 :     1 : False : False : Binary
         ('L3', 'K3', 9) :     0 :   0.0 :     1 : False : False : Binary
        ('L3', 'K3', 10) :     0 :   0.0 :     1 : False : False : Binary
        ('L3', 'K3', 11) :     0 :   0.0 :     1 : False : False : Binary
        ('L3', 'K3', 12) :     0 :   0.0 :     1 : False : False : Binary
        ('L3', 'K3', 13) :     0 :   0.0 :     1 : False : False : Binary
         ('L3', 'L3', 0) :     0 :   1.0 :     1 : False : False : Binary
         ('L3', 'L3', 1) :     0 :   1.0 :     1 : False : False : Binary
         ('L3', 'L3', 2) :     0 :  -0.0 :     1 : False : False : Binary
         ('L3', 'L3', 3) :     0 :  -0.0 :     1 : False : False : Binary
         ('L3', 'L3', 4) :     0 :   0.0 :     1 : False : False : Binary
         ('L3', 'L3', 5) :     0 :  -0.0 :     1 : False : False : Binary
         ('L3', 'L3', 6) :     0 :  -0.0 :     1 : False : False : Binary
         ('L3', 'L3', 7) :     0 :   0.0 :     1 : False : False : Binary
         ('L3', 'L3', 8) :     0 :   1.0 :     1 : False : False : Binary
         ('L3', 'L3', 9) :     0 :   1.0 :     1 : False : False : Binary
        ('L3', 'L3', 10) :     0 :   1.0 :     1 : False : False : Binary
        ('L3', 'L3', 11) :     0 :  -0.0 :     1 : False : False : Binary
        ('L3', 'L3', 12) :     0 :  -0.0 :     1 : False : False : Binary
        ('L3', 'L3', 13) :     0 :   0.0 :     1 : False : False : Binary
         ('L3', 'M3', 0) :     0 :  -0.0 :     1 : False : False : Binary
         ('L3', 'M3', 1) :     0 :   0.0 :     1 : False : False : Binary
         ('L3', 'M3', 2) :     0 :  -0.0 :     1 : False : False : Binary
         ('L3', 'M3', 3) :     0 :   0.0 :     1 : False : False : Binary
         ('L3', 'M3', 4) :     0 :   1.0 :     1 : False : False : Binary
         ('L3', 'M3', 5) :     0 :  -0.0 :     1 : False : False : Binary
         ('L3', 'M3', 6) :     0 :  -0.0 :     1 : False : False : Binary
         ('L3', 'M3', 7) :     0 :   0.0 :     1 : False : False : Binary
         ('L3', 'M3', 8) :     0 :  -0.0 :     1 : False : False : Binary
         ('L3', 'M3', 9) :     0 :   0.0 :     1 : False : False : Binary
        ('L3', 'M3', 10) :     0 :  -0.0 :     1 : False : False : Binary
        ('L3', 'M3', 11) :     0 :   1.0 :     1 : False : False : Binary
        ('L3', 'M3', 12) :     0 :   1.0 :     1 : False : False : Binary
        ('L3', 'M3', 13) :     0 :   1.0 :     1 : False : False : Binary
         ('L3', 'N3', 0) :     0 :   0.0 :     1 : False : False : Binary
         ('L3', 'N3', 1) :     0 :   0.0 :     1 : False : False : Binary
         ('L3', 'N3', 2) :     0 :   0.0 :     1 : False : False : Binary
         ('L3', 'N3', 3) :     0 :   1.0 :     1 : False : False : Binary
         ('L3', 'N3', 4) :     0 :   1.0 :     1 : False : False : Binary
         ('L3', 'N3', 5) :     0 :   1.0 :     1 : False : False : Binary
         ('L3', 'N3', 6) :     0 :   1.0 :     1 : False : False : Binary
         ('L3', 'N3', 7) :     0 :   0.0 :     1 : False : False : Binary
         ('L3', 'N3', 8) :     0 :   0.0 :     1 : False : False : Binary
         ('L3', 'N3', 9) :     0 :  -0.0 :     1 : False : False : Binary
        ('L3', 'N3', 10) :     0 :  -0.0 :     1 : False : False : Binary
        ('L3', 'N3', 11) :     0 :   0.0 :     1 : False : False : Binary
        ('L3', 'N3', 12) :     0 :   0.0 :     1 : False : False : Binary
        ('L3', 'N3', 13) :     0 :  -0.0 :     1 : False : False : Binary
         ('L3', 'O3', 0) :     0 :   1.0 :     1 : False : False : Binary
         ('L3', 'O3', 1) :     0 :   0.0 :     1 : False : False : Binary
         ('L3', 'O3', 2) :     0 :   0.0 :     1 : False : False : Binary
         ('L3', 'O3', 3) :     0 :   0.0 :     1 : False : False : Binary
         ('L3', 'O3', 4) :     0 :  -0.0 :     1 : False : False : Binary
         ('L3', 'O3', 5) :     0 :  -0.0 :     1 : False : False : Binary
         ('L3', 'O3', 6) :     0 :  -0.0 :     1 : False : False : Binary
         ('L3', 'O3', 7) :     0 :   0.0 :     1 : False : False : Binary
         ('L3', 'O3', 8) :     0 :   0.0 :     1 : False : False : Binary
         ('L3', 'O3', 9) :     0 :   1.0 :     1 : False : False : Binary
        ('L3', 'O3', 10) :     0 :   0.0 :     1 : False : False : Binary
        ('L3', 'O3', 11) :     0 :   0.0 :     1 : False : False : Binary
        ('L3', 'O3', 12) :     0 :   0.0 :     1 : False : False : Binary
        ('L3', 'O3', 13) :     0 :   0.0 :     1 : False : False : Binary
         ('L3', 'P3', 0) :     0 :  -0.0 :     1 : False : False : Binary
         ('L3', 'P3', 1) :     0 :  -0.0 :     1 : False : False : Binary
         ('L3', 'P3', 2) :     0 :   0.0 :     1 : False : False : Binary
         ('L3', 'P3', 3) :     0 :  -0.0 :     1 : False : False : Binary
         ('L3', 'P3', 4) :     0 :  -0.0 :     1 : False : False : Binary
         ('L3', 'P3', 5) :     0 :  -0.0 :     1 : False : False : Binary
         ('L3', 'P3', 6) :     0 :  -0.0 :     1 : False : False : Binary
         ('L3', 'P3', 7) :     0 :  -0.0 :     1 : False : False : Binary
         ('L3', 'P3', 8) :     0 :  -0.0 :     1 : False : False : Binary
         ('L3', 'P3', 9) :     0 :   0.0 :     1 : False : False : Binary
        ('L3', 'P3', 10) :     0 :  -0.0 :     1 : False : False : Binary
        ('L3', 'P3', 11) :     0 :  -0.0 :     1 : False : False : Binary
        ('L3', 'P3', 12) :     0 :  -0.0 :     1 : False : False : Binary
        ('L3', 'P3', 13) :     0 :   0.0 :     1 : False : False : Binary
         ('L3', 'Q3', 0) :     0 :  -0.0 :     1 : False : False : Binary
         ('L3', 'Q3', 1) :     0 :  -0.0 :     1 : False : False : Binary
         ('L3', 'Q3', 2) :     0 :   1.0 :     1 : False : False : Binary
         ('L3', 'Q3', 3) :     0 :  -0.0 :     1 : False : False : Binary
         ('L3', 'Q3', 4) :     0 :   0.0 :     1 : False : False : Binary
         ('L3', 'Q3', 5) :     0 :   0.0 :     1 : False : False : Binary
         ('L3', 'Q3', 6) :     0 :   0.0 :     1 : False : False : Binary
         ('L3', 'Q3', 7) :     0 :   1.0 :     1 : False : False : Binary
         ('L3', 'Q3', 8) :     0 :   0.0 :     1 : False : False : Binary
         ('L3', 'Q3', 9) :     0 :  -0.0 :     1 : False : False : Binary
        ('L3', 'Q3', 10) :     0 :  -0.0 :     1 : False : False : Binary
        ('L3', 'Q3', 11) :     0 :  -0.0 :     1 : False : False : Binary
        ('L3', 'Q3', 12) :     0 :   0.0 :     1 : False : False : Binary
        ('L3', 'Q3', 13) :     0 :   0.0 :     1 : False : False : Binary
         ('L3', 'R3', 0) :     0 :   0.0 :     1 : False : False : Binary
         ('L3', 'R3', 1) :     0 :   0.0 :     1 : False : False : Binary
         ('L3', 'R3', 2) :     0 :   0.0 :     1 : False : False : Binary
         ('L3', 'R3', 3) :     0 :   0.0 :     1 : False : False : Binary
         ('L3', 'R3', 4) :     0 :   0.0 :     1 : False : False : Binary
         ('L3', 'R3', 5) :     0 :   0.0 :     1 : False : False : Binary
         ('L3', 'R3', 6) :     0 :   0.0 :     1 : False : False : Binary
         ('L3', 'R3', 7) :     0 :   0.0 :     1 : False : False : Binary
         ('L3', 'R3', 8) :     0 :   0.0 :     1 : False : False : Binary
         ('L3', 'R3', 9) :     0 :   0.0 :     1 : False : False : Binary
        ('L3', 'R3', 10) :     0 :   0.0 :     1 : False : False : Binary
        ('L3', 'R3', 11) :     0 :   0.0 :     1 : False : False : Binary
        ('L3', 'R3', 12) :     0 :   0.0 :     1 : False : False : Binary
        ('L3', 'R3', 13) :     0 :   0.0 :     1 : False : False : Binary
         ('L3', 'S3', 0) :     0 :  -0.0 :     1 : False : False : Binary
         ('L3', 'S3', 1) :     0 :  -0.0 :     1 : False : False : Binary
         ('L3', 'S3', 2) :     0 :  -0.0 :     1 : False : False : Binary
         ('L3', 'S3', 3) :     0 :  -0.0 :     1 : False : False : Binary
         ('L3', 'S3', 4) :     0 :  -0.0 :     1 : False : False : Binary
         ('L3', 'S3', 5) :     0 :   0.0 :     1 : False : False : Binary
         ('L3', 'S3', 6) :     0 :  -0.0 :     1 : False : False : Binary
         ('L3', 'S3', 7) :     0 :  -0.0 :     1 : False : False : Binary
         ('L3', 'S3', 8) :     0 :   0.0 :     1 : False : False : Binary
         ('L3', 'S3', 9) :     0 :  -0.0 :     1 : False : False : Binary
        ('L3', 'S3', 10) :     0 :  -0.0 :     1 : False : False : Binary
        ('L3', 'S3', 11) :     0 :  -0.0 :     1 : False : False : Binary
        ('L3', 'S3', 12) :     0 :   0.0 :     1 : False : False : Binary
        ('L3', 'S3', 13) :     0 :  -0.0 :     1 : False : False : Binary
         ('L3', 'T3', 0) :     0 :   0.0 :     1 : False : False : Binary
         ('L3', 'T3', 1) :     0 :   0.0 :     1 : False : False : Binary
         ('L3', 'T3', 2) :     0 :   0.0 :     1 : False : False : Binary
         ('L3', 'T3', 3) :     0 :   0.0 :     1 : False : False : Binary
         ('L3', 'T3', 4) :     0 :   0.0 :     1 : False : False : Binary
         ('L3', 'T3', 5) :     0 :   0.0 :     1 : False : False : Binary
         ('L3', 'T3', 6) :     0 :   0.0 :     1 : False : False : Binary
         ('L3', 'T3', 7) :     0 :   0.0 :     1 : False : False : Binary
         ('L3', 'T3', 8) :     0 :   0.0 :     1 : False : False : Binary
         ('L3', 'T3', 9) :     0 :   0.0 :     1 : False : False : Binary
        ('L3', 'T3', 10) :     0 :   0.0 :     1 : False : False : Binary
        ('L3', 'T3', 11) :     0 :   0.0 :     1 : False : False : Binary
        ('L3', 'T3', 12) :     0 :   0.0 :     1 : False : False : Binary
        ('L3', 'T3', 13) :     0 :   0.0 :     1 : False : False : Binary
    IsRest : Size=280, Index=NURSES*DAYS
        Key        : Lower : Value              : Upper : Fixed : Stale : Domain
         ('A3', 0) :     0 :                1.0 :     1 : False : False : Binary
         ('A3', 1) :     0 :                1.0 :     1 : False : False : Binary
         ('A3', 2) :     0 :               -0.0 :     1 : False : False : Binary
         ('A3', 3) :     0 :               -0.0 :     1 : False : False : Binary
         ('A3', 4) :     0 :               -0.0 :     1 : False : False : Binary
         ('A3', 5) :     0 :                1.0 :     1 : False : False : Binary
         ('A3', 6) :     0 :                1.0 :     1 : False : False : Binary
         ('A3', 7) :     0 :                0.0 :     1 : False : False : Binary
         ('A3', 8) :     0 :               -0.0 :     1 : False : False : Binary
         ('A3', 9) :     0 :                0.0 :     1 : False : False : Binary
        ('A3', 10) :     0 :                1.0 :     1 : False : False : Binary
        ('A3', 11) :     0 :                1.0 :     1 : False : False : Binary
        ('A3', 12) :     0 :                0.0 :     1 : False : False : Binary
        ('A3', 13) :     0 :                0.0 :     1 : False : False : Binary
         ('B3', 0) :     0 :                1.0 :     1 : False : False : Binary
         ('B3', 1) :     0 :                0.0 :     1 : False : False : Binary
         ('B3', 2) :     0 :                0.0 :     1 : False : False : Binary
         ('B3', 3) :     0 :               -0.0 :     1 : False : False : Binary
         ('B3', 4) :     0 :                0.0 :     1 : False : False : Binary
         ('B3', 5) :     0 :                1.0 :     1 : False : False : Binary
         ('B3', 6) :     0 :                1.0 :     1 : False : False : Binary
         ('B3', 7) :     0 :                1.0 :     1 : False : False : Binary
         ('B3', 8) :     0 :                1.0 :     1 : False : False : Binary
         ('B3', 9) :     0 :                0.0 :     1 : False : False : Binary
        ('B3', 10) :     0 :                0.0 :     1 : False : False : Binary
        ('B3', 11) :     0 :                0.0 :     1 : False : False : Binary
        ('B3', 12) :     0 :               -0.0 :     1 : False : False : Binary
        ('B3', 13) :     0 :               -0.0 :     1 : False : False : Binary
         ('C3', 0) :     0 :                0.0 :     1 : False : False : Binary
         ('C3', 1) :     0 :                1.0 :     1 : False : False : Binary
         ('C3', 2) :     0 :                1.0 :     1 : False : False : Binary
         ('C3', 3) :     0 :               -0.0 :     1 : False : False : Binary
         ('C3', 4) :     0 :               -0.0 :     1 : False : False : Binary
         ('C3', 5) :     0 :                0.0 :     1 : False : False : Binary
         ('C3', 6) :     0 :                0.0 :     1 : False : False : Binary
         ('C3', 7) :     0 :                1.0 :     1 : False : False : Binary
         ('C3', 8) :     0 :                1.0 :     1 : False : False : Binary
         ('C3', 9) :     0 :                0.0 :     1 : False : False : Binary
        ('C3', 10) :     0 :                0.0 :     1 : False : False : Binary
        ('C3', 11) :     0 :               -0.0 :     1 : False : False : Binary
        ('C3', 12) :     0 :                1.0 :     1 : False : False : Binary
        ('C3', 13) :     0 :                1.0 :     1 : False : False : Binary
         ('D3', 0) :     0 :                1.0 :     1 : False : False : Binary
         ('D3', 1) :     0 :               -0.0 :     1 : False : False : Binary
         ('D3', 2) :     0 :                0.0 :     1 : False : False : Binary
         ('D3', 3) :     0 :               -0.0 :     1 : False : False : Binary
         ('D3', 4) :     0 :               -0.0 :     1 : False : False : Binary
         ('D3', 5) :     0 :                1.0 :     1 : False : False : Binary
         ('D3', 6) :     0 :                1.0 :     1 : False : False : Binary
         ('D3', 7) :     0 :               -0.0 :     1 : False : False : Binary
         ('D3', 8) :     0 :               -0.0 :     1 : False : False : Binary
         ('D3', 9) :     0 :               -0.0 :     1 : False : False : Binary
        ('D3', 10) :     0 :                1.0 :     1 : False : False : Binary
        ('D3', 11) :     0 :                1.0 :     1 : False : False : Binary
        ('D3', 12) :     0 :                0.0 :     1 : False : False : Binary
        ('D3', 13) :     0 :                0.0 :     1 : False : False : Binary
         ('E3', 0) :     0 :                0.0 :     1 : False : False : Binary
         ('E3', 1) :     0 :               -0.0 :     1 : False : False : Binary
         ('E3', 2) :     0 :                0.0 :     1 : False : False : Binary
         ('E3', 3) :     0 :                1.0 :     1 : False : False : Binary
         ('E3', 4) :     0 :                1.0 :     1 : False : False : Binary
         ('E3', 5) :     0 :                1.0 :     1 : False : False : Binary
         ('E3', 6) :     0 :                1.0 :     1 : False : False : Binary
         ('E3', 7) :     0 :                1.0 :     1 : False : False : Binary
         ('E3', 8) :     0 :                1.0 :     1 : False : False : Binary
         ('E3', 9) :     0 :                0.0 :     1 : False : False : Binary
        ('E3', 10) :     0 :                0.0 :     1 : False : False : Binary
        ('E3', 11) :     0 :               -0.0 :     1 : False : False : Binary
        ('E3', 12) :     0 :                0.0 :     1 : False : False : Binary
        ('E3', 13) :     0 :                0.0 :     1 : False : False : Binary
         ('F3', 0) :     0 :                1.0 :     1 : False : False : Binary
         ('F3', 1) :     0 :                0.0 :     1 : False : False : Binary
         ('F3', 2) :     0 :               -0.0 :     1 : False : False : Binary
         ('F3', 3) :     0 :               -0.0 :     1 : False : False : Binary
         ('F3', 4) :     0 :               -0.0 :     1 : False : False : Binary
         ('F3', 5) :     0 :                1.0 :     1 : False : False : Binary
         ('F3', 6) :     0 :                1.0 :     1 : False : False : Binary
         ('F3', 7) :     0 :                0.0 :     1 : False : False : Binary
         ('F3', 8) :     0 :                0.0 :     1 : False : False : Binary
         ('F3', 9) :     0 :               -0.0 :     1 : False : False : Binary
        ('F3', 10) :     0 :                1.0 :     1 : False : False : Binary
        ('F3', 11) :     0 :                1.0 :     1 : False : False : Binary
        ('F3', 12) :     0 :                0.0 :     1 : False : False : Binary
        ('F3', 13) :     0 :               -0.0 :     1 : False : False : Binary
         ('G3', 0) :     0 :               -0.0 :     1 : False : False : Binary
         ('G3', 1) :     0 :               -0.0 :     1 : False : False : Binary
         ('G3', 2) :     0 :               -0.0 :     1 : False : False : Binary
         ('G3', 3) :     0 :                1.0 :     1 : False : False : Binary
         ('G3', 4) :     0 :                1.0 :     1 : False : False : Binary
         ('G3', 5) :     0 :                0.0 :     1 : False : False : Binary
         ('G3', 6) :     0 :                0.0 :     1 : False : False : Binary
         ('G3', 7) :     0 :                0.0 :     1 : False : False : Binary
         ('G3', 8) :     0 :                1.0 :     1 : False : False : Binary
         ('G3', 9) :     0 :                1.0 :     1 : False : False : Binary
        ('G3', 10) :     0 :                0.0 :     1 : False : False : Binary
        ('G3', 11) :     0 :                0.0 :     1 : False : False : Binary
        ('G3', 12) :     0 :                1.0 :     1 : False : False : Binary
        ('G3', 13) :     0 :                1.0 :     1 : False : False : Binary
         ('H3', 0) :     0 :                1.0 :     1 : False : False : Binary
         ('H3', 1) :     0 :                1.0 :     1 : False : False : Binary
         ('H3', 2) :     0 :                0.0 :     1 : False : False : Binary
         ('H3', 3) :     0 :               -0.0 :     1 : False : False : Binary
         ('H3', 4) :     0 :                0.0 :     1 : False : False : Binary
         ('H3', 5) :     0 :                0.0 :     1 : False : False : Binary
         ('H3', 6) :     0 :               -0.0 :     1 : False : False : Binary
         ('H3', 7) :     0 :                1.0 :     1 : False : False : Binary
         ('H3', 8) :     0 :                1.0 :     1 : False : False : Binary
         ('H3', 9) :     0 :               -0.0 :     1 : False : False : Binary
        ('H3', 10) :     0 :                0.0 :     1 : False : False : Binary
        ('H3', 11) :     0 :                0.0 :     1 : False : False : Binary
        ('H3', 12) :     0 :                1.0 :     1 : False : False : Binary
        ('H3', 13) :     0 :                1.0 :     1 : False : False : Binary
         ('I3', 0) :     0 :                0.0 :     1 : False : False : Binary
         ('I3', 1) :     0 :                0.0 :     1 : False : False : Binary
         ('I3', 2) :     0 :               -0.0 :     1 : False : False : Binary
         ('I3', 3) :     0 :               -0.0 :     1 : False : False : Binary
         ('I3', 4) :     0 :                1.0 :     1 : False : False : Binary
         ('I3', 5) :     0 :                1.0 :     1 : False : False : Binary
         ('I3', 6) :     0 :                1.0 :     1 : False : False : Binary
         ('I3', 7) :     0 :                0.0 :     1 : False : False : Binary
         ('I3', 8) :     0 :                0.0 :     1 : False : False : Binary
         ('I3', 9) :     0 :                0.0 :     1 : False : False : Binary
        ('I3', 10) :     0 :                1.0 :     1 : False : False : Binary
        ('I3', 11) :     0 :                1.0 :     1 : False : False : Binary
        ('I3', 12) :     0 :               -0.0 :     1 : False : False : Binary
        ('I3', 13) :     0 :               -0.0 :     1 : False : False : Binary
         ('J3', 0) :     0 :               -0.0 :     1 : False : False : Binary
         ('J3', 1) :     0 :                1.0 :     1 : False : False : Binary
         ('J3', 2) :     0 :                1.0 :     1 : False : False : Binary
         ('J3', 3) :     0 :                0.0 :     1 : False : False : Binary
         ('J3', 4) :     0 :                0.0 :     1 : False : False : Binary
         ('J3', 5) :     0 :                1.0 :     1 : False : False : Binary
         ('J3', 6) :     0 :                1.0 :     1 : False : False : Binary
         ('J3', 7) :     0 :                0.0 :     1 : False : False : Binary
         ('J3', 8) :     0 :               -0.0 :     1 : False : False : Binary
         ('J3', 9) :     0 :                0.0 :     1 : False : False : Binary
        ('J3', 10) :     0 :                1.0 :     1 : False : False : Binary
        ('J3', 11) :     0 :                1.0 :     1 : False : False : Binary
        ('J3', 12) :     0 :                0.0 :     1 : False : False : Binary
        ('J3', 13) :     0 :                0.0 :     1 : False : False : Binary
         ('K3', 0) :     0 :               -0.0 :     1 : False : False : Binary
         ('K3', 1) :     0 :                0.0 :     1 : False : False : Binary
         ('K3', 2) :     0 :                1.0 :     1 : False : False : Binary
         ('K3', 3) :     0 :                1.0 :     1 : False : False : Binary
         ('K3', 4) :     0 :                1.0 :     1 : False : False : Binary
         ('K3', 5) :     0 :                0.0 :     1 : False : False : Binary
         ('K3', 6) :     0 :               -0.0 :     1 : False : False : Binary
         ('K3', 7) :     0 :                0.0 :     1 : False : False : Binary
         ('K3', 8) :     0 :                0.0 :     1 : False : False : Binary
         ('K3', 9) :     0 :                0.0 :     1 : False : False : Binary
        ('K3', 10) :     0 :                0.0 :     1 : False : False : Binary
        ('K3', 11) :     0 :                1.0 :     1 : False : False : Binary
        ('K3', 12) :     0 :                1.0 :     1 : False : False : Binary
        ('K3', 13) :     0 :                1.0 :     1 : False : False : Binary
         ('L3', 0) :     0 :               -0.0 :     1 : False : False : Binary
         ('L3', 1) :     0 :                0.0 :     1 : False : False : Binary
         ('L3', 2) :     0 :                1.0 :     1 : False : False : Binary
         ('L3', 3) :     0 :                1.0 :     1 : False : False : Binary
         ('L3', 4) :     0 :                1.0 :     1 : False : False : Binary
         ('L3', 5) :     0 :                0.0 :     1 : False : False : Binary
         ('L3', 6) :     0 :                0.0 :     1 : False : False : Binary
         ('L3', 7) :     0 :               -0.0 :     1 : False : False : Binary
         ('L3', 8) :     0 :               -0.0 :     1 : False : False : Binary
         ('L3', 9) :     0 :               -0.0 :     1 : False : False : Binary
        ('L3', 10) :     0 :                0.0 :     1 : False : False : Binary
        ('L3', 11) :     0 :                1.0 :     1 : False : False : Binary
        ('L3', 12) :     0 :                1.0 :     1 : False : False : Binary
        ('L3', 13) :     0 :                1.0 :     1 : False : False : Binary
         ('M3', 0) :     0 :                1.0 :     1 : False : False : Binary
         ('M3', 1) :     0 :                1.0 :     1 : False : False : Binary
         ('M3', 2) :     0 :                0.0 :     1 : False : False : Binary
         ('M3', 3) :     0 :               -0.0 :     1 : False : False : Binary
         ('M3', 4) :     0 :               -0.0 :     1 : False : False : Binary
         ('M3', 5) :     0 :                1.0 :     1 : False : False : Binary
         ('M3', 6) :     0 :                1.0 :     1 : False : False : Binary
         ('M3', 7) :     0 :                1.0 :     1 : False : False : Binary
         ('M3', 8) :     0 :                0.0 :     1 : False : False : Binary
         ('M3', 9) :     0 :               -0.0 :     1 : False : False : Binary
        ('M3', 10) :     0 :               -0.0 :     1 : False : False : Binary
        ('M3', 11) :     0 :               -0.0 :     1 : False : False : Binary
        ('M3', 12) :     0 :                0.0 :     1 : False : False : Binary
        ('M3', 13) :     0 :                0.0 :     1 : False : False : Binary
         ('N3', 0) :     0 : 0.9999999999999998 :     1 : False : False : Binary
         ('N3', 1) :     0 :               -0.0 :     1 : False : False : Binary
         ('N3', 2) :     0 :               -0.0 :     1 : False : False : Binary
         ('N3', 3) :     0 :                0.0 :     1 : False : False : Binary
         ('N3', 4) :     0 :               -0.0 :     1 : False : False : Binary
         ('N3', 5) :     0 :                0.0 :     1 : False : False : Binary
         ('N3', 6) :     0 :                0.0 :     1 : False : False : Binary
         ('N3', 7) :     0 :                1.0 :     1 : False : False : Binary
         ('N3', 8) :     0 :                1.0 :     1 : False : False : Binary
         ('N3', 9) :     0 :                1.0 :     1 : False : False : Binary
        ('N3', 10) :     0 :               -0.0 :     1 : False : False : Binary
        ('N3', 11) :     0 :               -0.0 :     1 : False : False : Binary
        ('N3', 12) :     0 :                1.0 :     1 : False : False : Binary
        ('N3', 13) :     0 :                1.0 :     1 : False : False : Binary
         ('O3', 0) :     0 :               -0.0 :     1 : False : False : Binary
         ('O3', 1) :     0 :                1.0 :     1 : False : False : Binary
         ('O3', 2) :     0 :                1.0 :     1 : False : False : Binary
         ('O3', 3) :     0 :                1.0 :     1 : False : False : Binary
         ('O3', 4) :     0 :                0.0 :     1 : False : False : Binary
         ('O3', 5) :     0 :                0.0 :     1 : False : False : Binary
         ('O3', 6) :     0 :                0.0 :     1 : False : False : Binary
         ('O3', 7) :     0 :               -0.0 :     1 : False : False : Binary
         ('O3', 8) :     0 :                0.0 :     1 : False : False : Binary
         ('O3', 9) :     0 :                0.0 :     1 : False : False : Binary
        ('O3', 10) :     0 :                1.0 :     1 : False : False : Binary
        ('O3', 11) :     0 :                1.0 :     1 : False : False : Binary
        ('O3', 12) :     0 :                1.0 :     1 : False : False : Binary
        ('O3', 13) :     0 :                1.0 :     1 : False : False : Binary
         ('P3', 0) :     0 :                1.0 :     1 : False : False : Binary
         ('P3', 1) :     0 :                1.0 :     1 : False : False : Binary
         ('P3', 2) :     0 :                1.0 :     1 : False : False : Binary
         ('P3', 3) :     0 :                1.0 :     1 : False : False : Binary
         ('P3', 4) :     0 :                1.0 :     1 : False : False : Binary
         ('P3', 5) :     0 :                0.0 :     1 : False : False : Binary
         ('P3', 6) :     0 :                0.0 :     1 : False : False : Binary
         ('P3', 7) :     0 :                0.0 :     1 : False : False : Binary
         ('P3', 8) :     0 :                1.0 :     1 : False : False : Binary
         ('P3', 9) :     0 :                1.0 :     1 : False : False : Binary
        ('P3', 10) :     0 :                1.0 :     1 : False : False : Binary
        ('P3', 11) :     0 :               -0.0 :     1 : False : False : Binary
        ('P3', 12) :     0 :                1.0 :     1 : False : False : Binary
        ('P3', 13) :     0 :                1.0 :     1 : False : False : Binary
         ('Q3', 0) :     0 :                1.0 :     1 : False : False : Binary
         ('Q3', 1) :     0 :                1.0 :     1 : False : False : Binary
         ('Q3', 2) :     0 :                0.0 :     1 : False : False : Binary
         ('Q3', 3) :     0 :                1.0 :     1 : False : False : Binary
         ('Q3', 4) :     0 :                1.0 :     1 : False : False : Binary
         ('Q3', 5) :     0 :                1.0 :     1 : False : False : Binary
         ('Q3', 6) :     0 :                1.0 :     1 : False : False : Binary
         ('Q3', 7) :     0 :                0.0 :     1 : False : False : Binary
         ('Q3', 8) :     0 :                1.0 :     1 : False : False : Binary
         ('Q3', 9) :     0 :                1.0 :     1 : False : False : Binary
        ('Q3', 10) :     0 :                1.0 :     1 : False : False : Binary
        ('Q3', 11) :     0 :                1.0 :     1 : False : False : Binary
        ('Q3', 12) :     0 :               -0.0 :     1 : False : False : Binary
        ('Q3', 13) :     0 :               -0.0 :     1 : False : False : Binary
         ('R3', 0) :     0 :                1.0 :     1 : False : False : Binary
         ('R3', 1) :     0 :                1.0 :     1 : False : False : Binary
         ('R3', 2) :     0 :                1.0 :     1 : False : False : Binary
         ('R3', 3) :     0 :                1.0 :     1 : False : False : Binary
         ('R3', 4) :     0 :                1.0 :     1 : False : False : Binary
         ('R3', 5) :     0 :                1.0 :     1 : False : False : Binary
         ('R3', 6) :     0 :                1.0 :     1 : False : False : Binary
         ('R3', 7) :     0 :                0.0 :     1 : False : False : Binary
         ('R3', 8) :     0 :                1.0 :     1 : False : False : Binary
         ('R3', 9) :     0 :                1.0 :     1 : False : False : Binary
        ('R3', 10) :     0 :                1.0 :     1 : False : False : Binary
        ('R3', 11) :     0 :                0.0 :     1 : False : False : Binary
        ('R3', 12) :     0 :                0.0 :     1 : False : False : Binary
        ('R3', 13) :     0 :                0.0 :     1 : False : False : Binary
         ('S3', 0) :     0 :                1.0 :     1 : False : False : Binary
         ('S3', 1) :     0 :                0.0 :     1 : False : False : Binary
         ('S3', 2) :     0 :                1.0 :     1 : False : False : Binary
         ('S3', 3) :     0 :                1.0 :     1 : False : False : Binary
         ('S3', 4) :     0 :                1.0 :     1 : False : False : Binary
         ('S3', 5) :     0 :                0.0 :     1 : False : False : Binary
         ('S3', 6) :     0 :               -0.0 :     1 : False : False : Binary
         ('S3', 7) :     0 :                0.0 :     1 : False : False : Binary
         ('S3', 8) :     0 :                1.0 :     1 : False : False : Binary
         ('S3', 9) :     0 :                1.0 :     1 : False : False : Binary
        ('S3', 10) :     0 :                1.0 :     1 : False : False : Binary
        ('S3', 11) :     0 :                1.0 :     1 : False : False : Binary
        ('S3', 12) :     0 :                1.0 :     1 : False : False : Binary
        ('S3', 13) :     0 :                1.0 :     1 : False : False : Binary
         ('T3', 0) :     0 :                1.0 :     1 : False : False : Binary
         ('T3', 1) :     0 :                1.0 :     1 : False : False : Binary
         ('T3', 2) :     0 :                1.0 :     1 : False : False : Binary
         ('T3', 3) :     0 :                0.0 :     1 : False : False : Binary
         ('T3', 4) :     0 :                0.0 :     1 : False : False : Binary
         ('T3', 5) :     0 :                0.0 :     1 : False : False : Binary
         ('T3', 6) :     0 :               -0.0 :     1 : False : False : Binary
         ('T3', 7) :     0 :                1.0 :     1 : False : False : Binary
         ('T3', 8) :     0 :                1.0 :     1 : False : False : Binary
         ('T3', 9) :     0 :                1.0 :     1 : False : False : Binary
        ('T3', 10) :     0 :                1.0 :     1 : False : False : Binary
        ('T3', 11) :     0 :                1.0 :     1 : False : False : Binary
        ('T3', 12) :     0 :                1.0 :     1 : False : False : Binary
        ('T3', 13) :     0 :                1.0 :     1 : False : False : Binary
    IsEndOfWorkBlock : Size=280, Index=NURSES*DAYS
        Key        : Lower : Value                 : Upper : Fixed : Stale : Domain
         ('A3', 0) :     0 :                   1.0 :     1 : False : False : Binary
         ('A3', 1) :     0 :                   0.0 :     1 : False : False : Binary
         ('A3', 2) :     0 :                   0.0 :     1 : False : False : Binary
         ('A3', 3) :     0 :                   1.0 :     1 : False : False : Binary
         ('A3', 4) :     0 :                   1.0 :     1 : False : False : Binary
         ('A3', 5) :     0 :                   1.0 :     1 : False : False : Binary
         ('A3', 6) :     0 :                   0.0 :     1 : False : False : Binary
         ('A3', 7) :     0 :                   0.0 :     1 : False : False : Binary
         ('A3', 8) :     0 :                   1.0 :     1 : False : False : Binary
         ('A3', 9) :     0 :                   1.0 :     1 : False : False : Binary
        ('A3', 10) :     0 :                   1.0 :     1 : False : False : Binary
        ('A3', 11) :     0 :                   0.0 :     1 : False : False : Binary
        ('A3', 12) :     0 :                   0.0 :     1 : False : False : Binary
        ('A3', 13) :     0 :                   0.0 :     1 : False : False : Binary
         ('B3', 0) :     0 :                   1.0 :     1 : False : False : Binary
         ('B3', 1) :     0 :                   0.0 :     1 : False : False : Binary
         ('B3', 2) :     0 :                   1.0 :     1 : False : False : Binary
         ('B3', 3) :     0 :                   1.0 :     1 : False : False : Binary
         ('B3', 4) :     0 :                   1.0 :     1 : False : False : Binary
         ('B3', 5) :     0 :                   1.0 :     1 : False : False : Binary
         ('B3', 6) :     0 :                   0.0 :     1 : False : False : Binary
         ('B3', 7) :     0 :                   0.0 :     1 : False : False : Binary
         ('B3', 8) :     0 :                   0.0 :     1 : False : False : Binary
         ('B3', 9) :     0 :                   0.0 :     1 : False : False : Binary
        ('B3', 10) :     0 :                   1.0 :     1 : False : False : Binary
        ('B3', 11) :     0 :                   1.0 :     1 : False : False : Binary
        ('B3', 12) :     0 :                   1.0 :     1 : False : False : Binary
        ('B3', 13) :     0 :                   0.0 :     1 : False : False : Binary
         ('C3', 0) :     0 :                   1.0 :     1 : False : False : Binary
         ('C3', 1) :     0 :                   1.0 :     1 : False : False : Binary
         ('C3', 2) :     0 :                   0.0 :     1 : False : False : Binary
         ('C3', 3) :     0 :                   0.0 :     1 : False : False : Binary
         ('C3', 4) :     0 :                   1.0 :     1 : False : False : Binary
         ('C3', 5) :     0 :                   1.0 :     1 : False : False : Binary
         ('C3', 6) :     0 :                   1.0 :     1 : False : False : Binary
         ('C3', 7) :     0 :                   1.0 :     1 : False : False : Binary
         ('C3', 8) :     0 :                   0.0 :     1 : False : False : Binary
         ('C3', 9) :     0 :                   0.0 :     1 : False : False : Binary
        ('C3', 10) :     0 :                   1.0 :     1 : False : False : Binary
        ('C3', 11) :     0 :                   1.0 :     1 : False : False : Binary
        ('C3', 12) :     0 :                   1.0 :     1 : False : False : Binary
        ('C3', 13) :     0 :                   0.0 :     1 : False : False : Binary
         ('D3', 0) :     0 :                   1.0 :     1 : False : False : Binary
         ('D3', 1) :     0 :                   0.0 :     1 : False : False : Binary
         ('D3', 2) :     0 :                   1.0 :     1 : False : False : Binary
         ('D3', 3) :     0 :                   1.0 :     1 : False : False : Binary
         ('D3', 4) :     0 :                   1.0 :     1 : False : False : Binary
         ('D3', 5) :     0 :                   1.0 :     1 : False : False : Binary
         ('D3', 6) :     0 :                   0.0 :     1 : False : False : Binary
         ('D3', 7) :     0 :                   0.0 :     1 : False : False : Binary
         ('D3', 8) :     0 :                   1.0 :     1 : False : False : Binary
         ('D3', 9) :     0 :                   1.0 :     1 : False : False : Binary
        ('D3', 10) :     0 :                   1.0 :     1 : False : False : Binary
        ('D3', 11) :     0 :                   0.0 :     1 : False : False : Binary
        ('D3', 12) :     0 :                   0.0 :     1 : False : False : Binary
        ('D3', 13) :     0 :                   0.0 :     1 : False : False : Binary
         ('E3', 0) :     0 :                   1.0 :     1 : False : False : Binary
         ('E3', 1) :     0 :                   1.0 :     1 : False : False : Binary
         ('E3', 2) :     0 :                   1.0 :     1 : False : False : Binary
         ('E3', 3) :     0 :                   1.0 :     1 : False : False : Binary
         ('E3', 4) :     0 :                   0.0 :     1 : False : False : Binary
         ('E3', 5) :     0 :                   0.0 :     1 : False : False : Binary
         ('E3', 6) :     0 :                   0.0 :     1 : False : False : Binary
         ('E3', 7) :     0 :                   0.0 :     1 : False : False : Binary
         ('E3', 8) :     0 :                   0.0 :     1 : False : False : Binary
         ('E3', 9) :     0 :                   0.0 :     1 : False : False : Binary
        ('E3', 10) :     0 :                   1.0 :     1 : False : False : Binary
        ('E3', 11) :     0 :                   1.0 :     1 : False : False : Binary
        ('E3', 12) :     0 :                   1.0 :     1 : False : False : Binary
        ('E3', 13) :     0 :                   0.0 :     1 : False : False : Binary
         ('F3', 0) :     0 :                   1.0 :     1 : False : False : Binary
         ('F3', 1) :     0 :                   0.0 :     1 : False : False : Binary
         ('F3', 2) :     0 :                   1.0 :     1 : False : False : Binary
         ('F3', 3) :     0 :                   1.0 :     1 : False : False : Binary
         ('F3', 4) :     0 :                   1.0 :     1 : False : False : Binary
         ('F3', 5) :     0 :                   1.0 :     1 : False : False : Binary
         ('F3', 6) :     0 :                   0.0 :     1 : False : False : Binary
         ('F3', 7) :     0 :                   0.0 :     1 : False : False : Binary
         ('F3', 8) :     0 :                   1.0 :     1 : False : False : Binary
         ('F3', 9) :     0 :                   1.0 :     1 : False : False : Binary
        ('F3', 10) :     0 :                   1.0 :     1 : False : False : Binary
        ('F3', 11) :     0 :                   0.0 :     1 : False : False : Binary
        ('F3', 12) :     0 :                   0.0 :     1 : False : False : Binary
        ('F3', 13) :     0 :                   0.0 :     1 : False : False : Binary
         ('G3', 0) :     0 :                   1.0 :     1 : False : False : Binary
         ('G3', 1) :     0 :                   1.0 :     1 : False : False : Binary
         ('G3', 2) :     0 :                   1.0 :     1 : False : False : Binary
         ('G3', 3) :     0 :                   1.0 :     1 : False : False : Binary
         ('G3', 4) :     0 :                   0.0 :     1 : False : False : Binary
         ('G3', 5) :     0 :                   0.0 :     1 : False : False : Binary
         ('G3', 6) :     0 :                   1.0 :     1 : False : False : Binary
         ('G3', 7) :     0 :                   1.0 :     1 : False : False : Binary
         ('G3', 8) :     0 :                   1.0 :     1 : False : False : Binary
         ('G3', 9) :     0 :                   0.0 :     1 : False : False : Binary
        ('G3', 10) :     0 :                   0.0 :     1 : False : False : Binary
        ('G3', 11) :     0 :                   1.0 :     1 : False : False : Binary
        ('G3', 12) :     0 :                   1.0 :     1 : False : False : Binary
        ('G3', 13) :     0 :                   0.0 :     1 : False : False : Binary
         ('H3', 0) :     0 :                   1.0 :     1 : False : False : Binary
         ('H3', 1) :     0 :                   0.0 :     1 : False : False : Binary
         ('H3', 2) :     0 :                   0.0 :     1 : False : False : Binary
         ('H3', 3) :     0 :                   1.0 :     1 : False : False : Binary
         ('H3', 4) :     0 :                   1.0 :     1 : False : False : Binary
         ('H3', 5) :     0 :                   1.0 :     1 : False : False : Binary
         ('H3', 6) :     0 :                   1.0 :     1 : False : False : Binary
         ('H3', 7) :     0 :                   1.0 :     1 : False : False : Binary
         ('H3', 8) :     0 :                   0.0 :     1 : False : False : Binary
         ('H3', 9) :     0 :                   0.0 :     1 : False : False : Binary
        ('H3', 10) :     0 :                   1.0 :     1 : False : False : Binary
        ('H3', 11) :     0 :                   1.0 :     1 : False : False : Binary
        ('H3', 12) :     0 :                   1.0 :     1 : False : False : Binary
        ('H3', 13) :     0 :                   0.0 :     1 : False : False : Binary
         ('I3', 0) :     0 :                   1.0 :     1 : False : False : Binary
         ('I3', 1) :     0 :                   1.0 :     1 : False : False : Binary
         ('I3', 2) :     0 :                   1.0 :     1 : False : False : Binary
         ('I3', 3) :     0 :                   1.0 :     1 : False : False : Binary
         ('I3', 4) :     0 :                   1.0 :     1 : False : False : Binary
         ('I3', 5) :     0 :                   0.0 :     1 : False : False : Binary
         ('I3', 6) :     0 :                   0.0 :     1 : False : False : Binary
         ('I3', 7) :     0 :                   0.0 :     1 : False : False : Binary
         ('I3', 8) :     0 :                   1.0 :     1 : False : False : Binary
         ('I3', 9) :     0 :                   1.0 :     1 : False : False : Binary
        ('I3', 10) :     0 :                   1.0 :     1 : False : False : Binary
        ('I3', 11) :     0 :                   0.0 :     1 : False : False : Binary
        ('I3', 12) :     0 :                   0.0 :     1 : False : False : Binary
        ('I3', 13) :     0 :                   0.0 :     1 : False : False : Binary
         ('J3', 0) :     0 :                   1.0 :     1 : False : False : Binary
         ('J3', 1) :     0 :                   1.0 :     1 : False : False : Binary
         ('J3', 2) :     0 :                   0.0 :     1 : False : False : Binary
         ('J3', 3) :     0 :                   0.0 :     1 : False : False : Binary
         ('J3', 4) :     0 :                   1.0 :     1 : False : False : Binary
         ('J3', 5) :     0 :                   1.0 :     1 : False : False : Binary
         ('J3', 6) :     0 :                   0.0 :     1 : False : False : Binary
         ('J3', 7) :     0 :                   0.0 :     1 : False : False : Binary
         ('J3', 8) :     0 :                   1.0 :     1 : False : False : Binary
         ('J3', 9) :     0 :                   1.0 :     1 : False : False : Binary
        ('J3', 10) :     0 :                   1.0 :     1 : False : False : Binary
        ('J3', 11) :     0 :                   0.0 :     1 : False : False : Binary
        ('J3', 12) :     0 :                   0.0 :     1 : False : False : Binary
        ('J3', 13) :     0 :                   0.0 :     1 : False : False : Binary
         ('K3', 0) :     0 :                   1.0 :     1 : False : False : Binary
         ('K3', 1) :     0 :                   1.0 :     1 : False : False : Binary
         ('K3', 2) :     0 :                   1.0 :     1 : False : False : Binary
         ('K3', 3) :     0 :                   0.0 :     1 : False : False : Binary
         ('K3', 4) :     0 :                   0.0 :     1 : False : False : Binary
         ('K3', 5) :     0 :                   0.0 :     1 : False : False : Binary
         ('K3', 6) :     0 :                   1.0 :     1 : False : False : Binary
         ('K3', 7) :     0 :                   1.0 :     1 : False : False : Binary
         ('K3', 8) :     0 :                   1.0 :     1 : False : False : Binary
         ('K3', 9) :     0 :                   1.0 :     1 : False : False : Binary
        ('K3', 10) :     0 :                   1.0 :     1 : False : False : Binary
        ('K3', 11) :     0 :                   1.0 :     1 : False : False : Binary
        ('K3', 12) :     0 :                   0.0 :     1 : False : False : Binary
        ('K3', 13) :     0 :                   0.0 :     1 : False : False : Binary
         ('L3', 0) :     0 :                   1.0 :     1 : False : False : Binary
         ('L3', 1) :     0 :                   1.0 :     1 : False : False : Binary
         ('L3', 2) :     0 :                   1.0 :     1 : False : False : Binary
         ('L3', 3) :     0 :                   0.0 :     1 : False : False : Binary
         ('L3', 4) :     0 :                   0.0 :     1 : False : False : Binary
         ('L3', 5) :     0 :                   0.0 :     1 : False : False : Binary
         ('L3', 6) :     0 :                   1.0 :     1 : False : False : Binary
         ('L3', 7) :     0 :                   1.0 :     1 : False : False : Binary
         ('L3', 8) :     0 :                   1.0 :     1 : False : False : Binary
         ('L3', 9) :     0 :                   1.0 :     1 : False : False : Binary
        ('L3', 10) :     0 :                   1.0 :     1 : False : False : Binary
        ('L3', 11) :     0 :                   1.0 :     1 : False : False : Binary
        ('L3', 12) :     0 :                   0.0 :     1 : False : False : Binary
        ('L3', 13) :     0 :                   0.0 :     1 : False : False : Binary
         ('M3', 0) :     0 :                   1.0 :     1 : False : False : Binary
         ('M3', 1) :     0 :                   0.0 :     1 : False : False : Binary
         ('M3', 2) :     0 :                   0.0 :     1 : False : False : Binary
         ('M3', 3) :     0 :                   1.0 :     1 : False : False : Binary
         ('M3', 4) :     0 :                   1.0 :     1 : False : False : Binary
         ('M3', 5) :     0 :                   1.0 :     1 : False : False : Binary
         ('M3', 6) :     0 :                   0.0 :     1 : False : False : Binary
         ('M3', 7) :     0 :                   0.0 :     1 : False : False : Binary
         ('M3', 8) :     0 :                   0.0 :     1 : False : False : Binary
         ('M3', 9) :     0 :                   1.0 :     1 : False : False : Binary
        ('M3', 10) :     0 :                   1.0 :     1 : False : False : Binary
        ('M3', 11) :     0 :                   1.0 :     1 : False : False : Binary
        ('M3', 12) :     0 :                   1.0 :     1 : False : False : Binary
        ('M3', 13) :     0 :                   0.0 :     1 : False : False : Binary
         ('N3', 0) :     0 :                   1.0 :     1 : False : False : Binary
         ('N3', 1) :     0 : 2.220446049250313e-16 :     1 : False : False : Binary
         ('N3', 2) :     0 :                   1.0 :     1 : False : False : Binary
         ('N3', 3) :     0 :                   1.0 :     1 : False : False : Binary
         ('N3', 4) :     0 :                   1.0 :     1 : False : False : Binary
         ('N3', 5) :     0 :                   1.0 :     1 : False : False : Binary
         ('N3', 6) :     0 :                   1.0 :     1 : False : False : Binary
         ('N3', 7) :     0 :                   1.0 :     1 : False : False : Binary
         ('N3', 8) :     0 :                   0.0 :     1 : False : False : Binary
         ('N3', 9) :     0 :                   0.0 :     1 : False : False : Binary
        ('N3', 10) :     0 :                   0.0 :     1 : False : False : Binary
        ('N3', 11) :     0 :                   1.0 :     1 : False : False : Binary
        ('N3', 12) :     0 :                   1.0 :     1 : False : False : Binary
        ('N3', 13) :     0 :                   0.0 :     1 : False : False : Binary
         ('O3', 0) :     0 :                   1.0 :     1 : False : False : Binary
         ('O3', 1) :     0 :                   1.0 :     1 : False : False : Binary
         ('O3', 2) :     0 :                   0.0 :     1 : False : False : Binary
         ('O3', 3) :     0 :                   0.0 :     1 : False : False : Binary
         ('O3', 4) :     0 :                   0.0 :     1 : False : False : Binary
         ('O3', 5) :     0 :                   1.0 :     1 : False : False : Binary
         ('O3', 6) :     0 :                   1.0 :     1 : False : False : Binary
         ('O3', 7) :     0 :                   1.0 :     1 : False : False : Binary
         ('O3', 8) :     0 :                   1.0 :     1 : False : False : Binary
         ('O3', 9) :     0 :                   1.0 :     1 : False : False : Binary
        ('O3', 10) :     0 :                   1.0 :     1 : False : False : Binary
        ('O3', 11) :     0 :                   0.0 :     1 : False : False : Binary
        ('O3', 12) :     0 :                   0.0 :     1 : False : False : Binary
        ('O3', 13) :     0 :                   0.0 :     1 : False : False : Binary
         ('P3', 0) :     0 :                  None :     1 : False :  True : Binary
         ('P3', 1) :     0 :                  None :     1 : False :  True : Binary
         ('P3', 2) :     0 :                  None :     1 : False :  True : Binary
         ('P3', 3) :     0 :                  None :     1 : False :  True : Binary
         ('P3', 4) :     0 :                  None :     1 : False :  True : Binary
         ('P3', 5) :     0 :                  None :     1 : False :  True : Binary
         ('P3', 6) :     0 :                  None :     1 : False :  True : Binary
         ('P3', 7) :     0 :                  None :     1 : False :  True : Binary
         ('P3', 8) :     0 :                  None :     1 : False :  True : Binary
         ('P3', 9) :     0 :                  None :     1 : False :  True : Binary
        ('P3', 10) :     0 :                  None :     1 : False :  True : Binary
        ('P3', 11) :     0 :                  None :     1 : False :  True : Binary
        ('P3', 12) :     0 :                  None :     1 : False :  True : Binary
        ('P3', 13) :     0 :                  None :     1 : False :  True : Binary
         ('Q3', 0) :     0 :                  None :     1 : False :  True : Binary
         ('Q3', 1) :     0 :                  None :     1 : False :  True : Binary
         ('Q3', 2) :     0 :                  None :     1 : False :  True : Binary
         ('Q3', 3) :     0 :                  None :     1 : False :  True : Binary
         ('Q3', 4) :     0 :                  None :     1 : False :  True : Binary
         ('Q3', 5) :     0 :                  None :     1 : False :  True : Binary
         ('Q3', 6) :     0 :                  None :     1 : False :  True : Binary
         ('Q3', 7) :     0 :                  None :     1 : False :  True : Binary
         ('Q3', 8) :     0 :                  None :     1 : False :  True : Binary
         ('Q3', 9) :     0 :                  None :     1 : False :  True : Binary
        ('Q3', 10) :     0 :                  None :     1 : False :  True : Binary
        ('Q3', 11) :     0 :                  None :     1 : False :  True : Binary
        ('Q3', 12) :     0 :                  None :     1 : False :  True : Binary
        ('Q3', 13) :     0 :                  None :     1 : False :  True : Binary
         ('R3', 0) :     0 :                  None :     1 : False :  True : Binary
         ('R3', 1) :     0 :                  None :     1 : False :  True : Binary
         ('R3', 2) :     0 :                  None :     1 : False :  True : Binary
         ('R3', 3) :     0 :                  None :     1 : False :  True : Binary
         ('R3', 4) :     0 :                  None :     1 : False :  True : Binary
         ('R3', 5) :     0 :                  None :     1 : False :  True : Binary
         ('R3', 6) :     0 :                  None :     1 : False :  True : Binary
         ('R3', 7) :     0 :                  None :     1 : False :  True : Binary
         ('R3', 8) :     0 :                  None :     1 : False :  True : Binary
         ('R3', 9) :     0 :                  None :     1 : False :  True : Binary
        ('R3', 10) :     0 :                  None :     1 : False :  True : Binary
        ('R3', 11) :     0 :                  None :     1 : False :  True : Binary
        ('R3', 12) :     0 :                  None :     1 : False :  True : Binary
        ('R3', 13) :     0 :                  None :     1 : False :  True : Binary
         ('S3', 0) :     0 :                  None :     1 : False :  True : Binary
         ('S3', 1) :     0 :                  None :     1 : False :  True : Binary
         ('S3', 2) :     0 :                  None :     1 : False :  True : Binary
         ('S3', 3) :     0 :                  None :     1 : False :  True : Binary
         ('S3', 4) :     0 :                  None :     1 : False :  True : Binary
         ('S3', 5) :     0 :                  None :     1 : False :  True : Binary
         ('S3', 6) :     0 :                  None :     1 : False :  True : Binary
         ('S3', 7) :     0 :                  None :     1 : False :  True : Binary
         ('S3', 8) :     0 :                  None :     1 : False :  True : Binary
         ('S3', 9) :     0 :                  None :     1 : False :  True : Binary
        ('S3', 10) :     0 :                  None :     1 : False :  True : Binary
        ('S3', 11) :     0 :                  None :     1 : False :  True : Binary
        ('S3', 12) :     0 :                  None :     1 : False :  True : Binary
        ('S3', 13) :     0 :                  None :     1 : False :  True : Binary
         ('T3', 0) :     0 :                  None :     1 : False :  True : Binary
         ('T3', 1) :     0 :                  None :     1 : False :  True : Binary
         ('T3', 2) :     0 :                  None :     1 : False :  True : Binary
         ('T3', 3) :     0 :                  None :     1 : False :  True : Binary
         ('T3', 4) :     0 :                  None :     1 : False :  True : Binary
         ('T3', 5) :     0 :                  None :     1 : False :  True : Binary
         ('T3', 6) :     0 :                  None :     1 : False :  True : Binary
         ('T3', 7) :     0 :                  None :     1 : False :  True : Binary
         ('T3', 8) :     0 :                  None :     1 : False :  True : Binary
         ('T3', 9) :     0 :                  None :     1 : False :  True : Binary
        ('T3', 10) :     0 :                  None :     1 : False :  True : Binary
        ('T3', 11) :     0 :                  None :     1 : False :  True : Binary
        ('T3', 12) :     0 :                  None :     1 : False :  True : Binary
        ('T3', 13) :     0 :                  None :     1 : False :  True : Binary
    IsEndOfRestBlock : Size=280, Index=NURSES*DAYS
        Key        : Lower : Value              : Upper : Fixed : Stale : Domain
         ('A3', 0) :     0 :                1.0 :     1 : False : False : Binary
         ('A3', 1) :     0 :                1.0 :     1 : False : False : Binary
         ('A3', 2) :     0 :                1.0 :     1 : False : False : Binary
         ('A3', 3) :     0 :                0.0 :     1 : False : False : Binary
         ('A3', 4) :     0 :                0.0 :     1 : False : False : Binary
         ('A3', 5) :     0 :                0.0 :     1 : False : False : Binary
         ('A3', 6) :     0 :                1.0 :     1 : False : False : Binary
         ('A3', 7) :     0 :                1.0 :     1 : False : False : Binary
         ('A3', 8) :     0 :                0.0 :     1 : False : False : Binary
         ('A3', 9) :     0 :                0.0 :     1 : False : False : Binary
        ('A3', 10) :     0 :                0.0 :     1 : False : False : Binary
        ('A3', 11) :     0 :                1.0 :     1 : False : False : Binary
        ('A3', 12) :     0 :                1.0 :     1 : False : False : Binary
        ('A3', 13) :     0 :                0.0 :     1 : False : False : Binary
         ('B3', 0) :     0 :                1.0 :     1 : False : False : Binary
         ('B3', 1) :     0 :                1.0 :     1 : False : False : Binary
         ('B3', 2) :     0 :                0.0 :     1 : False : False : Binary
         ('B3', 3) :     0 :                0.0 :     1 : False : False : Binary
         ('B3', 4) :     0 :                0.0 :     1 : False : False : Binary
         ('B3', 5) :     0 :                0.0 :     1 : False : False : Binary
         ('B3', 6) :     0 :                1.0 :     1 : False : False : Binary
         ('B3', 7) :     0 :                1.0 :     1 : False : False : Binary
         ('B3', 8) :     0 :                1.0 :     1 : False : False : Binary
         ('B3', 9) :     0 :                1.0 :     1 : False : False : Binary
        ('B3', 10) :     0 :                0.0 :     1 : False : False : Binary
        ('B3', 11) :     0 :                0.0 :     1 : False : False : Binary
        ('B3', 12) :     0 :                0.0 :     1 : False : False : Binary
        ('B3', 13) :     0 :                0.0 :     1 : False : False : Binary
         ('C3', 0) :     0 :                1.0 :     1 : False : False : Binary
         ('C3', 1) :     0 :                0.0 :     1 : False : False : Binary
         ('C3', 2) :     0 :                1.0 :     1 : False : False : Binary
         ('C3', 3) :     0 :                1.0 :     1 : False : False : Binary
         ('C3', 4) :     0 :                0.0 :     1 : False : False : Binary
         ('C3', 5) :     0 :                0.0 :     1 : False : False : Binary
         ('C3', 6) :     0 :                0.0 :     1 : False : False : Binary
         ('C3', 7) :     0 :                0.0 :     1 : False : False : Binary
         ('C3', 8) :     0 :                1.0 :     1 : False : False : Binary
         ('C3', 9) :     0 :                1.0 :     1 : False : False : Binary
        ('C3', 10) :     0 :                0.0 :     1 : False : False : Binary
        ('C3', 11) :     0 :                0.0 :     1 : False : False : Binary
        ('C3', 12) :     0 :                0.0 :     1 : False : False : Binary
        ('C3', 13) :     0 :                0.0 :     1 : False : False : Binary
         ('D3', 0) :     0 :                1.0 :     1 : False : False : Binary
         ('D3', 1) :     0 :                1.0 :     1 : False : False : Binary
         ('D3', 2) :     0 :                0.0 :     1 : False : False : Binary
         ('D3', 3) :     0 :                0.0 :     1 : False : False : Binary
         ('D3', 4) :     0 :                0.0 :     1 : False : False : Binary
         ('D3', 5) :     0 :                0.0 :     1 : False : False : Binary
         ('D3', 6) :     0 :                1.0 :     1 : False : False : Binary
         ('D3', 7) :     0 :                1.0 :     1 : False : False : Binary
         ('D3', 8) :     0 :                0.0 :     1 : False : False : Binary
         ('D3', 9) :     0 :                0.0 :     1 : False : False : Binary
        ('D3', 10) :     0 :                0.0 :     1 : False : False : Binary
        ('D3', 11) :     0 :                1.0 :     1 : False : False : Binary
        ('D3', 12) :     0 :                1.0 :     1 : False : False : Binary
        ('D3', 13) :     0 :                0.0 :     1 : False : False : Binary
         ('E3', 0) :     0 :                1.0 :     1 : False : False : Binary
         ('E3', 1) :     0 :                0.0 :     1 : False : False : Binary
         ('E3', 2) :     0 :                0.0 :     1 : False : False : Binary
         ('E3', 3) :     0 :                0.0 :     1 : False : False : Binary
         ('E3', 4) :     0 :                1.0 :     1 : False : False : Binary
         ('E3', 5) :     0 :                1.0 :     1 : False : False : Binary
         ('E3', 6) :     0 :                1.0 :     1 : False : False : Binary
         ('E3', 7) :     0 :                1.0 :     1 : False : False : Binary
         ('E3', 8) :     0 :                1.0 :     1 : False : False : Binary
         ('E3', 9) :     0 :                1.0 :     1 : False : False : Binary
        ('E3', 10) :     0 :                0.0 :     1 : False : False : Binary
        ('E3', 11) :     0 :                0.0 :     1 : False : False : Binary
        ('E3', 12) :     0 :                0.0 :     1 : False : False : Binary
        ('E3', 13) :     0 :                0.0 :     1 : False : False : Binary
         ('F3', 0) :     0 :                1.0 :     1 : False : False : Binary
         ('F3', 1) :     0 :                1.0 :     1 : False : False : Binary
         ('F3', 2) :     0 :                0.0 :     1 : False : False : Binary
         ('F3', 3) :     0 :                0.0 :     1 : False : False : Binary
         ('F3', 4) :     0 :                0.0 :     1 : False : False : Binary
         ('F3', 5) :     0 :                0.0 :     1 : False : False : Binary
         ('F3', 6) :     0 :                1.0 :     1 : False : False : Binary
         ('F3', 7) :     0 :                1.0 :     1 : False : False : Binary
         ('F3', 8) :     0 :                0.0 :     1 : False : False : Binary
         ('F3', 9) :     0 :                0.0 :     1 : False : False : Binary
        ('F3', 10) :     0 :                0.0 :     1 : False : False : Binary
        ('F3', 11) :     0 :                1.0 :     1 : False : False : Binary
        ('F3', 12) :     0 :                1.0 :     1 : False : False : Binary
        ('F3', 13) :     0 :                0.0 :     1 : False : False : Binary
         ('G3', 0) :     0 :                1.0 :     1 : False : False : Binary
         ('G3', 1) :     0 :                0.0 :     1 : False : False : Binary
         ('G3', 2) :     0 :                0.0 :     1 : False : False : Binary
         ('G3', 3) :     0 :                0.0 :     1 : False : False : Binary
         ('G3', 4) :     0 :                1.0 :     1 : False : False : Binary
         ('G3', 5) :     0 :                1.0 :     1 : False : False : Binary
         ('G3', 6) :     0 :                0.0 :     1 : False : False : Binary
         ('G3', 7) :     0 :                0.0 :     1 : False : False : Binary
         ('G3', 8) :     0 :                0.0 :     1 : False : False : Binary
         ('G3', 9) :     0 :                1.0 :     1 : False : False : Binary
        ('G3', 10) :     0 :                1.0 :     1 : False : False : Binary
        ('G3', 11) :     0 :                0.0 :     1 : False : False : Binary
        ('G3', 12) :     0 :                0.0 :     1 : False : False : Binary
        ('G3', 13) :     0 :                0.0 :     1 : False : False : Binary
         ('H3', 0) :     0 :                1.0 :     1 : False : False : Binary
         ('H3', 1) :     0 :                1.0 :     1 : False : False : Binary
         ('H3', 2) :     0 :                1.0 :     1 : False : False : Binary
         ('H3', 3) :     0 :                0.0 :     1 : False : False : Binary
         ('H3', 4) :     0 :                0.0 :     1 : False : False : Binary
         ('H3', 5) :     0 :                0.0 :     1 : False : False : Binary
         ('H3', 6) :     0 :                0.0 :     1 : False : False : Binary
         ('H3', 7) :     0 :                0.0 :     1 : False : False : Binary
         ('H3', 8) :     0 :                1.0 :     1 : False : False : Binary
         ('H3', 9) :     0 :                1.0 :     1 : False : False : Binary
        ('H3', 10) :     0 :                0.0 :     1 : False : False : Binary
        ('H3', 11) :     0 :                0.0 :     1 : False : False : Binary
        ('H3', 12) :     0 :                0.0 :     1 : False : False : Binary
        ('H3', 13) :     0 :                0.0 :     1 : False : False : Binary
         ('I3', 0) :     0 :                1.0 :     1 : False : False : Binary
         ('I3', 1) :     0 :                0.0 :     1 : False : False : Binary
         ('I3', 2) :     0 :                0.0 :     1 : False : False : Binary
         ('I3', 3) :     0 :                0.0 :     1 : False : False : Binary
         ('I3', 4) :     0 :                0.0 :     1 : False : False : Binary
         ('I3', 5) :     0 :                1.0 :     1 : False : False : Binary
         ('I3', 6) :     0 :                1.0 :     1 : False : False : Binary
         ('I3', 7) :     0 :                1.0 :     1 : False : False : Binary
         ('I3', 8) :     0 :                0.0 :     1 : False : False : Binary
         ('I3', 9) :     0 :                0.0 :     1 : False : False : Binary
        ('I3', 10) :     0 :                0.0 :     1 : False : False : Binary
        ('I3', 11) :     0 :                1.0 :     1 : False : False : Binary
        ('I3', 12) :     0 :                1.0 :     1 : False : False : Binary
        ('I3', 13) :     0 :                0.0 :     1 : False : False : Binary
         ('J3', 0) :     0 :                1.0 :     1 : False : False : Binary
         ('J3', 1) :     0 :                0.0 :     1 : False : False : Binary
         ('J3', 2) :     0 :                1.0 :     1 : False : False : Binary
         ('J3', 3) :     0 :                1.0 :     1 : False : False : Binary
         ('J3', 4) :     0 :                0.0 :     1 : False : False : Binary
         ('J3', 5) :     0 :                0.0 :     1 : False : False : Binary
         ('J3', 6) :     0 :                1.0 :     1 : False : False : Binary
         ('J3', 7) :     0 :                1.0 :     1 : False : False : Binary
         ('J3', 8) :     0 :                0.0 :     1 : False : False : Binary
         ('J3', 9) :     0 :                0.0 :     1 : False : False : Binary
        ('J3', 10) :     0 :                0.0 :     1 : False : False : Binary
        ('J3', 11) :     0 :                1.0 :     1 : False : False : Binary
        ('J3', 12) :     0 :                1.0 :     1 : False : False : Binary
        ('J3', 13) :     0 :                0.0 :     1 : False : False : Binary
         ('K3', 0) :     0 :                1.0 :     1 : False : False : Binary
         ('K3', 1) :     0 :                0.0 :     1 : False : False : Binary
         ('K3', 2) :     0 :                0.0 :     1 : False : False : Binary
         ('K3', 3) :     0 :                0.0 :     1 : False : False : Binary
         ('K3', 4) :     0 :                1.0 :     1 : False : False : Binary
         ('K3', 5) :     0 :                1.0 :     1 : False : False : Binary
         ('K3', 6) :     0 :                0.0 :     1 : False : False : Binary
         ('K3', 7) :     0 :               -0.0 :     1 : False : False : Binary
         ('K3', 8) :     0 :                0.0 :     1 : False : False : Binary
         ('K3', 9) :     0 :               -0.0 :     1 : False : False : Binary
        ('K3', 10) :     0 :               -0.0 :     1 : False : False : Binary
        ('K3', 11) :     0 :               -0.0 :     1 : False : False : Binary
        ('K3', 12) :     0 :               -0.0 :     1 : False : False : Binary
        ('K3', 13) :     0 :                0.0 :     1 : False : False : Binary
         ('L3', 0) :     0 :                1.0 :     1 : False : False : Binary
         ('L3', 1) :     0 :                0.0 :     1 : False : False : Binary
         ('L3', 2) :     0 :                0.0 :     1 : False : False : Binary
         ('L3', 3) :     0 :                0.0 :     1 : False : False : Binary
         ('L3', 4) :     0 :                1.0 :     1 : False : False : Binary
         ('L3', 5) :     0 :                1.0 :     1 : False : False : Binary
         ('L3', 6) :     0 :                0.0 :     1 : False : False : Binary
         ('L3', 7) :     0 :               -0.0 :     1 : False : False : Binary
         ('L3', 8) :     0 :               -0.0 :     1 : False : False : Binary
         ('L3', 9) :     0 :               -0.0 :     1 : False : False : Binary
        ('L3', 10) :     0 :                0.0 :     1 : False : False : Binary
        ('L3', 11) :     0 :               -0.0 :     1 : False : False : Binary
        ('L3', 12) :     0 :                0.0 :     1 : False : False : Binary
        ('L3', 13) :     0 :                0.0 :     1 : False : False : Binary
         ('M3', 0) :     0 :                1.0 :     1 : False : False : Binary
         ('M3', 1) :     0 :                1.0 :     1 : False : False : Binary
         ('M3', 2) :     0 :                1.0 :     1 : False : False : Binary
         ('M3', 3) :     0 :                0.0 :     1 : False : False : Binary
         ('M3', 4) :     0 :               -0.0 :     1 : False : False : Binary
         ('M3', 5) :     0 :                0.0 :     1 : False : False : Binary
         ('M3', 6) :     0 :                0.0 :     1 : False : False : Binary
         ('M3', 7) :     0 :                1.0 :     1 : False : False : Binary
         ('M3', 8) :     0 :                1.0 :     1 : False : False : Binary
         ('M3', 9) :     0 :               -0.0 :     1 : False : False : Binary
        ('M3', 10) :     0 :                0.0 :     1 : False : False : Binary
        ('M3', 11) :     0 :               -0.0 :     1 : False : False : Binary
        ('M3', 12) :     0 :                0.0 :     1 : False : False : Binary
        ('M3', 13) :     0 :                0.0 :     1 : False : False : Binary
         ('N3', 0) :     0 :                1.0 :     1 : False : False : Binary
         ('N3', 1) :     0 : 0.9999999999999998 :     1 : False : False : Binary
         ('N3', 2) :     0 :                0.0 :     1 : False : False : Binary
         ('N3', 3) :     0 :               -0.0 :     1 : False : False : Binary
         ('N3', 4) :     0 :               -0.0 :     1 : False : False : Binary
         ('N3', 5) :     0 :                0.0 :     1 : False : False : Binary
         ('N3', 6) :     0 :                0.0 :     1 : False : False : Binary
         ('N3', 7) :     0 :                0.0 :     1 : False : False : Binary
         ('N3', 8) :     0 :                0.0 :     1 : False : False : Binary
         ('N3', 9) :     0 :                1.0 :     1 : False : False : Binary
        ('N3', 10) :     0 :                1.0 :     1 : False : False : Binary
        ('N3', 11) :     0 :               -0.0 :     1 : False : False : Binary
        ('N3', 12) :     0 :               -0.0 :     1 : False : False : Binary
        ('N3', 13) :     0 :                0.0 :     1 : False : False : Binary
         ('O3', 0) :     0 :                1.0 :     1 : False : False : Binary
         ('O3', 1) :     0 :                0.0 :     1 : False : False : Binary
         ('O3', 2) :     0 :                0.0 :     1 : False : False : Binary
         ('O3', 3) :     0 :                1.0 :     1 : False : False : Binary
         ('O3', 4) :     0 :                1.0 :     1 : False : False : Binary
         ('O3', 5) :     0 :                0.0 :     1 : False : False : Binary
         ('O3', 6) :     0 :                0.0 :     1 : False : False : Binary
         ('O3', 7) :     0 :                0.0 :     1 : False : False : Binary
         ('O3', 8) :     0 :                0.0 :     1 : False : False : Binary
         ('O3', 9) :     0 :                0.0 :     1 : False : False : Binary
        ('O3', 10) :     0 :               -0.0 :     1 : False : False : Binary
        ('O3', 11) :     0 :               -0.0 :     1 : False : False : Binary
        ('O3', 12) :     0 :                0.0 :     1 : False : False : Binary
        ('O3', 13) :     0 :                0.0 :     1 : False : False : Binary
         ('P3', 0) :     0 :                1.0 :     1 : False : False : Binary
         ('P3', 1) :     0 :                1.0 :     1 : False : False : Binary
         ('P3', 2) :     0 :                1.0 :     1 : False : False : Binary
         ('P3', 3) :     0 :                1.0 :     1 : False : False : Binary
         ('P3', 4) :     0 :                1.0 :     1 : False : False : Binary
         ('P3', 5) :     0 :                1.0 :     1 : False : False : Binary
         ('P3', 6) :     0 :                0.0 :     1 : False : False : Binary
         ('P3', 7) :     0 :                0.0 :     1 : False : False : Binary
         ('P3', 8) :     0 :                0.0 :     1 : False : False : Binary
         ('P3', 9) :     0 :                1.0 :     1 : False : False : Binary
        ('P3', 10) :     0 :                1.0 :     1 : False : False : Binary
        ('P3', 11) :     0 :                1.0 :     1 : False : False : Binary
        ('P3', 12) :     0 :                0.0 :     1 : False : False : Binary
        ('P3', 13) :     0 :                0.0 :     1 : False : False : Binary
         ('Q3', 0) :     0 :                1.0 :     1 : False : False : Binary
         ('Q3', 1) :     0 :                1.0 :     1 : False : False : Binary
         ('Q3', 2) :     0 :                1.0 :     1 : False : False : Binary
         ('Q3', 3) :     0 :                0.0 :     1 : False : False : Binary
         ('Q3', 4) :     0 :                1.0 :     1 : False : False : Binary
         ('Q3', 5) :     0 :                1.0 :     1 : False : False : Binary
         ('Q3', 6) :     0 :                1.0 :     1 : False : False : Binary
         ('Q3', 7) :     0 :                1.0 :     1 : False : False : Binary
         ('Q3', 8) :     0 :                0.0 :     1 : False : False : Binary
         ('Q3', 9) :     0 :                1.0 :     1 : False : False : Binary
        ('Q3', 10) :     0 :                1.0 :     1 : False : False : Binary
        ('Q3', 11) :     0 :                1.0 :     1 : False : False : Binary
        ('Q3', 12) :     0 :                1.0 :     1 : False : False : Binary
        ('Q3', 13) :     0 :                0.0 :     1 : False : False : Binary
         ('R3', 0) :     0 :                1.0 :     1 : False : False : Binary
         ('R3', 1) :     0 :                1.0 :     1 : False : False : Binary
         ('R3', 2) :     0 :                1.0 :     1 : False : False : Binary
         ('R3', 3) :     0 :                1.0 :     1 : False : False : Binary
         ('R3', 4) :     0 :                1.0 :     1 : False : False : Binary
         ('R3', 5) :     0 :                1.0 :     1 : False : False : Binary
         ('R3', 6) :     0 :                1.0 :     1 : False : False : Binary
         ('R3', 7) :     0 :                1.0 :     1 : False : False : Binary
         ('R3', 8) :     0 :                0.0 :     1 : False : False : Binary
         ('R3', 9) :     0 :                1.0 :     1 : False : False : Binary
        ('R3', 10) :     0 :                1.0 :     1 : False : False : Binary
        ('R3', 11) :     0 :                1.0 :     1 : False : False : Binary
        ('R3', 12) :     0 :                0.0 :     1 : False : False : Binary
        ('R3', 13) :     0 :                0.0 :     1 : False : False : Binary
         ('S3', 0) :     0 :                1.0 :     1 : False : False : Binary
         ('S3', 1) :     0 :                1.0 :     1 : False : False : Binary
         ('S3', 2) :     0 :                0.0 :     1 : False : False : Binary
         ('S3', 3) :     0 :                1.0 :     1 : False : False : Binary
         ('S3', 4) :     0 :                1.0 :     1 : False : False : Binary
         ('S3', 5) :     0 :                1.0 :     1 : False : False : Binary
         ('S3', 6) :     0 :                0.0 :     1 : False : False : Binary
         ('S3', 7) :     0 :                0.0 :     1 : False : False : Binary
         ('S3', 8) :     0 :                0.0 :     1 : False : False : Binary
         ('S3', 9) :     0 :                1.0 :     1 : False : False : Binary
        ('S3', 10) :     0 :                1.0 :     1 : False : False : Binary
        ('S3', 11) :     0 :                1.0 :     1 : False : False : Binary
        ('S3', 12) :     0 :                1.0 :     1 : False : False : Binary
        ('S3', 13) :     0 :                0.0 :     1 : False : False : Binary
         ('T3', 0) :     0 :                1.0 :     1 : False : False : Binary
         ('T3', 1) :     0 :                1.0 :     1 : False : False : Binary
         ('T3', 2) :     0 :                1.0 :     1 : False : False : Binary
         ('T3', 3) :     0 :                1.0 :     1 : False : False : Binary
         ('T3', 4) :     0 :                0.0 :     1 : False : False : Binary
         ('T3', 5) :     0 :                0.0 :     1 : False : False : Binary
         ('T3', 6) :     0 :                0.0 :     1 : False : False : Binary
         ('T3', 7) :     0 :                0.0 :     1 : False : False : Binary
         ('T3', 8) :     0 :                1.0 :     1 : False : False : Binary
         ('T3', 9) :     0 :                1.0 :     1 : False : False : Binary
        ('T3', 10) :     0 :                1.0 :     1 : False : False : Binary
        ('T3', 11) :     0 :                1.0 :     1 : False : False : Binary
        ('T3', 12) :     0 :                1.0 :     1 : False : False : Binary
        ('T3', 13) :     0 :                0.0 :     1 : False : False : Binary
    HasWeekendWork : Size=40, Index=NURSES*WEEKS
        Key       : Lower : Value : Upper : Fixed : Stale : Domain
        ('A3', 0) :     0 :   0.0 :     1 : False : False : Binary
        ('A3', 1) :     0 :   1.0 :     1 : False : False : Binary
        ('B3', 0) :     0 :   0.0 :     1 : False : False : Binary
        ('B3', 1) :     0 :   1.0 :     1 : False : False : Binary
        ('C3', 0) :     0 :   1.0 :     1 : False : False : Binary
        ('C3', 1) :     0 :   0.0 :     1 : False : False : Binary
        ('D3', 0) :     0 :   0.0 :     1 : False : False : Binary
        ('D3', 1) :     0 :   1.0 :     1 : False : False : Binary
        ('E3', 0) :     0 :   0.0 :     1 : False : False : Binary
        ('E3', 1) :     0 :   1.0 :     1 : False : False : Binary
        ('F3', 0) :     0 :   0.0 :     1 : False : False : Binary
        ('F3', 1) :     0 :   1.0 :     1 : False : False : Binary
        ('G3', 0) :     0 :   1.0 :     1 : False : False : Binary
        ('G3', 1) :     0 :   0.0 :     1 : False : False : Binary
        ('H3', 0) :     0 :   1.0 :     1 : False : False : Binary
        ('H3', 1) :     0 :   0.0 :     1 : False : False : Binary
        ('I3', 0) :     0 :   0.0 :     1 : False : False : Binary
        ('I3', 1) :     0 :   1.0 :     1 : False : False : Binary
        ('J3', 0) :     0 :   0.0 :     1 : False : False : Binary
        ('J3', 1) :     0 :   1.0 :     1 : False : False : Binary
        ('K3', 0) :     0 :   1.0 :     1 : False : False : Binary
        ('K3', 1) :     0 :   0.0 :     1 : False : False : Binary
        ('L3', 0) :     0 :   1.0 :     1 : False : False : Binary
        ('L3', 1) :     0 :   0.0 :     1 : False : False : Binary
        ('M3', 0) :     0 :   0.0 :     1 : False : False : Binary
        ('M3', 1) :     0 :   1.0 :     1 : False : False : Binary
        ('N3', 0) :     0 :   1.0 :     1 : False : False : Binary
        ('N3', 1) :     0 :   0.0 :     1 : False : False : Binary
        ('O3', 0) :     0 :   1.0 :     1 : False : False : Binary
        ('O3', 1) :     0 :   0.0 :     1 : False : False : Binary
        ('P3', 0) :     0 :   1.0 :     1 : False : False : Binary
        ('P3', 1) :     0 :   0.0 :     1 : False : False : Binary
        ('Q3', 0) :     0 :   0.0 :     1 : False : False : Binary
        ('Q3', 1) :     0 :   1.0 :     1 : False : False : Binary
        ('R3', 0) :     0 :   0.0 :     1 : False : False : Binary
        ('R3', 1) :     0 :   1.0 :     1 : False : False : Binary
        ('S3', 0) :     0 :   1.0 :     1 : False : False : Binary
        ('S3', 1) :     0 :   0.0 :     1 : False : False : Binary
        ('T3', 0) :     0 :   1.0 :     1 : False : False : Binary
        ('T3', 1) :     0 :   0.0 :     1 : False : False : Binary
    PenaltyShiftOnReq : Size=840, Index=SHIFTTYPES*NURSES*DAYS
        Key              : Lower : Value : Upper : Fixed : Stale : Domain
         ('D3', 'A3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'A3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'A3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'A3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'A3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'A3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'A3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'A3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'A3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'A3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'A3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'A3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'A3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'A3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'B3', 0) :     0 :   1.0 :  None : False : False : NonNegativeReals
         ('D3', 'B3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'B3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'B3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'B3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'B3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'B3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'B3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'B3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'B3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'B3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'B3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'B3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'B3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'C3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'C3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'C3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'C3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'C3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'C3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'C3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'C3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'C3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'C3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'C3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'C3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'C3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'C3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'D3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'D3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'D3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'D3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'D3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'D3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'D3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'D3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'D3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'D3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'D3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'D3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'D3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'D3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'E3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'E3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'E3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'E3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'E3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'E3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'E3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'E3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'E3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'E3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'E3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'E3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'E3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'E3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'F3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'F3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'F3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'F3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'F3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'F3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'F3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'F3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'F3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'F3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'F3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'F3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'F3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'F3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'G3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'G3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'G3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'G3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'G3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'G3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'G3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'G3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'G3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'G3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'G3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'G3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'G3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'G3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'H3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'H3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'H3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'H3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'H3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'H3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'H3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'H3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'H3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'H3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'H3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'H3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'H3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'H3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'I3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'I3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'I3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'I3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'I3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'I3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'I3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'I3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'I3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'I3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'I3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'I3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'I3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'I3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'J3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'J3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'J3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'J3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'J3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'J3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'J3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'J3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'J3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'J3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'J3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'J3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'J3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'J3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'K3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'K3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'K3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'K3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'K3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'K3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'K3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'K3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'K3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'K3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'K3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'K3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'K3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'K3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'L3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'L3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'L3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'L3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'L3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'L3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'L3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'L3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'L3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'L3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'L3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'L3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'L3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'L3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'M3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'M3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'M3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'M3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'M3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'M3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'M3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'M3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'M3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'M3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'M3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'M3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'M3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'M3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'N3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'N3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'N3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'N3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'N3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'N3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'N3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'N3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'N3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'N3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'N3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'N3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'N3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'N3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'O3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'O3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'O3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'O3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'O3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'O3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'O3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'O3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'O3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'O3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'O3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'O3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'O3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'O3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'P3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'P3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'P3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'P3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'P3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'P3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'P3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'P3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'P3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'P3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'P3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'P3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'P3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'P3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'Q3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'Q3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'Q3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'Q3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'Q3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'Q3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'Q3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'Q3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'Q3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'Q3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'Q3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'Q3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'Q3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'Q3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'R3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'R3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'R3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'R3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'R3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'R3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'R3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'R3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'R3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'R3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'R3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'R3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'R3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'R3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'S3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'S3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'S3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'S3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'S3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'S3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'S3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'S3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'S3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'S3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'S3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'S3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'S3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'S3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'T3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'T3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'T3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'T3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'T3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'T3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'T3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'T3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'T3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'T3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'T3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'T3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'T3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'T3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'A3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'A3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'A3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'A3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'A3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'A3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'A3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'A3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'A3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'A3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'A3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'A3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'A3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'A3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'B3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'B3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'B3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'B3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'B3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'B3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'B3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'B3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'B3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'B3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'B3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'B3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'B3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'B3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'C3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'C3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'C3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'C3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'C3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'C3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'C3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'C3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'C3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'C3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'C3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'C3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'C3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'C3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'D3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'D3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'D3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'D3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'D3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'D3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'D3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'D3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'D3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'D3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'D3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'D3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'D3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'D3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'E3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'E3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'E3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'E3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'E3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'E3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'E3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'E3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'E3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'E3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'E3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'E3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'E3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'E3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'F3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'F3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'F3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'F3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'F3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'F3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'F3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'F3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'F3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'F3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'F3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'F3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'F3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'F3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'G3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'G3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'G3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'G3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'G3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'G3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'G3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'G3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'G3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'G3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'G3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'G3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'G3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'G3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'H3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'H3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'H3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'H3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'H3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'H3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'H3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'H3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'H3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'H3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'H3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'H3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'H3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'H3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'I3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'I3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'I3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'I3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'I3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'I3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'I3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'I3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'I3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'I3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'I3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'I3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'I3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'I3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'J3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'J3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'J3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'J3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'J3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'J3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'J3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'J3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'J3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'J3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'J3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'J3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'J3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'J3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'K3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'K3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'K3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'K3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'K3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'K3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'K3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'K3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'K3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'K3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'K3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'K3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'K3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'K3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'L3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'L3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'L3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'L3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'L3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'L3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'L3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'L3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'L3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'L3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'L3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'L3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'L3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'L3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'M3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'M3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'M3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'M3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'M3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'M3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'M3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'M3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'M3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'M3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'M3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'M3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'M3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'M3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'N3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'N3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'N3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'N3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'N3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'N3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'N3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'N3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'N3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'N3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'N3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'N3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'N3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'N3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'O3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'O3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'O3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'O3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'O3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'O3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'O3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'O3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'O3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'O3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'O3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'O3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'O3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'O3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'P3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'P3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'P3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'P3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'P3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'P3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'P3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'P3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'P3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'P3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'P3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'P3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'P3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'P3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'Q3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'Q3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'Q3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'Q3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'Q3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'Q3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'Q3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'Q3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'Q3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'Q3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'Q3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'Q3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'Q3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'Q3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'R3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'R3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'R3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'R3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'R3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'R3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'R3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'R3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'R3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'R3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'R3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'R3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'R3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'R3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'S3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'S3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'S3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'S3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'S3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'S3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'S3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'S3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'S3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'S3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'S3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'S3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'S3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'S3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'T3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'T3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'T3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'T3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'T3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'T3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'T3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'T3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'T3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'T3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'T3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'T3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'T3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'T3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'A3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'A3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'A3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'A3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'A3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'A3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'A3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'A3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'A3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'A3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'A3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'A3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'A3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'A3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'B3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'B3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'B3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'B3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'B3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'B3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'B3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'B3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'B3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'B3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'B3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'B3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'B3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'B3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'C3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'C3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'C3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'C3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'C3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'C3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'C3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'C3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'C3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'C3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'C3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'C3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'C3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'C3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'D3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'D3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'D3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'D3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'D3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'D3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'D3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'D3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'D3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'D3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'D3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'D3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'D3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'D3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'E3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'E3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'E3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'E3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'E3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'E3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'E3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'E3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'E3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'E3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'E3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'E3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'E3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'E3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'F3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'F3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'F3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'F3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'F3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'F3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'F3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'F3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'F3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'F3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'F3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'F3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'F3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'F3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'G3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'G3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'G3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'G3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'G3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'G3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'G3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'G3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'G3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'G3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'G3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'G3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'G3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'G3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'H3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'H3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'H3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'H3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'H3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'H3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'H3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'H3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'H3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'H3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'H3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'H3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'H3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'H3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'I3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'I3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'I3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'I3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'I3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'I3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'I3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'I3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'I3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'I3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'I3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'I3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'I3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'I3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'J3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'J3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'J3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'J3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'J3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'J3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'J3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'J3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'J3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'J3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'J3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'J3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'J3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'J3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'K3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'K3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'K3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'K3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'K3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'K3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'K3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'K3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'K3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'K3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'K3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'K3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'K3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'K3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'L3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'L3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'L3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'L3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'L3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'L3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'L3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'L3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'L3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'L3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'L3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'L3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'L3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'L3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'M3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'M3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'M3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'M3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'M3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'M3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'M3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'M3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'M3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'M3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'M3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'M3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'M3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'M3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'N3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'N3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'N3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'N3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'N3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'N3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'N3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'N3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'N3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'N3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'N3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'N3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'N3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'N3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'O3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'O3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'O3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'O3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'O3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'O3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'O3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'O3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'O3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'O3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'O3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'O3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'O3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'O3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'P3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'P3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'P3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'P3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'P3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'P3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'P3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'P3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'P3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'P3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'P3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'P3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'P3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'P3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'Q3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'Q3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'Q3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'Q3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'Q3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'Q3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'Q3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'Q3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'Q3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'Q3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'Q3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'Q3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'Q3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'Q3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'R3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'R3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'R3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'R3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'R3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'R3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'R3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'R3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'R3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'R3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'R3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'R3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'R3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'R3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'S3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'S3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'S3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'S3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'S3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'S3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'S3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'S3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'S3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'S3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'S3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'S3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'S3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'S3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'T3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'T3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'T3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'T3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'T3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'T3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'T3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'T3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'T3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'T3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'T3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'T3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'T3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'T3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
    PenaltyShiftOffReq : Size=840, Index=SHIFTTYPES*NURSES*DAYS
        Key              : Lower : Value : Upper : Fixed : Stale : Domain
         ('D3', 'A3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'A3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'A3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'A3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'A3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'A3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'A3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'A3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'A3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'A3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'A3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'A3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'A3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'A3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'B3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'B3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'B3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'B3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'B3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'B3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'B3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'B3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'B3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'B3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'B3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'B3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'B3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'B3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'C3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'C3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'C3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'C3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'C3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'C3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'C3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'C3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'C3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'C3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'C3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'C3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'C3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'C3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'D3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'D3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'D3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'D3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'D3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'D3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'D3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'D3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'D3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'D3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'D3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'D3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'D3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'D3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'E3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'E3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'E3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'E3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'E3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'E3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'E3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'E3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'E3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'E3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'E3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'E3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'E3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'E3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'F3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'F3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'F3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'F3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'F3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'F3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'F3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'F3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'F3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'F3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'F3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'F3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'F3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'F3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'G3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'G3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'G3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'G3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'G3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'G3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'G3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'G3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'G3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'G3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'G3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'G3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'G3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'G3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'H3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'H3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'H3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'H3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'H3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'H3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'H3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'H3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'H3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'H3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'H3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'H3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'H3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'H3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'I3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'I3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'I3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'I3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'I3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'I3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'I3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'I3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'I3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'I3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'I3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'I3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'I3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'I3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'J3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'J3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'J3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'J3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'J3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'J3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'J3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'J3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'J3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'J3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'J3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'J3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'J3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'J3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'K3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'K3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'K3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'K3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'K3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'K3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'K3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'K3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'K3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'K3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'K3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'K3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'K3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'K3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'L3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'L3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'L3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'L3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'L3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'L3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'L3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'L3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'L3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'L3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'L3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'L3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'L3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'L3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'M3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'M3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'M3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'M3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'M3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'M3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'M3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'M3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'M3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'M3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'M3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'M3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'M3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'M3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'N3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'N3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'N3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'N3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'N3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'N3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'N3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'N3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'N3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'N3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'N3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'N3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'N3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'N3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'O3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'O3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'O3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'O3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'O3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'O3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'O3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'O3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'O3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'O3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'O3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'O3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'O3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'O3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'P3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'P3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'P3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'P3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'P3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'P3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'P3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'P3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'P3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'P3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'P3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'P3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'P3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'P3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'Q3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'Q3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'Q3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'Q3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'Q3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'Q3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'Q3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'Q3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'Q3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'Q3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'Q3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'Q3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'Q3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'Q3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'R3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'R3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'R3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'R3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'R3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'R3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'R3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'R3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'R3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'R3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'R3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'R3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'R3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'R3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'S3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'S3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'S3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'S3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'S3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'S3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'S3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'S3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'S3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'S3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'S3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'S3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'S3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'S3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'T3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'T3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'T3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'T3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'T3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'T3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'T3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'T3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'T3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 'T3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'T3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'T3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'T3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 'T3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'A3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'A3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'A3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'A3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'A3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'A3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'A3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'A3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'A3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'A3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'A3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'A3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'A3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'A3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'B3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'B3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'B3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'B3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'B3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'B3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'B3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'B3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'B3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'B3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'B3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'B3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'B3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'B3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'C3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'C3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'C3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'C3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'C3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'C3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'C3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'C3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'C3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'C3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'C3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'C3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'C3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'C3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'D3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'D3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'D3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'D3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'D3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'D3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'D3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'D3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'D3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'D3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'D3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'D3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'D3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'D3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'E3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'E3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'E3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'E3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'E3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'E3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'E3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'E3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'E3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'E3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'E3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'E3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'E3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'E3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'F3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'F3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'F3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'F3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'F3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'F3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'F3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'F3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'F3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'F3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'F3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'F3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'F3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'F3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'G3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'G3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'G3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'G3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'G3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'G3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'G3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'G3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'G3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'G3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'G3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'G3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'G3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'G3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'H3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'H3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'H3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'H3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'H3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'H3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'H3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'H3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'H3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'H3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'H3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'H3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'H3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'H3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'I3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'I3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'I3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'I3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'I3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'I3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'I3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'I3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'I3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'I3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'I3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'I3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'I3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'I3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'J3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'J3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'J3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'J3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'J3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'J3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'J3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'J3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'J3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'J3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'J3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'J3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'J3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'J3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'K3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'K3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'K3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'K3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'K3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'K3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'K3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'K3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'K3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'K3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'K3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'K3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'K3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'K3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'L3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'L3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'L3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'L3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'L3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'L3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'L3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'L3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'L3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'L3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'L3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'L3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'L3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'L3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'M3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'M3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'M3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'M3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'M3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'M3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'M3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'M3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'M3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'M3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'M3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'M3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'M3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'M3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'N3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'N3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'N3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'N3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'N3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'N3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'N3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'N3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'N3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'N3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'N3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'N3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'N3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'N3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'O3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'O3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'O3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'O3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'O3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'O3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'O3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'O3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'O3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'O3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'O3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'O3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'O3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'O3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'P3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'P3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'P3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'P3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'P3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'P3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'P3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'P3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'P3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'P3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'P3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'P3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'P3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'P3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'Q3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'Q3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'Q3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'Q3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'Q3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'Q3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'Q3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'Q3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'Q3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'Q3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'Q3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'Q3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'Q3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'Q3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'R3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'R3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'R3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'R3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'R3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'R3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'R3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'R3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'R3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'R3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'R3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'R3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'R3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'R3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'S3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'S3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'S3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'S3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'S3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'S3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'S3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'S3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'S3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'S3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'S3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'S3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'S3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'S3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'T3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'T3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'T3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'T3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'T3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'T3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'T3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'T3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'T3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 'T3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'T3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'T3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'T3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 'T3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'A3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'A3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'A3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'A3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'A3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'A3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'A3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'A3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'A3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'A3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'A3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'A3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'A3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'A3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'B3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'B3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'B3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'B3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'B3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'B3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'B3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'B3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'B3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'B3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'B3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'B3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'B3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'B3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'C3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'C3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'C3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'C3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'C3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'C3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'C3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'C3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'C3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'C3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'C3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'C3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'C3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'C3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'D3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'D3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'D3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'D3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'D3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'D3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'D3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'D3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'D3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'D3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'D3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'D3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'D3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'D3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'E3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'E3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'E3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'E3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'E3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'E3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'E3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'E3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'E3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'E3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'E3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'E3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'E3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'E3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'F3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'F3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'F3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'F3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'F3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'F3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'F3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'F3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'F3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'F3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'F3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'F3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'F3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'F3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'G3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'G3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'G3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'G3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'G3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'G3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'G3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'G3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'G3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'G3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'G3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'G3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'G3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'G3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'H3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'H3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'H3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'H3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'H3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'H3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'H3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'H3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'H3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'H3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'H3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'H3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'H3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'H3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'I3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'I3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'I3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'I3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'I3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'I3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'I3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'I3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'I3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'I3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'I3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'I3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'I3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'I3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'J3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'J3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'J3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'J3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'J3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'J3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'J3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'J3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'J3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'J3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'J3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'J3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'J3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'J3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'K3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'K3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'K3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'K3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'K3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'K3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'K3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'K3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'K3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'K3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'K3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'K3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'K3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'K3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'L3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'L3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'L3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'L3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'L3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'L3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'L3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'L3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'L3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'L3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'L3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'L3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'L3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'L3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'M3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'M3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'M3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'M3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'M3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'M3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'M3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'M3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'M3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'M3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'M3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'M3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'M3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'M3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'N3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'N3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'N3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'N3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'N3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'N3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'N3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'N3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'N3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'N3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'N3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'N3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'N3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'N3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'O3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'O3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'O3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'O3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'O3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'O3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'O3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'O3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'O3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'O3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'O3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'O3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'O3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'O3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'P3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'P3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'P3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'P3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'P3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'P3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'P3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'P3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'P3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'P3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'P3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'P3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'P3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'P3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'Q3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'Q3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'Q3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'Q3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'Q3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'Q3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'Q3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'Q3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'Q3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'Q3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'Q3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'Q3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'Q3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'Q3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'R3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'R3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'R3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'R3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'R3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'R3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'R3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'R3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'R3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'R3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'R3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'R3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'R3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'R3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'S3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'S3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'S3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'S3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'S3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'S3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'S3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'S3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'S3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'S3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'S3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'S3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'S3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'S3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'T3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'T3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'T3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'T3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'T3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'T3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'T3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'T3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'T3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 'T3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'T3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'T3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'T3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 'T3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
    UnderCover : Size=42, Index=SHIFTTYPES*DAYS
        Key        : Lower : Value : Upper : Fixed : Stale : Domain
         ('D3', 0) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('D3', 1) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('D3', 2) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('D3', 3) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('D3', 4) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('D3', 5) :     0 :   1.0 :  None : False : False : NonNegativeReals
         ('D3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 7) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('D3', 8) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('D3', 9) :     0 :  -0.0 :  None : False : False : NonNegativeReals
        ('D3', 10) :     0 :  -0.0 :  None : False : False : NonNegativeReals
        ('D3', 11) :     0 :  -0.0 :  None : False : False : NonNegativeReals
        ('D3', 12) :     0 :  -0.0 :  None : False : False : NonNegativeReals
        ('D3', 13) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('E3', 0) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('E3', 1) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('E3', 2) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('E3', 3) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('E3', 4) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('E3', 5) :     0 :   1.0 :  None : False : False : NonNegativeReals
         ('E3', 6) :     0 :   3.0 :  None : False : False : NonNegativeReals
         ('E3', 7) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('E3', 8) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('E3', 9) :     0 :  -0.0 :  None : False : False : NonNegativeReals
        ('E3', 10) :     0 :  -0.0 :  None : False : False : NonNegativeReals
        ('E3', 11) :     0 :  -0.0 :  None : False : False : NonNegativeReals
        ('E3', 12) :     0 :  -0.0 :  None : False : False : NonNegativeReals
        ('E3', 13) :     0 :   1.0 :  None : False : False : NonNegativeReals
         ('L3', 0) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('L3', 1) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('L3', 2) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('L3', 3) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('L3', 4) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('L3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 6) :     0 :   1.0 :  None : False : False : NonNegativeReals
         ('L3', 7) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('L3', 8) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('L3', 9) :     0 :  -0.0 :  None : False : False : NonNegativeReals
        ('L3', 10) :     0 :  -0.0 :  None : False : False : NonNegativeReals
        ('L3', 11) :     0 :  -0.0 :  None : False : False : NonNegativeReals
        ('L3', 12) :     0 :   3.0 :  None : False : False : NonNegativeReals
        ('L3', 13) :     0 :  -0.0 :  None : False : False : NonNegativeReals
    OverCover : Size=42, Index=SHIFTTYPES*DAYS
        Key        : Lower : Value : Upper : Fixed : Stale : Domain
         ('D3', 0) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('D3', 1) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('D3', 2) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('D3', 3) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('D3', 4) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('D3', 5) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('D3', 6) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('D3', 7) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('D3', 8) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('D3', 9) :     0 :  -0.0 :  None : False : False : NonNegativeReals
        ('D3', 10) :     0 :  -0.0 :  None : False : False : NonNegativeReals
        ('D3', 11) :     0 :  -0.0 :  None : False : False : NonNegativeReals
        ('D3', 12) :     0 :  -0.0 :  None : False : False : NonNegativeReals
        ('D3', 13) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('E3', 0) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('E3', 1) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('E3', 2) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('E3', 3) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('E3', 4) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('E3', 5) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('E3', 6) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('E3', 7) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('E3', 8) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('E3', 9) :     0 :  -0.0 :  None : False : False : NonNegativeReals
        ('E3', 10) :     0 :  -0.0 :  None : False : False : NonNegativeReals
        ('E3', 11) :     0 :  -0.0 :  None : False : False : NonNegativeReals
        ('E3', 12) :     0 :  -0.0 :  None : False : False : NonNegativeReals
        ('E3', 13) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('L3', 0) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('L3', 1) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('L3', 2) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('L3', 3) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('L3', 4) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('L3', 5) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('L3', 6) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('L3', 7) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('L3', 8) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('L3', 9) :     0 :  -0.0 :  None : False : False : NonNegativeReals
        ('L3', 10) :     0 :  -0.0 :  None : False : False : NonNegativeReals
        ('L3', 11) :     0 :  -0.0 :  None : False : False : NonNegativeReals
        ('L3', 12) :     0 :  -0.0 :  None : False : False : NonNegativeReals
        ('L3', 13) :     0 :  -0.0 :  None : False : False : NonNegativeReals
    PenaltyUnder : Size=42, Index=SHIFTTYPES*DAYS
        Key        : Lower : Value : Upper : Fixed : Stale : Domain
         ('D3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 5) :     0 : 100.0 :  None : False : False : NonNegativeReals
         ('D3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 5) :     0 : 100.0 :  None : False : False : NonNegativeReals
         ('E3', 6) :     0 : 300.0 :  None : False : False : NonNegativeReals
         ('E3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 13) :     0 : 100.0 :  None : False : False : NonNegativeReals
         ('L3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 6) :     0 : 100.0 :  None : False : False : NonNegativeReals
         ('L3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 12) :     0 : 300.0 :  None : False : False : NonNegativeReals
        ('L3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
    PenaltyOver : Size=42, Index=SHIFTTYPES*DAYS
        Key        : Lower : Value : Upper : Fixed : Stale : Domain
         ('D3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L3', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L3', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
    MinTotalMinsUnder : Size=20, Index=NURSES
        Key : Lower : Value : Upper : Fixed : Stale : Domain
         A3 :     0 :  -0.0 :  None : False : False : NonNegativeReals
         B3 :     0 :  -0.0 :  None : False : False : NonNegativeReals
         C3 :     0 :  -0.0 :  None : False : False : NonNegativeReals
         D3 :     0 :  -0.0 :  None : False : False : NonNegativeReals
         E3 :     0 :  -0.0 :  None : False : False : NonNegativeReals
         F3 :     0 :  -0.0 :  None : False : False : NonNegativeReals
         G3 :     0 :  -0.0 :  None : False : False : NonNegativeReals
         H3 :     0 :  -0.0 :  None : False : False : NonNegativeReals
         I3 :     0 :  -0.0 :  None : False : False : NonNegativeReals
         J3 :     0 :  -0.0 :  None : False : False : NonNegativeReals
         K3 :     0 :  -0.0 :  None : False : False : NonNegativeReals
         L3 :     0 :  -0.0 :  None : False : False : NonNegativeReals
         M3 :     0 :  -0.0 :  None : False : False : NonNegativeReals
         N3 :     0 :  -0.0 :  None : False : False : NonNegativeReals
         O3 :     0 :  -0.0 :  None : False : False : NonNegativeReals
         P3 :     0 :  -0.0 :  None : False : False : NonNegativeReals
         Q3 :     0 :  -0.0 :  None : False : False : NonNegativeReals
         R3 :     0 :  -0.0 :  None : False : False : NonNegativeReals
         S3 :     0 :  -0.0 :  None : False : False : NonNegativeReals
         T3 :     0 :  -0.0 :  None : False : False : NonNegativeReals

  Objectives:
    objective : Size=1, Index=None, Active=True
        Key  : Active : Value
        None :   True : 1001.0

  Constraints:
    constraint_one_shift_one_day : Size=280
        Key        : Lower : Body               : Upper
         ('A3', 0) :   1.0 :                1.0 :   1.0
         ('A3', 1) :   1.0 :                1.0 :   1.0
         ('A3', 2) :   1.0 :                1.0 :   1.0
         ('A3', 3) :   1.0 :                1.0 :   1.0
         ('A3', 4) :   1.0 :                1.0 :   1.0
         ('A3', 5) :   1.0 :                1.0 :   1.0
         ('A3', 6) :   1.0 :                1.0 :   1.0
         ('A3', 7) :   1.0 :                1.0 :   1.0
         ('A3', 8) :   1.0 :                1.0 :   1.0
         ('A3', 9) :   1.0 :                1.0 :   1.0
        ('A3', 10) :   1.0 :                1.0 :   1.0
        ('A3', 11) :   1.0 :                1.0 :   1.0
        ('A3', 12) :   1.0 :                1.0 :   1.0
        ('A3', 13) :   1.0 :                1.0 :   1.0
         ('B3', 0) :   1.0 :                1.0 :   1.0
         ('B3', 1) :   1.0 :                1.0 :   1.0
         ('B3', 2) :   1.0 :                1.0 :   1.0
         ('B3', 3) :   1.0 :                1.0 :   1.0
         ('B3', 4) :   1.0 :                1.0 :   1.0
         ('B3', 5) :   1.0 :                1.0 :   1.0
         ('B3', 6) :   1.0 :                1.0 :   1.0
         ('B3', 7) :   1.0 :                1.0 :   1.0
         ('B3', 8) :   1.0 :                1.0 :   1.0
         ('B3', 9) :   1.0 :                1.0 :   1.0
        ('B3', 10) :   1.0 :                1.0 :   1.0
        ('B3', 11) :   1.0 :                1.0 :   1.0
        ('B3', 12) :   1.0 :                1.0 :   1.0
        ('B3', 13) :   1.0 :                1.0 :   1.0
         ('C3', 0) :   1.0 :                1.0 :   1.0
         ('C3', 1) :   1.0 :                1.0 :   1.0
         ('C3', 2) :   1.0 :                1.0 :   1.0
         ('C3', 3) :   1.0 :                1.0 :   1.0
         ('C3', 4) :   1.0 :                1.0 :   1.0
         ('C3', 5) :   1.0 :                1.0 :   1.0
         ('C3', 6) :   1.0 :                1.0 :   1.0
         ('C3', 7) :   1.0 :                1.0 :   1.0
         ('C3', 8) :   1.0 :                1.0 :   1.0
         ('C3', 9) :   1.0 :                1.0 :   1.0
        ('C3', 10) :   1.0 :                1.0 :   1.0
        ('C3', 11) :   1.0 :                1.0 :   1.0
        ('C3', 12) :   1.0 :                1.0 :   1.0
        ('C3', 13) :   1.0 :                1.0 :   1.0
         ('D3', 0) :   1.0 :                1.0 :   1.0
         ('D3', 1) :   1.0 :                1.0 :   1.0
         ('D3', 2) :   1.0 :                1.0 :   1.0
         ('D3', 3) :   1.0 :                1.0 :   1.0
         ('D3', 4) :   1.0 :                1.0 :   1.0
         ('D3', 5) :   1.0 :                1.0 :   1.0
         ('D3', 6) :   1.0 :                1.0 :   1.0
         ('D3', 7) :   1.0 :                1.0 :   1.0
         ('D3', 8) :   1.0 :                1.0 :   1.0
         ('D3', 9) :   1.0 :                1.0 :   1.0
        ('D3', 10) :   1.0 :                1.0 :   1.0
        ('D3', 11) :   1.0 :                1.0 :   1.0
        ('D3', 12) :   1.0 :                1.0 :   1.0
        ('D3', 13) :   1.0 :                1.0 :   1.0
         ('E3', 0) :   1.0 :                1.0 :   1.0
         ('E3', 1) :   1.0 :                1.0 :   1.0
         ('E3', 2) :   1.0 :                1.0 :   1.0
         ('E3', 3) :   1.0 :                1.0 :   1.0
         ('E3', 4) :   1.0 :                1.0 :   1.0
         ('E3', 5) :   1.0 :                1.0 :   1.0
         ('E3', 6) :   1.0 :                1.0 :   1.0
         ('E3', 7) :   1.0 :                1.0 :   1.0
         ('E3', 8) :   1.0 :                1.0 :   1.0
         ('E3', 9) :   1.0 :                1.0 :   1.0
        ('E3', 10) :   1.0 :                1.0 :   1.0
        ('E3', 11) :   1.0 :                1.0 :   1.0
        ('E3', 12) :   1.0 :                1.0 :   1.0
        ('E3', 13) :   1.0 :                1.0 :   1.0
         ('F3', 0) :   1.0 :                1.0 :   1.0
         ('F3', 1) :   1.0 :                1.0 :   1.0
         ('F3', 2) :   1.0 :                1.0 :   1.0
         ('F3', 3) :   1.0 :                1.0 :   1.0
         ('F3', 4) :   1.0 :                1.0 :   1.0
         ('F3', 5) :   1.0 :                1.0 :   1.0
         ('F3', 6) :   1.0 :                1.0 :   1.0
         ('F3', 7) :   1.0 :                1.0 :   1.0
         ('F3', 8) :   1.0 :                1.0 :   1.0
         ('F3', 9) :   1.0 :                1.0 :   1.0
        ('F3', 10) :   1.0 :                1.0 :   1.0
        ('F3', 11) :   1.0 :                1.0 :   1.0
        ('F3', 12) :   1.0 :                1.0 :   1.0
        ('F3', 13) :   1.0 :                1.0 :   1.0
         ('G3', 0) :   1.0 :                1.0 :   1.0
         ('G3', 1) :   1.0 :                1.0 :   1.0
         ('G3', 2) :   1.0 :                1.0 :   1.0
         ('G3', 3) :   1.0 :                1.0 :   1.0
         ('G3', 4) :   1.0 :                1.0 :   1.0
         ('G3', 5) :   1.0 :                1.0 :   1.0
         ('G3', 6) :   1.0 :                1.0 :   1.0
         ('G3', 7) :   1.0 :                1.0 :   1.0
         ('G3', 8) :   1.0 :                1.0 :   1.0
         ('G3', 9) :   1.0 :                1.0 :   1.0
        ('G3', 10) :   1.0 :                1.0 :   1.0
        ('G3', 11) :   1.0 :                1.0 :   1.0
        ('G3', 12) :   1.0 :                1.0 :   1.0
        ('G3', 13) :   1.0 :                1.0 :   1.0
         ('H3', 0) :   1.0 :                1.0 :   1.0
         ('H3', 1) :   1.0 :                1.0 :   1.0
         ('H3', 2) :   1.0 :                1.0 :   1.0
         ('H3', 3) :   1.0 :                1.0 :   1.0
         ('H3', 4) :   1.0 :                1.0 :   1.0
         ('H3', 5) :   1.0 :                1.0 :   1.0
         ('H3', 6) :   1.0 :                1.0 :   1.0
         ('H3', 7) :   1.0 :                1.0 :   1.0
         ('H3', 8) :   1.0 :                1.0 :   1.0
         ('H3', 9) :   1.0 :                1.0 :   1.0
        ('H3', 10) :   1.0 :                1.0 :   1.0
        ('H3', 11) :   1.0 :                1.0 :   1.0
        ('H3', 12) :   1.0 :                1.0 :   1.0
        ('H3', 13) :   1.0 :                1.0 :   1.0
         ('I3', 0) :   1.0 :                1.0 :   1.0
         ('I3', 1) :   1.0 :                1.0 :   1.0
         ('I3', 2) :   1.0 :                1.0 :   1.0
         ('I3', 3) :   1.0 :                1.0 :   1.0
         ('I3', 4) :   1.0 :                1.0 :   1.0
         ('I3', 5) :   1.0 :                1.0 :   1.0
         ('I3', 6) :   1.0 :                1.0 :   1.0
         ('I3', 7) :   1.0 :                1.0 :   1.0
         ('I3', 8) :   1.0 :                1.0 :   1.0
         ('I3', 9) :   1.0 :                1.0 :   1.0
        ('I3', 10) :   1.0 :                1.0 :   1.0
        ('I3', 11) :   1.0 :                1.0 :   1.0
        ('I3', 12) :   1.0 :                1.0 :   1.0
        ('I3', 13) :   1.0 :                1.0 :   1.0
         ('J3', 0) :   1.0 :                1.0 :   1.0
         ('J3', 1) :   1.0 :                1.0 :   1.0
         ('J3', 2) :   1.0 :                1.0 :   1.0
         ('J3', 3) :   1.0 :                1.0 :   1.0
         ('J3', 4) :   1.0 :                1.0 :   1.0
         ('J3', 5) :   1.0 :                1.0 :   1.0
         ('J3', 6) :   1.0 :                1.0 :   1.0
         ('J3', 7) :   1.0 :                1.0 :   1.0
         ('J3', 8) :   1.0 :                1.0 :   1.0
         ('J3', 9) :   1.0 :                1.0 :   1.0
        ('J3', 10) :   1.0 :                1.0 :   1.0
        ('J3', 11) :   1.0 :                1.0 :   1.0
        ('J3', 12) :   1.0 :                1.0 :   1.0
        ('J3', 13) :   1.0 :                1.0 :   1.0
         ('K3', 0) :   1.0 :                1.0 :   1.0
         ('K3', 1) :   1.0 :                1.0 :   1.0
         ('K3', 2) :   1.0 :                1.0 :   1.0
         ('K3', 3) :   1.0 :                1.0 :   1.0
         ('K3', 4) :   1.0 :                1.0 :   1.0
         ('K3', 5) :   1.0 :                1.0 :   1.0
         ('K3', 6) :   1.0 :                1.0 :   1.0
         ('K3', 7) :   1.0 :                1.0 :   1.0
         ('K3', 8) :   1.0 :                1.0 :   1.0
         ('K3', 9) :   1.0 :                1.0 :   1.0
        ('K3', 10) :   1.0 :                1.0 :   1.0
        ('K3', 11) :   1.0 :                1.0 :   1.0
        ('K3', 12) :   1.0 :                1.0 :   1.0
        ('K3', 13) :   1.0 :                1.0 :   1.0
         ('L3', 0) :   1.0 :                1.0 :   1.0
         ('L3', 1) :   1.0 :                1.0 :   1.0
         ('L3', 2) :   1.0 :                1.0 :   1.0
         ('L3', 3) :   1.0 :                1.0 :   1.0
         ('L3', 4) :   1.0 :                1.0 :   1.0
         ('L3', 5) :   1.0 :                1.0 :   1.0
         ('L3', 6) :   1.0 :                1.0 :   1.0
         ('L3', 7) :   1.0 :                1.0 :   1.0
         ('L3', 8) :   1.0 :                1.0 :   1.0
         ('L3', 9) :   1.0 :                1.0 :   1.0
        ('L3', 10) :   1.0 :                1.0 :   1.0
        ('L3', 11) :   1.0 :                1.0 :   1.0
        ('L3', 12) :   1.0 :                1.0 :   1.0
        ('L3', 13) :   1.0 :                1.0 :   1.0
         ('M3', 0) :   1.0 :                1.0 :   1.0
         ('M3', 1) :   1.0 :                1.0 :   1.0
         ('M3', 2) :   1.0 :                1.0 :   1.0
         ('M3', 3) :   1.0 :                1.0 :   1.0
         ('M3', 4) :   1.0 :                1.0 :   1.0
         ('M3', 5) :   1.0 :                1.0 :   1.0
         ('M3', 6) :   1.0 :                1.0 :   1.0
         ('M3', 7) :   1.0 :                1.0 :   1.0
         ('M3', 8) :   1.0 :                1.0 :   1.0
         ('M3', 9) :   1.0 :                1.0 :   1.0
        ('M3', 10) :   1.0 :                1.0 :   1.0
        ('M3', 11) :   1.0 :                1.0 :   1.0
        ('M3', 12) :   1.0 :                1.0 :   1.0
        ('M3', 13) :   1.0 :                1.0 :   1.0
         ('N3', 0) :   1.0 : 0.9999999999999998 :   1.0
         ('N3', 1) :   1.0 :                1.0 :   1.0
         ('N3', 2) :   1.0 :                1.0 :   1.0
         ('N3', 3) :   1.0 :                1.0 :   1.0
         ('N3', 4) :   1.0 :                1.0 :   1.0
         ('N3', 5) :   1.0 :                1.0 :   1.0
         ('N3', 6) :   1.0 :                1.0 :   1.0
         ('N3', 7) :   1.0 :                1.0 :   1.0
         ('N3', 8) :   1.0 :                1.0 :   1.0
         ('N3', 9) :   1.0 :                1.0 :   1.0
        ('N3', 10) :   1.0 :                1.0 :   1.0
        ('N3', 11) :   1.0 :                1.0 :   1.0
        ('N3', 12) :   1.0 :                1.0 :   1.0
        ('N3', 13) :   1.0 :                1.0 :   1.0
         ('O3', 0) :   1.0 :                1.0 :   1.0
         ('O3', 1) :   1.0 :                1.0 :   1.0
         ('O3', 2) :   1.0 :                1.0 :   1.0
         ('O3', 3) :   1.0 :                1.0 :   1.0
         ('O3', 4) :   1.0 :                1.0 :   1.0
         ('O3', 5) :   1.0 :                1.0 :   1.0
         ('O3', 6) :   1.0 :                1.0 :   1.0
         ('O3', 7) :   1.0 :                1.0 :   1.0
         ('O3', 8) :   1.0 :                1.0 :   1.0
         ('O3', 9) :   1.0 :                1.0 :   1.0
        ('O3', 10) :   1.0 :                1.0 :   1.0
        ('O3', 11) :   1.0 :                1.0 :   1.0
        ('O3', 12) :   1.0 :                1.0 :   1.0
        ('O3', 13) :   1.0 :                1.0 :   1.0
         ('P3', 0) :   1.0 :                1.0 :   1.0
         ('P3', 1) :   1.0 :                1.0 :   1.0
         ('P3', 2) :   1.0 :                1.0 :   1.0
         ('P3', 3) :   1.0 :                1.0 :   1.0
         ('P3', 4) :   1.0 :                1.0 :   1.0
         ('P3', 5) :   1.0 :                1.0 :   1.0
         ('P3', 6) :   1.0 :                1.0 :   1.0
         ('P3', 7) :   1.0 :                1.0 :   1.0
         ('P3', 8) :   1.0 :                1.0 :   1.0
         ('P3', 9) :   1.0 :                1.0 :   1.0
        ('P3', 10) :   1.0 :                1.0 :   1.0
        ('P3', 11) :   1.0 :                1.0 :   1.0
        ('P3', 12) :   1.0 :                1.0 :   1.0
        ('P3', 13) :   1.0 :                1.0 :   1.0
         ('Q3', 0) :   1.0 :                1.0 :   1.0
         ('Q3', 1) :   1.0 :                1.0 :   1.0
         ('Q3', 2) :   1.0 :                1.0 :   1.0
         ('Q3', 3) :   1.0 :                1.0 :   1.0
         ('Q3', 4) :   1.0 :                1.0 :   1.0
         ('Q3', 5) :   1.0 :                1.0 :   1.0
         ('Q3', 6) :   1.0 :                1.0 :   1.0
         ('Q3', 7) :   1.0 :                1.0 :   1.0
         ('Q3', 8) :   1.0 :                1.0 :   1.0
         ('Q3', 9) :   1.0 :                1.0 :   1.0
        ('Q3', 10) :   1.0 :                1.0 :   1.0
        ('Q3', 11) :   1.0 :                1.0 :   1.0
        ('Q3', 12) :   1.0 :                1.0 :   1.0
        ('Q3', 13) :   1.0 :                1.0 :   1.0
         ('R3', 0) :   1.0 :                1.0 :   1.0
         ('R3', 1) :   1.0 :                1.0 :   1.0
         ('R3', 2) :   1.0 :                1.0 :   1.0
         ('R3', 3) :   1.0 :                1.0 :   1.0
         ('R3', 4) :   1.0 :                1.0 :   1.0
         ('R3', 5) :   1.0 :                1.0 :   1.0
         ('R3', 6) :   1.0 :                1.0 :   1.0
         ('R3', 7) :   1.0 :                1.0 :   1.0
         ('R3', 8) :   1.0 :                1.0 :   1.0
         ('R3', 9) :   1.0 :                1.0 :   1.0
        ('R3', 10) :   1.0 :                1.0 :   1.0
        ('R3', 11) :   1.0 :                1.0 :   1.0
        ('R3', 12) :   1.0 :                1.0 :   1.0
        ('R3', 13) :   1.0 :                1.0 :   1.0
         ('S3', 0) :   1.0 :                1.0 :   1.0
         ('S3', 1) :   1.0 :                1.0 :   1.0
         ('S3', 2) :   1.0 :                1.0 :   1.0
         ('S3', 3) :   1.0 :                1.0 :   1.0
         ('S3', 4) :   1.0 :                1.0 :   1.0
         ('S3', 5) :   1.0 :                1.0 :   1.0
         ('S3', 6) :   1.0 :                1.0 :   1.0
         ('S3', 7) :   1.0 :                1.0 :   1.0
         ('S3', 8) :   1.0 :                1.0 :   1.0
         ('S3', 9) :   1.0 :                1.0 :   1.0
        ('S3', 10) :   1.0 :                1.0 :   1.0
        ('S3', 11) :   1.0 :                1.0 :   1.0
        ('S3', 12) :   1.0 :                1.0 :   1.0
        ('S3', 13) :   1.0 :                1.0 :   1.0
         ('T3', 0) :   1.0 :                1.0 :   1.0
         ('T3', 1) :   1.0 :                1.0 :   1.0
         ('T3', 2) :   1.0 :                1.0 :   1.0
         ('T3', 3) :   1.0 :                1.0 :   1.0
         ('T3', 4) :   1.0 :                1.0 :   1.0
         ('T3', 5) :   1.0 :                1.0 :   1.0
         ('T3', 6) :   1.0 :                1.0 :   1.0
         ('T3', 7) :   1.0 :                1.0 :   1.0
         ('T3', 8) :   1.0 :                1.0 :   1.0
         ('T3', 9) :   1.0 :                1.0 :   1.0
        ('T3', 10) :   1.0 :                1.0 :   1.0
        ('T3', 11) :   1.0 :                1.0 :   1.0
        ('T3', 12) :   1.0 :                1.0 :   1.0
        ('T3', 13) :   1.0 :                1.0 :   1.0
    constraint_shift_rotation_ub : Size=0
        Key : Lower : Body : Upper
    constraint_shift_rotation : Size=780
        Key              : Lower : Body : Upper
         ('D3', 'A3', 0) :  None :  0.0 :   1.0
         ('D3', 'A3', 1) :  None :  0.0 :   1.0
         ('D3', 'A3', 2) :  None :  1.0 :   1.0
         ('D3', 'A3', 3) :  None :  1.0 :   1.0
         ('D3', 'A3', 4) :  None :  1.0 :   1.0
         ('D3', 'A3', 5) :  None :  0.0 :   1.0
         ('D3', 'A3', 6) :  None :  1.0 :   1.0
         ('D3', 'A3', 7) :  None :  0.0 :   1.0
         ('D3', 'A3', 8) :  None :  1.0 :   1.0
         ('D3', 'A3', 9) :  None :  1.0 :   1.0
        ('D3', 'A3', 10) :  None :  0.0 :   1.0
        ('D3', 'A3', 11) :  None :  0.0 :   1.0
        ('D3', 'A3', 12) :  None :  1.0 :   1.0
         ('D3', 'B3', 0) :  None :  0.0 :   1.0
         ('D3', 'B3', 1) :  None :  1.0 :   1.0
         ('D3', 'B3', 2) :  None :  1.0 :   1.0
         ('D3', 'B3', 3) :  None :  1.0 :   1.0
         ('D3', 'B3', 4) :  None :  1.0 :   1.0
         ('D3', 'B3', 5) :  None :  0.0 :   1.0
         ('D3', 'B3', 6) :  None :  0.0 :   1.0
         ('D3', 'B3', 7) :  None :  0.0 :   1.0
         ('D3', 'B3', 8) :  None :  0.0 :   1.0
         ('D3', 'B3', 9) :  None :  1.0 :   1.0
        ('D3', 'B3', 10) :  None :  1.0 :   1.0
        ('D3', 'B3', 11) :  None :  1.0 :   1.0
        ('D3', 'B3', 12) :  None :  1.0 :   1.0
         ('D3', 'C3', 0) :  None :  0.0 :   1.0
         ('D3', 'C3', 1) :  None :  0.0 :   1.0
         ('D3', 'C3', 2) :  None :  1.0 :   1.0
         ('D3', 'C3', 3) :  None :  1.0 :   1.0
         ('D3', 'C3', 4) :  None :  0.0 :   1.0
         ('D3', 'C3', 5) :  None :  1.0 :   1.0
         ('D3', 'C3', 6) :  None :  1.0 :   1.0
         ('D3', 'C3', 7) :  None :  0.0 :   1.0
         ('D3', 'C3', 8) :  None :  1.0 :   1.0
         ('D3', 'C3', 9) :  None :  1.0 :   1.0
        ('D3', 'C3', 10) :  None :  0.0 :   1.0
        ('D3', 'C3', 11) :  None :  0.0 :   1.0
        ('D3', 'C3', 12) :  None :  0.0 :   1.0
         ('D3', 'D3', 0) :  None :  0.0 :   1.0
         ('D3', 'D3', 1) :  None :  0.0 :   1.0
         ('D3', 'D3', 2) :  None :  0.0 :   1.0
         ('D3', 'D3', 3) :  None :  0.0 :   1.0
         ('D3', 'D3', 4) :  None :  0.0 :   1.0
         ('D3', 'D3', 5) :  None :  0.0 :   1.0
         ('D3', 'D3', 6) :  None :  1.0 :   1.0
         ('D3', 'D3', 7) :  None :  1.0 :   1.0
         ('D3', 'D3', 8) :  None :  0.0 :   1.0
         ('D3', 'D3', 9) :  None :  0.0 :   1.0
        ('D3', 'D3', 10) :  None :  0.0 :   1.0
        ('D3', 'D3', 11) :  None :  1.0 :   1.0
        ('D3', 'D3', 12) :  None :  1.0 :   1.0
         ('D3', 'E3', 0) :  None :  1.0 :   1.0
         ('D3', 'E3', 1) :  None :  1.0 :   1.0
         ('D3', 'E3', 2) :  None :  0.0 :   1.0
         ('D3', 'E3', 3) :  None :  0.0 :   1.0
         ('D3', 'E3', 4) :  None :  0.0 :   1.0
         ('D3', 'E3', 5) :  None :  0.0 :   1.0
         ('D3', 'E3', 6) :  None :  0.0 :   1.0
         ('D3', 'E3', 7) :  None :  0.0 :   1.0
         ('D3', 'E3', 8) :  None :  1.0 :   1.0
         ('D3', 'E3', 9) :  None :  1.0 :   1.0
        ('D3', 'E3', 10) :  None :  1.0 :   1.0
        ('D3', 'E3', 11) :  None :  1.0 :   1.0
        ('D3', 'E3', 12) :  None :  1.0 :   1.0
         ('D3', 'F3', 0) :  None :  1.0 :   1.0
         ('D3', 'F3', 1) :  None :  1.0 :   1.0
         ('D3', 'F3', 2) :  None :  0.0 :   1.0
         ('D3', 'F3', 3) :  None :  1.0 :   1.0
         ('D3', 'F3', 4) :  None :  1.0 :   1.0
         ('D3', 'F3', 5) :  None :  0.0 :   1.0
         ('D3', 'F3', 6) :  None :  1.0 :   1.0
         ('D3', 'F3', 7) :  None :  1.0 :   1.0
         ('D3', 'F3', 8) :  None :  1.0 :   1.0
         ('D3', 'F3', 9) :  None :  0.0 :   1.0
        ('D3', 'F3', 10) :  None :  0.0 :   1.0
        ('D3', 'F3', 11) :  None :  0.0 :   1.0
        ('D3', 'F3', 12) :  None :  1.0 :   1.0
         ('D3', 'G3', 0) :  None :  1.0 :   1.0
         ('D3', 'G3', 1) :  None :  0.0 :   1.0
         ('D3', 'G3', 2) :  None :  0.0 :   1.0
         ('D3', 'G3', 3) :  None :  0.0 :   1.0
         ('D3', 'G3', 4) :  None :  0.0 :   1.0
         ('D3', 'G3', 5) :  None :  1.0 :   1.0
         ('D3', 'G3', 6) :  None :  1.0 :   1.0
         ('D3', 'G3', 7) :  None :  0.0 :   1.0
         ('D3', 'G3', 8) :  None :  0.0 :   1.0
         ('D3', 'G3', 9) :  None :  0.0 :   1.0
        ('D3', 'G3', 10) :  None :  0.0 :   1.0
        ('D3', 'G3', 11) :  None :  0.0 :   1.0
        ('D3', 'G3', 12) :  None :  0.0 :   1.0
         ('D3', 'H3', 0) :  None :  0.0 :   1.0
         ('D3', 'H3', 1) :  None :  1.0 :   1.0
         ('D3', 'H3', 2) :  None :  1.0 :   1.0
         ('D3', 'H3', 3) :  None :  0.0 :   1.0
         ('D3', 'H3', 4) :  None :  0.0 :   1.0
         ('D3', 'H3', 5) :  None :  0.0 :   1.0
         ('D3', 'H3', 6) :  None :  0.0 :   1.0
         ('D3', 'H3', 7) :  None :  0.0 :   1.0
         ('D3', 'H3', 8) :  None :  0.0 :   1.0
         ('D3', 'H3', 9) :  None :  1.0 :   1.0
        ('D3', 'H3', 10) :  None :  1.0 :   1.0
        ('D3', 'H3', 11) :  None :  0.0 :   1.0
        ('D3', 'H3', 12) :  None :  0.0 :   1.0
         ('D3', 'I3', 0) :  None :  1.0 :   1.0
         ('D3', 'I3', 1) :  None :  1.0 :   1.0
         ('D3', 'I3', 2) :  None :  1.0 :   1.0
         ('D3', 'I3', 3) :  None :  1.0 :   1.0
         ('D3', 'I3', 4) :  None :  0.0 :   1.0
         ('D3', 'I3', 5) :  None :  0.0 :   1.0
         ('D3', 'I3', 6) :  None :  0.0 :   1.0
         ('D3', 'I3', 7) :  None :  0.0 :   1.0
         ('D3', 'I3', 8) :  None :  0.0 :   1.0
         ('D3', 'I3', 9) :  None :  0.0 :   1.0
        ('D3', 'I3', 10) :  None :  0.0 :   1.0
        ('D3', 'I3', 11) :  None :  0.0 :   1.0
        ('D3', 'I3', 12) :  None :  0.0 :   1.0
         ('D3', 'J3', 0) :  None :  0.0 :   1.0
         ('D3', 'J3', 1) :  None :  0.0 :   1.0
         ('D3', 'J3', 2) :  None :  1.0 :   1.0
         ('D3', 'J3', 3) :  None :  0.0 :   1.0
         ('D3', 'J3', 4) :  None :  1.0 :   1.0
         ('D3', 'J3', 5) :  None :  0.0 :   1.0
         ('D3', 'J3', 6) :  None :  0.0 :   1.0
         ('D3', 'J3', 7) :  None :  1.0 :   1.0
         ('D3', 'J3', 8) :  None :  1.0 :   1.0
         ('D3', 'J3', 9) :  None :  1.0 :   1.0
        ('D3', 'J3', 10) :  None :  0.0 :   1.0
        ('D3', 'J3', 11) :  None :  0.0 :   1.0
        ('D3', 'J3', 12) :  None :  1.0 :   1.0
         ('D3', 'K3', 0) :  None :  1.0 :   1.0
         ('D3', 'K3', 1) :  None :  1.0 :   1.0
         ('D3', 'K3', 2) :  None :  0.0 :   1.0
         ('D3', 'K3', 3) :  None :  0.0 :   1.0
         ('D3', 'K3', 4) :  None :  0.0 :   1.0
         ('D3', 'K3', 5) :  None :  1.0 :   1.0
         ('D3', 'K3', 6) :  None :  1.0 :   1.0
         ('D3', 'K3', 7) :  None :  1.0 :   1.0
         ('D3', 'K3', 8) :  None :  1.0 :   1.0
         ('D3', 'K3', 9) :  None :  1.0 :   1.0
        ('D3', 'K3', 10) :  None :  1.0 :   1.0
        ('D3', 'K3', 11) :  None :  0.0 :   1.0
        ('D3', 'K3', 12) :  None :  0.0 :   1.0
         ('D3', 'L3', 0) :  None :  0.0 :   1.0
         ('D3', 'L3', 1) :  None :  0.0 :   1.0
         ('D3', 'L3', 2) :  None :  0.0 :   1.0
         ('D3', 'L3', 3) :  None :  0.0 :   1.0
         ('D3', 'L3', 4) :  None :  0.0 :   1.0
         ('D3', 'L3', 5) :  None :  1.0 :   1.0
         ('D3', 'L3', 6) :  None :  1.0 :   1.0
         ('D3', 'L3', 7) :  None :  1.0 :   1.0
         ('D3', 'L3', 8) :  None :  0.0 :   1.0
         ('D3', 'L3', 9) :  None :  0.0 :   1.0
        ('D3', 'L3', 10) :  None :  0.0 :   1.0
        ('D3', 'L3', 11) :  None :  0.0 :   1.0
        ('D3', 'L3', 12) :  None :  0.0 :   1.0
         ('D3', 'M3', 0) :  None :  0.0 :   1.0
         ('D3', 'M3', 1) :  None :  0.0 :   1.0
         ('D3', 'M3', 2) :  None :  1.0 :   1.0
         ('D3', 'M3', 3) :  None :  1.0 :   1.0
         ('D3', 'M3', 4) :  None :  0.0 :   1.0
         ('D3', 'M3', 5) :  None :  0.0 :   1.0
         ('D3', 'M3', 6) :  None :  0.0 :   1.0
         ('D3', 'M3', 7) :  None :  1.0 :   1.0
         ('D3', 'M3', 8) :  None :  1.0 :   1.0
         ('D3', 'M3', 9) :  None :  0.0 :   1.0
        ('D3', 'M3', 10) :  None :  1.0 :   1.0
        ('D3', 'M3', 11) :  None :  0.0 :   1.0
        ('D3', 'M3', 12) :  None :  0.0 :   1.0
         ('D3', 'N3', 0) :  None :  0.0 :   1.0
         ('D3', 'N3', 1) :  None :  1.0 :   1.0
         ('D3', 'N3', 2) :  None :  1.0 :   1.0
         ('D3', 'N3', 3) :  None :  0.0 :   1.0
         ('D3', 'N3', 4) :  None :  0.0 :   1.0
         ('D3', 'N3', 5) :  None :  0.0 :   1.0
         ('D3', 'N3', 6) :  None :  0.0 :   1.0
         ('D3', 'N3', 7) :  None :  0.0 :   1.0
         ('D3', 'N3', 8) :  None :  0.0 :   1.0
         ('D3', 'N3', 9) :  None :  0.0 :   1.0
        ('D3', 'N3', 10) :  None :  1.0 :   1.0
        ('D3', 'N3', 11) :  None :  1.0 :   1.0
        ('D3', 'N3', 12) :  None :  0.0 :   1.0
         ('D3', 'O3', 0) :  None :  0.0 :   1.0
         ('D3', 'O3', 1) :  None :  0.0 :   1.0
         ('D3', 'O3', 2) :  None :  0.0 :   1.0
         ('D3', 'O3', 3) :  None :  0.0 :   1.0
         ('D3', 'O3', 4) :  None :  1.0 :   1.0
         ('D3', 'O3', 5) :  None :  1.0 :   1.0
         ('D3', 'O3', 6) :  None :  1.0 :   1.0
         ('D3', 'O3', 7) :  None :  1.0 :   1.0
         ('D3', 'O3', 8) :  None :  1.0 :   1.0
         ('D3', 'O3', 9) :  None :  0.0 :   1.0
        ('D3', 'O3', 10) :  None :  0.0 :   1.0
        ('D3', 'O3', 11) :  None :  0.0 :   1.0
        ('D3', 'O3', 12) :  None :  0.0 :   1.0
         ('D3', 'P3', 0) :  None :  0.0 :   1.0
         ('D3', 'P3', 1) :  None :  0.0 :   1.0
         ('D3', 'P3', 2) :  None :  0.0 :   1.0
         ('D3', 'P3', 3) :  None :  0.0 :   1.0
         ('D3', 'P3', 4) :  None :  1.0 :   1.0
         ('D3', 'P3', 5) :  None :  1.0 :   1.0
         ('D3', 'P3', 6) :  None :  0.0 :   1.0
         ('D3', 'P3', 7) :  None :  1.0 :   1.0
         ('D3', 'P3', 8) :  None :  0.0 :   1.0
         ('D3', 'P3', 9) :  None :  0.0 :   1.0
        ('D3', 'P3', 10) :  None :  1.0 :   1.0
        ('D3', 'P3', 11) :  None :  0.0 :   1.0
        ('D3', 'P3', 12) :  None :  0.0 :   1.0
         ('D3', 'Q3', 0) :  None :  0.0 :   1.0
         ('D3', 'Q3', 1) :  None :  0.0 :   1.0
         ('D3', 'Q3', 2) :  None :  0.0 :   1.0
         ('D3', 'Q3', 3) :  None :  0.0 :   1.0
         ('D3', 'Q3', 4) :  None :  0.0 :   1.0
         ('D3', 'Q3', 5) :  None :  0.0 :   1.0
         ('D3', 'Q3', 6) :  None :  0.0 :   1.0
         ('D3', 'Q3', 7) :  None :  0.0 :   1.0
         ('D3', 'Q3', 8) :  None :  0.0 :   1.0
         ('D3', 'Q3', 9) :  None :  0.0 :   1.0
        ('D3', 'Q3', 10) :  None :  0.0 :   1.0
        ('D3', 'Q3', 11) :  None :  0.0 :   1.0
        ('D3', 'Q3', 12) :  None :  1.0 :   1.0
         ('D3', 'R3', 0) :  None :  0.0 :   1.0
         ('D3', 'R3', 1) :  None :  0.0 :   1.0
         ('D3', 'R3', 2) :  None :  0.0 :   1.0
         ('D3', 'R3', 3) :  None :  0.0 :   1.0
         ('D3', 'R3', 4) :  None :  0.0 :   1.0
         ('D3', 'R3', 5) :  None :  0.0 :   1.0
         ('D3', 'R3', 6) :  None :  0.0 :   1.0
         ('D3', 'R3', 7) :  None :  1.0 :   1.0
         ('D3', 'R3', 8) :  None :  0.0 :   1.0
         ('D3', 'R3', 9) :  None :  0.0 :   1.0
        ('D3', 'R3', 10) :  None :  0.0 :   1.0
        ('D3', 'R3', 11) :  None :  1.0 :   1.0
        ('D3', 'R3', 12) :  None :  1.0 :   1.0
         ('D3', 'S3', 0) :  None :  1.0 :   1.0
         ('D3', 'S3', 1) :  None :  0.0 :   1.0
         ('D3', 'S3', 2) :  None :  0.0 :   1.0
         ('D3', 'S3', 3) :  None :  0.0 :   1.0
         ('D3', 'S3', 4) :  None :  1.0 :   1.0
         ('D3', 'S3', 5) :  None :  1.0 :   1.0
         ('D3', 'S3', 6) :  None :  1.0 :   1.0
         ('D3', 'S3', 7) :  None :  0.0 :   1.0
         ('D3', 'S3', 8) :  None :  0.0 :   1.0
         ('D3', 'S3', 9) :  None :  0.0 :   1.0
        ('D3', 'S3', 10) :  None :  0.0 :   1.0
        ('D3', 'S3', 11) :  None :  0.0 :   1.0
        ('D3', 'S3', 12) :  None :  0.0 :   1.0
         ('D3', 'T3', 0) :  None :  0.0 :   1.0
         ('D3', 'T3', 1) :  None :  0.0 :   1.0
         ('D3', 'T3', 2) :  None :  1.0 :   1.0
         ('D3', 'T3', 3) :  None :  1.0 :   1.0
         ('D3', 'T3', 4) :  None :  1.0 :   1.0
         ('D3', 'T3', 5) :  None :  1.0 :   1.0
         ('D3', 'T3', 6) :  None :  0.0 :   1.0
         ('D3', 'T3', 7) :  None :  0.0 :   1.0
         ('D3', 'T3', 8) :  None :  0.0 :   1.0
         ('D3', 'T3', 9) :  None :  0.0 :   1.0
        ('D3', 'T3', 10) :  None :  0.0 :   1.0
        ('D3', 'T3', 11) :  None :  0.0 :   1.0
        ('D3', 'T3', 12) :  None :  0.0 :   1.0
         ('E3', 'A3', 0) :  None :  0.0 :   1.0
         ('E3', 'A3', 1) :  None : -0.0 :   1.0
         ('E3', 'A3', 2) :  None : -0.0 :   1.0
         ('E3', 'A3', 3) :  None : -0.0 :   1.0
         ('E3', 'A3', 4) :  None : -0.0 :   1.0
         ('E3', 'A3', 5) :  None :  0.0 :   1.0
         ('E3', 'A3', 6) :  None :  0.0 :   1.0
         ('E3', 'A3', 7) :  None :  1.0 :   1.0
         ('E3', 'A3', 8) :  None :  0.0 :   1.0
         ('E3', 'A3', 9) :  None : -0.0 :   1.0
        ('E3', 'A3', 10) :  None : -0.0 :   1.0
        ('E3', 'A3', 11) :  None : -0.0 :   1.0
        ('E3', 'A3', 12) :  None : -0.0 :   1.0
         ('E3', 'B3', 0) :  None : -0.0 :   1.0
         ('E3', 'B3', 1) :  None : -0.0 :   1.0
         ('E3', 'B3', 2) :  None : -0.0 :   1.0
         ('E3', 'B3', 3) :  None : -0.0 :   1.0
         ('E3', 'B3', 4) :  None : -0.0 :   1.0
         ('E3', 'B3', 5) :  None : -0.0 :   1.0
         ('E3', 'B3', 6) :  None :  0.0 :   1.0
         ('E3', 'B3', 7) :  None : -0.0 :   1.0
         ('E3', 'B3', 8) :  None :  0.0 :   1.0
         ('E3', 'B3', 9) :  None : -0.0 :   1.0
        ('E3', 'B3', 10) :  None : -0.0 :   1.0
        ('E3', 'B3', 11) :  None : -0.0 :   1.0
        ('E3', 'B3', 12) :  None : -0.0 :   1.0
         ('E3', 'C3', 0) :  None : -0.0 :   1.0
         ('E3', 'C3', 1) :  None :  0.0 :   1.0
         ('E3', 'C3', 2) :  None :  0.0 :   1.0
         ('E3', 'C3', 3) :  None :  1.0 :   1.0
         ('E3', 'C3', 4) :  None :  1.0 :   1.0
         ('E3', 'C3', 5) :  None : -0.0 :   1.0
         ('E3', 'C3', 6) :  None :  0.0 :   1.0
         ('E3', 'C3', 7) :  None : -0.0 :   1.0
         ('E3', 'C3', 8) :  None : -0.0 :   1.0
         ('E3', 'C3', 9) :  None :  1.0 :   1.0
        ('E3', 'C3', 10) :  None :  1.0 :   1.0
        ('E3', 'C3', 11) :  None : -0.0 :   1.0
        ('E3', 'C3', 12) :  None : -0.0 :   1.0
         ('E3', 'D3', 0) :  None :  0.0 :   1.0
         ('E3', 'D3', 1) :  None : -0.0 :   1.0
         ('E3', 'D3', 2) :  None :  0.0 :   1.0
         ('E3', 'D3', 3) :  None : -0.0 :   1.0
         ('E3', 'D3', 4) :  None : -0.0 :   1.0
         ('E3', 'D3', 5) :  None : -0.0 :   1.0
         ('E3', 'D3', 6) :  None :  0.0 :   1.0
         ('E3', 'D3', 7) :  None :  1.0 :   1.0
         ('E3', 'D3', 8) :  None :  1.0 :   1.0
         ('E3', 'D3', 9) :  None : -0.0 :   1.0
        ('E3', 'D3', 10) :  None :  0.0 :   1.0
        ('E3', 'D3', 11) :  None :  0.0 :   1.0
        ('E3', 'D3', 12) :  None :  1.0 :   1.0
         ('E3', 'E3', 0) :  None :  1.0 :   1.0
         ('E3', 'E3', 1) :  None :  1.0 :   1.0
         ('E3', 'E3', 2) :  None :  1.0 :   1.0
         ('E3', 'E3', 3) :  None :  0.0 :   1.0
         ('E3', 'E3', 4) :  None :  0.0 :   1.0
         ('E3', 'E3', 5) :  None :  0.0 :   1.0
         ('E3', 'E3', 6) :  None :  0.0 :   1.0
         ('E3', 'E3', 7) :  None :  0.0 :   1.0
         ('E3', 'E3', 8) :  None :  0.0 :   1.0
         ('E3', 'E3', 9) :  None :  1.0 :   1.0
        ('E3', 'E3', 10) :  None :  1.0 :   1.0
        ('E3', 'E3', 11) :  None :  1.0 :   1.0
        ('E3', 'E3', 12) :  None :  1.0 :   1.0
         ('E3', 'F3', 0) :  None :  0.0 :   1.0
         ('E3', 'F3', 1) :  None :  1.0 :   1.0
         ('E3', 'F3', 2) :  None :  1.0 :   1.0
         ('E3', 'F3', 3) :  None : -0.0 :   1.0
         ('E3', 'F3', 4) :  None : -0.0 :   1.0
         ('E3', 'F3', 5) :  None :  0.0 :   1.0
         ('E3', 'F3', 6) :  None :  0.0 :   1.0
         ('E3', 'F3', 7) :  None :  1.0 :   1.0
         ('E3', 'F3', 8) :  None :  1.0 :   1.0
         ('E3', 'F3', 9) :  None :  1.0 :   1.0
        ('E3', 'F3', 10) :  None : -0.0 :   1.0
        ('E3', 'F3', 11) :  None :  0.0 :   1.0
        ('E3', 'F3', 12) :  None : -0.0 :   1.0
         ('E3', 'G3', 0) :  None :  0.0 :   1.0
         ('E3', 'G3', 1) :  None : -0.0 :   1.0
         ('E3', 'G3', 2) :  None :  0.0 :   1.0
         ('E3', 'G3', 3) :  None :  0.0 :   1.0
         ('E3', 'G3', 4) :  None :  0.0 :   1.0
         ('E3', 'G3', 5) :  None :  0.0 :   1.0
         ('E3', 'G3', 6) :  None :  0.0 :   1.0
         ('E3', 'G3', 7) :  None : -0.0 :   1.0
         ('E3', 'G3', 8) :  None : -0.0 :   1.0
         ('E3', 'G3', 9) :  None : -0.0 :   1.0
        ('E3', 'G3', 10) :  None : -0.0 :   1.0
        ('E3', 'G3', 11) :  None : -0.0 :   1.0
        ('E3', 'G3', 12) :  None :  0.0 :   1.0
         ('E3', 'H3', 0) :  None : -0.0 :   1.0
         ('E3', 'H3', 1) :  None :  0.0 :   1.0
         ('E3', 'H3', 2) :  None :  1.0 :   1.0
         ('E3', 'H3', 3) :  None :  1.0 :   1.0
         ('E3', 'H3', 4) :  None :  0.0 :   1.0
         ('E3', 'H3', 5) :  None :  0.0 :   1.0
         ('E3', 'H3', 6) :  None :  0.0 :   1.0
         ('E3', 'H3', 7) :  None : -0.0 :   1.0
         ('E3', 'H3', 8) :  None : -0.0 :   1.0
         ('E3', 'H3', 9) :  None : -0.0 :   1.0
        ('E3', 'H3', 10) :  None : -0.0 :   1.0
        ('E3', 'H3', 11) :  None : -0.0 :   1.0
        ('E3', 'H3', 12) :  None :  0.0 :   1.0
         ('E3', 'I3', 0) :  None : -0.0 :   1.0
         ('E3', 'I3', 1) :  None : -0.0 :   1.0
         ('E3', 'I3', 2) :  None : -0.0 :   1.0
         ('E3', 'I3', 3) :  None : -0.0 :   1.0
         ('E3', 'I3', 4) :  None : -0.0 :   1.0
         ('E3', 'I3', 5) :  None :  0.0 :   1.0
         ('E3', 'I3', 6) :  None :  0.0 :   1.0
         ('E3', 'I3', 7) :  None : -0.0 :   1.0
         ('E3', 'I3', 8) :  None :  0.0 :   1.0
         ('E3', 'I3', 9) :  None : -0.0 :   1.0
        ('E3', 'I3', 10) :  None :  0.0 :   1.0
        ('E3', 'I3', 11) :  None : -0.0 :   1.0
        ('E3', 'I3', 12) :  None : -0.0 :   1.0
         ('E3', 'J3', 0) :  None :  1.0 :   1.0
         ('E3', 'J3', 1) :  None : -0.0 :   1.0
         ('E3', 'J3', 2) :  None :  0.0 :   1.0
         ('E3', 'J3', 3) :  None :  1.0 :   1.0
         ('E3', 'J3', 4) :  None :  0.0 :   1.0
         ('E3', 'J3', 5) :  None :  0.0 :   1.0
         ('E3', 'J3', 6) :  None :  0.0 :   1.0
         ('E3', 'J3', 7) :  None : -0.0 :   1.0
         ('E3', 'J3', 8) :  None : -0.0 :   1.0
         ('E3', 'J3', 9) :  None : -0.0 :   1.0
        ('E3', 'J3', 10) :  None :  0.0 :   1.0
        ('E3', 'J3', 11) :  None : -0.0 :   1.0
        ('E3', 'J3', 12) :  None :  0.0 :   1.0
         ('E3', 'K3', 0) :  None : -0.0 :   1.0
         ('E3', 'K3', 1) :  None : -0.0 :   1.0
         ('E3', 'K3', 2) :  None : -0.0 :   1.0
         ('E3', 'K3', 3) :  None : -0.0 :   1.0
         ('E3', 'K3', 4) :  None :  0.0 :   1.0
         ('E3', 'K3', 5) :  None : -0.0 :   1.0
         ('E3', 'K3', 6) :  None : -0.0 :   1.0
         ('E3', 'K3', 7) :  None : -0.0 :   1.0
         ('E3', 'K3', 8) :  None : -0.0 :   1.0
         ('E3', 'K3', 9) :  None : -0.0 :   1.0
        ('E3', 'K3', 10) :  None : -0.0 :   1.0
        ('E3', 'K3', 11) :  None : -0.0 :   1.0
        ('E3', 'K3', 12) :  None : -0.0 :   1.0
         ('E3', 'L3', 0) :  None :  0.0 :   1.0
         ('E3', 'L3', 1) :  None :  0.0 :   1.0
         ('E3', 'L3', 2) :  None :  0.0 :   1.0
         ('E3', 'L3', 3) :  None :  0.0 :   1.0
         ('E3', 'L3', 4) :  None :  0.0 :   1.0
         ('E3', 'L3', 5) :  None :  0.0 :   1.0
         ('E3', 'L3', 6) :  None :  0.0 :   1.0
         ('E3', 'L3', 7) :  None :  0.0 :   1.0
         ('E3', 'L3', 8) :  None :  0.0 :   1.0
         ('E3', 'L3', 9) :  None :  0.0 :   1.0
        ('E3', 'L3', 10) :  None :  0.0 :   1.0
        ('E3', 'L3', 11) :  None :  0.0 :   1.0
        ('E3', 'L3', 12) :  None :  0.0 :   1.0
         ('E3', 'M3', 0) :  None : -0.0 :   1.0
         ('E3', 'M3', 1) :  None :  0.0 :   1.0
         ('E3', 'M3', 2) :  None : -0.0 :   1.0
         ('E3', 'M3', 3) :  None : -0.0 :   1.0
         ('E3', 'M3', 4) :  None : -0.0 :   1.0
         ('E3', 'M3', 5) :  None : -0.0 :   1.0
         ('E3', 'M3', 6) :  None : -0.0 :   1.0
         ('E3', 'M3', 7) :  None : -0.0 :   1.0
         ('E3', 'M3', 8) :  None :  1.0 :   1.0
         ('E3', 'M3', 9) :  None :  1.0 :   1.0
        ('E3', 'M3', 10) :  None : -0.0 :   1.0
        ('E3', 'M3', 11) :  None : -0.0 :   1.0
        ('E3', 'M3', 12) :  None : -0.0 :   1.0
         ('E3', 'N3', 0) :  None :  0.0 :   1.0
         ('E3', 'N3', 1) :  None :  0.0 :   1.0
         ('E3', 'N3', 2) :  None :  0.0 :   1.0
         ('E3', 'N3', 3) :  None :  0.0 :   1.0
         ('E3', 'N3', 4) :  None :  0.0 :   1.0
         ('E3', 'N3', 5) :  None :  0.0 :   1.0
         ('E3', 'N3', 6) :  None :  0.0 :   1.0
         ('E3', 'N3', 7) :  None :  0.0 :   1.0
         ('E3', 'N3', 8) :  None :  0.0 :   1.0
         ('E3', 'N3', 9) :  None :  0.0 :   1.0
        ('E3', 'N3', 10) :  None :  0.0 :   1.0
        ('E3', 'N3', 11) :  None :  0.0 :   1.0
        ('E3', 'N3', 12) :  None :  0.0 :   1.0
         ('E3', 'O3', 0) :  None :  0.0 :   1.0
         ('E3', 'O3', 1) :  None :  0.0 :   1.0
         ('E3', 'O3', 2) :  None :  0.0 :   1.0
         ('E3', 'O3', 3) :  None :  0.0 :   1.0
         ('E3', 'O3', 4) :  None :  0.0 :   1.0
         ('E3', 'O3', 5) :  None :  0.0 :   1.0
         ('E3', 'O3', 6) :  None :  0.0 :   1.0
         ('E3', 'O3', 7) :  None :  0.0 :   1.0
         ('E3', 'O3', 8) :  None :  0.0 :   1.0
         ('E3', 'O3', 9) :  None :  0.0 :   1.0
        ('E3', 'O3', 10) :  None :  0.0 :   1.0
        ('E3', 'O3', 11) :  None :  0.0 :   1.0
        ('E3', 'O3', 12) :  None :  0.0 :   1.0
         ('E3', 'P3', 0) :  None : -0.0 :   1.0
         ('E3', 'P3', 1) :  None : -0.0 :   1.0
         ('E3', 'P3', 2) :  None :  0.0 :   1.0
         ('E3', 'P3', 3) :  None : -0.0 :   1.0
         ('E3', 'P3', 4) :  None : -0.0 :   1.0
         ('E3', 'P3', 5) :  None :  1.0 :   1.0
         ('E3', 'P3', 6) :  None :  1.0 :   1.0
         ('E3', 'P3', 7) :  None : -0.0 :   1.0
         ('E3', 'P3', 8) :  None : -0.0 :   1.0
         ('E3', 'P3', 9) :  None : -0.0 :   1.0
        ('E3', 'P3', 10) :  None :  0.0 :   1.0
        ('E3', 'P3', 11) :  None :  1.0 :   1.0
        ('E3', 'P3', 12) :  None : -0.0 :   1.0
         ('E3', 'Q3', 0) :  None :  0.0 :   1.0
         ('E3', 'Q3', 1) :  None :  0.0 :   1.0
         ('E3', 'Q3', 2) :  None :  0.0 :   1.0
         ('E3', 'Q3', 3) :  None :  0.0 :   1.0
         ('E3', 'Q3', 4) :  None :  0.0 :   1.0
         ('E3', 'Q3', 5) :  None :  0.0 :   1.0
         ('E3', 'Q3', 6) :  None :  0.0 :   1.0
         ('E3', 'Q3', 7) :  None :  0.0 :   1.0
         ('E3', 'Q3', 8) :  None :  0.0 :   1.0
         ('E3', 'Q3', 9) :  None :  0.0 :   1.0
        ('E3', 'Q3', 10) :  None :  0.0 :   1.0
        ('E3', 'Q3', 11) :  None :  0.0 :   1.0
        ('E3', 'Q3', 12) :  None :  0.0 :   1.0
         ('E3', 'R3', 0) :  None : -0.0 :   1.0
         ('E3', 'R3', 1) :  None :  0.0 :   1.0
         ('E3', 'R3', 2) :  None : -0.0 :   1.0
         ('E3', 'R3', 3) :  None :  0.0 :   1.0
         ('E3', 'R3', 4) :  None :  0.0 :   1.0
         ('E3', 'R3', 5) :  None : -0.0 :   1.0
         ('E3', 'R3', 6) :  None :  0.0 :   1.0
         ('E3', 'R3', 7) :  None : -0.0 :   1.0
         ('E3', 'R3', 8) :  None : -0.0 :   1.0
         ('E3', 'R3', 9) :  None :  0.0 :   1.0
        ('E3', 'R3', 10) :  None :  0.0 :   1.0
        ('E3', 'R3', 11) :  None :  0.0 :   1.0
        ('E3', 'R3', 12) :  None : -0.0 :   1.0
         ('E3', 'S3', 0) :  None : -0.0 :   1.0
         ('E3', 'S3', 1) :  None :  1.0 :   1.0
         ('E3', 'S3', 2) :  None : -0.0 :   1.0
         ('E3', 'S3', 3) :  None : -0.0 :   1.0
         ('E3', 'S3', 4) :  None : -0.0 :   1.0
         ('E3', 'S3', 5) :  None :  1.0 :   1.0
         ('E3', 'S3', 6) :  None :  1.0 :   1.0
         ('E3', 'S3', 7) :  None :  1.0 :   1.0
         ('E3', 'S3', 8) :  None :  0.0 :   1.0
         ('E3', 'S3', 9) :  None : -0.0 :   1.0
        ('E3', 'S3', 10) :  None : -0.0 :   1.0
        ('E3', 'S3', 11) :  None : -0.0 :   1.0
        ('E3', 'S3', 12) :  None : -0.0 :   1.0
         ('E3', 'T3', 0) :  None : -0.0 :   1.0
         ('E3', 'T3', 1) :  None : -0.0 :   1.0
         ('E3', 'T3', 2) :  None : -0.0 :   1.0
         ('E3', 'T3', 3) :  None :  1.0 :   1.0
         ('E3', 'T3', 4) :  None :  1.0 :   1.0
         ('E3', 'T3', 5) :  None :  1.0 :   1.0
         ('E3', 'T3', 6) :  None :  1.0 :   1.0
         ('E3', 'T3', 7) :  None : -0.0 :   1.0
         ('E3', 'T3', 8) :  None : -0.0 :   1.0
         ('E3', 'T3', 9) :  None : -0.0 :   1.0
        ('E3', 'T3', 10) :  None : -0.0 :   1.0
        ('E3', 'T3', 11) :  None :  0.0 :   1.0
        ('E3', 'T3', 12) :  None : -0.0 :   1.0
         ('L3', 'A3', 0) :  None :  0.0 :   1.0
         ('L3', 'A3', 1) :  None :  1.0 :   1.0
         ('L3', 'A3', 2) :  None :  1.0 :   1.0
         ('L3', 'A3', 3) :  None :  1.0 :   1.0
         ('L3', 'A3', 4) :  None :  0.0 :   1.0
         ('L3', 'A3', 5) :  None :  0.0 :   1.0
         ('L3', 'A3', 6) :  None :  1.0 :   1.0
         ('L3', 'A3', 7) :  None :  1.0 :   1.0
         ('L3', 'A3', 8) :  None :  1.0 :   1.0
         ('L3', 'A3', 9) :  None :  0.0 :   1.0
        ('L3', 'A3', 10) :  None :  0.0 :   1.0
        ('L3', 'A3', 11) :  None :  1.0 :   1.0
        ('L3', 'A3', 12) :  None :  1.0 :   1.0
         ('L3', 'B3', 0) :  None :  1.0 :   1.0
         ('L3', 'B3', 1) :  None :  1.0 :   1.0
         ('L3', 'B3', 2) :  None :  1.0 :   1.0
         ('L3', 'B3', 3) :  None :  1.0 :   1.0
         ('L3', 'B3', 4) :  None :  0.0 :   1.0
         ('L3', 'B3', 5) :  None :  0.0 :   1.0
         ('L3', 'B3', 6) :  None :  0.0 :   1.0
         ('L3', 'B3', 7) :  None :  0.0 :   1.0
         ('L3', 'B3', 8) :  None :  1.0 :   1.0
         ('L3', 'B3', 9) :  None :  1.0 :   1.0
        ('L3', 'B3', 10) :  None :  1.0 :   1.0
        ('L3', 'B3', 11) :  None :  1.0 :   1.0
        ('L3', 'B3', 12) :  None :  0.0 :   1.0
         ('L3', 'C3', 0) :  None :  1.0 :   1.0
         ('L3', 'C3', 1) :  None :  0.0 :   1.0
         ('L3', 'C3', 2) :  None :  1.0 :   1.0
         ('L3', 'C3', 3) :  None :  1.0 :   1.0
         ('L3', 'C3', 4) :  None :  1.0 :   1.0
         ('L3', 'C3', 5) :  None :  1.0 :   1.0
         ('L3', 'C3', 6) :  None :  0.0 :   1.0
         ('L3', 'C3', 7) :  None :  0.0 :   1.0
         ('L3', 'C3', 8) :  None :  1.0 :   1.0
         ('L3', 'C3', 9) :  None :  1.0 :   1.0
        ('L3', 'C3', 10) :  None :  0.0 :   1.0
        ('L3', 'C3', 11) :  None :  1.0 :   1.0
        ('L3', 'C3', 12) :  None :  0.0 :   1.0
         ('L3', 'D3', 0) :  None :  0.0 :   1.0
         ('L3', 'D3', 1) :  None :  1.0 :   1.0
         ('L3', 'D3', 2) :  None :  1.0 :   1.0
         ('L3', 'D3', 3) :  None :  1.0 :   1.0
         ('L3', 'D3', 4) :  None :  1.0 :   1.0
         ('L3', 'D3', 5) :  None :  0.0 :   1.0
         ('L3', 'D3', 6) :  None :  1.0 :   1.0
         ('L3', 'D3', 7) :  None :  1.0 :   1.0
         ('L3', 'D3', 8) :  None :  0.0 :   1.0
         ('L3', 'D3', 9) :  None :  1.0 :   1.0
        ('L3', 'D3', 10) :  None :  0.0 :   1.0
        ('L3', 'D3', 11) :  None :  1.0 :   1.0
        ('L3', 'D3', 12) :  None :  1.0 :   1.0
         ('L3', 'E3', 0) :  None :  1.0 :   1.0
         ('L3', 'E3', 1) :  None :  1.0 :   1.0
         ('L3', 'E3', 2) :  None :  0.0 :   1.0
         ('L3', 'E3', 3) :  None :  0.0 :   1.0
         ('L3', 'E3', 4) :  None :  0.0 :   1.0
         ('L3', 'E3', 5) :  None :  0.0 :   1.0
         ('L3', 'E3', 6) :  None :  0.0 :   1.0
         ('L3', 'E3', 7) :  None :  0.0 :   1.0
         ('L3', 'E3', 8) :  None :  1.0 :   1.0
         ('L3', 'E3', 9) :  None :  1.0 :   1.0
        ('L3', 'E3', 10) :  None :  1.0 :   1.0
        ('L3', 'E3', 11) :  None :  1.0 :   1.0
        ('L3', 'E3', 12) :  None :  1.0 :   1.0
         ('L3', 'F3', 0) :  None :  1.0 :   1.0
         ('L3', 'F3', 1) :  None :  1.0 :   1.0
         ('L3', 'F3', 2) :  None :  1.0 :   1.0
         ('L3', 'F3', 3) :  None :  1.0 :   1.0
         ('L3', 'F3', 4) :  None :  0.0 :   1.0
         ('L3', 'F3', 5) :  None :  0.0 :   1.0
         ('L3', 'F3', 6) :  None :  1.0 :   1.0
         ('L3', 'F3', 7) :  None :  1.0 :   1.0
         ('L3', 'F3', 8) :  None :  1.0 :   1.0
         ('L3', 'F3', 9) :  None :  0.0 :   1.0
        ('L3', 'F3', 10) :  None :  0.0 :   1.0
        ('L3', 'F3', 11) :  None :  1.0 :   1.0
        ('L3', 'F3', 12) :  None :  1.0 :   1.0
         ('L3', 'G3', 0) :  None :  0.0 :   1.0
         ('L3', 'G3', 1) :  None :  1.0 :   1.0
         ('L3', 'G3', 2) :  None :  1.0 :   1.0
         ('L3', 'G3', 3) :  None :  0.0 :   1.0
         ('L3', 'G3', 4) :  None :  1.0 :   1.0
         ('L3', 'G3', 5) :  None :  1.0 :   1.0
         ('L3', 'G3', 6) :  None :  0.0 :   1.0
         ('L3', 'G3', 7) :  None :  1.0 :   1.0
         ('L3', 'G3', 8) :  None :  0.0 :   1.0
         ('L3', 'G3', 9) :  None :  0.0 :   1.0
        ('L3', 'G3', 10) :  None :  1.0 :   1.0
        ('L3', 'G3', 11) :  None :  1.0 :   1.0
        ('L3', 'G3', 12) :  None :  0.0 :   1.0
         ('L3', 'H3', 0) :  None :  0.0 :   1.0
         ('L3', 'H3', 1) :  None :  1.0 :   1.0
         ('L3', 'H3', 2) :  None :  1.0 :   1.0
         ('L3', 'H3', 3) :  None :  0.0 :   1.0
         ('L3', 'H3', 4) :  None :  1.0 :   1.0
         ('L3', 'H3', 5) :  None :  1.0 :   1.0
         ('L3', 'H3', 6) :  None :  1.0 :   1.0
         ('L3', 'H3', 7) :  None :  0.0 :   1.0
         ('L3', 'H3', 8) :  None :  1.0 :   1.0
         ('L3', 'H3', 9) :  None :  1.0 :   1.0
        ('L3', 'H3', 10) :  None :  0.0 :   1.0
        ('L3', 'H3', 11) :  None :  1.0 :   1.0
        ('L3', 'H3', 12) :  None :  0.0 :   1.0
         ('L3', 'I3', 0) :  None :  1.0 :   1.0
         ('L3', 'I3', 1) :  None :  1.0 :   1.0
         ('L3', 'I3', 2) :  None :  1.0 :   1.0
         ('L3', 'I3', 3) :  None :  0.0 :   1.0
         ('L3', 'I3', 4) :  None :  0.0 :   1.0
         ('L3', 'I3', 5) :  None :  0.0 :   1.0
         ('L3', 'I3', 6) :  None :  0.0 :   1.0
         ('L3', 'I3', 7) :  None :  1.0 :   1.0
         ('L3', 'I3', 8) :  None :  1.0 :   1.0
         ('L3', 'I3', 9) :  None :  1.0 :   1.0
        ('L3', 'I3', 10) :  None :  0.0 :   1.0
        ('L3', 'I3', 11) :  None :  0.0 :   1.0
        ('L3', 'I3', 12) :  None :  1.0 :   1.0
         ('L3', 'J3', 0) :  None :  0.0 :   1.0
         ('L3', 'J3', 1) :  None :  0.0 :   1.0
         ('L3', 'J3', 2) :  None :  1.0 :   1.0
         ('L3', 'J3', 3) :  None :  1.0 :   1.0
         ('L3', 'J3', 4) :  None :  0.0 :   1.0
         ('L3', 'J3', 5) :  None :  0.0 :   1.0
         ('L3', 'J3', 6) :  None :  1.0 :   1.0
         ('L3', 'J3', 7) :  None :  1.0 :   1.0
         ('L3', 'J3', 8) :  None :  1.0 :   1.0
         ('L3', 'J3', 9) :  None :  0.0 :   1.0
        ('L3', 'J3', 10) :  None :  0.0 :   1.0
        ('L3', 'J3', 11) :  None :  1.0 :   1.0
        ('L3', 'J3', 12) :  None :  1.0 :   1.0
         ('L3', 'K3', 0) :  None :  1.0 :   1.0
         ('L3', 'K3', 1) :  None :  0.0 :   1.0
         ('L3', 'K3', 2) :  None :  0.0 :   1.0
         ('L3', 'K3', 3) :  None :  0.0 :   1.0
         ('L3', 'K3', 4) :  None :  1.0 :   1.0
         ('L3', 'K3', 5) :  None :  1.0 :   1.0
         ('L3', 'K3', 6) :  None :  1.0 :   1.0
         ('L3', 'K3', 7) :  None :  1.0 :   1.0
         ('L3', 'K3', 8) :  None :  1.0 :   1.0
         ('L3', 'K3', 9) :  None :  1.0 :   1.0
        ('L3', 'K3', 10) :  None :  0.0 :   1.0
        ('L3', 'K3', 11) :  None :  0.0 :   1.0
        ('L3', 'K3', 12) :  None :  0.0 :   1.0
         ('L3', 'L3', 0) :  None :  1.0 :   1.0
         ('L3', 'L3', 1) :  None :  1.0 :   1.0
         ('L3', 'L3', 2) :  None :  0.0 :   1.0
         ('L3', 'L3', 3) :  None :  0.0 :   1.0
         ('L3', 'L3', 4) :  None :  1.0 :   1.0
         ('L3', 'L3', 5) :  None :  1.0 :   1.0
         ('L3', 'L3', 6) :  None :  1.0 :   1.0
         ('L3', 'L3', 7) :  None :  0.0 :   1.0
         ('L3', 'L3', 8) :  None :  1.0 :   1.0
         ('L3', 'L3', 9) :  None :  1.0 :   1.0
        ('L3', 'L3', 10) :  None :  1.0 :   1.0
        ('L3', 'L3', 11) :  None :  0.0 :   1.0
        ('L3', 'L3', 12) :  None :  0.0 :   1.0
         ('L3', 'M3', 0) :  None :  0.0 :   1.0
         ('L3', 'M3', 1) :  None :  1.0 :   1.0
         ('L3', 'M3', 2) :  None :  1.0 :   1.0
         ('L3', 'M3', 3) :  None :  0.0 :   1.0
         ('L3', 'M3', 4) :  None :  1.0 :   1.0
         ('L3', 'M3', 5) :  None :  0.0 :   1.0
         ('L3', 'M3', 6) :  None :  0.0 :   1.0
         ('L3', 'M3', 7) :  None :  1.0 :   1.0
         ('L3', 'M3', 8) :  None :  1.0 :   1.0
         ('L3', 'M3', 9) :  None :  1.0 :   1.0
        ('L3', 'M3', 10) :  None :  0.0 :   1.0
        ('L3', 'M3', 11) :  None :  1.0 :   1.0
        ('L3', 'M3', 12) :  None :  1.0 :   1.0
         ('L3', 'N3', 0) :  None :  1.0 :   1.0
         ('L3', 'N3', 1) :  None :  1.0 :   1.0
         ('L3', 'N3', 2) :  None :  0.0 :   1.0
         ('L3', 'N3', 3) :  None :  1.0 :   1.0
         ('L3', 'N3', 4) :  None :  1.0 :   1.0
         ('L3', 'N3', 5) :  None :  1.0 :   1.0
         ('L3', 'N3', 6) :  None :  1.0 :   1.0
         ('L3', 'N3', 7) :  None :  0.0 :   1.0
         ('L3', 'N3', 8) :  None :  0.0 :   1.0
         ('L3', 'N3', 9) :  None :  1.0 :   1.0
        ('L3', 'N3', 10) :  None :  1.0 :   1.0
        ('L3', 'N3', 11) :  None :  0.0 :   1.0
        ('L3', 'N3', 12) :  None :  0.0 :   1.0
         ('L3', 'O3', 0) :  None :  1.0 :   1.0
         ('L3', 'O3', 1) :  None :  0.0 :   1.0
         ('L3', 'O3', 2) :  None :  0.0 :   1.0
         ('L3', 'O3', 3) :  None :  1.0 :   1.0
         ('L3', 'O3', 4) :  None :  1.0 :   1.0
         ('L3', 'O3', 5) :  None :  1.0 :   1.0
         ('L3', 'O3', 6) :  None :  1.0 :   1.0
         ('L3', 'O3', 7) :  None :  1.0 :   1.0
         ('L3', 'O3', 8) :  None :  0.0 :   1.0
         ('L3', 'O3', 9) :  None :  1.0 :   1.0
        ('L3', 'O3', 10) :  None :  0.0 :   1.0
        ('L3', 'O3', 11) :  None :  0.0 :   1.0
        ('L3', 'O3', 12) :  None :  0.0 :   1.0
         ('L3', 'P3', 0) :  None :  0.0 :   1.0
         ('L3', 'P3', 1) :  None :  0.0 :   1.0
         ('L3', 'P3', 2) :  None :  0.0 :   1.0
         ('L3', 'P3', 3) :  None :  0.0 :   1.0
         ('L3', 'P3', 4) :  None :  1.0 :   1.0
         ('L3', 'P3', 5) :  None :  1.0 :   1.0
         ('L3', 'P3', 6) :  None :  1.0 :   1.0
         ('L3', 'P3', 7) :  None :  0.0 :   1.0
         ('L3', 'P3', 8) :  None :  0.0 :   1.0
         ('L3', 'P3', 9) :  None :  0.0 :   1.0
        ('L3', 'P3', 10) :  None :  1.0 :   1.0
        ('L3', 'P3', 11) :  None :  0.0 :   1.0
        ('L3', 'P3', 12) :  None :  0.0 :   1.0
         ('L3', 'Q3', 0) :  None :  0.0 :   1.0
         ('L3', 'Q3', 1) :  None :  0.0 :   1.0
         ('L3', 'Q3', 2) :  None :  1.0 :   1.0
         ('L3', 'Q3', 3) :  None :  0.0 :   1.0
         ('L3', 'Q3', 4) :  None :  0.0 :   1.0
         ('L3', 'Q3', 5) :  None :  0.0 :   1.0
         ('L3', 'Q3', 6) :  None :  0.0 :   1.0
         ('L3', 'Q3', 7) :  None :  1.0 :   1.0
         ('L3', 'Q3', 8) :  None :  0.0 :   1.0
         ('L3', 'Q3', 9) :  None :  0.0 :   1.0
        ('L3', 'Q3', 10) :  None :  0.0 :   1.0
        ('L3', 'Q3', 11) :  None :  1.0 :   1.0
        ('L3', 'Q3', 12) :  None :  1.0 :   1.0
         ('L3', 'R3', 0) :  None :  0.0 :   1.0
         ('L3', 'R3', 1) :  None :  0.0 :   1.0
         ('L3', 'R3', 2) :  None :  0.0 :   1.0
         ('L3', 'R3', 3) :  None :  0.0 :   1.0
         ('L3', 'R3', 4) :  None :  0.0 :   1.0
         ('L3', 'R3', 5) :  None :  0.0 :   1.0
         ('L3', 'R3', 6) :  None :  1.0 :   1.0
         ('L3', 'R3', 7) :  None :  0.0 :   1.0
         ('L3', 'R3', 8) :  None :  0.0 :   1.0
         ('L3', 'R3', 9) :  None :  0.0 :   1.0
        ('L3', 'R3', 10) :  None :  1.0 :   1.0
        ('L3', 'R3', 11) :  None :  1.0 :   1.0
        ('L3', 'R3', 12) :  None :  1.0 :   1.0
         ('L3', 'S3', 0) :  None :  1.0 :   1.0
         ('L3', 'S3', 1) :  None :  0.0 :   1.0
         ('L3', 'S3', 2) :  None :  0.0 :   1.0
         ('L3', 'S3', 3) :  None :  0.0 :   1.0
         ('L3', 'S3', 4) :  None :  1.0 :   1.0
         ('L3', 'S3', 5) :  None :  1.0 :   1.0
         ('L3', 'S3', 6) :  None :  1.0 :   1.0
         ('L3', 'S3', 7) :  None :  0.0 :   1.0
         ('L3', 'S3', 8) :  None :  0.0 :   1.0
         ('L3', 'S3', 9) :  None :  0.0 :   1.0
        ('L3', 'S3', 10) :  None :  0.0 :   1.0
        ('L3', 'S3', 11) :  None :  0.0 :   1.0
        ('L3', 'S3', 12) :  None :  0.0 :   1.0
         ('L3', 'T3', 0) :  None :  0.0 :   1.0
         ('L3', 'T3', 1) :  None :  0.0 :   1.0
         ('L3', 'T3', 2) :  None :  1.0 :   1.0
         ('L3', 'T3', 3) :  None :  1.0 :   1.0
         ('L3', 'T3', 4) :  None :  1.0 :   1.0
         ('L3', 'T3', 5) :  None :  1.0 :   1.0
         ('L3', 'T3', 6) :  None :  0.0 :   1.0
         ('L3', 'T3', 7) :  None :  0.0 :   1.0
         ('L3', 'T3', 8) :  None :  0.0 :   1.0
         ('L3', 'T3', 9) :  None :  0.0 :   1.0
        ('L3', 'T3', 10) :  None :  0.0 :   1.0
        ('L3', 'T3', 11) :  None :  0.0 :   1.0
        ('L3', 'T3', 12) :  None :  0.0 :   1.0
    constraint_max_nr_shifts : Size=60
        Key          : Lower : Body : Upper
        ('A3', 'D3') :  None :  7.0 :  14.0
        ('A3', 'E3') :  None :  1.0 :  14.0
        ('A3', 'L3') :  None :  0.0 :   0.0
        ('B3', 'D3') :  None :  8.0 :  14.0
        ('B3', 'E3') :  None :  0.0 :  14.0
        ('B3', 'L3') :  None :  1.0 :   5.0
        ('C3', 'D3') :  None :  2.0 :  14.0
        ('C3', 'E3') :  None :  4.0 :  14.0
        ('C3', 'L3') :  None :  2.0 :   5.0
        ('D3', 'D3') :  None :  0.0 :   0.0
        ('D3', 'E3') :  None :  4.0 :  14.0
        ('D3', 'L3') :  None :  5.0 :   5.0
        ('E3', 'D3') :  None :  0.0 :   0.0
        ('E3', 'E3') :  None :  8.0 :  14.0
        ('E3', 'L3') :  None :  0.0 :   0.0
        ('F3', 'D3') :  None :  4.0 :  14.0
        ('F3', 'E3') :  None :  5.0 :  14.0
        ('F3', 'L3') :  None :  0.0 :   0.0
        ('G3', 'D3') :  None :  3.0 :  14.0
        ('G3', 'E3') :  None :  0.0 :  14.0
        ('G3', 'L3') :  None :  5.0 :   5.0
        ('H3', 'D3') :  None :  2.0 :  14.0
        ('H3', 'E3') :  None :  2.0 :  14.0
        ('H3', 'L3') :  None :  4.0 :   5.0
        ('I3', 'D3') :  None :  4.0 :  14.0
        ('I3', 'E3') :  None :  0.0 :  14.0
        ('I3', 'L3') :  None :  5.0 :   5.0
        ('J3', 'D3') :  None :  6.0 :  14.0
        ('J3', 'E3') :  None :  2.0 :  14.0
        ('J3', 'L3') :  None :  0.0 :   0.0
        ('K3', 'D3') :  None :  8.0 :  14.0
        ('K3', 'E3') :  None :  0.0 :  14.0
        ('K3', 'L3') :  None :  0.0 :   0.0
        ('L3', 'D3') :  None :  3.0 :  14.0
        ('L3', 'E3') :  None :  0.0 :   0.0
        ('L3', 'L3') :  None :  5.0 :   5.0
        ('M3', 'D3') :  None :  3.0 :  14.0
        ('M3', 'E3') :  None :  2.0 :  14.0
        ('M3', 'L3') :  None :  4.0 :   5.0
        ('N3', 'D3') :  None :  4.0 :  14.0
        ('N3', 'E3') :  None :  0.0 :   0.0
        ('N3', 'L3') :  None :  4.0 :   5.0
        ('O3', 'D3') :  None :  5.0 :  14.0
        ('O3', 'E3') :  None :  0.0 :   0.0
        ('O3', 'L3') :  None :  2.0 :   5.0
        ('P3', 'D3') :  None :  1.0 :  14.0
        ('P3', 'E3') :  None :  3.0 :  14.0
        ('P3', 'L3') :  None :  0.0 :   2.0
        ('Q3', 'D3') :  None :  2.0 :  14.0
        ('Q3', 'E3') :  None :  0.0 :   0.0
        ('Q3', 'L3') :  None :  2.0 :   2.0
        ('R3', 'D3') :  None :  4.0 :  14.0
        ('R3', 'E3') :  None :  0.0 :  14.0
        ('R3', 'L3') :  None :  0.0 :   0.0
        ('S3', 'D3') :  None :  0.0 :   0.0
        ('S3', 'E3') :  None :  4.0 :  14.0
        ('S3', 'L3') :  None :  0.0 :   2.0
        ('T3', 'D3') :  None :  0.0 :  14.0
        ('T3', 'E3') :  None :  4.0 :  14.0
        ('T3', 'L3') :  None :  0.0 :   0.0
    constraint_max_total_minutes : Size=20
        Key : Lower : Body   : Upper
         A3 :  None : 3840.0 : 4320.0
         B3 :  None : 4320.0 : 4320.0
         C3 :  None : 3840.0 : 4320.0
         D3 :  None : 4320.0 : 4320.0
         E3 :  None : 3840.0 : 4320.0
         F3 :  None : 4320.0 : 4320.0
         G3 :  None : 3840.0 : 4320.0
         H3 :  None : 3840.0 : 4320.0
         I3 :  None : 4320.0 : 4320.0
         J3 :  None : 3840.0 : 4320.0
         K3 :  None : 3840.0 : 4320.0
         L3 :  None : 3840.0 : 4320.0
         M3 :  None : 4320.0 : 4320.0
         N3 :  None : 3840.0 : 4320.0
         O3 :  None : 3360.0 : 4320.0
         P3 :  None : 1920.0 : 2160.0
         Q3 :  None : 1920.0 : 2160.0
         R3 :  None : 1920.0 : 2160.0
         S3 :  None : 1920.0 : 2160.0
         T3 :  None : 1920.0 : 2160.0
    constraint_min_total_minutes : Size=20
        Key : Lower  : Body   : Upper
         A3 : 3360.0 : 3840.0 :  None
         B3 : 3360.0 : 4320.0 :  None
         C3 : 3360.0 : 3840.0 :  None
         D3 : 3360.0 : 4320.0 :  None
         E3 : 3360.0 : 3840.0 :  None
         F3 : 3360.0 : 4320.0 :  None
         G3 : 3360.0 : 3840.0 :  None
         H3 : 3360.0 : 3840.0 :  None
         I3 : 3360.0 : 4320.0 :  None
         J3 : 3360.0 : 3840.0 :  None
         K3 : 3360.0 : 3840.0 :  None
         L3 : 3360.0 : 3840.0 :  None
         M3 : 3360.0 : 4320.0 :  None
         N3 : 3360.0 : 3840.0 :  None
         O3 : 3360.0 : 3360.0 :  None
         P3 : 1200.0 : 1920.0 :  None
         Q3 : 1200.0 : 1920.0 :  None
         R3 : 1200.0 : 1920.0 :  None
         S3 : 1200.0 : 1920.0 :  None
         T3 : 1200.0 : 1920.0 :  None
    constraint_max_cons_shifts_backward : Size=175
        Key        : Lower : Body               : Upper
         ('A3', 5) :   1.0 :                3.0 :  None
         ('A3', 6) :   1.0 :                3.0 :  None
         ('A3', 7) :   1.0 :                2.0 :  None
         ('A3', 8) :   1.0 :                2.0 :  None
         ('A3', 9) :   1.0 :                2.0 :  None
        ('A3', 10) :   1.0 :                3.0 :  None
        ('A3', 11) :   1.0 :                3.0 :  None
        ('A3', 12) :   1.0 :                2.0 :  None
        ('A3', 13) :   1.0 :                2.0 :  None
         ('B3', 5) :   1.0 :                2.0 :  None
         ('B3', 6) :   1.0 :                2.0 :  None
         ('B3', 7) :   1.0 :                3.0 :  None
         ('B3', 8) :   1.0 :                4.0 :  None
         ('B3', 9) :   1.0 :                4.0 :  None
        ('B3', 10) :   1.0 :                4.0 :  None
        ('B3', 11) :   1.0 :                3.0 :  None
        ('B3', 12) :   1.0 :                2.0 :  None
        ('B3', 13) :   1.0 :                1.0 :  None
         ('C3', 5) :   1.0 :                2.0 :  None
         ('C3', 6) :   1.0 :                2.0 :  None
         ('C3', 7) :   1.0 :                2.0 :  None
         ('C3', 8) :   1.0 :                2.0 :  None
         ('C3', 9) :   1.0 :                2.0 :  None
        ('C3', 10) :   1.0 :                2.0 :  None
        ('C3', 11) :   1.0 :                2.0 :  None
        ('C3', 12) :   1.0 :                3.0 :  None
        ('C3', 13) :   1.0 :                3.0 :  None
         ('D3', 5) :   1.0 :                2.0 :  None
         ('D3', 6) :   1.0 :                2.0 :  None
         ('D3', 7) :   1.0 :                2.0 :  None
         ('D3', 8) :   1.0 :                2.0 :  None
         ('D3', 9) :   1.0 :                2.0 :  None
        ('D3', 10) :   1.0 :                3.0 :  None
        ('D3', 11) :   1.0 :                3.0 :  None
        ('D3', 12) :   1.0 :                2.0 :  None
        ('D3', 13) :   1.0 :                2.0 :  None
         ('E3', 5) :   1.0 :                3.0 :  None
         ('E3', 6) :   1.0 :                4.0 :  None
         ('E3', 7) :   1.0 :                5.0 :  None
         ('E3', 8) :   1.0 :                6.0 :  None
         ('E3', 9) :   1.0 :                5.0 :  None
        ('E3', 10) :   1.0 :                4.0 :  None
        ('E3', 11) :   1.0 :                3.0 :  None
        ('E3', 12) :   1.0 :                2.0 :  None
        ('E3', 13) :   1.0 :                1.0 :  None
         ('F3', 5) :   1.0 :                2.0 :  None
         ('F3', 6) :   1.0 :                2.0 :  None
         ('F3', 7) :   1.0 :                2.0 :  None
         ('F3', 8) :   1.0 :                2.0 :  None
         ('F3', 9) :   1.0 :                2.0 :  None
        ('F3', 10) :   1.0 :                3.0 :  None
        ('F3', 11) :   1.0 :                3.0 :  None
        ('F3', 12) :   1.0 :                2.0 :  None
        ('F3', 13) :   1.0 :                2.0 :  None
         ('G3', 5) :   1.0 :                2.0 :  None
         ('G3', 6) :   1.0 :                2.0 :  None
         ('G3', 7) :   1.0 :                2.0 :  None
         ('G3', 8) :   1.0 :                3.0 :  None
         ('G3', 9) :   1.0 :                3.0 :  None
        ('G3', 10) :   1.0 :                2.0 :  None
        ('G3', 11) :   1.0 :                2.0 :  None
        ('G3', 12) :   1.0 :                3.0 :  None
        ('G3', 13) :   1.0 :                4.0 :  None
         ('H3', 5) :   1.0 :                2.0 :  None
         ('H3', 6) :   1.0 :                1.0 :  None
         ('H3', 7) :   1.0 :                1.0 :  None
         ('H3', 8) :   1.0 :                2.0 :  None
         ('H3', 9) :   1.0 :                2.0 :  None
        ('H3', 10) :   1.0 :                2.0 :  None
        ('H3', 11) :   1.0 :                2.0 :  None
        ('H3', 12) :   1.0 :                3.0 :  None
        ('H3', 13) :   1.0 :                3.0 :  None
         ('I3', 5) :   1.0 :                2.0 :  None
         ('I3', 6) :   1.0 :                3.0 :  None
         ('I3', 7) :   1.0 :                3.0 :  None
         ('I3', 8) :   1.0 :                3.0 :  None
         ('I3', 9) :   1.0 :                3.0 :  None
        ('I3', 10) :   1.0 :                3.0 :  None
        ('I3', 11) :   1.0 :                3.0 :  None
        ('I3', 12) :   1.0 :                2.0 :  None
        ('I3', 13) :   1.0 :                2.0 :  None
         ('J3', 5) :   1.0 :                3.0 :  None
         ('J3', 6) :   1.0 :                4.0 :  None
         ('J3', 7) :   1.0 :                3.0 :  None
         ('J3', 8) :   1.0 :                2.0 :  None
         ('J3', 9) :   1.0 :                2.0 :  None
        ('J3', 10) :   1.0 :                3.0 :  None
        ('J3', 11) :   1.0 :                3.0 :  None
        ('J3', 12) :   1.0 :                2.0 :  None
        ('J3', 13) :   1.0 :                2.0 :  None
         ('K3', 6) :   1.0 :                3.0 :  None
         ('K3', 7) :   1.0 :                3.0 :  None
         ('K3', 8) :   1.0 :                3.0 :  None
         ('K3', 9) :   1.0 :                2.0 :  None
        ('K3', 10) :   1.0 :                1.0 :  None
        ('K3', 11) :   1.0 :                1.0 :  None
        ('K3', 12) :   1.0 :                2.0 :  None
        ('K3', 13) :   1.0 :                3.0 :  None
         ('L3', 6) :   1.0 :                3.0 :  None
         ('L3', 7) :   1.0 :                3.0 :  None
         ('L3', 8) :   1.0 :                3.0 :  None
         ('L3', 9) :   1.0 :                2.0 :  None
        ('L3', 10) :   1.0 :                1.0 :  None
        ('L3', 11) :   1.0 :                1.0 :  None
        ('L3', 12) :   1.0 :                2.0 :  None
        ('L3', 13) :   1.0 :                3.0 :  None
         ('M3', 6) :   1.0 :                4.0 :  None
         ('M3', 7) :   1.0 :                4.0 :  None
         ('M3', 8) :   1.0 :                3.0 :  None
         ('M3', 9) :   1.0 :                3.0 :  None
        ('M3', 10) :   1.0 :                3.0 :  None
        ('M3', 11) :   1.0 :                3.0 :  None
        ('M3', 12) :   1.0 :                2.0 :  None
        ('M3', 13) :   1.0 :                1.0 :  None
         ('N3', 6) :   1.0 : 0.9999999999999998 :  None
         ('N3', 7) :   1.0 :                1.0 :  None
         ('N3', 8) :   1.0 :                2.0 :  None
         ('N3', 9) :   1.0 :                3.0 :  None
        ('N3', 10) :   1.0 :                3.0 :  None
        ('N3', 11) :   1.0 :                3.0 :  None
        ('N3', 12) :   1.0 :                4.0 :  None
        ('N3', 13) :   1.0 :                5.0 :  None
         ('O3', 6) :   1.0 :                3.0 :  None
         ('O3', 7) :   1.0 :                3.0 :  None
         ('O3', 8) :   1.0 :                2.0 :  None
         ('O3', 9) :   1.0 :                1.0 :  None
        ('O3', 10) :   1.0 :                1.0 :  None
        ('O3', 11) :   1.0 :                2.0 :  None
        ('O3', 12) :   1.0 :                3.0 :  None
        ('O3', 13) :   1.0 :                4.0 :  None
         ('P3', 5) :   1.0 :                5.0 :  None
         ('P3', 6) :   1.0 :                4.0 :  None
         ('P3', 7) :   1.0 :                3.0 :  None
         ('P3', 8) :   1.0 :                3.0 :  None
         ('P3', 9) :   1.0 :                3.0 :  None
        ('P3', 10) :   1.0 :                3.0 :  None
        ('P3', 11) :   1.0 :                3.0 :  None
        ('P3', 12) :   1.0 :                4.0 :  None
        ('P3', 13) :   1.0 :                5.0 :  None
         ('Q3', 5) :   1.0 :                5.0 :  None
         ('Q3', 6) :   1.0 :                5.0 :  None
         ('Q3', 7) :   1.0 :                4.0 :  None
         ('Q3', 8) :   1.0 :                5.0 :  None
         ('Q3', 9) :   1.0 :                5.0 :  None
        ('Q3', 10) :   1.0 :                5.0 :  None
        ('Q3', 11) :   1.0 :                5.0 :  None
        ('Q3', 12) :   1.0 :                4.0 :  None
        ('Q3', 13) :   1.0 :                4.0 :  None
         ('R3', 5) :   1.0 :                6.0 :  None
         ('R3', 6) :   1.0 :                6.0 :  None
         ('R3', 7) :   1.0 :                5.0 :  None
         ('R3', 8) :   1.0 :                5.0 :  None
         ('R3', 9) :   1.0 :                5.0 :  None
        ('R3', 10) :   1.0 :                5.0 :  None
        ('R3', 11) :   1.0 :                4.0 :  None
        ('R3', 12) :   1.0 :                3.0 :  None
        ('R3', 13) :   1.0 :                3.0 :  None
         ('S3', 5) :   1.0 :                4.0 :  None
         ('S3', 6) :   1.0 :                3.0 :  None
         ('S3', 7) :   1.0 :                3.0 :  None
         ('S3', 8) :   1.0 :                3.0 :  None
         ('S3', 9) :   1.0 :                3.0 :  None
        ('S3', 10) :   1.0 :                3.0 :  None
        ('S3', 11) :   1.0 :                4.0 :  None
        ('S3', 12) :   1.0 :                5.0 :  None
        ('S3', 13) :   1.0 :                6.0 :  None
         ('T3', 5) :   1.0 :                3.0 :  None
         ('T3', 6) :   1.0 :                2.0 :  None
         ('T3', 7) :   1.0 :                2.0 :  None
         ('T3', 8) :   1.0 :                2.0 :  None
         ('T3', 9) :   1.0 :                3.0 :  None
        ('T3', 10) :   1.0 :                4.0 :  None
        ('T3', 11) :   1.0 :                5.0 :  None
        ('T3', 12) :   1.0 :                6.0 :  None
        ('T3', 13) :   1.0 :                6.0 :  None
    constraint_max_cons_shifts_forward : Size=0
        Key : Lower : Body : Upper
    constraint_max_cons_shifts_in_between : Size=0
        Key : Lower : Body : Upper
    constraint_is_end_of_work_block : Size=210
        Key        : Lower : Body                   : Upper
         ('A3', 0) :  None :                   -1.0 :   0.0
         ('A3', 1) :  None :                   -1.0 :   0.0
         ('A3', 2) :  None :                    0.0 :   0.0
         ('A3', 3) :  None :                   -1.0 :   0.0
         ('A3', 4) :  None :                    0.0 :   0.0
         ('A3', 5) :  None :                   -1.0 :   0.0
         ('A3', 6) :  None :                   -1.0 :   0.0
         ('A3', 7) :  None :                    0.0 :   0.0
         ('A3', 8) :  None :                   -1.0 :   0.0
         ('A3', 9) :  None :                    0.0 :   0.0
        ('A3', 10) :  None :                   -1.0 :   0.0
        ('A3', 11) :  None :                   -1.0 :   0.0
        ('A3', 12) :  None :                    0.0 :   0.0
        ('A3', 13) :   0.0 :                    0.0 :   0.0
         ('B3', 0) :  None :                   -2.0 :   0.0
         ('B3', 1) :  None :                    0.0 :   0.0
         ('B3', 2) :  None :                   -1.0 :   0.0
         ('B3', 3) :  None :                   -1.0 :   0.0
         ('B3', 4) :  None :                    0.0 :   0.0
         ('B3', 5) :  None :                   -1.0 :   0.0
         ('B3', 6) :  None :                    0.0 :   0.0
         ('B3', 7) :  None :                    0.0 :   0.0
         ('B3', 8) :  None :                   -1.0 :   0.0
         ('B3', 9) :  None :                    0.0 :   0.0
        ('B3', 10) :  None :                   -1.0 :   0.0
        ('B3', 11) :  None :                   -1.0 :   0.0
        ('B3', 12) :  None :                   -1.0 :   0.0
        ('B3', 13) :   0.0 :                    0.0 :   0.0
         ('C3', 0) :  None :                    0.0 :   0.0
         ('C3', 1) :  None :                   -1.0 :   0.0
         ('C3', 2) :  None :                   -1.0 :   0.0
         ('C3', 3) :  None :                    0.0 :   0.0
         ('C3', 4) :  None :                   -1.0 :   0.0
         ('C3', 5) :  None :                   -1.0 :   0.0
         ('C3', 6) :  None :                    0.0 :   0.0
         ('C3', 7) :  None :                   -1.0 :   0.0
         ('C3', 8) :  None :                   -1.0 :   0.0
         ('C3', 9) :  None :                    0.0 :   0.0
        ('C3', 10) :  None :                   -1.0 :   0.0
        ('C3', 11) :  None :                    0.0 :   0.0
        ('C3', 12) :  None :                   -1.0 :   0.0
        ('C3', 13) :   0.0 :                    0.0 :   0.0
         ('D3', 0) :  None :                   -2.0 :   0.0
         ('D3', 1) :  None :                    0.0 :   0.0
         ('D3', 2) :  None :                   -1.0 :   0.0
         ('D3', 3) :  None :                   -1.0 :   0.0
         ('D3', 4) :  None :                    0.0 :   0.0
         ('D3', 5) :  None :                   -1.0 :   0.0
         ('D3', 6) :  None :                   -1.0 :   0.0
         ('D3', 7) :  None :                    0.0 :   0.0
         ('D3', 8) :  None :                   -1.0 :   0.0
         ('D3', 9) :  None :                    0.0 :   0.0
        ('D3', 10) :  None :                   -1.0 :   0.0
        ('D3', 11) :  None :                   -1.0 :   0.0
        ('D3', 12) :  None :                    0.0 :   0.0
        ('D3', 13) :   0.0 :                    0.0 :   0.0
         ('E3', 0) :  None :                   -1.0 :   0.0
         ('E3', 1) :  None :                   -1.0 :   0.0
         ('E3', 2) :  None :                    0.0 :   0.0
         ('E3', 3) :  None :                   -1.0 :   0.0
         ('E3', 4) :  None :                    0.0 :   0.0
         ('E3', 5) :  None :                    0.0 :   0.0
         ('E3', 6) :  None :                    0.0 :   0.0
         ('E3', 7) :  None :                    0.0 :   0.0
         ('E3', 8) :  None :                   -1.0 :   0.0
         ('E3', 9) :  None :                    0.0 :   0.0
        ('E3', 10) :  None :                   -1.0 :   0.0
        ('E3', 11) :  None :                   -1.0 :   0.0
        ('E3', 12) :  None :                   -1.0 :   0.0
        ('E3', 13) :   0.0 :                    0.0 :   0.0
         ('F3', 0) :  None :                   -2.0 :   0.0
         ('F3', 1) :  None :                    0.0 :   0.0
         ('F3', 2) :  None :                   -1.0 :   0.0
         ('F3', 3) :  None :                   -1.0 :   0.0
         ('F3', 4) :  None :                    0.0 :   0.0
         ('F3', 5) :  None :                   -1.0 :   0.0
         ('F3', 6) :  None :                   -1.0 :   0.0
         ('F3', 7) :  None :                    0.0 :   0.0
         ('F3', 8) :  None :                   -1.0 :   0.0
         ('F3', 9) :  None :                    0.0 :   0.0
        ('F3', 10) :  None :                   -1.0 :   0.0
        ('F3', 11) :  None :                   -1.0 :   0.0
        ('F3', 12) :  None :                    0.0 :   0.0
        ('F3', 13) :   0.0 :                    0.0 :   0.0
         ('G3', 0) :  None :                   -1.0 :   0.0
         ('G3', 1) :  None :                   -1.0 :   0.0
         ('G3', 2) :  None :                    0.0 :   0.0
         ('G3', 3) :  None :                   -1.0 :   0.0
         ('G3', 4) :  None :                   -1.0 :   0.0
         ('G3', 5) :  None :                    0.0 :   0.0
         ('G3', 6) :  None :                   -1.0 :   0.0
         ('G3', 7) :  None :                    0.0 :   0.0
         ('G3', 8) :  None :                   -1.0 :   0.0
         ('G3', 9) :  None :                   -1.0 :   0.0
        ('G3', 10) :  None :                    0.0 :   0.0
        ('G3', 11) :  None :                    0.0 :   0.0
        ('G3', 12) :  None :                   -1.0 :   0.0
        ('G3', 13) :   0.0 :                    0.0 :   0.0
         ('H3', 0) :  None :                   -1.0 :   0.0
         ('H3', 1) :  None :                   -1.0 :   0.0
         ('H3', 2) :  None :                    0.0 :   0.0
         ('H3', 3) :  None :                   -1.0 :   0.0
         ('H3', 4) :  None :                   -1.0 :   0.0
         ('H3', 5) :  None :                   -1.0 :   0.0
         ('H3', 6) :  None :                    0.0 :   0.0
         ('H3', 7) :  None :                   -1.0 :   0.0
         ('H3', 8) :  None :                   -1.0 :   0.0
         ('H3', 9) :  None :                    0.0 :   0.0
        ('H3', 10) :  None :                   -1.0 :   0.0
        ('H3', 11) :  None :                    0.0 :   0.0
        ('H3', 12) :  None :                   -1.0 :   0.0
        ('H3', 13) :   0.0 :                    0.0 :   0.0
         ('I3', 0) :  None :                   -1.0 :   0.0
         ('I3', 1) :  None :                   -1.0 :   0.0
         ('I3', 2) :  None :                   -1.0 :   0.0
         ('I3', 3) :  None :                    0.0 :   0.0
         ('I3', 4) :  None :                   -1.0 :   0.0
         ('I3', 5) :  None :                    0.0 :   0.0
         ('I3', 6) :  None :                   -1.0 :   0.0
         ('I3', 7) :  None :                    0.0 :   0.0
         ('I3', 8) :  None :                   -1.0 :   0.0
         ('I3', 9) :  None :                    0.0 :   0.0
        ('I3', 10) :  None :                   -1.0 :   0.0
        ('I3', 11) :  None :                   -1.0 :   0.0
        ('I3', 12) :  None :                    0.0 :   0.0
        ('I3', 13) :   0.0 :                    0.0 :   0.0
         ('J3', 0) :  None :                    0.0 :   0.0
         ('J3', 1) :  None :                   -1.0 :   0.0
         ('J3', 2) :  None :                   -1.0 :   0.0
         ('J3', 3) :  None :                    0.0 :   0.0
         ('J3', 4) :  None :                    0.0 :   0.0
         ('J3', 5) :  None :                   -1.0 :   0.0
         ('J3', 6) :  None :                   -1.0 :   0.0
         ('J3', 7) :  None :                    0.0 :   0.0
         ('J3', 8) :  None :                   -1.0 :   0.0
         ('J3', 9) :  None :                    0.0 :   0.0
        ('J3', 10) :  None :                   -1.0 :   0.0
        ('J3', 11) :  None :                   -1.0 :   0.0
        ('J3', 12) :  None :                    0.0 :   0.0
        ('J3', 13) :   0.0 :                    0.0 :   0.0
         ('K3', 0) :  None :                   -1.0 :   0.0
         ('K3', 1) :  None :                    0.0 :   0.0
         ('K3', 2) :  None :                   -1.0 :   0.0
         ('K3', 3) :  None :                    0.0 :   0.0
         ('K3', 4) :  None :                   -1.0 :   0.0
         ('K3', 5) :  None :                    0.0 :   0.0
         ('K3', 6) :  None :                   -1.0 :   0.0
         ('K3', 7) :  None :                   -1.0 :   0.0
         ('K3', 8) :  None :                   -1.0 :   0.0
         ('K3', 9) :  None :                   -1.0 :   0.0
        ('K3', 10) :  None :                    0.0 :   0.0
        ('K3', 11) :  None :                   -1.0 :   0.0
        ('K3', 12) :  None :                    0.0 :   0.0
        ('K3', 13) :   0.0 :                    0.0 :   0.0
         ('L3', 0) :  None :                   -1.0 :   0.0
         ('L3', 1) :  None :                    0.0 :   0.0
         ('L3', 2) :  None :                   -1.0 :   0.0
         ('L3', 3) :  None :                    0.0 :   0.0
         ('L3', 4) :  None :                   -1.0 :   0.0
         ('L3', 5) :  None :                    0.0 :   0.0
         ('L3', 6) :  None :                   -1.0 :   0.0
         ('L3', 7) :  None :                   -1.0 :   0.0
         ('L3', 8) :  None :                   -1.0 :   0.0
         ('L3', 9) :  None :                   -1.0 :   0.0
        ('L3', 10) :  None :                    0.0 :   0.0
        ('L3', 11) :  None :                   -1.0 :   0.0
        ('L3', 12) :  None :                    0.0 :   0.0
        ('L3', 13) :   0.0 :                    0.0 :   0.0
         ('M3', 0) :  None :                   -1.0 :   0.0
         ('M3', 1) :  None :                   -1.0 :   0.0
         ('M3', 2) :  None :                    0.0 :   0.0
         ('M3', 3) :  None :                   -1.0 :   0.0
         ('M3', 4) :  None :                    0.0 :   0.0
         ('M3', 5) :  None :                   -1.0 :   0.0
         ('M3', 6) :  None :                    0.0 :   0.0
         ('M3', 7) :  None :                   -1.0 :   0.0
         ('M3', 8) :  None :                    0.0 :   0.0
         ('M3', 9) :  None :                   -1.0 :   0.0
        ('M3', 10) :  None :                   -1.0 :   0.0
        ('M3', 11) :  None :                   -1.0 :   0.0
        ('M3', 12) :  None :                   -1.0 :   0.0
        ('M3', 13) :   0.0 :                    0.0 :   0.0
         ('N3', 0) :  None :    -1.9999999999999998 :   0.0
         ('N3', 1) :  None : -2.220446049250313e-16 :   0.0
         ('N3', 2) :  None :                   -1.0 :   0.0
         ('N3', 3) :  None :                   -1.0 :   0.0
         ('N3', 4) :  None :                   -1.0 :   0.0
         ('N3', 5) :  None :                   -1.0 :   0.0
         ('N3', 6) :  None :                    0.0 :   0.0
         ('N3', 7) :  None :                   -1.0 :   0.0
         ('N3', 8) :  None :                    0.0 :   0.0
         ('N3', 9) :  None :                   -1.0 :   0.0
        ('N3', 10) :  None :                    0.0 :   0.0
        ('N3', 11) :  None :                    0.0 :   0.0
        ('N3', 12) :  None :                   -1.0 :   0.0
        ('N3', 13) :   0.0 :                    0.0 :   0.0
         ('O3', 0) :  None :                    0.0 :   0.0
         ('O3', 1) :  None :                   -1.0 :   0.0
         ('O3', 2) :  None :                    0.0 :   0.0
         ('O3', 3) :  None :                   -1.0 :   0.0
         ('O3', 4) :  None :                    0.0 :   0.0
         ('O3', 5) :  None :                   -1.0 :   0.0
         ('O3', 6) :  None :                   -1.0 :   0.0
         ('O3', 7) :  None :                   -1.0 :   0.0
         ('O3', 8) :  None :                   -1.0 :   0.0
         ('O3', 9) :  None :                    0.0 :   0.0
        ('O3', 10) :  None :                   -1.0 :   0.0
        ('O3', 11) :  None :                    0.0 :   0.0
        ('O3', 12) :  None :                    0.0 :   0.0
        ('O3', 13) :   0.0 :                    0.0 :   0.0
    constraint_min_cons_shift_inscope : Size=210
        Key        : Lower : Body : Upper
         ('A3', 0) :  None :  0.0 :   0.0
         ('A3', 1) :  None :  1.0 :   1.0
         ('A3', 2) :  None :  1.0 :   1.0
         ('A3', 3) :  None :  1.0 :   1.0
         ('A3', 4) :  None :  1.0 :   1.0
         ('A3', 5) :  None :  1.0 :   1.0
         ('A3', 6) :  None :  1.0 :   1.0
         ('A3', 7) :  None :  1.0 :   1.0
         ('A3', 8) :  None :  1.0 :   1.0
         ('A3', 9) :  None :  1.0 :   1.0
        ('A3', 10) :  None :  1.0 :   1.0
        ('A3', 11) :  None :  1.0 :   1.0
        ('A3', 12) :  None :  1.0 :   1.0
        ('A3', 13) :  None :  0.0 :   1.0
         ('B3', 0) :  None :  0.0 :   0.0
         ('B3', 1) :  None :  1.0 :   1.0
         ('B3', 2) :  None :  1.0 :   1.0
         ('B3', 3) :  None :  1.0 :   1.0
         ('B3', 4) :  None :  1.0 :   1.0
         ('B3', 5) :  None :  1.0 :   1.0
         ('B3', 6) :  None :  1.0 :   1.0
         ('B3', 7) :  None :  1.0 :   1.0
         ('B3', 8) :  None :  1.0 :   1.0
         ('B3', 9) :  None :  1.0 :   1.0
        ('B3', 10) :  None :  1.0 :   1.0
        ('B3', 11) :  None :  1.0 :   1.0
        ('B3', 12) :  None :  1.0 :   1.0
        ('B3', 13) :  None :  0.0 :   1.0
         ('C3', 0) :  None :  0.0 :   0.0
         ('C3', 1) :  None :  1.0 :   1.0
         ('C3', 2) :  None :  1.0 :   1.0
         ('C3', 3) :  None :  1.0 :   1.0
         ('C3', 4) :  None :  1.0 :   1.0
         ('C3', 5) :  None :  1.0 :   1.0
         ('C3', 6) :  None :  1.0 :   1.0
         ('C3', 7) :  None :  1.0 :   1.0
         ('C3', 8) :  None :  1.0 :   1.0
         ('C3', 9) :  None :  1.0 :   1.0
        ('C3', 10) :  None :  1.0 :   1.0
        ('C3', 11) :  None :  1.0 :   1.0
        ('C3', 12) :  None :  1.0 :   1.0
        ('C3', 13) :  None :  1.0 :   1.0
         ('D3', 0) :  None :  0.0 :   0.0
         ('D3', 1) :  None :  1.0 :   1.0
         ('D3', 2) :  None :  1.0 :   1.0
         ('D3', 3) :  None :  1.0 :   1.0
         ('D3', 4) :  None :  1.0 :   1.0
         ('D3', 5) :  None :  1.0 :   1.0
         ('D3', 6) :  None :  1.0 :   1.0
         ('D3', 7) :  None :  1.0 :   1.0
         ('D3', 8) :  None :  1.0 :   1.0
         ('D3', 9) :  None :  1.0 :   1.0
        ('D3', 10) :  None :  1.0 :   1.0
        ('D3', 11) :  None :  1.0 :   1.0
        ('D3', 12) :  None :  1.0 :   1.0
        ('D3', 13) :  None :  0.0 :   1.0
         ('E3', 0) :  None :  0.0 :   0.0
         ('E3', 1) :  None :  1.0 :   1.0
         ('E3', 2) :  None :  1.0 :   1.0
         ('E3', 3) :  None :  1.0 :   1.0
         ('E3', 4) :  None :  1.0 :   1.0
         ('E3', 5) :  None :  1.0 :   1.0
         ('E3', 6) :  None :  1.0 :   1.0
         ('E3', 7) :  None :  1.0 :   1.0
         ('E3', 8) :  None :  1.0 :   1.0
         ('E3', 9) :  None :  1.0 :   1.0
        ('E3', 10) :  None :  1.0 :   1.0
        ('E3', 11) :  None :  1.0 :   1.0
        ('E3', 12) :  None :  1.0 :   1.0
        ('E3', 13) :  None :  0.0 :   1.0
         ('F3', 0) :  None :  0.0 :   0.0
         ('F3', 1) :  None :  1.0 :   1.0
         ('F3', 2) :  None :  1.0 :   1.0
         ('F3', 3) :  None :  1.0 :   1.0
         ('F3', 4) :  None :  1.0 :   1.0
         ('F3', 5) :  None :  1.0 :   1.0
         ('F3', 6) :  None :  1.0 :   1.0
         ('F3', 7) :  None :  1.0 :   1.0
         ('F3', 8) :  None :  1.0 :   1.0
         ('F3', 9) :  None :  1.0 :   1.0
        ('F3', 10) :  None :  1.0 :   1.0
        ('F3', 11) :  None :  1.0 :   1.0
        ('F3', 12) :  None :  1.0 :   1.0
        ('F3', 13) :  None :  0.0 :   1.0
         ('G3', 0) :  None :  0.0 :   0.0
         ('G3', 1) :  None :  1.0 :   1.0
         ('G3', 2) :  None :  1.0 :   1.0
         ('G3', 3) :  None :  1.0 :   1.0
         ('G3', 4) :  None :  1.0 :   1.0
         ('G3', 5) :  None :  1.0 :   1.0
         ('G3', 6) :  None :  1.0 :   1.0
         ('G3', 7) :  None :  1.0 :   1.0
         ('G3', 8) :  None :  1.0 :   1.0
         ('G3', 9) :  None :  1.0 :   1.0
        ('G3', 10) :  None :  1.0 :   1.0
        ('G3', 11) :  None :  1.0 :   1.0
        ('G3', 12) :  None :  1.0 :   1.0
        ('G3', 13) :  None :  1.0 :   1.0
         ('H3', 0) :  None :  0.0 :   0.0
         ('H3', 1) :  None :  1.0 :   1.0
         ('H3', 2) :  None :  1.0 :   1.0
         ('H3', 3) :  None :  1.0 :   1.0
         ('H3', 4) :  None :  1.0 :   1.0
         ('H3', 5) :  None :  1.0 :   1.0
         ('H3', 6) :  None :  1.0 :   1.0
         ('H3', 7) :  None :  1.0 :   1.0
         ('H3', 8) :  None :  1.0 :   1.0
         ('H3', 9) :  None :  1.0 :   1.0
        ('H3', 10) :  None :  1.0 :   1.0
        ('H3', 11) :  None :  1.0 :   1.0
        ('H3', 12) :  None :  1.0 :   1.0
        ('H3', 13) :  None :  1.0 :   1.0
         ('I3', 0) :  None :  0.0 :   0.0
         ('I3', 1) :  None :  1.0 :   1.0
         ('I3', 2) :  None :  1.0 :   1.0
         ('I3', 3) :  None :  1.0 :   1.0
         ('I3', 4) :  None :  1.0 :   1.0
         ('I3', 5) :  None :  1.0 :   1.0
         ('I3', 6) :  None :  1.0 :   1.0
         ('I3', 7) :  None :  1.0 :   1.0
         ('I3', 8) :  None :  1.0 :   1.0
         ('I3', 9) :  None :  1.0 :   1.0
        ('I3', 10) :  None :  1.0 :   1.0
        ('I3', 11) :  None :  1.0 :   1.0
        ('I3', 12) :  None :  1.0 :   1.0
        ('I3', 13) :  None :  0.0 :   1.0
         ('J3', 0) :  None :  0.0 :   0.0
         ('J3', 1) :  None :  1.0 :   1.0
         ('J3', 2) :  None :  1.0 :   1.0
         ('J3', 3) :  None :  1.0 :   1.0
         ('J3', 4) :  None :  1.0 :   1.0
         ('J3', 5) :  None :  1.0 :   1.0
         ('J3', 6) :  None :  1.0 :   1.0
         ('J3', 7) :  None :  1.0 :   1.0
         ('J3', 8) :  None :  1.0 :   1.0
         ('J3', 9) :  None :  1.0 :   1.0
        ('J3', 10) :  None :  1.0 :   1.0
        ('J3', 11) :  None :  1.0 :   1.0
        ('J3', 12) :  None :  1.0 :   1.0
        ('J3', 13) :  None :  0.0 :   1.0
         ('K3', 0) :  None :  0.0 :   0.0
         ('K3', 1) :  None :  1.0 :   1.0
         ('K3', 2) :  None :  1.0 :   1.0
         ('K3', 3) :  None :  1.0 :   1.0
         ('K3', 4) :  None :  1.0 :   1.0
         ('K3', 5) :  None :  1.0 :   1.0
         ('K3', 6) :  None :  1.0 :   1.0
         ('K3', 7) :  None :  1.0 :   1.0
         ('K3', 8) :  None :  1.0 :   1.0
         ('K3', 9) :  None :  1.0 :   1.0
        ('K3', 10) :  None :  1.0 :   1.0
        ('K3', 11) :  None :  1.0 :   1.0
        ('K3', 12) :  None :  1.0 :   1.0
        ('K3', 13) :  None :  1.0 :   1.0
         ('L3', 0) :  None :  0.0 :   0.0
         ('L3', 1) :  None :  1.0 :   1.0
         ('L3', 2) :  None :  1.0 :   1.0
         ('L3', 3) :  None :  1.0 :   1.0
         ('L3', 4) :  None :  1.0 :   1.0
         ('L3', 5) :  None :  1.0 :   1.0
         ('L3', 6) :  None :  1.0 :   1.0
         ('L3', 7) :  None :  1.0 :   1.0
         ('L3', 8) :  None :  1.0 :   1.0
         ('L3', 9) :  None :  1.0 :   1.0
        ('L3', 10) :  None :  1.0 :   1.0
        ('L3', 11) :  None :  1.0 :   1.0
        ('L3', 12) :  None :  1.0 :   1.0
        ('L3', 13) :  None :  1.0 :   1.0
         ('M3', 0) :  None :  0.0 :   0.0
         ('M3', 1) :  None :  1.0 :   1.0
         ('M3', 2) :  None :  1.0 :   1.0
         ('M3', 3) :  None :  1.0 :   1.0
         ('M3', 4) :  None :  1.0 :   1.0
         ('M3', 5) :  None :  1.0 :   1.0
         ('M3', 6) :  None :  1.0 :   1.0
         ('M3', 7) :  None :  1.0 :   1.0
         ('M3', 8) :  None :  1.0 :   1.0
         ('M3', 9) :  None :  1.0 :   1.0
        ('M3', 10) :  None :  1.0 :   1.0
        ('M3', 11) :  None :  1.0 :   1.0
        ('M3', 12) :  None :  1.0 :   1.0
        ('M3', 13) :  None :  0.0 :   1.0
         ('N3', 0) :  None :  0.0 :   0.0
         ('N3', 1) :  None :  1.0 :   1.0
         ('N3', 2) :  None :  1.0 :   1.0
         ('N3', 3) :  None :  1.0 :   1.0
         ('N3', 4) :  None :  1.0 :   1.0
         ('N3', 5) :  None :  1.0 :   1.0
         ('N3', 6) :  None :  1.0 :   1.0
         ('N3', 7) :  None :  1.0 :   1.0
         ('N3', 8) :  None :  1.0 :   1.0
         ('N3', 9) :  None :  1.0 :   1.0
        ('N3', 10) :  None :  1.0 :   1.0
        ('N3', 11) :  None :  1.0 :   1.0
        ('N3', 12) :  None :  1.0 :   1.0
        ('N3', 13) :  None :  1.0 :   1.0
         ('O3', 0) :  None :  0.0 :   0.0
         ('O3', 1) :  None :  1.0 :   1.0
         ('O3', 2) :  None :  1.0 :   1.0
         ('O3', 3) :  None :  1.0 :   1.0
         ('O3', 4) :  None :  1.0 :   1.0
         ('O3', 5) :  None :  1.0 :   1.0
         ('O3', 6) :  None :  1.0 :   1.0
         ('O3', 7) :  None :  1.0 :   1.0
         ('O3', 8) :  None :  1.0 :   1.0
         ('O3', 9) :  None :  1.0 :   1.0
        ('O3', 10) :  None :  1.0 :   1.0
        ('O3', 11) :  None :  1.0 :   1.0
        ('O3', 12) :  None :  1.0 :   1.0
        ('O3', 13) :  None :  1.0 :   1.0
    constraint_min_cons_shift_backward : Size=0
        Key : Lower : Body : Upper
    constraint_min_cons_shift_forward : Size=0
        Key : Lower : Body : Upper
    constraint_is_end_of_rest_block : Size=280
        Key        : Lower : Body                   : Upper
         ('A3', 0) :  None :                   -1.0 :   0.0
         ('A3', 1) :  None :                    0.0 :   0.0
         ('A3', 2) :  None :                   -1.0 :   0.0
         ('A3', 3) :  None :                    0.0 :   0.0
         ('A3', 4) :  None :                   -1.0 :   0.0
         ('A3', 5) :  None :                    0.0 :   0.0
         ('A3', 6) :  None :                    0.0 :   0.0
         ('A3', 7) :  None :                   -1.0 :   0.0
         ('A3', 8) :  None :                    0.0 :   0.0
         ('A3', 9) :  None :                   -1.0 :   0.0
        ('A3', 10) :  None :                    0.0 :   0.0
        ('A3', 11) :  None :                    0.0 :   0.0
        ('A3', 12) :  None :                   -1.0 :   0.0
        ('A3', 13) :   0.0 :                    0.0 :   0.0
         ('B3', 0) :  None :                    0.0 :   0.0
         ('B3', 1) :  None :                   -1.0 :   0.0
         ('B3', 2) :  None :                    0.0 :   0.0
         ('B3', 3) :  None :                    0.0 :   0.0
         ('B3', 4) :  None :                   -1.0 :   0.0
         ('B3', 5) :  None :                    0.0 :   0.0
         ('B3', 6) :  None :                   -1.0 :   0.0
         ('B3', 7) :  None :                   -1.0 :   0.0
         ('B3', 8) :  None :                    0.0 :   0.0
         ('B3', 9) :  None :                   -1.0 :   0.0
        ('B3', 10) :  None :                    0.0 :   0.0
        ('B3', 11) :  None :                    0.0 :   0.0
        ('B3', 12) :  None :                    0.0 :   0.0
        ('B3', 13) :   0.0 :                    0.0 :   0.0
         ('C3', 0) :  None :                   -2.0 :   0.0
         ('C3', 1) :  None :                    0.0 :   0.0
         ('C3', 2) :  None :                    0.0 :   0.0
         ('C3', 3) :  None :                   -1.0 :   0.0
         ('C3', 4) :  None :                    0.0 :   0.0
         ('C3', 5) :  None :                    0.0 :   0.0
         ('C3', 6) :  None :                   -1.0 :   0.0
         ('C3', 7) :  None :                    0.0 :   0.0
         ('C3', 8) :  None :                    0.0 :   0.0
         ('C3', 9) :  None :                   -1.0 :   0.0
        ('C3', 10) :  None :                    0.0 :   0.0
        ('C3', 11) :  None :                   -1.0 :   0.0
        ('C3', 12) :  None :                    0.0 :   0.0
        ('C3', 13) :   0.0 :                    0.0 :   0.0
         ('D3', 0) :  None :                    0.0 :   0.0
         ('D3', 1) :  None :                   -1.0 :   0.0
         ('D3', 2) :  None :                    0.0 :   0.0
         ('D3', 3) :  None :                    0.0 :   0.0
         ('D3', 4) :  None :                   -1.0 :   0.0
         ('D3', 5) :  None :                    0.0 :   0.0
         ('D3', 6) :  None :                    0.0 :   0.0
         ('D3', 7) :  None :                   -1.0 :   0.0
         ('D3', 8) :  None :                    0.0 :   0.0
         ('D3', 9) :  None :                   -1.0 :   0.0
        ('D3', 10) :  None :                    0.0 :   0.0
        ('D3', 11) :  None :                    0.0 :   0.0
        ('D3', 12) :  None :                   -1.0 :   0.0
        ('D3', 13) :   0.0 :                    0.0 :   0.0
         ('E3', 0) :  None :                   -1.0 :   0.0
         ('E3', 1) :  None :                    0.0 :   0.0
         ('E3', 2) :  None :                   -1.0 :   0.0
         ('E3', 3) :  None :                    0.0 :   0.0
         ('E3', 4) :  None :                   -1.0 :   0.0
         ('E3', 5) :  None :                   -1.0 :   0.0
         ('E3', 6) :  None :                   -1.0 :   0.0
         ('E3', 7) :  None :                   -1.0 :   0.0
         ('E3', 8) :  None :                    0.0 :   0.0
         ('E3', 9) :  None :                   -1.0 :   0.0
        ('E3', 10) :  None :                    0.0 :   0.0
        ('E3', 11) :  None :                    0.0 :   0.0
        ('E3', 12) :  None :                    0.0 :   0.0
        ('E3', 13) :   0.0 :                    0.0 :   0.0
         ('F3', 0) :  None :                    0.0 :   0.0
         ('F3', 1) :  None :                   -1.0 :   0.0
         ('F3', 2) :  None :                    0.0 :   0.0
         ('F3', 3) :  None :                    0.0 :   0.0
         ('F3', 4) :  None :                   -1.0 :   0.0
         ('F3', 5) :  None :                    0.0 :   0.0
         ('F3', 6) :  None :                    0.0 :   0.0
         ('F3', 7) :  None :                   -1.0 :   0.0
         ('F3', 8) :  None :                    0.0 :   0.0
         ('F3', 9) :  None :                   -1.0 :   0.0
        ('F3', 10) :  None :                    0.0 :   0.0
        ('F3', 11) :  None :                    0.0 :   0.0
        ('F3', 12) :  None :                   -1.0 :   0.0
        ('F3', 13) :   0.0 :                    0.0 :   0.0
         ('G3', 0) :  None :                   -1.0 :   0.0
         ('G3', 1) :  None :                    0.0 :   0.0
         ('G3', 2) :  None :                   -1.0 :   0.0
         ('G3', 3) :  None :                    0.0 :   0.0
         ('G3', 4) :  None :                    0.0 :   0.0
         ('G3', 5) :  None :                   -1.0 :   0.0
         ('G3', 6) :  None :                    0.0 :   0.0
         ('G3', 7) :  None :                   -1.0 :   0.0
         ('G3', 8) :  None :                    0.0 :   0.0
         ('G3', 9) :  None :                    0.0 :   0.0
        ('G3', 10) :  None :                   -1.0 :   0.0
        ('G3', 11) :  None :                   -1.0 :   0.0
        ('G3', 12) :  None :                    0.0 :   0.0
        ('G3', 13) :   0.0 :                    0.0 :   0.0
         ('H3', 0) :  None :                   -1.0 :   0.0
         ('H3', 1) :  None :                    0.0 :   0.0
         ('H3', 2) :  None :                   -1.0 :   0.0
         ('H3', 3) :  None :                    0.0 :   0.0
         ('H3', 4) :  None :                    0.0 :   0.0
         ('H3', 5) :  None :                    0.0 :   0.0
         ('H3', 6) :  None :                   -1.0 :   0.0
         ('H3', 7) :  None :                    0.0 :   0.0
         ('H3', 8) :  None :                    0.0 :   0.0
         ('H3', 9) :  None :                   -1.0 :   0.0
        ('H3', 10) :  None :                    0.0 :   0.0
        ('H3', 11) :  None :                   -1.0 :   0.0
        ('H3', 12) :  None :                    0.0 :   0.0
        ('H3', 13) :   0.0 :                    0.0 :   0.0
         ('I3', 0) :  None :                   -1.0 :   0.0
         ('I3', 1) :  None :                    0.0 :   0.0
         ('I3', 2) :  None :                    0.0 :   0.0
         ('I3', 3) :  None :                   -1.0 :   0.0
         ('I3', 4) :  None :                    0.0 :   0.0
         ('I3', 5) :  None :                   -1.0 :   0.0
         ('I3', 6) :  None :                    0.0 :   0.0
         ('I3', 7) :  None :                   -1.0 :   0.0
         ('I3', 8) :  None :                    0.0 :   0.0
         ('I3', 9) :  None :                   -1.0 :   0.0
        ('I3', 10) :  None :                    0.0 :   0.0
        ('I3', 11) :  None :                    0.0 :   0.0
        ('I3', 12) :  None :                   -1.0 :   0.0
        ('I3', 13) :   0.0 :                    0.0 :   0.0
         ('J3', 0) :  None :                   -2.0 :   0.0
         ('J3', 1) :  None :                    0.0 :   0.0
         ('J3', 2) :  None :                    0.0 :   0.0
         ('J3', 3) :  None :                   -1.0 :   0.0
         ('J3', 4) :  None :                   -1.0 :   0.0
         ('J3', 5) :  None :                    0.0 :   0.0
         ('J3', 6) :  None :                    0.0 :   0.0
         ('J3', 7) :  None :                   -1.0 :   0.0
         ('J3', 8) :  None :                    0.0 :   0.0
         ('J3', 9) :  None :                   -1.0 :   0.0
        ('J3', 10) :  None :                    0.0 :   0.0
        ('J3', 11) :  None :                    0.0 :   0.0
        ('J3', 12) :  None :                   -1.0 :   0.0
        ('J3', 13) :   0.0 :                    0.0 :   0.0
         ('K3', 0) :  None :                   -1.0 :   0.0
         ('K3', 1) :  None :                   -1.0 :   0.0
         ('K3', 2) :  None :                    0.0 :   0.0
         ('K3', 3) :  None :                    0.0 :   0.0
         ('K3', 4) :  None :                    0.0 :   0.0
         ('K3', 5) :  None :                   -1.0 :   0.0
         ('K3', 6) :  None :                    0.0 :   0.0
         ('K3', 7) :  None :                    0.0 :   0.0
         ('K3', 8) :  None :                    0.0 :   0.0
         ('K3', 9) :  None :                    0.0 :   0.0
        ('K3', 10) :  None :                   -1.0 :   0.0
        ('K3', 11) :  None :                    0.0 :   0.0
        ('K3', 12) :  None :                    0.0 :   0.0
        ('K3', 13) :   0.0 :                    0.0 :   0.0
         ('L3', 0) :  None :                   -1.0 :   0.0
         ('L3', 1) :  None :                   -1.0 :   0.0
         ('L3', 2) :  None :                    0.0 :   0.0
         ('L3', 3) :  None :                    0.0 :   0.0
         ('L3', 4) :  None :                    0.0 :   0.0
         ('L3', 5) :  None :                   -1.0 :   0.0
         ('L3', 6) :  None :                    0.0 :   0.0
         ('L3', 7) :  None :                    0.0 :   0.0
         ('L3', 8) :  None :                    0.0 :   0.0
         ('L3', 9) :  None :                    0.0 :   0.0
        ('L3', 10) :  None :                   -1.0 :   0.0
        ('L3', 11) :  None :                    0.0 :   0.0
        ('L3', 12) :  None :                    0.0 :   0.0
        ('L3', 13) :   0.0 :                    0.0 :   0.0
         ('M3', 0) :  None :                   -1.0 :   0.0
         ('M3', 1) :  None :                    0.0 :   0.0
         ('M3', 2) :  None :                   -1.0 :   0.0
         ('M3', 3) :  None :                    0.0 :   0.0
         ('M3', 4) :  None :                   -1.0 :   0.0
         ('M3', 5) :  None :                    0.0 :   0.0
         ('M3', 6) :  None :                    0.0 :   0.0
         ('M3', 7) :  None :                    0.0 :   0.0
         ('M3', 8) :  None :                   -1.0 :   0.0
         ('M3', 9) :  None :                    0.0 :   0.0
        ('M3', 10) :  None :                    0.0 :   0.0
        ('M3', 11) :  None :                    0.0 :   0.0
        ('M3', 12) :  None :                    0.0 :   0.0
        ('M3', 13) :   0.0 :                    0.0 :   0.0
         ('N3', 0) :  None : -2.220446049250313e-16 :   0.0
         ('N3', 1) :  None :    -0.9999999999999998 :   0.0
         ('N3', 2) :  None :                    0.0 :   0.0
         ('N3', 3) :  None :                    0.0 :   0.0
         ('N3', 4) :  None :                    0.0 :   0.0
         ('N3', 5) :  None :                    0.0 :   0.0
         ('N3', 6) :  None :                   -1.0 :   0.0
         ('N3', 7) :  None :                    0.0 :   0.0
         ('N3', 8) :  None :                    0.0 :   0.0
         ('N3', 9) :  None :                    0.0 :   0.0
        ('N3', 10) :  None :                   -1.0 :   0.0
        ('N3', 11) :  None :                   -1.0 :   0.0
        ('N3', 12) :  None :                    0.0 :   0.0
        ('N3', 13) :   0.0 :                    0.0 :   0.0
         ('O3', 0) :  None :                   -2.0 :   0.0
         ('O3', 1) :  None :                    0.0 :   0.0
         ('O3', 2) :  None :                    0.0 :   0.0
         ('O3', 3) :  None :                    0.0 :   0.0
         ('O3', 4) :  None :                   -1.0 :   0.0
         ('O3', 5) :  None :                    0.0 :   0.0
         ('O3', 6) :  None :                    0.0 :   0.0
         ('O3', 7) :  None :                    0.0 :   0.0
         ('O3', 8) :  None :                    0.0 :   0.0
         ('O3', 9) :  None :                   -1.0 :   0.0
        ('O3', 10) :  None :                    0.0 :   0.0
        ('O3', 11) :  None :                    0.0 :   0.0
        ('O3', 12) :  None :                    0.0 :   0.0
        ('O3', 13) :   0.0 :                    0.0 :   0.0
         ('P3', 0) :  None :                   -1.0 :   0.0
         ('P3', 1) :  None :                   -1.0 :   0.0
         ('P3', 2) :  None :                   -1.0 :   0.0
         ('P3', 3) :  None :                   -1.0 :   0.0
         ('P3', 4) :  None :                    0.0 :   0.0
         ('P3', 5) :  None :                   -1.0 :   0.0
         ('P3', 6) :  None :                    0.0 :   0.0
         ('P3', 7) :  None :                   -1.0 :   0.0
         ('P3', 8) :  None :                    0.0 :   0.0
         ('P3', 9) :  None :                   -1.0 :   0.0
        ('P3', 10) :  None :                    0.0 :   0.0
        ('P3', 11) :  None :                   -2.0 :   0.0
        ('P3', 12) :  None :                    0.0 :   0.0
        ('P3', 13) :   0.0 :                    0.0 :   0.0
         ('Q3', 0) :  None :                   -1.0 :   0.0
         ('Q3', 1) :  None :                    0.0 :   0.0
         ('Q3', 2) :  None :                   -2.0 :   0.0
         ('Q3', 3) :  None :                    0.0 :   0.0
         ('Q3', 4) :  None :                   -1.0 :   0.0
         ('Q3', 5) :  None :                   -1.0 :   0.0
         ('Q3', 6) :  None :                    0.0 :   0.0
         ('Q3', 7) :  None :                   -2.0 :   0.0
         ('Q3', 8) :  None :                    0.0 :   0.0
         ('Q3', 9) :  None :                   -1.0 :   0.0
        ('Q3', 10) :  None :                   -1.0 :   0.0
        ('Q3', 11) :  None :                    0.0 :   0.0
        ('Q3', 12) :  None :                   -1.0 :   0.0
        ('Q3', 13) :   0.0 :                    0.0 :   0.0
         ('R3', 0) :  None :                   -1.0 :   0.0
         ('R3', 1) :  None :                   -1.0 :   0.0
         ('R3', 2) :  None :                   -1.0 :   0.0
         ('R3', 3) :  None :                   -1.0 :   0.0
         ('R3', 4) :  None :                   -1.0 :   0.0
         ('R3', 5) :  None :                   -1.0 :   0.0
         ('R3', 6) :  None :                    0.0 :   0.0
         ('R3', 7) :  None :                   -2.0 :   0.0
         ('R3', 8) :  None :                    0.0 :   0.0
         ('R3', 9) :  None :                   -1.0 :   0.0
        ('R3', 10) :  None :                    0.0 :   0.0
        ('R3', 11) :  None :                   -1.0 :   0.0
        ('R3', 12) :  None :                    0.0 :   0.0
        ('R3', 13) :   0.0 :                    0.0 :   0.0
         ('S3', 0) :  None :                    0.0 :   0.0
         ('S3', 1) :  None :                   -2.0 :   0.0
         ('S3', 2) :  None :                    0.0 :   0.0
         ('S3', 3) :  None :                   -1.0 :   0.0
         ('S3', 4) :  None :                    0.0 :   0.0
         ('S3', 5) :  None :                   -1.0 :   0.0
         ('S3', 6) :  None :                    0.0 :   0.0
         ('S3', 7) :  None :                   -1.0 :   0.0
         ('S3', 8) :  None :                    0.0 :   0.0
         ('S3', 9) :  None :                   -1.0 :   0.0
        ('S3', 10) :  None :                   -1.0 :   0.0
        ('S3', 11) :  None :                   -1.0 :   0.0
        ('S3', 12) :  None :                   -1.0 :   0.0
        ('S3', 13) :   0.0 :                    0.0 :   0.0
         ('T3', 0) :  None :                   -1.0 :   0.0
         ('T3', 1) :  None :                   -1.0 :   0.0
         ('T3', 2) :  None :                    0.0 :   0.0
         ('T3', 3) :  None :                   -1.0 :   0.0
         ('T3', 4) :  None :                    0.0 :   0.0
         ('T3', 5) :  None :                    0.0 :   0.0
         ('T3', 6) :  None :                   -1.0 :   0.0
         ('T3', 7) :  None :                    0.0 :   0.0
         ('T3', 8) :  None :                   -1.0 :   0.0
         ('T3', 9) :  None :                   -1.0 :   0.0
        ('T3', 10) :  None :                   -1.0 :   0.0
        ('T3', 11) :  None :                   -1.0 :   0.0
        ('T3', 12) :  None :                   -1.0 :   0.0
        ('T3', 13) :   0.0 :                    0.0 :   0.0
    constraint_min_cons_days_off_inscope : Size=280
        Key        : Lower : Body                : Upper
         ('A3', 0) :  None :                 0.0 :   0.0
         ('A3', 1) :  None :                 0.0 :   0.0
         ('A3', 2) :  None :                 0.0 :   0.0
         ('A3', 3) :  None :                 0.0 :   0.0
         ('A3', 4) :  None :                 0.0 :   0.0
         ('A3', 5) :  None :                 0.0 :   0.0
         ('A3', 6) :  None :                 0.0 :   0.0
         ('A3', 7) :  None :                 0.0 :   0.0
         ('A3', 8) :  None :                 0.0 :   0.0
         ('A3', 9) :  None :                 0.0 :   0.0
        ('A3', 10) :  None :                 0.0 :   0.0
        ('A3', 11) :  None :                 0.0 :   0.0
        ('A3', 12) :  None :                 0.0 :   0.0
        ('A3', 13) :  None :                 0.0 :   0.0
         ('B3', 0) :  None :                 0.0 :   0.0
         ('B3', 1) :  None :                 0.0 :   0.0
         ('B3', 2) :  None :                 0.0 :   0.0
         ('B3', 3) :  None :                 0.0 :   0.0
         ('B3', 4) :  None :                 0.0 :   0.0
         ('B3', 5) :  None :                 0.0 :   0.0
         ('B3', 6) :  None :                 0.0 :   0.0
         ('B3', 7) :  None :                 0.0 :   0.0
         ('B3', 8) :  None :                 0.0 :   0.0
         ('B3', 9) :  None :                 0.0 :   0.0
        ('B3', 10) :  None :                 0.0 :   0.0
        ('B3', 11) :  None :                 0.0 :   0.0
        ('B3', 12) :  None :                 0.0 :   0.0
        ('B3', 13) :  None :                 0.0 :   0.0
         ('C3', 0) :  None :                 0.0 :   0.0
         ('C3', 1) :  None :                 0.0 :   0.0
         ('C3', 2) :  None :                 0.0 :   0.0
         ('C3', 3) :  None :                 0.0 :   0.0
         ('C3', 4) :  None :                 0.0 :   0.0
         ('C3', 5) :  None :                 0.0 :   0.0
         ('C3', 6) :  None :                 0.0 :   0.0
         ('C3', 7) :  None :                 0.0 :   0.0
         ('C3', 8) :  None :                 0.0 :   0.0
         ('C3', 9) :  None :                 0.0 :   0.0
        ('C3', 10) :  None :                 0.0 :   0.0
        ('C3', 11) :  None :                 0.0 :   0.0
        ('C3', 12) :  None :                 0.0 :   0.0
        ('C3', 13) :  None :                -1.0 :   0.0
         ('D3', 0) :  None :                 0.0 :   0.0
         ('D3', 1) :  None :                 0.0 :   0.0
         ('D3', 2) :  None :                 0.0 :   0.0
         ('D3', 3) :  None :                 0.0 :   0.0
         ('D3', 4) :  None :                 0.0 :   0.0
         ('D3', 5) :  None :                 0.0 :   0.0
         ('D3', 6) :  None :                 0.0 :   0.0
         ('D3', 7) :  None :                 0.0 :   0.0
         ('D3', 8) :  None :                 0.0 :   0.0
         ('D3', 9) :  None :                 0.0 :   0.0
        ('D3', 10) :  None :                 0.0 :   0.0
        ('D3', 11) :  None :                 0.0 :   0.0
        ('D3', 12) :  None :                 0.0 :   0.0
        ('D3', 13) :  None :                 0.0 :   0.0
         ('E3', 0) :  None :                 0.0 :   0.0
         ('E3', 1) :  None :                 0.0 :   0.0
         ('E3', 2) :  None :                 0.0 :   0.0
         ('E3', 3) :  None :                 0.0 :   0.0
         ('E3', 4) :  None :                 0.0 :   0.0
         ('E3', 5) :  None :                 0.0 :   0.0
         ('E3', 6) :  None :                 0.0 :   0.0
         ('E3', 7) :  None :                 0.0 :   0.0
         ('E3', 8) :  None :                 0.0 :   0.0
         ('E3', 9) :  None :                 0.0 :   0.0
        ('E3', 10) :  None :                 0.0 :   0.0
        ('E3', 11) :  None :                 0.0 :   0.0
        ('E3', 12) :  None :                 0.0 :   0.0
        ('E3', 13) :  None :                 0.0 :   0.0
         ('F3', 0) :  None :                 0.0 :   0.0
         ('F3', 1) :  None :                 0.0 :   0.0
         ('F3', 2) :  None :                 0.0 :   0.0
         ('F3', 3) :  None :                 0.0 :   0.0
         ('F3', 4) :  None :                 0.0 :   0.0
         ('F3', 5) :  None :                 0.0 :   0.0
         ('F3', 6) :  None :                 0.0 :   0.0
         ('F3', 7) :  None :                 0.0 :   0.0
         ('F3', 8) :  None :                 0.0 :   0.0
         ('F3', 9) :  None :                 0.0 :   0.0
        ('F3', 10) :  None :                 0.0 :   0.0
        ('F3', 11) :  None :                 0.0 :   0.0
        ('F3', 12) :  None :                 0.0 :   0.0
        ('F3', 13) :  None :                 0.0 :   0.0
         ('G3', 0) :  None :                 0.0 :   0.0
         ('G3', 1) :  None :                 0.0 :   0.0
         ('G3', 2) :  None :                 0.0 :   0.0
         ('G3', 3) :  None :                 0.0 :   0.0
         ('G3', 4) :  None :                 0.0 :   0.0
         ('G3', 5) :  None :                 0.0 :   0.0
         ('G3', 6) :  None :                 0.0 :   0.0
         ('G3', 7) :  None :                 0.0 :   0.0
         ('G3', 8) :  None :                 0.0 :   0.0
         ('G3', 9) :  None :                 0.0 :   0.0
        ('G3', 10) :  None :                 0.0 :   0.0
        ('G3', 11) :  None :                 0.0 :   0.0
        ('G3', 12) :  None :                 0.0 :   0.0
        ('G3', 13) :  None :                -1.0 :   0.0
         ('H3', 0) :  None :                 0.0 :   0.0
         ('H3', 1) :  None :                 0.0 :   0.0
         ('H3', 2) :  None :                 0.0 :   0.0
         ('H3', 3) :  None :                 0.0 :   0.0
         ('H3', 4) :  None :                 0.0 :   0.0
         ('H3', 5) :  None :                 0.0 :   0.0
         ('H3', 6) :  None :                 0.0 :   0.0
         ('H3', 7) :  None :                 0.0 :   0.0
         ('H3', 8) :  None :                 0.0 :   0.0
         ('H3', 9) :  None :                 0.0 :   0.0
        ('H3', 10) :  None :                 0.0 :   0.0
        ('H3', 11) :  None :                 0.0 :   0.0
        ('H3', 12) :  None :                 0.0 :   0.0
        ('H3', 13) :  None :                -1.0 :   0.0
         ('I3', 0) :  None :                 0.0 :   0.0
         ('I3', 1) :  None :                 0.0 :   0.0
         ('I3', 2) :  None :                 0.0 :   0.0
         ('I3', 3) :  None :                 0.0 :   0.0
         ('I3', 4) :  None :                 0.0 :   0.0
         ('I3', 5) :  None :                 0.0 :   0.0
         ('I3', 6) :  None :                 0.0 :   0.0
         ('I3', 7) :  None :                 0.0 :   0.0
         ('I3', 8) :  None :                 0.0 :   0.0
         ('I3', 9) :  None :                 0.0 :   0.0
        ('I3', 10) :  None :                 0.0 :   0.0
        ('I3', 11) :  None :                 0.0 :   0.0
        ('I3', 12) :  None :                 0.0 :   0.0
        ('I3', 13) :  None :                 0.0 :   0.0
         ('J3', 0) :  None :                 0.0 :   0.0
         ('J3', 1) :  None :                 0.0 :   0.0
         ('J3', 2) :  None :                 0.0 :   0.0
         ('J3', 3) :  None :                 0.0 :   0.0
         ('J3', 4) :  None :                 0.0 :   0.0
         ('J3', 5) :  None :                 0.0 :   0.0
         ('J3', 6) :  None :                 0.0 :   0.0
         ('J3', 7) :  None :                 0.0 :   0.0
         ('J3', 8) :  None :                 0.0 :   0.0
         ('J3', 9) :  None :                 0.0 :   0.0
        ('J3', 10) :  None :                 0.0 :   0.0
        ('J3', 11) :  None :                 0.0 :   0.0
        ('J3', 12) :  None :                 0.0 :   0.0
        ('J3', 13) :  None :                 0.0 :   0.0
         ('K3', 0) :  None :                 0.0 :   0.0
         ('K3', 1) :  None :                 0.0 :   0.0
         ('K3', 2) :  None :                 0.0 :   0.0
         ('K3', 3) :  None :                -1.0 :   0.0
         ('K3', 4) :  None :                 0.0 :   0.0
         ('K3', 5) :  None :                 0.0 :   0.0
         ('K3', 6) :  None :                -1.0 :   0.0
         ('K3', 7) :  None :                 0.0 :   0.0
         ('K3', 8) :  None :                 0.0 :   0.0
         ('K3', 9) :  None :                 0.0 :   0.0
        ('K3', 10) :  None :                 0.0 :   0.0
        ('K3', 11) :  None :                 0.0 :   0.0
        ('K3', 12) :  None :                -1.0 :   0.0
        ('K3', 13) :  None :                -2.0 :   0.0
         ('L3', 0) :  None :                 0.0 :   0.0
         ('L3', 1) :  None :                 0.0 :   0.0
         ('L3', 2) :  None :                 0.0 :   0.0
         ('L3', 3) :  None :                -1.0 :   0.0
         ('L3', 4) :  None :                 0.0 :   0.0
         ('L3', 5) :  None :                 0.0 :   0.0
         ('L3', 6) :  None :                -1.0 :   0.0
         ('L3', 7) :  None :                 0.0 :   0.0
         ('L3', 8) :  None :                 0.0 :   0.0
         ('L3', 9) :  None :                 0.0 :   0.0
        ('L3', 10) :  None :                 0.0 :   0.0
        ('L3', 11) :  None :                 0.0 :   0.0
        ('L3', 12) :  None :                -1.0 :   0.0
        ('L3', 13) :  None :                -2.0 :   0.0
         ('M3', 0) :  None :                 0.0 :   0.0
         ('M3', 1) :  None :                 0.0 :   0.0
         ('M3', 2) :  None :                 0.0 :   0.0
         ('M3', 3) :  None :                -1.0 :   0.0
         ('M3', 4) :  None :                 0.0 :   0.0
         ('M3', 5) :  None :                 0.0 :   0.0
         ('M3', 6) :  None :                -1.0 :   0.0
         ('M3', 7) :  None :                 0.0 :   0.0
         ('M3', 8) :  None :                 0.0 :   0.0
         ('M3', 9) :  None :                -1.0 :   0.0
        ('M3', 10) :  None :                 0.0 :   0.0
        ('M3', 11) :  None :                 0.0 :   0.0
        ('M3', 12) :  None :                 0.0 :   0.0
        ('M3', 13) :  None :                 0.0 :   0.0
         ('N3', 0) :  None :                 0.0 :   0.0
         ('N3', 1) :  None :                 0.0 :   0.0
         ('N3', 2) :  None : -0.9999999999999998 :   0.0
         ('N3', 3) :  None :                 0.0 :   0.0
         ('N3', 4) :  None :                 0.0 :   0.0
         ('N3', 5) :  None :                 0.0 :   0.0
         ('N3', 6) :  None :                 0.0 :   0.0
         ('N3', 7) :  None :                 0.0 :   0.0
         ('N3', 8) :  None :                -1.0 :   0.0
         ('N3', 9) :  None :                 0.0 :   0.0
        ('N3', 10) :  None :                 0.0 :   0.0
        ('N3', 11) :  None :                -1.0 :   0.0
        ('N3', 12) :  None :                 0.0 :   0.0
        ('N3', 13) :  None :                -1.0 :   0.0
         ('O3', 0) :  None :                 0.0 :   0.0
         ('O3', 1) :  None :                 0.0 :   0.0
         ('O3', 2) :  None :                -1.0 :   0.0
         ('O3', 3) :  None :                 0.0 :   0.0
         ('O3', 4) :  None :                 0.0 :   0.0
         ('O3', 5) :  None :                -1.0 :   0.0
         ('O3', 6) :  None :                 0.0 :   0.0
         ('O3', 7) :  None :                 0.0 :   0.0
         ('O3', 8) :  None :                 0.0 :   0.0
         ('O3', 9) :  None :                 0.0 :   0.0
        ('O3', 10) :  None :                 0.0 :   0.0
        ('O3', 11) :  None :                -1.0 :   0.0
        ('O3', 12) :  None :                -2.0 :   0.0
        ('O3', 13) :  None :                -2.0 :   0.0
         ('P3', 0) :  None :                 0.0 :   0.0
         ('P3', 1) :  None :                 0.0 :   0.0
         ('P3', 2) :  None :                 0.0 :   0.0
         ('P3', 3) :  None :                 0.0 :   0.0
         ('P3', 4) :  None :                 0.0 :   0.0
         ('P3', 5) :  None :                 0.0 :   0.0
         ('P3', 6) :  None :                 0.0 :   0.0
         ('P3', 7) :  None :                 0.0 :   0.0
         ('P3', 8) :  None :                 0.0 :   0.0
         ('P3', 9) :  None :                 0.0 :   0.0
        ('P3', 10) :  None :                 0.0 :   0.0
        ('P3', 11) :  None :                 0.0 :   0.0
        ('P3', 12) :  None :                 0.0 :   0.0
        ('P3', 13) :  None :                -1.0 :   0.0
         ('Q3', 0) :  None :                 0.0 :   0.0
         ('Q3', 1) :  None :                 0.0 :   0.0
         ('Q3', 2) :  None :                 0.0 :   0.0
         ('Q3', 3) :  None :                 0.0 :   0.0
         ('Q3', 4) :  None :                 0.0 :   0.0
         ('Q3', 5) :  None :                 0.0 :   0.0
         ('Q3', 6) :  None :                 0.0 :   0.0
         ('Q3', 7) :  None :                 0.0 :   0.0
         ('Q3', 8) :  None :                 0.0 :   0.0
         ('Q3', 9) :  None :                 0.0 :   0.0
        ('Q3', 10) :  None :                 0.0 :   0.0
        ('Q3', 11) :  None :                 0.0 :   0.0
        ('Q3', 12) :  None :                 0.0 :   0.0
        ('Q3', 13) :  None :                 0.0 :   0.0
         ('R3', 0) :  None :                 0.0 :   0.0
         ('R3', 1) :  None :                 0.0 :   0.0
         ('R3', 2) :  None :                 0.0 :   0.0
         ('R3', 3) :  None :                 0.0 :   0.0
         ('R3', 4) :  None :                 0.0 :   0.0
         ('R3', 5) :  None :                 0.0 :   0.0
         ('R3', 6) :  None :                 0.0 :   0.0
         ('R3', 7) :  None :                 0.0 :   0.0
         ('R3', 8) :  None :                 0.0 :   0.0
         ('R3', 9) :  None :                 0.0 :   0.0
        ('R3', 10) :  None :                 0.0 :   0.0
        ('R3', 11) :  None :                 0.0 :   0.0
        ('R3', 12) :  None :                 0.0 :   0.0
        ('R3', 13) :  None :                 0.0 :   0.0
         ('S3', 0) :  None :                 0.0 :   0.0
         ('S3', 1) :  None :                 0.0 :   0.0
         ('S3', 2) :  None :                 0.0 :   0.0
         ('S3', 3) :  None :                 0.0 :   0.0
         ('S3', 4) :  None :                 0.0 :   0.0
         ('S3', 5) :  None :                 0.0 :   0.0
         ('S3', 6) :  None :                 0.0 :   0.0
         ('S3', 7) :  None :                 0.0 :   0.0
         ('S3', 8) :  None :                 0.0 :   0.0
         ('S3', 9) :  None :                 0.0 :   0.0
        ('S3', 10) :  None :                 0.0 :   0.0
        ('S3', 11) :  None :                 0.0 :   0.0
        ('S3', 12) :  None :                 0.0 :   0.0
        ('S3', 13) :  None :                -1.0 :   0.0
         ('T3', 0) :  None :                 0.0 :   0.0
         ('T3', 1) :  None :                 0.0 :   0.0
         ('T3', 2) :  None :                 0.0 :   0.0
         ('T3', 3) :  None :                 0.0 :   0.0
         ('T3', 4) :  None :                 0.0 :   0.0
         ('T3', 5) :  None :                 0.0 :   0.0
         ('T3', 6) :  None :                 0.0 :   0.0
         ('T3', 7) :  None :                 0.0 :   0.0
         ('T3', 8) :  None :                 0.0 :   0.0
         ('T3', 9) :  None :                 0.0 :   0.0
        ('T3', 10) :  None :                 0.0 :   0.0
        ('T3', 11) :  None :                 0.0 :   0.0
        ('T3', 12) :  None :                 0.0 :   0.0
        ('T3', 13) :  None :                -1.0 :   0.0
    constraint_min_cons_days_off_backward : Size=0
        Key : Lower : Body : Upper
    constraint_min_cons_days_off_forward : Size=0
        Key : Lower : Body : Upper
    constraint_has_weekend_work_lb : Size=0
        Key : Lower : Body : Upper
    constraint_has_weekend_work : Size=80
        Key        : Lower : Body : Upper
         ('A3', 5) :  None :  0.0 :   0.0
         ('A3', 6) :  None :  0.0 :   0.0
        ('A3', 12) :  None :  0.0 :   0.0
        ('A3', 13) :  None :  0.0 :   0.0
         ('B3', 5) :  None :  0.0 :   0.0
         ('B3', 6) :  None :  0.0 :   0.0
        ('B3', 12) :  None :  0.0 :   0.0
        ('B3', 13) :  None :  0.0 :   0.0
         ('C3', 5) :  None :  0.0 :   0.0
         ('C3', 6) :  None :  0.0 :   0.0
        ('C3', 12) :  None :  0.0 :   0.0
        ('C3', 13) :  None :  0.0 :   0.0
         ('D3', 5) :  None :  0.0 :   0.0
         ('D3', 6) :  None :  0.0 :   0.0
        ('D3', 12) :  None :  0.0 :   0.0
        ('D3', 13) :  None :  0.0 :   0.0
         ('E3', 5) :  None :  0.0 :   0.0
         ('E3', 6) :  None :  0.0 :   0.0
        ('E3', 12) :  None :  0.0 :   0.0
        ('E3', 13) :  None :  0.0 :   0.0
         ('F3', 5) :  None :  0.0 :   0.0
         ('F3', 6) :  None :  0.0 :   0.0
        ('F3', 12) :  None :  0.0 :   0.0
        ('F3', 13) :  None :  0.0 :   0.0
         ('G3', 5) :  None :  0.0 :   0.0
         ('G3', 6) :  None :  0.0 :   0.0
        ('G3', 12) :  None :  0.0 :   0.0
        ('G3', 13) :  None :  0.0 :   0.0
         ('H3', 5) :  None :  0.0 :   0.0
         ('H3', 6) :  None :  0.0 :   0.0
        ('H3', 12) :  None :  0.0 :   0.0
        ('H3', 13) :  None :  0.0 :   0.0
         ('I3', 5) :  None :  0.0 :   0.0
         ('I3', 6) :  None :  0.0 :   0.0
        ('I3', 12) :  None :  0.0 :   0.0
        ('I3', 13) :  None :  0.0 :   0.0
         ('J3', 5) :  None :  0.0 :   0.0
         ('J3', 6) :  None :  0.0 :   0.0
        ('J3', 12) :  None :  0.0 :   0.0
        ('J3', 13) :  None :  0.0 :   0.0
         ('K3', 5) :  None :  0.0 :   0.0
         ('K3', 6) :  None :  0.0 :   0.0
        ('K3', 12) :  None :  0.0 :   0.0
        ('K3', 13) :  None :  0.0 :   0.0
         ('L3', 5) :  None :  0.0 :   0.0
         ('L3', 6) :  None :  0.0 :   0.0
        ('L3', 12) :  None :  0.0 :   0.0
        ('L3', 13) :  None :  0.0 :   0.0
         ('M3', 5) :  None :  0.0 :   0.0
         ('M3', 6) :  None :  0.0 :   0.0
        ('M3', 12) :  None :  0.0 :   0.0
        ('M3', 13) :  None :  0.0 :   0.0
         ('N3', 5) :  None :  0.0 :   0.0
         ('N3', 6) :  None :  0.0 :   0.0
        ('N3', 12) :  None :  0.0 :   0.0
        ('N3', 13) :  None :  0.0 :   0.0
         ('O3', 5) :  None :  0.0 :   0.0
         ('O3', 6) :  None :  0.0 :   0.0
        ('O3', 12) :  None :  0.0 :   0.0
        ('O3', 13) :  None :  0.0 :   0.0
         ('P3', 5) :  None :  0.0 :   0.0
         ('P3', 6) :  None :  0.0 :   0.0
        ('P3', 12) :  None :  0.0 :   0.0
        ('P3', 13) :  None :  0.0 :   0.0
         ('Q3', 5) :  None :  0.0 :   0.0
         ('Q3', 6) :  None :  0.0 :   0.0
        ('Q3', 12) :  None :  0.0 :   0.0
        ('Q3', 13) :  None :  0.0 :   0.0
         ('R3', 5) :  None :  0.0 :   0.0
         ('R3', 6) :  None :  0.0 :   0.0
        ('R3', 12) :  None :  0.0 :   0.0
        ('R3', 13) :  None :  0.0 :   0.0
         ('S3', 5) :  None :  0.0 :   0.0
         ('S3', 6) :  None :  0.0 :   0.0
        ('S3', 12) :  None :  0.0 :   0.0
        ('S3', 13) :  None :  0.0 :   0.0
         ('T3', 5) :  None :  0.0 :   0.0
         ('T3', 6) :  None :  0.0 :   0.0
        ('T3', 12) :  None :  0.0 :   0.0
        ('T3', 13) :  None :  0.0 :   0.0
    constraint_max_nr_weekend : Size=20
        Key : Lower : Body : Upper
         A3 :  None :  1.0 :   1.0
         B3 :  None :  1.0 :   1.0
         C3 :  None :  1.0 :   1.0
         D3 :  None :  1.0 :   1.0
         E3 :  None :  1.0 :   1.0
         F3 :  None :  1.0 :   1.0
         G3 :  None :  1.0 :   1.0
         H3 :  None :  1.0 :   1.0
         I3 :  None :  1.0 :   1.0
         J3 :  None :  1.0 :   1.0
         K3 :  None :  1.0 :   1.0
         L3 :  None :  1.0 :   1.0
         M3 :  None :  1.0 :   1.0
         N3 :  None :  1.0 :   1.0
         O3 :  None :  1.0 :   1.0
         P3 :  None :  1.0 :   1.0
         Q3 :  None :  1.0 :   1.0
         R3 :  None :  1.0 :   1.0
         S3 :  None :  1.0 :   1.0
         T3 :  None :  1.0 :   1.0
    constraint_days_off : Size=20
        Key        : Lower : Body : Upper
         ('A3', 0) :   1.0 :  1.0 :   1.0
         ('B3', 6) :   1.0 :  1.0 :   1.0
         ('C3', 1) :   1.0 :  1.0 :   1.0
         ('D3', 0) :   1.0 :  1.0 :   1.0
         ('E3', 3) :   1.0 :  1.0 :   1.0
         ('F3', 0) :   1.0 :  1.0 :   1.0
         ('G3', 4) :   1.0 :  1.0 :   1.0
        ('H3', 12) :   1.0 :  1.0 :   1.0
         ('I3', 6) :   1.0 :  1.0 :   1.0
         ('J3', 2) :   1.0 :  1.0 :   1.0
         ('K3', 4) :   1.0 :  1.0 :   1.0
         ('L3', 4) :   1.0 :  1.0 :   1.0
         ('M3', 1) :   1.0 :  1.0 :   1.0
         ('N3', 8) :   1.0 :  1.0 :   1.0
         ('O3', 3) :   1.0 :  1.0 :   1.0
         ('P3', 2) :   1.0 :  1.0 :   1.0
         ('Q3', 6) :   1.0 :  1.0 :   1.0
         ('R3', 1) :   1.0 :  1.0 :   1.0
         ('S3', 8) :   1.0 :  1.0 :   1.0
        ('T3', 11) :   1.0 :  1.0 :   1.0
    constraint_shift_on_request : Size=840
        Key              : Lower : Body : Upper
         ('D3', 'A3', 0) :   0.0 :  0.0 :   0.0
         ('D3', 'A3', 1) :   0.0 :  0.0 :   0.0
         ('D3', 'A3', 2) :   0.0 :  0.0 :   0.0
         ('D3', 'A3', 3) :   0.0 :  0.0 :   0.0
         ('D3', 'A3', 4) :   0.0 :  0.0 :   0.0
         ('D3', 'A3', 5) :   0.0 :  0.0 :   0.0
         ('D3', 'A3', 6) :   0.0 :  0.0 :   0.0
         ('D3', 'A3', 7) :   0.0 :  0.0 :   0.0
         ('D3', 'A3', 8) :   0.0 :  0.0 :   0.0
         ('D3', 'A3', 9) :   0.0 :  0.0 :   0.0
        ('D3', 'A3', 10) :   0.0 :  0.0 :   0.0
        ('D3', 'A3', 11) :   0.0 :  0.0 :   0.0
        ('D3', 'A3', 12) :   0.0 :  0.0 :   0.0
        ('D3', 'A3', 13) :   0.0 :  0.0 :   0.0
         ('D3', 'B3', 0) :   0.0 :  0.0 :   0.0
         ('D3', 'B3', 1) :   0.0 :  0.0 :   0.0
         ('D3', 'B3', 2) :   0.0 :  0.0 :   0.0
         ('D3', 'B3', 3) :   0.0 :  0.0 :   0.0
         ('D3', 'B3', 4) :   0.0 :  0.0 :   0.0
         ('D3', 'B3', 5) :   0.0 :  0.0 :   0.0
         ('D3', 'B3', 6) :   0.0 :  0.0 :   0.0
         ('D3', 'B3', 7) :   0.0 :  0.0 :   0.0
         ('D3', 'B3', 8) :   0.0 :  0.0 :   0.0
         ('D3', 'B3', 9) :   0.0 :  0.0 :   0.0
        ('D3', 'B3', 10) :   0.0 :  0.0 :   0.0
        ('D3', 'B3', 11) :   0.0 :  0.0 :   0.0
        ('D3', 'B3', 12) :   0.0 :  0.0 :   0.0
        ('D3', 'B3', 13) :   0.0 :  0.0 :   0.0
         ('D3', 'C3', 0) :   0.0 :  0.0 :   0.0
         ('D3', 'C3', 1) :   0.0 :  0.0 :   0.0
         ('D3', 'C3', 2) :   0.0 :  0.0 :   0.0
         ('D3', 'C3', 3) :   0.0 :  0.0 :   0.0
         ('D3', 'C3', 4) :   0.0 :  0.0 :   0.0
         ('D3', 'C3', 5) :   0.0 :  0.0 :   0.0
         ('D3', 'C3', 6) :   0.0 :  0.0 :   0.0
         ('D3', 'C3', 7) :   0.0 :  0.0 :   0.0
         ('D3', 'C3', 8) :   0.0 :  0.0 :   0.0
         ('D3', 'C3', 9) :   0.0 :  0.0 :   0.0
        ('D3', 'C3', 10) :   0.0 :  0.0 :   0.0
        ('D3', 'C3', 11) :   0.0 :  0.0 :   0.0
        ('D3', 'C3', 12) :   0.0 :  0.0 :   0.0
        ('D3', 'C3', 13) :   0.0 :  0.0 :   0.0
         ('D3', 'D3', 0) :   0.0 :  0.0 :   0.0
         ('D3', 'D3', 1) :   0.0 :  0.0 :   0.0
         ('D3', 'D3', 2) :   0.0 :  0.0 :   0.0
         ('D3', 'D3', 3) :   0.0 :  0.0 :   0.0
         ('D3', 'D3', 4) :   0.0 :  0.0 :   0.0
         ('D3', 'D3', 5) :   0.0 :  0.0 :   0.0
         ('D3', 'D3', 6) :   0.0 :  0.0 :   0.0
         ('D3', 'D3', 7) :   0.0 :  0.0 :   0.0
         ('D3', 'D3', 8) :   0.0 :  0.0 :   0.0
         ('D3', 'D3', 9) :   0.0 :  0.0 :   0.0
        ('D3', 'D3', 10) :   0.0 :  0.0 :   0.0
        ('D3', 'D3', 11) :   0.0 :  0.0 :   0.0
        ('D3', 'D3', 12) :   0.0 :  0.0 :   0.0
        ('D3', 'D3', 13) :   0.0 :  0.0 :   0.0
         ('D3', 'E3', 0) :   0.0 :  0.0 :   0.0
         ('D3', 'E3', 1) :   0.0 :  0.0 :   0.0
         ('D3', 'E3', 2) :   0.0 :  0.0 :   0.0
         ('D3', 'E3', 3) :   0.0 :  0.0 :   0.0
         ('D3', 'E3', 4) :   0.0 :  0.0 :   0.0
         ('D3', 'E3', 5) :   0.0 :  0.0 :   0.0
         ('D3', 'E3', 6) :   0.0 :  0.0 :   0.0
         ('D3', 'E3', 7) :   0.0 :  0.0 :   0.0
         ('D3', 'E3', 8) :   0.0 :  0.0 :   0.0
         ('D3', 'E3', 9) :   0.0 :  0.0 :   0.0
        ('D3', 'E3', 10) :   0.0 :  0.0 :   0.0
        ('D3', 'E3', 11) :   0.0 :  0.0 :   0.0
        ('D3', 'E3', 12) :   0.0 :  0.0 :   0.0
        ('D3', 'E3', 13) :   0.0 :  0.0 :   0.0
         ('D3', 'F3', 0) :   0.0 :  0.0 :   0.0
         ('D3', 'F3', 1) :   0.0 :  0.0 :   0.0
         ('D3', 'F3', 2) :   0.0 :  0.0 :   0.0
         ('D3', 'F3', 3) :   0.0 :  0.0 :   0.0
         ('D3', 'F3', 4) :   0.0 :  0.0 :   0.0
         ('D3', 'F3', 5) :   0.0 :  0.0 :   0.0
         ('D3', 'F3', 6) :   0.0 :  0.0 :   0.0
         ('D3', 'F3', 7) :   0.0 :  0.0 :   0.0
         ('D3', 'F3', 8) :   0.0 :  0.0 :   0.0
         ('D3', 'F3', 9) :   0.0 :  0.0 :   0.0
        ('D3', 'F3', 10) :   0.0 :  0.0 :   0.0
        ('D3', 'F3', 11) :   0.0 :  0.0 :   0.0
        ('D3', 'F3', 12) :   0.0 :  0.0 :   0.0
        ('D3', 'F3', 13) :   0.0 :  0.0 :   0.0
         ('D3', 'G3', 0) :   0.0 :  0.0 :   0.0
         ('D3', 'G3', 1) :   0.0 :  0.0 :   0.0
         ('D3', 'G3', 2) :   0.0 :  0.0 :   0.0
         ('D3', 'G3', 3) :   0.0 :  0.0 :   0.0
         ('D3', 'G3', 4) :   0.0 :  0.0 :   0.0
         ('D3', 'G3', 5) :   0.0 :  0.0 :   0.0
         ('D3', 'G3', 6) :   0.0 :  0.0 :   0.0
         ('D3', 'G3', 7) :   0.0 :  0.0 :   0.0
         ('D3', 'G3', 8) :   0.0 :  0.0 :   0.0
         ('D3', 'G3', 9) :   0.0 :  0.0 :   0.0
        ('D3', 'G3', 10) :   0.0 :  0.0 :   0.0
        ('D3', 'G3', 11) :   0.0 :  0.0 :   0.0
        ('D3', 'G3', 12) :   0.0 :  0.0 :   0.0
        ('D3', 'G3', 13) :   0.0 :  0.0 :   0.0
         ('D3', 'H3', 0) :   0.0 :  0.0 :   0.0
         ('D3', 'H3', 1) :   0.0 :  0.0 :   0.0
         ('D3', 'H3', 2) :   0.0 :  0.0 :   0.0
         ('D3', 'H3', 3) :   0.0 :  0.0 :   0.0
         ('D3', 'H3', 4) :   0.0 :  0.0 :   0.0
         ('D3', 'H3', 5) :   0.0 :  0.0 :   0.0
         ('D3', 'H3', 6) :   0.0 :  0.0 :   0.0
         ('D3', 'H3', 7) :   0.0 :  0.0 :   0.0
         ('D3', 'H3', 8) :   0.0 :  0.0 :   0.0
         ('D3', 'H3', 9) :   0.0 :  0.0 :   0.0
        ('D3', 'H3', 10) :   0.0 :  0.0 :   0.0
        ('D3', 'H3', 11) :   0.0 :  0.0 :   0.0
        ('D3', 'H3', 12) :   0.0 :  0.0 :   0.0
        ('D3', 'H3', 13) :   0.0 :  0.0 :   0.0
         ('D3', 'I3', 0) :   0.0 :  0.0 :   0.0
         ('D3', 'I3', 1) :   0.0 :  0.0 :   0.0
         ('D3', 'I3', 2) :   0.0 :  0.0 :   0.0
         ('D3', 'I3', 3) :   0.0 :  0.0 :   0.0
         ('D3', 'I3', 4) :   0.0 :  0.0 :   0.0
         ('D3', 'I3', 5) :   0.0 :  0.0 :   0.0
         ('D3', 'I3', 6) :   0.0 :  0.0 :   0.0
         ('D3', 'I3', 7) :   0.0 :  0.0 :   0.0
         ('D3', 'I3', 8) :   0.0 :  0.0 :   0.0
         ('D3', 'I3', 9) :   0.0 :  0.0 :   0.0
        ('D3', 'I3', 10) :   0.0 :  0.0 :   0.0
        ('D3', 'I3', 11) :   0.0 :  0.0 :   0.0
        ('D3', 'I3', 12) :   0.0 :  0.0 :   0.0
        ('D3', 'I3', 13) :   0.0 :  0.0 :   0.0
         ('D3', 'J3', 0) :   0.0 :  0.0 :   0.0
         ('D3', 'J3', 1) :   0.0 :  0.0 :   0.0
         ('D3', 'J3', 2) :   0.0 :  0.0 :   0.0
         ('D3', 'J3', 3) :   0.0 :  0.0 :   0.0
         ('D3', 'J3', 4) :   0.0 :  0.0 :   0.0
         ('D3', 'J3', 5) :   0.0 :  0.0 :   0.0
         ('D3', 'J3', 6) :   0.0 :  0.0 :   0.0
         ('D3', 'J3', 7) :   0.0 :  0.0 :   0.0
         ('D3', 'J3', 8) :   0.0 :  0.0 :   0.0
         ('D3', 'J3', 9) :   0.0 :  0.0 :   0.0
        ('D3', 'J3', 10) :   0.0 :  0.0 :   0.0
        ('D3', 'J3', 11) :   0.0 :  0.0 :   0.0
        ('D3', 'J3', 12) :   0.0 :  0.0 :   0.0
        ('D3', 'J3', 13) :   0.0 :  0.0 :   0.0
         ('D3', 'K3', 0) :   0.0 :  0.0 :   0.0
         ('D3', 'K3', 1) :   0.0 :  0.0 :   0.0
         ('D3', 'K3', 2) :   0.0 :  0.0 :   0.0
         ('D3', 'K3', 3) :   0.0 :  0.0 :   0.0
         ('D3', 'K3', 4) :   0.0 :  0.0 :   0.0
         ('D3', 'K3', 5) :   0.0 :  0.0 :   0.0
         ('D3', 'K3', 6) :   0.0 :  0.0 :   0.0
         ('D3', 'K3', 7) :   0.0 :  0.0 :   0.0
         ('D3', 'K3', 8) :   0.0 :  0.0 :   0.0
         ('D3', 'K3', 9) :   0.0 :  0.0 :   0.0
        ('D3', 'K3', 10) :   0.0 :  0.0 :   0.0
        ('D3', 'K3', 11) :   0.0 :  0.0 :   0.0
        ('D3', 'K3', 12) :   0.0 :  0.0 :   0.0
        ('D3', 'K3', 13) :   0.0 :  0.0 :   0.0
         ('D3', 'L3', 0) :   0.0 :  0.0 :   0.0
         ('D3', 'L3', 1) :   0.0 :  0.0 :   0.0
         ('D3', 'L3', 2) :   0.0 :  0.0 :   0.0
         ('D3', 'L3', 3) :   0.0 :  0.0 :   0.0
         ('D3', 'L3', 4) :   0.0 :  0.0 :   0.0
         ('D3', 'L3', 5) :   0.0 :  0.0 :   0.0
         ('D3', 'L3', 6) :   0.0 :  0.0 :   0.0
         ('D3', 'L3', 7) :   0.0 :  0.0 :   0.0
         ('D3', 'L3', 8) :   0.0 :  0.0 :   0.0
         ('D3', 'L3', 9) :   0.0 :  0.0 :   0.0
        ('D3', 'L3', 10) :   0.0 :  0.0 :   0.0
        ('D3', 'L3', 11) :   0.0 :  0.0 :   0.0
        ('D3', 'L3', 12) :   0.0 :  0.0 :   0.0
        ('D3', 'L3', 13) :   0.0 :  0.0 :   0.0
         ('D3', 'M3', 0) :   0.0 :  0.0 :   0.0
         ('D3', 'M3', 1) :   0.0 :  0.0 :   0.0
         ('D3', 'M3', 2) :   0.0 :  0.0 :   0.0
         ('D3', 'M3', 3) :   0.0 :  0.0 :   0.0
         ('D3', 'M3', 4) :   0.0 :  0.0 :   0.0
         ('D3', 'M3', 5) :   0.0 :  0.0 :   0.0
         ('D3', 'M3', 6) :   0.0 :  0.0 :   0.0
         ('D3', 'M3', 7) :   0.0 :  0.0 :   0.0
         ('D3', 'M3', 8) :   0.0 :  0.0 :   0.0
         ('D3', 'M3', 9) :   0.0 :  0.0 :   0.0
        ('D3', 'M3', 10) :   0.0 :  0.0 :   0.0
        ('D3', 'M3', 11) :   0.0 :  0.0 :   0.0
        ('D3', 'M3', 12) :   0.0 :  0.0 :   0.0
        ('D3', 'M3', 13) :   0.0 :  0.0 :   0.0
         ('D3', 'N3', 0) :   0.0 :  0.0 :   0.0
         ('D3', 'N3', 1) :   0.0 :  0.0 :   0.0
         ('D3', 'N3', 2) :   0.0 :  0.0 :   0.0
         ('D3', 'N3', 3) :   0.0 :  0.0 :   0.0
         ('D3', 'N3', 4) :   0.0 :  0.0 :   0.0
         ('D3', 'N3', 5) :   0.0 :  0.0 :   0.0
         ('D3', 'N3', 6) :   0.0 :  0.0 :   0.0
         ('D3', 'N3', 7) :   0.0 :  0.0 :   0.0
         ('D3', 'N3', 8) :   0.0 :  0.0 :   0.0
         ('D3', 'N3', 9) :   0.0 :  0.0 :   0.0
        ('D3', 'N3', 10) :   0.0 :  0.0 :   0.0
        ('D3', 'N3', 11) :   0.0 :  0.0 :   0.0
        ('D3', 'N3', 12) :   0.0 :  0.0 :   0.0
        ('D3', 'N3', 13) :   0.0 :  0.0 :   0.0
         ('D3', 'O3', 0) :   0.0 :  0.0 :   0.0
         ('D3', 'O3', 1) :   0.0 :  0.0 :   0.0
         ('D3', 'O3', 2) :   0.0 :  0.0 :   0.0
         ('D3', 'O3', 3) :   0.0 :  0.0 :   0.0
         ('D3', 'O3', 4) :   0.0 :  0.0 :   0.0
         ('D3', 'O3', 5) :   0.0 :  0.0 :   0.0
         ('D3', 'O3', 6) :   0.0 :  0.0 :   0.0
         ('D3', 'O3', 7) :   0.0 :  0.0 :   0.0
         ('D3', 'O3', 8) :   0.0 :  0.0 :   0.0
         ('D3', 'O3', 9) :   0.0 :  0.0 :   0.0
        ('D3', 'O3', 10) :   0.0 :  0.0 :   0.0
        ('D3', 'O3', 11) :   0.0 :  0.0 :   0.0
        ('D3', 'O3', 12) :   0.0 :  0.0 :   0.0
        ('D3', 'O3', 13) :   0.0 :  0.0 :   0.0
         ('D3', 'P3', 0) :   0.0 :  0.0 :   0.0
         ('D3', 'P3', 1) :   0.0 :  0.0 :   0.0
         ('D3', 'P3', 2) :   0.0 :  0.0 :   0.0
         ('D3', 'P3', 3) :   0.0 :  0.0 :   0.0
         ('D3', 'P3', 4) :   0.0 :  0.0 :   0.0
         ('D3', 'P3', 5) :   0.0 :  0.0 :   0.0
         ('D3', 'P3', 6) :   0.0 :  0.0 :   0.0
         ('D3', 'P3', 7) :   0.0 :  0.0 :   0.0
         ('D3', 'P3', 8) :   0.0 :  0.0 :   0.0
         ('D3', 'P3', 9) :   0.0 :  0.0 :   0.0
        ('D3', 'P3', 10) :   0.0 :  0.0 :   0.0
        ('D3', 'P3', 11) :   0.0 :  0.0 :   0.0
        ('D3', 'P3', 12) :   0.0 :  0.0 :   0.0
        ('D3', 'P3', 13) :   0.0 :  0.0 :   0.0
         ('D3', 'Q3', 0) :   0.0 :  0.0 :   0.0
         ('D3', 'Q3', 1) :   0.0 :  0.0 :   0.0
         ('D3', 'Q3', 2) :   0.0 :  0.0 :   0.0
         ('D3', 'Q3', 3) :   0.0 :  0.0 :   0.0
         ('D3', 'Q3', 4) :   0.0 :  0.0 :   0.0
         ('D3', 'Q3', 5) :   0.0 :  0.0 :   0.0
         ('D3', 'Q3', 6) :   0.0 :  0.0 :   0.0
         ('D3', 'Q3', 7) :   0.0 :  0.0 :   0.0
         ('D3', 'Q3', 8) :   0.0 :  0.0 :   0.0
         ('D3', 'Q3', 9) :   0.0 :  0.0 :   0.0
        ('D3', 'Q3', 10) :   0.0 :  0.0 :   0.0
        ('D3', 'Q3', 11) :   0.0 :  0.0 :   0.0
        ('D3', 'Q3', 12) :   0.0 :  0.0 :   0.0
        ('D3', 'Q3', 13) :   0.0 :  0.0 :   0.0
         ('D3', 'R3', 0) :   0.0 :  0.0 :   0.0
         ('D3', 'R3', 1) :   0.0 :  0.0 :   0.0
         ('D3', 'R3', 2) :   0.0 :  0.0 :   0.0
         ('D3', 'R3', 3) :   0.0 :  0.0 :   0.0
         ('D3', 'R3', 4) :   0.0 :  0.0 :   0.0
         ('D3', 'R3', 5) :   0.0 :  0.0 :   0.0
         ('D3', 'R3', 6) :   0.0 :  0.0 :   0.0
         ('D3', 'R3', 7) :   0.0 :  0.0 :   0.0
         ('D3', 'R3', 8) :   0.0 :  0.0 :   0.0
         ('D3', 'R3', 9) :   0.0 :  0.0 :   0.0
        ('D3', 'R3', 10) :   0.0 :  0.0 :   0.0
        ('D3', 'R3', 11) :   0.0 :  0.0 :   0.0
        ('D3', 'R3', 12) :   0.0 :  0.0 :   0.0
        ('D3', 'R3', 13) :   0.0 :  0.0 :   0.0
         ('D3', 'S3', 0) :   0.0 :  0.0 :   0.0
         ('D3', 'S3', 1) :   0.0 :  0.0 :   0.0
         ('D3', 'S3', 2) :   0.0 :  0.0 :   0.0
         ('D3', 'S3', 3) :   0.0 :  0.0 :   0.0
         ('D3', 'S3', 4) :   0.0 :  0.0 :   0.0
         ('D3', 'S3', 5) :   0.0 :  0.0 :   0.0
         ('D3', 'S3', 6) :   0.0 :  0.0 :   0.0
         ('D3', 'S3', 7) :   0.0 :  0.0 :   0.0
         ('D3', 'S3', 8) :   0.0 :  0.0 :   0.0
         ('D3', 'S3', 9) :   0.0 :  0.0 :   0.0
        ('D3', 'S3', 10) :   0.0 :  0.0 :   0.0
        ('D3', 'S3', 11) :   0.0 :  0.0 :   0.0
        ('D3', 'S3', 12) :   0.0 :  0.0 :   0.0
        ('D3', 'S3', 13) :   0.0 :  0.0 :   0.0
         ('D3', 'T3', 0) :   0.0 :  0.0 :   0.0
         ('D3', 'T3', 1) :   0.0 :  0.0 :   0.0
         ('D3', 'T3', 2) :   0.0 :  0.0 :   0.0
         ('D3', 'T3', 3) :   0.0 :  0.0 :   0.0
         ('D3', 'T3', 4) :   0.0 :  0.0 :   0.0
         ('D3', 'T3', 5) :   0.0 :  0.0 :   0.0
         ('D3', 'T3', 6) :   0.0 :  0.0 :   0.0
         ('D3', 'T3', 7) :   0.0 :  0.0 :   0.0
         ('D3', 'T3', 8) :   0.0 :  0.0 :   0.0
         ('D3', 'T3', 9) :   0.0 :  0.0 :   0.0
        ('D3', 'T3', 10) :   0.0 :  0.0 :   0.0
        ('D3', 'T3', 11) :   0.0 :  0.0 :   0.0
        ('D3', 'T3', 12) :   0.0 :  0.0 :   0.0
        ('D3', 'T3', 13) :   0.0 :  0.0 :   0.0
         ('E3', 'A3', 0) :   0.0 :  0.0 :   0.0
         ('E3', 'A3', 1) :   0.0 :  0.0 :   0.0
         ('E3', 'A3', 2) :   0.0 :  0.0 :   0.0
         ('E3', 'A3', 3) :   0.0 :  0.0 :   0.0
         ('E3', 'A3', 4) :   0.0 :  0.0 :   0.0
         ('E3', 'A3', 5) :   0.0 :  0.0 :   0.0
         ('E3', 'A3', 6) :   0.0 :  0.0 :   0.0
         ('E3', 'A3', 7) :   0.0 :  0.0 :   0.0
         ('E3', 'A3', 8) :   0.0 :  0.0 :   0.0
         ('E3', 'A3', 9) :   0.0 :  0.0 :   0.0
        ('E3', 'A3', 10) :   0.0 :  0.0 :   0.0
        ('E3', 'A3', 11) :   0.0 :  0.0 :   0.0
        ('E3', 'A3', 12) :   0.0 :  0.0 :   0.0
        ('E3', 'A3', 13) :   0.0 :  0.0 :   0.0
         ('E3', 'B3', 0) :   0.0 :  0.0 :   0.0
         ('E3', 'B3', 1) :   0.0 :  0.0 :   0.0
         ('E3', 'B3', 2) :   0.0 :  0.0 :   0.0
         ('E3', 'B3', 3) :   0.0 :  0.0 :   0.0
         ('E3', 'B3', 4) :   0.0 :  0.0 :   0.0
         ('E3', 'B3', 5) :   0.0 :  0.0 :   0.0
         ('E3', 'B3', 6) :   0.0 :  0.0 :   0.0
         ('E3', 'B3', 7) :   0.0 :  0.0 :   0.0
         ('E3', 'B3', 8) :   0.0 :  0.0 :   0.0
         ('E3', 'B3', 9) :   0.0 :  0.0 :   0.0
        ('E3', 'B3', 10) :   0.0 :  0.0 :   0.0
        ('E3', 'B3', 11) :   0.0 :  0.0 :   0.0
        ('E3', 'B3', 12) :   0.0 :  0.0 :   0.0
        ('E3', 'B3', 13) :   0.0 :  0.0 :   0.0
         ('E3', 'C3', 0) :   0.0 :  0.0 :   0.0
         ('E3', 'C3', 1) :   0.0 :  0.0 :   0.0
         ('E3', 'C3', 2) :   0.0 :  0.0 :   0.0
         ('E3', 'C3', 3) :   0.0 :  0.0 :   0.0
         ('E3', 'C3', 4) :   0.0 :  0.0 :   0.0
         ('E3', 'C3', 5) :   0.0 :  0.0 :   0.0
         ('E3', 'C3', 6) :   0.0 :  0.0 :   0.0
         ('E3', 'C3', 7) :   0.0 :  0.0 :   0.0
         ('E3', 'C3', 8) :   0.0 :  0.0 :   0.0
         ('E3', 'C3', 9) :   0.0 :  0.0 :   0.0
        ('E3', 'C3', 10) :   0.0 :  0.0 :   0.0
        ('E3', 'C3', 11) :   0.0 :  0.0 :   0.0
        ('E3', 'C3', 12) :   0.0 :  0.0 :   0.0
        ('E3', 'C3', 13) :   0.0 :  0.0 :   0.0
         ('E3', 'D3', 0) :   0.0 :  0.0 :   0.0
         ('E3', 'D3', 1) :   0.0 :  0.0 :   0.0
         ('E3', 'D3', 2) :   0.0 :  0.0 :   0.0
         ('E3', 'D3', 3) :   0.0 :  0.0 :   0.0
         ('E3', 'D3', 4) :   0.0 :  0.0 :   0.0
         ('E3', 'D3', 5) :   0.0 :  0.0 :   0.0
         ('E3', 'D3', 6) :   0.0 :  0.0 :   0.0
         ('E3', 'D3', 7) :   0.0 :  0.0 :   0.0
         ('E3', 'D3', 8) :   0.0 :  0.0 :   0.0
         ('E3', 'D3', 9) :   0.0 :  0.0 :   0.0
        ('E3', 'D3', 10) :   0.0 :  0.0 :   0.0
        ('E3', 'D3', 11) :   0.0 :  0.0 :   0.0
        ('E3', 'D3', 12) :   0.0 :  0.0 :   0.0
        ('E3', 'D3', 13) :   0.0 :  0.0 :   0.0
         ('E3', 'E3', 0) :   0.0 :  0.0 :   0.0
         ('E3', 'E3', 1) :   0.0 :  0.0 :   0.0
         ('E3', 'E3', 2) :   0.0 :  0.0 :   0.0
         ('E3', 'E3', 3) :   0.0 :  0.0 :   0.0
         ('E3', 'E3', 4) :   0.0 :  0.0 :   0.0
         ('E3', 'E3', 5) :   0.0 :  0.0 :   0.0
         ('E3', 'E3', 6) :   0.0 :  0.0 :   0.0
         ('E3', 'E3', 7) :   0.0 :  0.0 :   0.0
         ('E3', 'E3', 8) :   0.0 :  0.0 :   0.0
         ('E3', 'E3', 9) :   0.0 :  0.0 :   0.0
        ('E3', 'E3', 10) :   0.0 :  0.0 :   0.0
        ('E3', 'E3', 11) :   0.0 :  0.0 :   0.0
        ('E3', 'E3', 12) :   0.0 :  0.0 :   0.0
        ('E3', 'E3', 13) :   0.0 :  0.0 :   0.0
         ('E3', 'F3', 0) :   0.0 :  0.0 :   0.0
         ('E3', 'F3', 1) :   0.0 :  0.0 :   0.0
         ('E3', 'F3', 2) :   0.0 :  0.0 :   0.0
         ('E3', 'F3', 3) :   0.0 :  0.0 :   0.0
         ('E3', 'F3', 4) :   0.0 :  0.0 :   0.0
         ('E3', 'F3', 5) :   0.0 :  0.0 :   0.0
         ('E3', 'F3', 6) :   0.0 :  0.0 :   0.0
         ('E3', 'F3', 7) :   0.0 :  0.0 :   0.0
         ('E3', 'F3', 8) :   0.0 :  0.0 :   0.0
         ('E3', 'F3', 9) :   0.0 :  0.0 :   0.0
        ('E3', 'F3', 10) :   0.0 :  0.0 :   0.0
        ('E3', 'F3', 11) :   0.0 :  0.0 :   0.0
        ('E3', 'F3', 12) :   0.0 :  0.0 :   0.0
        ('E3', 'F3', 13) :   0.0 :  0.0 :   0.0
         ('E3', 'G3', 0) :   0.0 :  0.0 :   0.0
         ('E3', 'G3', 1) :   0.0 :  0.0 :   0.0
         ('E3', 'G3', 2) :   0.0 :  0.0 :   0.0
         ('E3', 'G3', 3) :   0.0 :  0.0 :   0.0
         ('E3', 'G3', 4) :   0.0 :  0.0 :   0.0
         ('E3', 'G3', 5) :   0.0 :  0.0 :   0.0
         ('E3', 'G3', 6) :   0.0 :  0.0 :   0.0
         ('E3', 'G3', 7) :   0.0 :  0.0 :   0.0
         ('E3', 'G3', 8) :   0.0 :  0.0 :   0.0
         ('E3', 'G3', 9) :   0.0 :  0.0 :   0.0
        ('E3', 'G3', 10) :   0.0 :  0.0 :   0.0
        ('E3', 'G3', 11) :   0.0 :  0.0 :   0.0
        ('E3', 'G3', 12) :   0.0 :  0.0 :   0.0
        ('E3', 'G3', 13) :   0.0 :  0.0 :   0.0
         ('E3', 'H3', 0) :   0.0 :  0.0 :   0.0
         ('E3', 'H3', 1) :   0.0 :  0.0 :   0.0
         ('E3', 'H3', 2) :   0.0 :  0.0 :   0.0
         ('E3', 'H3', 3) :   0.0 :  0.0 :   0.0
         ('E3', 'H3', 4) :   0.0 :  0.0 :   0.0
         ('E3', 'H3', 5) :   0.0 :  0.0 :   0.0
         ('E3', 'H3', 6) :   0.0 :  0.0 :   0.0
         ('E3', 'H3', 7) :   0.0 :  0.0 :   0.0
         ('E3', 'H3', 8) :   0.0 :  0.0 :   0.0
         ('E3', 'H3', 9) :   0.0 :  0.0 :   0.0
        ('E3', 'H3', 10) :   0.0 :  0.0 :   0.0
        ('E3', 'H3', 11) :   0.0 :  0.0 :   0.0
        ('E3', 'H3', 12) :   0.0 :  0.0 :   0.0
        ('E3', 'H3', 13) :   0.0 :  0.0 :   0.0
         ('E3', 'I3', 0) :   0.0 :  0.0 :   0.0
         ('E3', 'I3', 1) :   0.0 :  0.0 :   0.0
         ('E3', 'I3', 2) :   0.0 :  0.0 :   0.0
         ('E3', 'I3', 3) :   0.0 :  0.0 :   0.0
         ('E3', 'I3', 4) :   0.0 :  0.0 :   0.0
         ('E3', 'I3', 5) :   0.0 :  0.0 :   0.0
         ('E3', 'I3', 6) :   0.0 :  0.0 :   0.0
         ('E3', 'I3', 7) :   0.0 :  0.0 :   0.0
         ('E3', 'I3', 8) :   0.0 :  0.0 :   0.0
         ('E3', 'I3', 9) :   0.0 :  0.0 :   0.0
        ('E3', 'I3', 10) :   0.0 :  0.0 :   0.0
        ('E3', 'I3', 11) :   0.0 :  0.0 :   0.0
        ('E3', 'I3', 12) :   0.0 :  0.0 :   0.0
        ('E3', 'I3', 13) :   0.0 :  0.0 :   0.0
         ('E3', 'J3', 0) :   0.0 :  0.0 :   0.0
         ('E3', 'J3', 1) :   0.0 :  0.0 :   0.0
         ('E3', 'J3', 2) :   0.0 :  0.0 :   0.0
         ('E3', 'J3', 3) :   0.0 :  0.0 :   0.0
         ('E3', 'J3', 4) :   0.0 :  0.0 :   0.0
         ('E3', 'J3', 5) :   0.0 :  0.0 :   0.0
         ('E3', 'J3', 6) :   0.0 :  0.0 :   0.0
         ('E3', 'J3', 7) :   0.0 :  0.0 :   0.0
         ('E3', 'J3', 8) :   0.0 :  0.0 :   0.0
         ('E3', 'J3', 9) :   0.0 :  0.0 :   0.0
        ('E3', 'J3', 10) :   0.0 :  0.0 :   0.0
        ('E3', 'J3', 11) :   0.0 :  0.0 :   0.0
        ('E3', 'J3', 12) :   0.0 :  0.0 :   0.0
        ('E3', 'J3', 13) :   0.0 :  0.0 :   0.0
         ('E3', 'K3', 0) :   0.0 :  0.0 :   0.0
         ('E3', 'K3', 1) :   0.0 :  0.0 :   0.0
         ('E3', 'K3', 2) :   0.0 :  0.0 :   0.0
         ('E3', 'K3', 3) :   0.0 :  0.0 :   0.0
         ('E3', 'K3', 4) :   0.0 :  0.0 :   0.0
         ('E3', 'K3', 5) :   0.0 :  0.0 :   0.0
         ('E3', 'K3', 6) :   0.0 :  0.0 :   0.0
         ('E3', 'K3', 7) :   0.0 :  0.0 :   0.0
         ('E3', 'K3', 8) :   0.0 :  0.0 :   0.0
         ('E3', 'K3', 9) :   0.0 :  0.0 :   0.0
        ('E3', 'K3', 10) :   0.0 :  0.0 :   0.0
        ('E3', 'K3', 11) :   0.0 :  0.0 :   0.0
        ('E3', 'K3', 12) :   0.0 :  0.0 :   0.0
        ('E3', 'K3', 13) :   0.0 :  0.0 :   0.0
         ('E3', 'L3', 0) :   0.0 :  0.0 :   0.0
         ('E3', 'L3', 1) :   0.0 :  0.0 :   0.0
         ('E3', 'L3', 2) :   0.0 :  0.0 :   0.0
         ('E3', 'L3', 3) :   0.0 :  0.0 :   0.0
         ('E3', 'L3', 4) :   0.0 :  0.0 :   0.0
         ('E3', 'L3', 5) :   0.0 :  0.0 :   0.0
         ('E3', 'L3', 6) :   0.0 :  0.0 :   0.0
         ('E3', 'L3', 7) :   0.0 :  0.0 :   0.0
         ('E3', 'L3', 8) :   0.0 :  0.0 :   0.0
         ('E3', 'L3', 9) :   0.0 :  0.0 :   0.0
        ('E3', 'L3', 10) :   0.0 :  0.0 :   0.0
        ('E3', 'L3', 11) :   0.0 :  0.0 :   0.0
        ('E3', 'L3', 12) :   0.0 :  0.0 :   0.0
        ('E3', 'L3', 13) :   0.0 :  0.0 :   0.0
         ('E3', 'M3', 0) :   0.0 :  0.0 :   0.0
         ('E3', 'M3', 1) :   0.0 :  0.0 :   0.0
         ('E3', 'M3', 2) :   0.0 :  0.0 :   0.0
         ('E3', 'M3', 3) :   0.0 :  0.0 :   0.0
         ('E3', 'M3', 4) :   0.0 :  0.0 :   0.0
         ('E3', 'M3', 5) :   0.0 :  0.0 :   0.0
         ('E3', 'M3', 6) :   0.0 :  0.0 :   0.0
         ('E3', 'M3', 7) :   0.0 :  0.0 :   0.0
         ('E3', 'M3', 8) :   0.0 :  0.0 :   0.0
         ('E3', 'M3', 9) :   0.0 :  0.0 :   0.0
        ('E3', 'M3', 10) :   0.0 :  0.0 :   0.0
        ('E3', 'M3', 11) :   0.0 :  0.0 :   0.0
        ('E3', 'M3', 12) :   0.0 :  0.0 :   0.0
        ('E3', 'M3', 13) :   0.0 :  0.0 :   0.0
         ('E3', 'N3', 0) :   0.0 :  0.0 :   0.0
         ('E3', 'N3', 1) :   0.0 :  0.0 :   0.0
         ('E3', 'N3', 2) :   0.0 :  0.0 :   0.0
         ('E3', 'N3', 3) :   0.0 :  0.0 :   0.0
         ('E3', 'N3', 4) :   0.0 :  0.0 :   0.0
         ('E3', 'N3', 5) :   0.0 :  0.0 :   0.0
         ('E3', 'N3', 6) :   0.0 :  0.0 :   0.0
         ('E3', 'N3', 7) :   0.0 :  0.0 :   0.0
         ('E3', 'N3', 8) :   0.0 :  0.0 :   0.0
         ('E3', 'N3', 9) :   0.0 :  0.0 :   0.0
        ('E3', 'N3', 10) :   0.0 :  0.0 :   0.0
        ('E3', 'N3', 11) :   0.0 :  0.0 :   0.0
        ('E3', 'N3', 12) :   0.0 :  0.0 :   0.0
        ('E3', 'N3', 13) :   0.0 :  0.0 :   0.0
         ('E3', 'O3', 0) :   0.0 :  0.0 :   0.0
         ('E3', 'O3', 1) :   0.0 :  0.0 :   0.0
         ('E3', 'O3', 2) :   0.0 :  0.0 :   0.0
         ('E3', 'O3', 3) :   0.0 :  0.0 :   0.0
         ('E3', 'O3', 4) :   0.0 :  0.0 :   0.0
         ('E3', 'O3', 5) :   0.0 :  0.0 :   0.0
         ('E3', 'O3', 6) :   0.0 :  0.0 :   0.0
         ('E3', 'O3', 7) :   0.0 :  0.0 :   0.0
         ('E3', 'O3', 8) :   0.0 :  0.0 :   0.0
         ('E3', 'O3', 9) :   0.0 :  0.0 :   0.0
        ('E3', 'O3', 10) :   0.0 :  0.0 :   0.0
        ('E3', 'O3', 11) :   0.0 :  0.0 :   0.0
        ('E3', 'O3', 12) :   0.0 :  0.0 :   0.0
        ('E3', 'O3', 13) :   0.0 :  0.0 :   0.0
         ('E3', 'P3', 0) :   0.0 :  0.0 :   0.0
         ('E3', 'P3', 1) :   0.0 :  0.0 :   0.0
         ('E3', 'P3', 2) :   0.0 :  0.0 :   0.0
         ('E3', 'P3', 3) :   0.0 :  0.0 :   0.0
         ('E3', 'P3', 4) :   0.0 :  0.0 :   0.0
         ('E3', 'P3', 5) :   0.0 :  0.0 :   0.0
         ('E3', 'P3', 6) :   0.0 :  0.0 :   0.0
         ('E3', 'P3', 7) :   0.0 :  0.0 :   0.0
         ('E3', 'P3', 8) :   0.0 :  0.0 :   0.0
         ('E3', 'P3', 9) :   0.0 :  0.0 :   0.0
        ('E3', 'P3', 10) :   0.0 :  0.0 :   0.0
        ('E3', 'P3', 11) :   0.0 :  0.0 :   0.0
        ('E3', 'P3', 12) :   0.0 :  0.0 :   0.0
        ('E3', 'P3', 13) :   0.0 :  0.0 :   0.0
         ('E3', 'Q3', 0) :   0.0 :  0.0 :   0.0
         ('E3', 'Q3', 1) :   0.0 :  0.0 :   0.0
         ('E3', 'Q3', 2) :   0.0 :  0.0 :   0.0
         ('E3', 'Q3', 3) :   0.0 :  0.0 :   0.0
         ('E3', 'Q3', 4) :   0.0 :  0.0 :   0.0
         ('E3', 'Q3', 5) :   0.0 :  0.0 :   0.0
         ('E3', 'Q3', 6) :   0.0 :  0.0 :   0.0
         ('E3', 'Q3', 7) :   0.0 :  0.0 :   0.0
         ('E3', 'Q3', 8) :   0.0 :  0.0 :   0.0
         ('E3', 'Q3', 9) :   0.0 :  0.0 :   0.0
        ('E3', 'Q3', 10) :   0.0 :  0.0 :   0.0
        ('E3', 'Q3', 11) :   0.0 :  0.0 :   0.0
        ('E3', 'Q3', 12) :   0.0 :  0.0 :   0.0
        ('E3', 'Q3', 13) :   0.0 :  0.0 :   0.0
         ('E3', 'R3', 0) :   0.0 :  0.0 :   0.0
         ('E3', 'R3', 1) :   0.0 :  0.0 :   0.0
         ('E3', 'R3', 2) :   0.0 :  0.0 :   0.0
         ('E3', 'R3', 3) :   0.0 :  0.0 :   0.0
         ('E3', 'R3', 4) :   0.0 :  0.0 :   0.0
         ('E3', 'R3', 5) :   0.0 :  0.0 :   0.0
         ('E3', 'R3', 6) :   0.0 :  0.0 :   0.0
         ('E3', 'R3', 7) :   0.0 :  0.0 :   0.0
         ('E3', 'R3', 8) :   0.0 :  0.0 :   0.0
         ('E3', 'R3', 9) :   0.0 :  0.0 :   0.0
        ('E3', 'R3', 10) :   0.0 :  0.0 :   0.0
        ('E3', 'R3', 11) :   0.0 :  0.0 :   0.0
        ('E3', 'R3', 12) :   0.0 :  0.0 :   0.0
        ('E3', 'R3', 13) :   0.0 :  0.0 :   0.0
         ('E3', 'S3', 0) :   0.0 :  0.0 :   0.0
         ('E3', 'S3', 1) :   0.0 :  0.0 :   0.0
         ('E3', 'S3', 2) :   0.0 :  0.0 :   0.0
         ('E3', 'S3', 3) :   0.0 :  0.0 :   0.0
         ('E3', 'S3', 4) :   0.0 :  0.0 :   0.0
         ('E3', 'S3', 5) :   0.0 :  0.0 :   0.0
         ('E3', 'S3', 6) :   0.0 :  0.0 :   0.0
         ('E3', 'S3', 7) :   0.0 :  0.0 :   0.0
         ('E3', 'S3', 8) :   0.0 :  0.0 :   0.0
         ('E3', 'S3', 9) :   0.0 :  0.0 :   0.0
        ('E3', 'S3', 10) :   0.0 :  0.0 :   0.0
        ('E3', 'S3', 11) :   0.0 :  0.0 :   0.0
        ('E3', 'S3', 12) :   0.0 :  0.0 :   0.0
        ('E3', 'S3', 13) :   0.0 :  0.0 :   0.0
         ('E3', 'T3', 0) :   0.0 :  0.0 :   0.0
         ('E3', 'T3', 1) :   0.0 :  0.0 :   0.0
         ('E3', 'T3', 2) :   0.0 :  0.0 :   0.0
         ('E3', 'T3', 3) :   0.0 :  0.0 :   0.0
         ('E3', 'T3', 4) :   0.0 :  0.0 :   0.0
         ('E3', 'T3', 5) :   0.0 :  0.0 :   0.0
         ('E3', 'T3', 6) :   0.0 :  0.0 :   0.0
         ('E3', 'T3', 7) :   0.0 :  0.0 :   0.0
         ('E3', 'T3', 8) :   0.0 :  0.0 :   0.0
         ('E3', 'T3', 9) :   0.0 :  0.0 :   0.0
        ('E3', 'T3', 10) :   0.0 :  0.0 :   0.0
        ('E3', 'T3', 11) :   0.0 :  0.0 :   0.0
        ('E3', 'T3', 12) :   0.0 :  0.0 :   0.0
        ('E3', 'T3', 13) :   0.0 :  0.0 :   0.0
         ('L3', 'A3', 0) :   0.0 :  0.0 :   0.0
         ('L3', 'A3', 1) :   0.0 :  0.0 :   0.0
         ('L3', 'A3', 2) :   0.0 :  0.0 :   0.0
         ('L3', 'A3', 3) :   0.0 :  0.0 :   0.0
         ('L3', 'A3', 4) :   0.0 :  0.0 :   0.0
         ('L3', 'A3', 5) :   0.0 :  0.0 :   0.0
         ('L3', 'A3', 6) :   0.0 :  0.0 :   0.0
         ('L3', 'A3', 7) :   0.0 :  0.0 :   0.0
         ('L3', 'A3', 8) :   0.0 :  0.0 :   0.0
         ('L3', 'A3', 9) :   0.0 :  0.0 :   0.0
        ('L3', 'A3', 10) :   0.0 :  0.0 :   0.0
        ('L3', 'A3', 11) :   0.0 :  0.0 :   0.0
        ('L3', 'A3', 12) :   0.0 :  0.0 :   0.0
        ('L3', 'A3', 13) :   0.0 :  0.0 :   0.0
         ('L3', 'B3', 0) :   0.0 :  0.0 :   0.0
         ('L3', 'B3', 1) :   0.0 :  0.0 :   0.0
         ('L3', 'B3', 2) :   0.0 :  0.0 :   0.0
         ('L3', 'B3', 3) :   0.0 :  0.0 :   0.0
         ('L3', 'B3', 4) :   0.0 :  0.0 :   0.0
         ('L3', 'B3', 5) :   0.0 :  0.0 :   0.0
         ('L3', 'B3', 6) :   0.0 :  0.0 :   0.0
         ('L3', 'B3', 7) :   0.0 :  0.0 :   0.0
         ('L3', 'B3', 8) :   0.0 :  0.0 :   0.0
         ('L3', 'B3', 9) :   0.0 :  0.0 :   0.0
        ('L3', 'B3', 10) :   0.0 :  0.0 :   0.0
        ('L3', 'B3', 11) :   0.0 :  0.0 :   0.0
        ('L3', 'B3', 12) :   0.0 :  0.0 :   0.0
        ('L3', 'B3', 13) :   0.0 :  0.0 :   0.0
         ('L3', 'C3', 0) :   0.0 :  0.0 :   0.0
         ('L3', 'C3', 1) :   0.0 :  0.0 :   0.0
         ('L3', 'C3', 2) :   0.0 :  0.0 :   0.0
         ('L3', 'C3', 3) :   0.0 :  0.0 :   0.0
         ('L3', 'C3', 4) :   0.0 :  0.0 :   0.0
         ('L3', 'C3', 5) :   0.0 :  0.0 :   0.0
         ('L3', 'C3', 6) :   0.0 :  0.0 :   0.0
         ('L3', 'C3', 7) :   0.0 :  0.0 :   0.0
         ('L3', 'C3', 8) :   0.0 :  0.0 :   0.0
         ('L3', 'C3', 9) :   0.0 :  0.0 :   0.0
        ('L3', 'C3', 10) :   0.0 :  0.0 :   0.0
        ('L3', 'C3', 11) :   0.0 :  0.0 :   0.0
        ('L3', 'C3', 12) :   0.0 :  0.0 :   0.0
        ('L3', 'C3', 13) :   0.0 :  0.0 :   0.0
         ('L3', 'D3', 0) :   0.0 :  0.0 :   0.0
         ('L3', 'D3', 1) :   0.0 :  0.0 :   0.0
         ('L3', 'D3', 2) :   0.0 :  0.0 :   0.0
         ('L3', 'D3', 3) :   0.0 :  0.0 :   0.0
         ('L3', 'D3', 4) :   0.0 :  0.0 :   0.0
         ('L3', 'D3', 5) :   0.0 :  0.0 :   0.0
         ('L3', 'D3', 6) :   0.0 :  0.0 :   0.0
         ('L3', 'D3', 7) :   0.0 :  0.0 :   0.0
         ('L3', 'D3', 8) :   0.0 :  0.0 :   0.0
         ('L3', 'D3', 9) :   0.0 :  0.0 :   0.0
        ('L3', 'D3', 10) :   0.0 :  0.0 :   0.0
        ('L3', 'D3', 11) :   0.0 :  0.0 :   0.0
        ('L3', 'D3', 12) :   0.0 :  0.0 :   0.0
        ('L3', 'D3', 13) :   0.0 :  0.0 :   0.0
         ('L3', 'E3', 0) :   0.0 :  0.0 :   0.0
         ('L3', 'E3', 1) :   0.0 :  0.0 :   0.0
         ('L3', 'E3', 2) :   0.0 :  0.0 :   0.0
         ('L3', 'E3', 3) :   0.0 :  0.0 :   0.0
         ('L3', 'E3', 4) :   0.0 :  0.0 :   0.0
         ('L3', 'E3', 5) :   0.0 :  0.0 :   0.0
         ('L3', 'E3', 6) :   0.0 :  0.0 :   0.0
         ('L3', 'E3', 7) :   0.0 :  0.0 :   0.0
         ('L3', 'E3', 8) :   0.0 :  0.0 :   0.0
         ('L3', 'E3', 9) :   0.0 :  0.0 :   0.0
        ('L3', 'E3', 10) :   0.0 :  0.0 :   0.0
        ('L3', 'E3', 11) :   0.0 :  0.0 :   0.0
        ('L3', 'E3', 12) :   0.0 :  0.0 :   0.0
        ('L3', 'E3', 13) :   0.0 :  0.0 :   0.0
         ('L3', 'F3', 0) :   0.0 :  0.0 :   0.0
         ('L3', 'F3', 1) :   0.0 :  0.0 :   0.0
         ('L3', 'F3', 2) :   0.0 :  0.0 :   0.0
         ('L3', 'F3', 3) :   0.0 :  0.0 :   0.0
         ('L3', 'F3', 4) :   0.0 :  0.0 :   0.0
         ('L3', 'F3', 5) :   0.0 :  0.0 :   0.0
         ('L3', 'F3', 6) :   0.0 :  0.0 :   0.0
         ('L3', 'F3', 7) :   0.0 :  0.0 :   0.0
         ('L3', 'F3', 8) :   0.0 :  0.0 :   0.0
         ('L3', 'F3', 9) :   0.0 :  0.0 :   0.0
        ('L3', 'F3', 10) :   0.0 :  0.0 :   0.0
        ('L3', 'F3', 11) :   0.0 :  0.0 :   0.0
        ('L3', 'F3', 12) :   0.0 :  0.0 :   0.0
        ('L3', 'F3', 13) :   0.0 :  0.0 :   0.0
         ('L3', 'G3', 0) :   0.0 :  0.0 :   0.0
         ('L3', 'G3', 1) :   0.0 :  0.0 :   0.0
         ('L3', 'G3', 2) :   0.0 :  0.0 :   0.0
         ('L3', 'G3', 3) :   0.0 :  0.0 :   0.0
         ('L3', 'G3', 4) :   0.0 :  0.0 :   0.0
         ('L3', 'G3', 5) :   0.0 :  0.0 :   0.0
         ('L3', 'G3', 6) :   0.0 :  0.0 :   0.0
         ('L3', 'G3', 7) :   0.0 :  0.0 :   0.0
         ('L3', 'G3', 8) :   0.0 :  0.0 :   0.0
         ('L3', 'G3', 9) :   0.0 :  0.0 :   0.0
        ('L3', 'G3', 10) :   0.0 :  0.0 :   0.0
        ('L3', 'G3', 11) :   0.0 :  0.0 :   0.0
        ('L3', 'G3', 12) :   0.0 :  0.0 :   0.0
        ('L3', 'G3', 13) :   0.0 :  0.0 :   0.0
         ('L3', 'H3', 0) :   0.0 :  0.0 :   0.0
         ('L3', 'H3', 1) :   0.0 :  0.0 :   0.0
         ('L3', 'H3', 2) :   0.0 :  0.0 :   0.0
         ('L3', 'H3', 3) :   0.0 :  0.0 :   0.0
         ('L3', 'H3', 4) :   0.0 :  0.0 :   0.0
         ('L3', 'H3', 5) :   0.0 :  0.0 :   0.0
         ('L3', 'H3', 6) :   0.0 :  0.0 :   0.0
         ('L3', 'H3', 7) :   0.0 :  0.0 :   0.0
         ('L3', 'H3', 8) :   0.0 :  0.0 :   0.0
         ('L3', 'H3', 9) :   0.0 :  0.0 :   0.0
        ('L3', 'H3', 10) :   0.0 :  0.0 :   0.0
        ('L3', 'H3', 11) :   0.0 :  0.0 :   0.0
        ('L3', 'H3', 12) :   0.0 :  0.0 :   0.0
        ('L3', 'H3', 13) :   0.0 :  0.0 :   0.0
         ('L3', 'I3', 0) :   0.0 :  0.0 :   0.0
         ('L3', 'I3', 1) :   0.0 :  0.0 :   0.0
         ('L3', 'I3', 2) :   0.0 :  0.0 :   0.0
         ('L3', 'I3', 3) :   0.0 :  0.0 :   0.0
         ('L3', 'I3', 4) :   0.0 :  0.0 :   0.0
         ('L3', 'I3', 5) :   0.0 :  0.0 :   0.0
         ('L3', 'I3', 6) :   0.0 :  0.0 :   0.0
         ('L3', 'I3', 7) :   0.0 :  0.0 :   0.0
         ('L3', 'I3', 8) :   0.0 :  0.0 :   0.0
         ('L3', 'I3', 9) :   0.0 :  0.0 :   0.0
        ('L3', 'I3', 10) :   0.0 :  0.0 :   0.0
        ('L3', 'I3', 11) :   0.0 :  0.0 :   0.0
        ('L3', 'I3', 12) :   0.0 :  0.0 :   0.0
        ('L3', 'I3', 13) :   0.0 :  0.0 :   0.0
         ('L3', 'J3', 0) :   0.0 :  0.0 :   0.0
         ('L3', 'J3', 1) :   0.0 :  0.0 :   0.0
         ('L3', 'J3', 2) :   0.0 :  0.0 :   0.0
         ('L3', 'J3', 3) :   0.0 :  0.0 :   0.0
         ('L3', 'J3', 4) :   0.0 :  0.0 :   0.0
         ('L3', 'J3', 5) :   0.0 :  0.0 :   0.0
         ('L3', 'J3', 6) :   0.0 :  0.0 :   0.0
         ('L3', 'J3', 7) :   0.0 :  0.0 :   0.0
         ('L3', 'J3', 8) :   0.0 :  0.0 :   0.0
         ('L3', 'J3', 9) :   0.0 :  0.0 :   0.0
        ('L3', 'J3', 10) :   0.0 :  0.0 :   0.0
        ('L3', 'J3', 11) :   0.0 :  0.0 :   0.0
        ('L3', 'J3', 12) :   0.0 :  0.0 :   0.0
        ('L3', 'J3', 13) :   0.0 :  0.0 :   0.0
         ('L3', 'K3', 0) :   0.0 :  0.0 :   0.0
         ('L3', 'K3', 1) :   0.0 :  0.0 :   0.0
         ('L3', 'K3', 2) :   0.0 :  0.0 :   0.0
         ('L3', 'K3', 3) :   0.0 :  0.0 :   0.0
         ('L3', 'K3', 4) :   0.0 :  0.0 :   0.0
         ('L3', 'K3', 5) :   0.0 :  0.0 :   0.0
         ('L3', 'K3', 6) :   0.0 :  0.0 :   0.0
         ('L3', 'K3', 7) :   0.0 :  0.0 :   0.0
         ('L3', 'K3', 8) :   0.0 :  0.0 :   0.0
         ('L3', 'K3', 9) :   0.0 :  0.0 :   0.0
        ('L3', 'K3', 10) :   0.0 :  0.0 :   0.0
        ('L3', 'K3', 11) :   0.0 :  0.0 :   0.0
        ('L3', 'K3', 12) :   0.0 :  0.0 :   0.0
        ('L3', 'K3', 13) :   0.0 :  0.0 :   0.0
         ('L3', 'L3', 0) :   0.0 :  0.0 :   0.0
         ('L3', 'L3', 1) :   0.0 :  0.0 :   0.0
         ('L3', 'L3', 2) :   0.0 :  0.0 :   0.0
         ('L3', 'L3', 3) :   0.0 :  0.0 :   0.0
         ('L3', 'L3', 4) :   0.0 :  0.0 :   0.0
         ('L3', 'L3', 5) :   0.0 :  0.0 :   0.0
         ('L3', 'L3', 6) :   0.0 :  0.0 :   0.0
         ('L3', 'L3', 7) :   0.0 :  0.0 :   0.0
         ('L3', 'L3', 8) :   0.0 :  0.0 :   0.0
         ('L3', 'L3', 9) :   0.0 :  0.0 :   0.0
        ('L3', 'L3', 10) :   0.0 :  0.0 :   0.0
        ('L3', 'L3', 11) :   0.0 :  0.0 :   0.0
        ('L3', 'L3', 12) :   0.0 :  0.0 :   0.0
        ('L3', 'L3', 13) :   0.0 :  0.0 :   0.0
         ('L3', 'M3', 0) :   0.0 :  0.0 :   0.0
         ('L3', 'M3', 1) :   0.0 :  0.0 :   0.0
         ('L3', 'M3', 2) :   0.0 :  0.0 :   0.0
         ('L3', 'M3', 3) :   0.0 :  0.0 :   0.0
         ('L3', 'M3', 4) :   0.0 :  0.0 :   0.0
         ('L3', 'M3', 5) :   0.0 :  0.0 :   0.0
         ('L3', 'M3', 6) :   0.0 :  0.0 :   0.0
         ('L3', 'M3', 7) :   0.0 :  0.0 :   0.0
         ('L3', 'M3', 8) :   0.0 :  0.0 :   0.0
         ('L3', 'M3', 9) :   0.0 :  0.0 :   0.0
        ('L3', 'M3', 10) :   0.0 :  0.0 :   0.0
        ('L3', 'M3', 11) :   0.0 :  0.0 :   0.0
        ('L3', 'M3', 12) :   0.0 :  0.0 :   0.0
        ('L3', 'M3', 13) :   0.0 :  0.0 :   0.0
         ('L3', 'N3', 0) :   0.0 :  0.0 :   0.0
         ('L3', 'N3', 1) :   0.0 :  0.0 :   0.0
         ('L3', 'N3', 2) :   0.0 :  0.0 :   0.0
         ('L3', 'N3', 3) :   0.0 :  0.0 :   0.0
         ('L3', 'N3', 4) :   0.0 :  0.0 :   0.0
         ('L3', 'N3', 5) :   0.0 :  0.0 :   0.0
         ('L3', 'N3', 6) :   0.0 :  0.0 :   0.0
         ('L3', 'N3', 7) :   0.0 :  0.0 :   0.0
         ('L3', 'N3', 8) :   0.0 :  0.0 :   0.0
         ('L3', 'N3', 9) :   0.0 :  0.0 :   0.0
        ('L3', 'N3', 10) :   0.0 :  0.0 :   0.0
        ('L3', 'N3', 11) :   0.0 :  0.0 :   0.0
        ('L3', 'N3', 12) :   0.0 :  0.0 :   0.0
        ('L3', 'N3', 13) :   0.0 :  0.0 :   0.0
         ('L3', 'O3', 0) :   0.0 :  0.0 :   0.0
         ('L3', 'O3', 1) :   0.0 :  0.0 :   0.0
         ('L3', 'O3', 2) :   0.0 :  0.0 :   0.0
         ('L3', 'O3', 3) :   0.0 :  0.0 :   0.0
         ('L3', 'O3', 4) :   0.0 :  0.0 :   0.0
         ('L3', 'O3', 5) :   0.0 :  0.0 :   0.0
         ('L3', 'O3', 6) :   0.0 :  0.0 :   0.0
         ('L3', 'O3', 7) :   0.0 :  0.0 :   0.0
         ('L3', 'O3', 8) :   0.0 :  0.0 :   0.0
         ('L3', 'O3', 9) :   0.0 :  0.0 :   0.0
        ('L3', 'O3', 10) :   0.0 :  0.0 :   0.0
        ('L3', 'O3', 11) :   0.0 :  0.0 :   0.0
        ('L3', 'O3', 12) :   0.0 :  0.0 :   0.0
        ('L3', 'O3', 13) :   0.0 :  0.0 :   0.0
         ('L3', 'P3', 0) :   0.0 :  0.0 :   0.0
         ('L3', 'P3', 1) :   0.0 :  0.0 :   0.0
         ('L3', 'P3', 2) :   0.0 :  0.0 :   0.0
         ('L3', 'P3', 3) :   0.0 :  0.0 :   0.0
         ('L3', 'P3', 4) :   0.0 :  0.0 :   0.0
         ('L3', 'P3', 5) :   0.0 :  0.0 :   0.0
         ('L3', 'P3', 6) :   0.0 :  0.0 :   0.0
         ('L3', 'P3', 7) :   0.0 :  0.0 :   0.0
         ('L3', 'P3', 8) :   0.0 :  0.0 :   0.0
         ('L3', 'P3', 9) :   0.0 :  0.0 :   0.0
        ('L3', 'P3', 10) :   0.0 :  0.0 :   0.0
        ('L3', 'P3', 11) :   0.0 :  0.0 :   0.0
        ('L3', 'P3', 12) :   0.0 :  0.0 :   0.0
        ('L3', 'P3', 13) :   0.0 :  0.0 :   0.0
         ('L3', 'Q3', 0) :   0.0 :  0.0 :   0.0
         ('L3', 'Q3', 1) :   0.0 :  0.0 :   0.0
         ('L3', 'Q3', 2) :   0.0 :  0.0 :   0.0
         ('L3', 'Q3', 3) :   0.0 :  0.0 :   0.0
         ('L3', 'Q3', 4) :   0.0 :  0.0 :   0.0
         ('L3', 'Q3', 5) :   0.0 :  0.0 :   0.0
         ('L3', 'Q3', 6) :   0.0 :  0.0 :   0.0
         ('L3', 'Q3', 7) :   0.0 :  0.0 :   0.0
         ('L3', 'Q3', 8) :   0.0 :  0.0 :   0.0
         ('L3', 'Q3', 9) :   0.0 :  0.0 :   0.0
        ('L3', 'Q3', 10) :   0.0 :  0.0 :   0.0
        ('L3', 'Q3', 11) :   0.0 :  0.0 :   0.0
        ('L3', 'Q3', 12) :   0.0 :  0.0 :   0.0
        ('L3', 'Q3', 13) :   0.0 :  0.0 :   0.0
         ('L3', 'R3', 0) :   0.0 :  0.0 :   0.0
         ('L3', 'R3', 1) :   0.0 :  0.0 :   0.0
         ('L3', 'R3', 2) :   0.0 :  0.0 :   0.0
         ('L3', 'R3', 3) :   0.0 :  0.0 :   0.0
         ('L3', 'R3', 4) :   0.0 :  0.0 :   0.0
         ('L3', 'R3', 5) :   0.0 :  0.0 :   0.0
         ('L3', 'R3', 6) :   0.0 :  0.0 :   0.0
         ('L3', 'R3', 7) :   0.0 :  0.0 :   0.0
         ('L3', 'R3', 8) :   0.0 :  0.0 :   0.0
         ('L3', 'R3', 9) :   0.0 :  0.0 :   0.0
        ('L3', 'R3', 10) :   0.0 :  0.0 :   0.0
        ('L3', 'R3', 11) :   0.0 :  0.0 :   0.0
        ('L3', 'R3', 12) :   0.0 :  0.0 :   0.0
        ('L3', 'R3', 13) :   0.0 :  0.0 :   0.0
         ('L3', 'S3', 0) :   0.0 :  0.0 :   0.0
         ('L3', 'S3', 1) :   0.0 :  0.0 :   0.0
         ('L3', 'S3', 2) :   0.0 :  0.0 :   0.0
         ('L3', 'S3', 3) :   0.0 :  0.0 :   0.0
         ('L3', 'S3', 4) :   0.0 :  0.0 :   0.0
         ('L3', 'S3', 5) :   0.0 :  0.0 :   0.0
         ('L3', 'S3', 6) :   0.0 :  0.0 :   0.0
         ('L3', 'S3', 7) :   0.0 :  0.0 :   0.0
         ('L3', 'S3', 8) :   0.0 :  0.0 :   0.0
         ('L3', 'S3', 9) :   0.0 :  0.0 :   0.0
        ('L3', 'S3', 10) :   0.0 :  0.0 :   0.0
        ('L3', 'S3', 11) :   0.0 :  0.0 :   0.0
        ('L3', 'S3', 12) :   0.0 :  0.0 :   0.0
        ('L3', 'S3', 13) :   0.0 :  0.0 :   0.0
         ('L3', 'T3', 0) :   0.0 :  0.0 :   0.0
         ('L3', 'T3', 1) :   0.0 :  0.0 :   0.0
         ('L3', 'T3', 2) :   0.0 :  0.0 :   0.0
         ('L3', 'T3', 3) :   0.0 :  0.0 :   0.0
         ('L3', 'T3', 4) :   0.0 :  0.0 :   0.0
         ('L3', 'T3', 5) :   0.0 :  0.0 :   0.0
         ('L3', 'T3', 6) :   0.0 :  0.0 :   0.0
         ('L3', 'T3', 7) :   0.0 :  0.0 :   0.0
         ('L3', 'T3', 8) :   0.0 :  0.0 :   0.0
         ('L3', 'T3', 9) :   0.0 :  0.0 :   0.0
        ('L3', 'T3', 10) :   0.0 :  0.0 :   0.0
        ('L3', 'T3', 11) :   0.0 :  0.0 :   0.0
        ('L3', 'T3', 12) :   0.0 :  0.0 :   0.0
        ('L3', 'T3', 13) :   0.0 :  0.0 :   0.0
    constraint_shift_off_request : Size=840
        Key              : Lower : Body : Upper
         ('D3', 'A3', 0) :   0.0 :  0.0 :   0.0
         ('D3', 'A3', 1) :   0.0 :  0.0 :   0.0
         ('D3', 'A3', 2) :   0.0 :  0.0 :   0.0
         ('D3', 'A3', 3) :   0.0 :  0.0 :   0.0
         ('D3', 'A3', 4) :   0.0 :  0.0 :   0.0
         ('D3', 'A3', 5) :   0.0 :  0.0 :   0.0
         ('D3', 'A3', 6) :   0.0 :  0.0 :   0.0
         ('D3', 'A3', 7) :   0.0 :  0.0 :   0.0
         ('D3', 'A3', 8) :   0.0 :  0.0 :   0.0
         ('D3', 'A3', 9) :   0.0 :  0.0 :   0.0
        ('D3', 'A3', 10) :   0.0 :  0.0 :   0.0
        ('D3', 'A3', 11) :   0.0 :  0.0 :   0.0
        ('D3', 'A3', 12) :   0.0 :  0.0 :   0.0
        ('D3', 'A3', 13) :   0.0 :  0.0 :   0.0
         ('D3', 'B3', 0) :   0.0 :  0.0 :   0.0
         ('D3', 'B3', 1) :   0.0 :  0.0 :   0.0
         ('D3', 'B3', 2) :   0.0 :  0.0 :   0.0
         ('D3', 'B3', 3) :   0.0 :  0.0 :   0.0
         ('D3', 'B3', 4) :   0.0 :  0.0 :   0.0
         ('D3', 'B3', 5) :   0.0 :  0.0 :   0.0
         ('D3', 'B3', 6) :   0.0 :  0.0 :   0.0
         ('D3', 'B3', 7) :   0.0 :  0.0 :   0.0
         ('D3', 'B3', 8) :   0.0 :  0.0 :   0.0
         ('D3', 'B3', 9) :   0.0 :  0.0 :   0.0
        ('D3', 'B3', 10) :   0.0 :  0.0 :   0.0
        ('D3', 'B3', 11) :   0.0 :  0.0 :   0.0
        ('D3', 'B3', 12) :   0.0 :  0.0 :   0.0
        ('D3', 'B3', 13) :   0.0 :  0.0 :   0.0
         ('D3', 'C3', 0) :   0.0 :  0.0 :   0.0
         ('D3', 'C3', 1) :   0.0 :  0.0 :   0.0
         ('D3', 'C3', 2) :   0.0 :  0.0 :   0.0
         ('D3', 'C3', 3) :   0.0 :  0.0 :   0.0
         ('D3', 'C3', 4) :   0.0 :  0.0 :   0.0
         ('D3', 'C3', 5) :   0.0 :  0.0 :   0.0
         ('D3', 'C3', 6) :   0.0 :  0.0 :   0.0
         ('D3', 'C3', 7) :   0.0 :  0.0 :   0.0
         ('D3', 'C3', 8) :   0.0 :  0.0 :   0.0
         ('D3', 'C3', 9) :   0.0 :  0.0 :   0.0
        ('D3', 'C3', 10) :   0.0 :  0.0 :   0.0
        ('D3', 'C3', 11) :   0.0 :  0.0 :   0.0
        ('D3', 'C3', 12) :   0.0 :  0.0 :   0.0
        ('D3', 'C3', 13) :   0.0 :  0.0 :   0.0
         ('D3', 'D3', 0) :   0.0 :  0.0 :   0.0
         ('D3', 'D3', 1) :   0.0 :  0.0 :   0.0
         ('D3', 'D3', 2) :   0.0 :  0.0 :   0.0
         ('D3', 'D3', 3) :   0.0 :  0.0 :   0.0
         ('D3', 'D3', 4) :   0.0 :  0.0 :   0.0
         ('D3', 'D3', 5) :   0.0 :  0.0 :   0.0
         ('D3', 'D3', 6) :   0.0 :  0.0 :   0.0
         ('D3', 'D3', 7) :   0.0 :  0.0 :   0.0
         ('D3', 'D3', 8) :   0.0 :  0.0 :   0.0
         ('D3', 'D3', 9) :   0.0 :  0.0 :   0.0
        ('D3', 'D3', 10) :   0.0 :  0.0 :   0.0
        ('D3', 'D3', 11) :   0.0 :  0.0 :   0.0
        ('D3', 'D3', 12) :   0.0 :  0.0 :   0.0
        ('D3', 'D3', 13) :   0.0 :  0.0 :   0.0
         ('D3', 'E3', 0) :   0.0 :  0.0 :   0.0
         ('D3', 'E3', 1) :   0.0 :  0.0 :   0.0
         ('D3', 'E3', 2) :   0.0 :  0.0 :   0.0
         ('D3', 'E3', 3) :   0.0 :  0.0 :   0.0
         ('D3', 'E3', 4) :   0.0 :  0.0 :   0.0
         ('D3', 'E3', 5) :   0.0 :  0.0 :   0.0
         ('D3', 'E3', 6) :   0.0 :  0.0 :   0.0
         ('D3', 'E3', 7) :   0.0 :  0.0 :   0.0
         ('D3', 'E3', 8) :   0.0 :  0.0 :   0.0
         ('D3', 'E3', 9) :   0.0 :  0.0 :   0.0
        ('D3', 'E3', 10) :   0.0 :  0.0 :   0.0
        ('D3', 'E3', 11) :   0.0 :  0.0 :   0.0
        ('D3', 'E3', 12) :   0.0 :  0.0 :   0.0
        ('D3', 'E3', 13) :   0.0 :  0.0 :   0.0
         ('D3', 'F3', 0) :   0.0 :  0.0 :   0.0
         ('D3', 'F3', 1) :   0.0 :  0.0 :   0.0
         ('D3', 'F3', 2) :   0.0 :  0.0 :   0.0
         ('D3', 'F3', 3) :   0.0 :  0.0 :   0.0
         ('D3', 'F3', 4) :   0.0 :  0.0 :   0.0
         ('D3', 'F3', 5) :   0.0 :  0.0 :   0.0
         ('D3', 'F3', 6) :   0.0 :  0.0 :   0.0
         ('D3', 'F3', 7) :   0.0 :  0.0 :   0.0
         ('D3', 'F3', 8) :   0.0 :  0.0 :   0.0
         ('D3', 'F3', 9) :   0.0 :  0.0 :   0.0
        ('D3', 'F3', 10) :   0.0 :  0.0 :   0.0
        ('D3', 'F3', 11) :   0.0 :  0.0 :   0.0
        ('D3', 'F3', 12) :   0.0 :  0.0 :   0.0
        ('D3', 'F3', 13) :   0.0 :  0.0 :   0.0
         ('D3', 'G3', 0) :   0.0 :  0.0 :   0.0
         ('D3', 'G3', 1) :   0.0 :  0.0 :   0.0
         ('D3', 'G3', 2) :   0.0 :  0.0 :   0.0
         ('D3', 'G3', 3) :   0.0 :  0.0 :   0.0
         ('D3', 'G3', 4) :   0.0 :  0.0 :   0.0
         ('D3', 'G3', 5) :   0.0 :  0.0 :   0.0
         ('D3', 'G3', 6) :   0.0 :  0.0 :   0.0
         ('D3', 'G3', 7) :   0.0 :  0.0 :   0.0
         ('D3', 'G3', 8) :   0.0 :  0.0 :   0.0
         ('D3', 'G3', 9) :   0.0 :  0.0 :   0.0
        ('D3', 'G3', 10) :   0.0 :  0.0 :   0.0
        ('D3', 'G3', 11) :   0.0 :  0.0 :   0.0
        ('D3', 'G3', 12) :   0.0 :  0.0 :   0.0
        ('D3', 'G3', 13) :   0.0 :  0.0 :   0.0
         ('D3', 'H3', 0) :   0.0 :  0.0 :   0.0
         ('D3', 'H3', 1) :   0.0 :  0.0 :   0.0
         ('D3', 'H3', 2) :   0.0 :  0.0 :   0.0
         ('D3', 'H3', 3) :   0.0 :  0.0 :   0.0
         ('D3', 'H3', 4) :   0.0 :  0.0 :   0.0
         ('D3', 'H3', 5) :   0.0 :  0.0 :   0.0
         ('D3', 'H3', 6) :   0.0 :  0.0 :   0.0
         ('D3', 'H3', 7) :   0.0 :  0.0 :   0.0
         ('D3', 'H3', 8) :   0.0 :  0.0 :   0.0
         ('D3', 'H3', 9) :   0.0 :  0.0 :   0.0
        ('D3', 'H3', 10) :   0.0 :  0.0 :   0.0
        ('D3', 'H3', 11) :   0.0 :  0.0 :   0.0
        ('D3', 'H3', 12) :   0.0 :  0.0 :   0.0
        ('D3', 'H3', 13) :   0.0 :  0.0 :   0.0
         ('D3', 'I3', 0) :   0.0 :  0.0 :   0.0
         ('D3', 'I3', 1) :   0.0 :  0.0 :   0.0
         ('D3', 'I3', 2) :   0.0 :  0.0 :   0.0
         ('D3', 'I3', 3) :   0.0 :  0.0 :   0.0
         ('D3', 'I3', 4) :   0.0 :  0.0 :   0.0
         ('D3', 'I3', 5) :   0.0 :  0.0 :   0.0
         ('D3', 'I3', 6) :   0.0 :  0.0 :   0.0
         ('D3', 'I3', 7) :   0.0 :  0.0 :   0.0
         ('D3', 'I3', 8) :   0.0 :  0.0 :   0.0
         ('D3', 'I3', 9) :   0.0 :  0.0 :   0.0
        ('D3', 'I3', 10) :   0.0 :  0.0 :   0.0
        ('D3', 'I3', 11) :   0.0 :  0.0 :   0.0
        ('D3', 'I3', 12) :   0.0 :  0.0 :   0.0
        ('D3', 'I3', 13) :   0.0 :  0.0 :   0.0
         ('D3', 'J3', 0) :   0.0 :  0.0 :   0.0
         ('D3', 'J3', 1) :   0.0 :  0.0 :   0.0
         ('D3', 'J3', 2) :   0.0 :  0.0 :   0.0
         ('D3', 'J3', 3) :   0.0 :  0.0 :   0.0
         ('D3', 'J3', 4) :   0.0 :  0.0 :   0.0
         ('D3', 'J3', 5) :   0.0 :  0.0 :   0.0
         ('D3', 'J3', 6) :   0.0 :  0.0 :   0.0
         ('D3', 'J3', 7) :   0.0 :  0.0 :   0.0
         ('D3', 'J3', 8) :   0.0 :  0.0 :   0.0
         ('D3', 'J3', 9) :   0.0 :  0.0 :   0.0
        ('D3', 'J3', 10) :   0.0 :  0.0 :   0.0
        ('D3', 'J3', 11) :   0.0 :  0.0 :   0.0
        ('D3', 'J3', 12) :   0.0 :  0.0 :   0.0
        ('D3', 'J3', 13) :   0.0 :  0.0 :   0.0
         ('D3', 'K3', 0) :   0.0 :  0.0 :   0.0
         ('D3', 'K3', 1) :   0.0 :  0.0 :   0.0
         ('D3', 'K3', 2) :   0.0 :  0.0 :   0.0
         ('D3', 'K3', 3) :   0.0 :  0.0 :   0.0
         ('D3', 'K3', 4) :   0.0 :  0.0 :   0.0
         ('D3', 'K3', 5) :   0.0 :  0.0 :   0.0
         ('D3', 'K3', 6) :   0.0 :  0.0 :   0.0
         ('D3', 'K3', 7) :   0.0 :  0.0 :   0.0
         ('D3', 'K3', 8) :   0.0 :  0.0 :   0.0
         ('D3', 'K3', 9) :   0.0 :  0.0 :   0.0
        ('D3', 'K3', 10) :   0.0 :  0.0 :   0.0
        ('D3', 'K3', 11) :   0.0 :  0.0 :   0.0
        ('D3', 'K3', 12) :   0.0 :  0.0 :   0.0
        ('D3', 'K3', 13) :   0.0 :  0.0 :   0.0
         ('D3', 'L3', 0) :   0.0 :  0.0 :   0.0
         ('D3', 'L3', 1) :   0.0 :  0.0 :   0.0
         ('D3', 'L3', 2) :   0.0 :  0.0 :   0.0
         ('D3', 'L3', 3) :   0.0 :  0.0 :   0.0
         ('D3', 'L3', 4) :   0.0 :  0.0 :   0.0
         ('D3', 'L3', 5) :   0.0 :  0.0 :   0.0
         ('D3', 'L3', 6) :   0.0 :  0.0 :   0.0
         ('D3', 'L3', 7) :   0.0 :  0.0 :   0.0
         ('D3', 'L3', 8) :   0.0 :  0.0 :   0.0
         ('D3', 'L3', 9) :   0.0 :  0.0 :   0.0
        ('D3', 'L3', 10) :   0.0 :  0.0 :   0.0
        ('D3', 'L3', 11) :   0.0 :  0.0 :   0.0
        ('D3', 'L3', 12) :   0.0 :  0.0 :   0.0
        ('D3', 'L3', 13) :   0.0 :  0.0 :   0.0
         ('D3', 'M3', 0) :   0.0 :  0.0 :   0.0
         ('D3', 'M3', 1) :   0.0 :  0.0 :   0.0
         ('D3', 'M3', 2) :   0.0 :  0.0 :   0.0
         ('D3', 'M3', 3) :   0.0 :  0.0 :   0.0
         ('D3', 'M3', 4) :   0.0 :  0.0 :   0.0
         ('D3', 'M3', 5) :   0.0 :  0.0 :   0.0
         ('D3', 'M3', 6) :   0.0 :  0.0 :   0.0
         ('D3', 'M3', 7) :   0.0 :  0.0 :   0.0
         ('D3', 'M3', 8) :   0.0 :  0.0 :   0.0
         ('D3', 'M3', 9) :   0.0 :  0.0 :   0.0
        ('D3', 'M3', 10) :   0.0 :  0.0 :   0.0
        ('D3', 'M3', 11) :   0.0 :  0.0 :   0.0
        ('D3', 'M3', 12) :   0.0 :  0.0 :   0.0
        ('D3', 'M3', 13) :   0.0 :  0.0 :   0.0
         ('D3', 'N3', 0) :   0.0 :  0.0 :   0.0
         ('D3', 'N3', 1) :   0.0 :  0.0 :   0.0
         ('D3', 'N3', 2) :   0.0 :  0.0 :   0.0
         ('D3', 'N3', 3) :   0.0 :  0.0 :   0.0
         ('D3', 'N3', 4) :   0.0 :  0.0 :   0.0
         ('D3', 'N3', 5) :   0.0 :  0.0 :   0.0
         ('D3', 'N3', 6) :   0.0 :  0.0 :   0.0
         ('D3', 'N3', 7) :   0.0 :  0.0 :   0.0
         ('D3', 'N3', 8) :   0.0 :  0.0 :   0.0
         ('D3', 'N3', 9) :   0.0 :  0.0 :   0.0
        ('D3', 'N3', 10) :   0.0 :  0.0 :   0.0
        ('D3', 'N3', 11) :   0.0 :  0.0 :   0.0
        ('D3', 'N3', 12) :   0.0 :  0.0 :   0.0
        ('D3', 'N3', 13) :   0.0 :  0.0 :   0.0
         ('D3', 'O3', 0) :   0.0 :  0.0 :   0.0
         ('D3', 'O3', 1) :   0.0 :  0.0 :   0.0
         ('D3', 'O3', 2) :   0.0 :  0.0 :   0.0
         ('D3', 'O3', 3) :   0.0 :  0.0 :   0.0
         ('D3', 'O3', 4) :   0.0 :  0.0 :   0.0
         ('D3', 'O3', 5) :   0.0 :  0.0 :   0.0
         ('D3', 'O3', 6) :   0.0 :  0.0 :   0.0
         ('D3', 'O3', 7) :   0.0 :  0.0 :   0.0
         ('D3', 'O3', 8) :   0.0 :  0.0 :   0.0
         ('D3', 'O3', 9) :   0.0 :  0.0 :   0.0
        ('D3', 'O3', 10) :   0.0 :  0.0 :   0.0
        ('D3', 'O3', 11) :   0.0 :  0.0 :   0.0
        ('D3', 'O3', 12) :   0.0 :  0.0 :   0.0
        ('D3', 'O3', 13) :   0.0 :  0.0 :   0.0
         ('D3', 'P3', 0) :   0.0 :  0.0 :   0.0
         ('D3', 'P3', 1) :   0.0 :  0.0 :   0.0
         ('D3', 'P3', 2) :   0.0 :  0.0 :   0.0
         ('D3', 'P3', 3) :   0.0 :  0.0 :   0.0
         ('D3', 'P3', 4) :   0.0 :  0.0 :   0.0
         ('D3', 'P3', 5) :   0.0 :  0.0 :   0.0
         ('D3', 'P3', 6) :   0.0 :  0.0 :   0.0
         ('D3', 'P3', 7) :   0.0 :  0.0 :   0.0
         ('D3', 'P3', 8) :   0.0 :  0.0 :   0.0
         ('D3', 'P3', 9) :   0.0 :  0.0 :   0.0
        ('D3', 'P3', 10) :   0.0 :  0.0 :   0.0
        ('D3', 'P3', 11) :   0.0 :  0.0 :   0.0
        ('D3', 'P3', 12) :   0.0 :  0.0 :   0.0
        ('D3', 'P3', 13) :   0.0 :  0.0 :   0.0
         ('D3', 'Q3', 0) :   0.0 :  0.0 :   0.0
         ('D3', 'Q3', 1) :   0.0 :  0.0 :   0.0
         ('D3', 'Q3', 2) :   0.0 :  0.0 :   0.0
         ('D3', 'Q3', 3) :   0.0 :  0.0 :   0.0
         ('D3', 'Q3', 4) :   0.0 :  0.0 :   0.0
         ('D3', 'Q3', 5) :   0.0 :  0.0 :   0.0
         ('D3', 'Q3', 6) :   0.0 :  0.0 :   0.0
         ('D3', 'Q3', 7) :   0.0 :  0.0 :   0.0
         ('D3', 'Q3', 8) :   0.0 :  0.0 :   0.0
         ('D3', 'Q3', 9) :   0.0 :  0.0 :   0.0
        ('D3', 'Q3', 10) :   0.0 :  0.0 :   0.0
        ('D3', 'Q3', 11) :   0.0 :  0.0 :   0.0
        ('D3', 'Q3', 12) :   0.0 :  0.0 :   0.0
        ('D3', 'Q3', 13) :   0.0 :  0.0 :   0.0
         ('D3', 'R3', 0) :   0.0 :  0.0 :   0.0
         ('D3', 'R3', 1) :   0.0 :  0.0 :   0.0
         ('D3', 'R3', 2) :   0.0 :  0.0 :   0.0
         ('D3', 'R3', 3) :   0.0 :  0.0 :   0.0
         ('D3', 'R3', 4) :   0.0 :  0.0 :   0.0
         ('D3', 'R3', 5) :   0.0 :  0.0 :   0.0
         ('D3', 'R3', 6) :   0.0 :  0.0 :   0.0
         ('D3', 'R3', 7) :   0.0 :  0.0 :   0.0
         ('D3', 'R3', 8) :   0.0 :  0.0 :   0.0
         ('D3', 'R3', 9) :   0.0 :  0.0 :   0.0
        ('D3', 'R3', 10) :   0.0 :  0.0 :   0.0
        ('D3', 'R3', 11) :   0.0 :  0.0 :   0.0
        ('D3', 'R3', 12) :   0.0 :  0.0 :   0.0
        ('D3', 'R3', 13) :   0.0 :  0.0 :   0.0
         ('D3', 'S3', 0) :   0.0 :  0.0 :   0.0
         ('D3', 'S3', 1) :   0.0 :  0.0 :   0.0
         ('D3', 'S3', 2) :   0.0 :  0.0 :   0.0
         ('D3', 'S3', 3) :   0.0 :  0.0 :   0.0
         ('D3', 'S3', 4) :   0.0 :  0.0 :   0.0
         ('D3', 'S3', 5) :   0.0 :  0.0 :   0.0
         ('D3', 'S3', 6) :   0.0 :  0.0 :   0.0
         ('D3', 'S3', 7) :   0.0 :  0.0 :   0.0
         ('D3', 'S3', 8) :   0.0 :  0.0 :   0.0
         ('D3', 'S3', 9) :   0.0 :  0.0 :   0.0
        ('D3', 'S3', 10) :   0.0 :  0.0 :   0.0
        ('D3', 'S3', 11) :   0.0 :  0.0 :   0.0
        ('D3', 'S3', 12) :   0.0 :  0.0 :   0.0
        ('D3', 'S3', 13) :   0.0 :  0.0 :   0.0
         ('D3', 'T3', 0) :   0.0 :  0.0 :   0.0
         ('D3', 'T3', 1) :   0.0 :  0.0 :   0.0
         ('D3', 'T3', 2) :   0.0 :  0.0 :   0.0
         ('D3', 'T3', 3) :   0.0 :  0.0 :   0.0
         ('D3', 'T3', 4) :   0.0 :  0.0 :   0.0
         ('D3', 'T3', 5) :   0.0 :  0.0 :   0.0
         ('D3', 'T3', 6) :   0.0 :  0.0 :   0.0
         ('D3', 'T3', 7) :   0.0 :  0.0 :   0.0
         ('D3', 'T3', 8) :   0.0 :  0.0 :   0.0
         ('D3', 'T3', 9) :   0.0 :  0.0 :   0.0
        ('D3', 'T3', 10) :   0.0 :  0.0 :   0.0
        ('D3', 'T3', 11) :   0.0 :  0.0 :   0.0
        ('D3', 'T3', 12) :   0.0 :  0.0 :   0.0
        ('D3', 'T3', 13) :   0.0 :  0.0 :   0.0
         ('E3', 'A3', 0) :   0.0 :  0.0 :   0.0
         ('E3', 'A3', 1) :   0.0 :  0.0 :   0.0
         ('E3', 'A3', 2) :   0.0 :  0.0 :   0.0
         ('E3', 'A3', 3) :   0.0 :  0.0 :   0.0
         ('E3', 'A3', 4) :   0.0 :  0.0 :   0.0
         ('E3', 'A3', 5) :   0.0 :  0.0 :   0.0
         ('E3', 'A3', 6) :   0.0 :  0.0 :   0.0
         ('E3', 'A3', 7) :   0.0 :  0.0 :   0.0
         ('E3', 'A3', 8) :   0.0 :  0.0 :   0.0
         ('E3', 'A3', 9) :   0.0 :  0.0 :   0.0
        ('E3', 'A3', 10) :   0.0 :  0.0 :   0.0
        ('E3', 'A3', 11) :   0.0 :  0.0 :   0.0
        ('E3', 'A3', 12) :   0.0 :  0.0 :   0.0
        ('E3', 'A3', 13) :   0.0 :  0.0 :   0.0
         ('E3', 'B3', 0) :   0.0 :  0.0 :   0.0
         ('E3', 'B3', 1) :   0.0 :  0.0 :   0.0
         ('E3', 'B3', 2) :   0.0 :  0.0 :   0.0
         ('E3', 'B3', 3) :   0.0 :  0.0 :   0.0
         ('E3', 'B3', 4) :   0.0 :  0.0 :   0.0
         ('E3', 'B3', 5) :   0.0 :  0.0 :   0.0
         ('E3', 'B3', 6) :   0.0 :  0.0 :   0.0
         ('E3', 'B3', 7) :   0.0 :  0.0 :   0.0
         ('E3', 'B3', 8) :   0.0 :  0.0 :   0.0
         ('E3', 'B3', 9) :   0.0 :  0.0 :   0.0
        ('E3', 'B3', 10) :   0.0 :  0.0 :   0.0
        ('E3', 'B3', 11) :   0.0 :  0.0 :   0.0
        ('E3', 'B3', 12) :   0.0 :  0.0 :   0.0
        ('E3', 'B3', 13) :   0.0 :  0.0 :   0.0
         ('E3', 'C3', 0) :   0.0 :  0.0 :   0.0
         ('E3', 'C3', 1) :   0.0 :  0.0 :   0.0
         ('E3', 'C3', 2) :   0.0 :  0.0 :   0.0
         ('E3', 'C3', 3) :   0.0 :  0.0 :   0.0
         ('E3', 'C3', 4) :   0.0 :  0.0 :   0.0
         ('E3', 'C3', 5) :   0.0 :  0.0 :   0.0
         ('E3', 'C3', 6) :   0.0 :  0.0 :   0.0
         ('E3', 'C3', 7) :   0.0 :  0.0 :   0.0
         ('E3', 'C3', 8) :   0.0 :  0.0 :   0.0
         ('E3', 'C3', 9) :   0.0 :  0.0 :   0.0
        ('E3', 'C3', 10) :   0.0 :  0.0 :   0.0
        ('E3', 'C3', 11) :   0.0 :  0.0 :   0.0
        ('E3', 'C3', 12) :   0.0 :  0.0 :   0.0
        ('E3', 'C3', 13) :   0.0 :  0.0 :   0.0
         ('E3', 'D3', 0) :   0.0 :  0.0 :   0.0
         ('E3', 'D3', 1) :   0.0 :  0.0 :   0.0
         ('E3', 'D3', 2) :   0.0 :  0.0 :   0.0
         ('E3', 'D3', 3) :   0.0 :  0.0 :   0.0
         ('E3', 'D3', 4) :   0.0 :  0.0 :   0.0
         ('E3', 'D3', 5) :   0.0 :  0.0 :   0.0
         ('E3', 'D3', 6) :   0.0 :  0.0 :   0.0
         ('E3', 'D3', 7) :   0.0 :  0.0 :   0.0
         ('E3', 'D3', 8) :   0.0 :  0.0 :   0.0
         ('E3', 'D3', 9) :   0.0 :  0.0 :   0.0
        ('E3', 'D3', 10) :   0.0 :  0.0 :   0.0
        ('E3', 'D3', 11) :   0.0 :  0.0 :   0.0
        ('E3', 'D3', 12) :   0.0 :  0.0 :   0.0
        ('E3', 'D3', 13) :   0.0 :  0.0 :   0.0
         ('E3', 'E3', 0) :   0.0 :  0.0 :   0.0
         ('E3', 'E3', 1) :   0.0 :  0.0 :   0.0
         ('E3', 'E3', 2) :   0.0 :  0.0 :   0.0
         ('E3', 'E3', 3) :   0.0 :  0.0 :   0.0
         ('E3', 'E3', 4) :   0.0 :  0.0 :   0.0
         ('E3', 'E3', 5) :   0.0 :  0.0 :   0.0
         ('E3', 'E3', 6) :   0.0 :  0.0 :   0.0
         ('E3', 'E3', 7) :   0.0 :  0.0 :   0.0
         ('E3', 'E3', 8) :   0.0 :  0.0 :   0.0
         ('E3', 'E3', 9) :   0.0 :  0.0 :   0.0
        ('E3', 'E3', 10) :   0.0 :  0.0 :   0.0
        ('E3', 'E3', 11) :   0.0 :  0.0 :   0.0
        ('E3', 'E3', 12) :   0.0 :  0.0 :   0.0
        ('E3', 'E3', 13) :   0.0 :  0.0 :   0.0
         ('E3', 'F3', 0) :   0.0 :  0.0 :   0.0
         ('E3', 'F3', 1) :   0.0 :  0.0 :   0.0
         ('E3', 'F3', 2) :   0.0 :  0.0 :   0.0
         ('E3', 'F3', 3) :   0.0 :  0.0 :   0.0
         ('E3', 'F3', 4) :   0.0 :  0.0 :   0.0
         ('E3', 'F3', 5) :   0.0 :  0.0 :   0.0
         ('E3', 'F3', 6) :   0.0 :  0.0 :   0.0
         ('E3', 'F3', 7) :   0.0 :  0.0 :   0.0
         ('E3', 'F3', 8) :   0.0 :  0.0 :   0.0
         ('E3', 'F3', 9) :   0.0 :  0.0 :   0.0
        ('E3', 'F3', 10) :   0.0 :  0.0 :   0.0
        ('E3', 'F3', 11) :   0.0 :  0.0 :   0.0
        ('E3', 'F3', 12) :   0.0 :  0.0 :   0.0
        ('E3', 'F3', 13) :   0.0 :  0.0 :   0.0
         ('E3', 'G3', 0) :   0.0 :  0.0 :   0.0
         ('E3', 'G3', 1) :   0.0 :  0.0 :   0.0
         ('E3', 'G3', 2) :   0.0 :  0.0 :   0.0
         ('E3', 'G3', 3) :   0.0 :  0.0 :   0.0
         ('E3', 'G3', 4) :   0.0 :  0.0 :   0.0
         ('E3', 'G3', 5) :   0.0 :  0.0 :   0.0
         ('E3', 'G3', 6) :   0.0 :  0.0 :   0.0
         ('E3', 'G3', 7) :   0.0 :  0.0 :   0.0
         ('E3', 'G3', 8) :   0.0 :  0.0 :   0.0
         ('E3', 'G3', 9) :   0.0 :  0.0 :   0.0
        ('E3', 'G3', 10) :   0.0 :  0.0 :   0.0
        ('E3', 'G3', 11) :   0.0 :  0.0 :   0.0
        ('E3', 'G3', 12) :   0.0 :  0.0 :   0.0
        ('E3', 'G3', 13) :   0.0 :  0.0 :   0.0
         ('E3', 'H3', 0) :   0.0 :  0.0 :   0.0
         ('E3', 'H3', 1) :   0.0 :  0.0 :   0.0
         ('E3', 'H3', 2) :   0.0 :  0.0 :   0.0
         ('E3', 'H3', 3) :   0.0 :  0.0 :   0.0
         ('E3', 'H3', 4) :   0.0 :  0.0 :   0.0
         ('E3', 'H3', 5) :   0.0 :  0.0 :   0.0
         ('E3', 'H3', 6) :   0.0 :  0.0 :   0.0
         ('E3', 'H3', 7) :   0.0 :  0.0 :   0.0
         ('E3', 'H3', 8) :   0.0 :  0.0 :   0.0
         ('E3', 'H3', 9) :   0.0 :  0.0 :   0.0
        ('E3', 'H3', 10) :   0.0 :  0.0 :   0.0
        ('E3', 'H3', 11) :   0.0 :  0.0 :   0.0
        ('E3', 'H3', 12) :   0.0 :  0.0 :   0.0
        ('E3', 'H3', 13) :   0.0 :  0.0 :   0.0
         ('E3', 'I3', 0) :   0.0 :  0.0 :   0.0
         ('E3', 'I3', 1) :   0.0 :  0.0 :   0.0
         ('E3', 'I3', 2) :   0.0 :  0.0 :   0.0
         ('E3', 'I3', 3) :   0.0 :  0.0 :   0.0
         ('E3', 'I3', 4) :   0.0 :  0.0 :   0.0
         ('E3', 'I3', 5) :   0.0 :  0.0 :   0.0
         ('E3', 'I3', 6) :   0.0 :  0.0 :   0.0
         ('E3', 'I3', 7) :   0.0 :  0.0 :   0.0
         ('E3', 'I3', 8) :   0.0 :  0.0 :   0.0
         ('E3', 'I3', 9) :   0.0 :  0.0 :   0.0
        ('E3', 'I3', 10) :   0.0 :  0.0 :   0.0
        ('E3', 'I3', 11) :   0.0 :  0.0 :   0.0
        ('E3', 'I3', 12) :   0.0 :  0.0 :   0.0
        ('E3', 'I3', 13) :   0.0 :  0.0 :   0.0
         ('E3', 'J3', 0) :   0.0 :  0.0 :   0.0
         ('E3', 'J3', 1) :   0.0 :  0.0 :   0.0
         ('E3', 'J3', 2) :   0.0 :  0.0 :   0.0
         ('E3', 'J3', 3) :   0.0 :  0.0 :   0.0
         ('E3', 'J3', 4) :   0.0 :  0.0 :   0.0
         ('E3', 'J3', 5) :   0.0 :  0.0 :   0.0
         ('E3', 'J3', 6) :   0.0 :  0.0 :   0.0
         ('E3', 'J3', 7) :   0.0 :  0.0 :   0.0
         ('E3', 'J3', 8) :   0.0 :  0.0 :   0.0
         ('E3', 'J3', 9) :   0.0 :  0.0 :   0.0
        ('E3', 'J3', 10) :   0.0 :  0.0 :   0.0
        ('E3', 'J3', 11) :   0.0 :  0.0 :   0.0
        ('E3', 'J3', 12) :   0.0 :  0.0 :   0.0
        ('E3', 'J3', 13) :   0.0 :  0.0 :   0.0
         ('E3', 'K3', 0) :   0.0 :  0.0 :   0.0
         ('E3', 'K3', 1) :   0.0 :  0.0 :   0.0
         ('E3', 'K3', 2) :   0.0 :  0.0 :   0.0
         ('E3', 'K3', 3) :   0.0 :  0.0 :   0.0
         ('E3', 'K3', 4) :   0.0 :  0.0 :   0.0
         ('E3', 'K3', 5) :   0.0 :  0.0 :   0.0
         ('E3', 'K3', 6) :   0.0 :  0.0 :   0.0
         ('E3', 'K3', 7) :   0.0 :  0.0 :   0.0
         ('E3', 'K3', 8) :   0.0 :  0.0 :   0.0
         ('E3', 'K3', 9) :   0.0 :  0.0 :   0.0
        ('E3', 'K3', 10) :   0.0 :  0.0 :   0.0
        ('E3', 'K3', 11) :   0.0 :  0.0 :   0.0
        ('E3', 'K3', 12) :   0.0 :  0.0 :   0.0
        ('E3', 'K3', 13) :   0.0 :  0.0 :   0.0
         ('E3', 'L3', 0) :   0.0 :  0.0 :   0.0
         ('E3', 'L3', 1) :   0.0 :  0.0 :   0.0
         ('E3', 'L3', 2) :   0.0 :  0.0 :   0.0
         ('E3', 'L3', 3) :   0.0 :  0.0 :   0.0
         ('E3', 'L3', 4) :   0.0 :  0.0 :   0.0
         ('E3', 'L3', 5) :   0.0 :  0.0 :   0.0
         ('E3', 'L3', 6) :   0.0 :  0.0 :   0.0
         ('E3', 'L3', 7) :   0.0 :  0.0 :   0.0
         ('E3', 'L3', 8) :   0.0 :  0.0 :   0.0
         ('E3', 'L3', 9) :   0.0 :  0.0 :   0.0
        ('E3', 'L3', 10) :   0.0 :  0.0 :   0.0
        ('E3', 'L3', 11) :   0.0 :  0.0 :   0.0
        ('E3', 'L3', 12) :   0.0 :  0.0 :   0.0
        ('E3', 'L3', 13) :   0.0 :  0.0 :   0.0
         ('E3', 'M3', 0) :   0.0 :  0.0 :   0.0
         ('E3', 'M3', 1) :   0.0 :  0.0 :   0.0
         ('E3', 'M3', 2) :   0.0 :  0.0 :   0.0
         ('E3', 'M3', 3) :   0.0 :  0.0 :   0.0
         ('E3', 'M3', 4) :   0.0 :  0.0 :   0.0
         ('E3', 'M3', 5) :   0.0 :  0.0 :   0.0
         ('E3', 'M3', 6) :   0.0 :  0.0 :   0.0
         ('E3', 'M3', 7) :   0.0 :  0.0 :   0.0
         ('E3', 'M3', 8) :   0.0 :  0.0 :   0.0
         ('E3', 'M3', 9) :   0.0 :  0.0 :   0.0
        ('E3', 'M3', 10) :   0.0 :  0.0 :   0.0
        ('E3', 'M3', 11) :   0.0 :  0.0 :   0.0
        ('E3', 'M3', 12) :   0.0 :  0.0 :   0.0
        ('E3', 'M3', 13) :   0.0 :  0.0 :   0.0
         ('E3', 'N3', 0) :   0.0 :  0.0 :   0.0
         ('E3', 'N3', 1) :   0.0 :  0.0 :   0.0
         ('E3', 'N3', 2) :   0.0 :  0.0 :   0.0
         ('E3', 'N3', 3) :   0.0 :  0.0 :   0.0
         ('E3', 'N3', 4) :   0.0 :  0.0 :   0.0
         ('E3', 'N3', 5) :   0.0 :  0.0 :   0.0
         ('E3', 'N3', 6) :   0.0 :  0.0 :   0.0
         ('E3', 'N3', 7) :   0.0 :  0.0 :   0.0
         ('E3', 'N3', 8) :   0.0 :  0.0 :   0.0
         ('E3', 'N3', 9) :   0.0 :  0.0 :   0.0
        ('E3', 'N3', 10) :   0.0 :  0.0 :   0.0
        ('E3', 'N3', 11) :   0.0 :  0.0 :   0.0
        ('E3', 'N3', 12) :   0.0 :  0.0 :   0.0
        ('E3', 'N3', 13) :   0.0 :  0.0 :   0.0
         ('E3', 'O3', 0) :   0.0 :  0.0 :   0.0
         ('E3', 'O3', 1) :   0.0 :  0.0 :   0.0
         ('E3', 'O3', 2) :   0.0 :  0.0 :   0.0
         ('E3', 'O3', 3) :   0.0 :  0.0 :   0.0
         ('E3', 'O3', 4) :   0.0 :  0.0 :   0.0
         ('E3', 'O3', 5) :   0.0 :  0.0 :   0.0
         ('E3', 'O3', 6) :   0.0 :  0.0 :   0.0
         ('E3', 'O3', 7) :   0.0 :  0.0 :   0.0
         ('E3', 'O3', 8) :   0.0 :  0.0 :   0.0
         ('E3', 'O3', 9) :   0.0 :  0.0 :   0.0
        ('E3', 'O3', 10) :   0.0 :  0.0 :   0.0
        ('E3', 'O3', 11) :   0.0 :  0.0 :   0.0
        ('E3', 'O3', 12) :   0.0 :  0.0 :   0.0
        ('E3', 'O3', 13) :   0.0 :  0.0 :   0.0
         ('E3', 'P3', 0) :   0.0 :  0.0 :   0.0
         ('E3', 'P3', 1) :   0.0 :  0.0 :   0.0
         ('E3', 'P3', 2) :   0.0 :  0.0 :   0.0
         ('E3', 'P3', 3) :   0.0 :  0.0 :   0.0
         ('E3', 'P3', 4) :   0.0 :  0.0 :   0.0
         ('E3', 'P3', 5) :   0.0 :  0.0 :   0.0
         ('E3', 'P3', 6) :   0.0 :  0.0 :   0.0
         ('E3', 'P3', 7) :   0.0 :  0.0 :   0.0
         ('E3', 'P3', 8) :   0.0 :  0.0 :   0.0
         ('E3', 'P3', 9) :   0.0 :  0.0 :   0.0
        ('E3', 'P3', 10) :   0.0 :  0.0 :   0.0
        ('E3', 'P3', 11) :   0.0 :  0.0 :   0.0
        ('E3', 'P3', 12) :   0.0 :  0.0 :   0.0
        ('E3', 'P3', 13) :   0.0 :  0.0 :   0.0
         ('E3', 'Q3', 0) :   0.0 :  0.0 :   0.0
         ('E3', 'Q3', 1) :   0.0 :  0.0 :   0.0
         ('E3', 'Q3', 2) :   0.0 :  0.0 :   0.0
         ('E3', 'Q3', 3) :   0.0 :  0.0 :   0.0
         ('E3', 'Q3', 4) :   0.0 :  0.0 :   0.0
         ('E3', 'Q3', 5) :   0.0 :  0.0 :   0.0
         ('E3', 'Q3', 6) :   0.0 :  0.0 :   0.0
         ('E3', 'Q3', 7) :   0.0 :  0.0 :   0.0
         ('E3', 'Q3', 8) :   0.0 :  0.0 :   0.0
         ('E3', 'Q3', 9) :   0.0 :  0.0 :   0.0
        ('E3', 'Q3', 10) :   0.0 :  0.0 :   0.0
        ('E3', 'Q3', 11) :   0.0 :  0.0 :   0.0
        ('E3', 'Q3', 12) :   0.0 :  0.0 :   0.0
        ('E3', 'Q3', 13) :   0.0 :  0.0 :   0.0
         ('E3', 'R3', 0) :   0.0 :  0.0 :   0.0
         ('E3', 'R3', 1) :   0.0 :  0.0 :   0.0
         ('E3', 'R3', 2) :   0.0 :  0.0 :   0.0
         ('E3', 'R3', 3) :   0.0 :  0.0 :   0.0
         ('E3', 'R3', 4) :   0.0 :  0.0 :   0.0
         ('E3', 'R3', 5) :   0.0 :  0.0 :   0.0
         ('E3', 'R3', 6) :   0.0 :  0.0 :   0.0
         ('E3', 'R3', 7) :   0.0 :  0.0 :   0.0
         ('E3', 'R3', 8) :   0.0 :  0.0 :   0.0
         ('E3', 'R3', 9) :   0.0 :  0.0 :   0.0
        ('E3', 'R3', 10) :   0.0 :  0.0 :   0.0
        ('E3', 'R3', 11) :   0.0 :  0.0 :   0.0
        ('E3', 'R3', 12) :   0.0 :  0.0 :   0.0
        ('E3', 'R3', 13) :   0.0 :  0.0 :   0.0
         ('E3', 'S3', 0) :   0.0 :  0.0 :   0.0
         ('E3', 'S3', 1) :   0.0 :  0.0 :   0.0
         ('E3', 'S3', 2) :   0.0 :  0.0 :   0.0
         ('E3', 'S3', 3) :   0.0 :  0.0 :   0.0
         ('E3', 'S3', 4) :   0.0 :  0.0 :   0.0
         ('E3', 'S3', 5) :   0.0 :  0.0 :   0.0
         ('E3', 'S3', 6) :   0.0 :  0.0 :   0.0
         ('E3', 'S3', 7) :   0.0 :  0.0 :   0.0
         ('E3', 'S3', 8) :   0.0 :  0.0 :   0.0
         ('E3', 'S3', 9) :   0.0 :  0.0 :   0.0
        ('E3', 'S3', 10) :   0.0 :  0.0 :   0.0
        ('E3', 'S3', 11) :   0.0 :  0.0 :   0.0
        ('E3', 'S3', 12) :   0.0 :  0.0 :   0.0
        ('E3', 'S3', 13) :   0.0 :  0.0 :   0.0
         ('E3', 'T3', 0) :   0.0 :  0.0 :   0.0
         ('E3', 'T3', 1) :   0.0 :  0.0 :   0.0
         ('E3', 'T3', 2) :   0.0 :  0.0 :   0.0
         ('E3', 'T3', 3) :   0.0 :  0.0 :   0.0
         ('E3', 'T3', 4) :   0.0 :  0.0 :   0.0
         ('E3', 'T3', 5) :   0.0 :  0.0 :   0.0
         ('E3', 'T3', 6) :   0.0 :  0.0 :   0.0
         ('E3', 'T3', 7) :   0.0 :  0.0 :   0.0
         ('E3', 'T3', 8) :   0.0 :  0.0 :   0.0
         ('E3', 'T3', 9) :   0.0 :  0.0 :   0.0
        ('E3', 'T3', 10) :   0.0 :  0.0 :   0.0
        ('E3', 'T3', 11) :   0.0 :  0.0 :   0.0
        ('E3', 'T3', 12) :   0.0 :  0.0 :   0.0
        ('E3', 'T3', 13) :   0.0 :  0.0 :   0.0
         ('L3', 'A3', 0) :   0.0 :  0.0 :   0.0
         ('L3', 'A3', 1) :   0.0 :  0.0 :   0.0
         ('L3', 'A3', 2) :   0.0 :  0.0 :   0.0
         ('L3', 'A3', 3) :   0.0 :  0.0 :   0.0
         ('L3', 'A3', 4) :   0.0 :  0.0 :   0.0
         ('L3', 'A3', 5) :   0.0 :  0.0 :   0.0
         ('L3', 'A3', 6) :   0.0 :  0.0 :   0.0
         ('L3', 'A3', 7) :   0.0 :  0.0 :   0.0
         ('L3', 'A3', 8) :   0.0 :  0.0 :   0.0
         ('L3', 'A3', 9) :   0.0 :  0.0 :   0.0
        ('L3', 'A3', 10) :   0.0 :  0.0 :   0.0
        ('L3', 'A3', 11) :   0.0 :  0.0 :   0.0
        ('L3', 'A3', 12) :   0.0 :  0.0 :   0.0
        ('L3', 'A3', 13) :   0.0 :  0.0 :   0.0
         ('L3', 'B3', 0) :   0.0 :  0.0 :   0.0
         ('L3', 'B3', 1) :   0.0 :  0.0 :   0.0
         ('L3', 'B3', 2) :   0.0 :  0.0 :   0.0
         ('L3', 'B3', 3) :   0.0 :  0.0 :   0.0
         ('L3', 'B3', 4) :   0.0 :  0.0 :   0.0
         ('L3', 'B3', 5) :   0.0 :  0.0 :   0.0
         ('L3', 'B3', 6) :   0.0 :  0.0 :   0.0
         ('L3', 'B3', 7) :   0.0 :  0.0 :   0.0
         ('L3', 'B3', 8) :   0.0 :  0.0 :   0.0
         ('L3', 'B3', 9) :   0.0 :  0.0 :   0.0
        ('L3', 'B3', 10) :   0.0 :  0.0 :   0.0
        ('L3', 'B3', 11) :   0.0 :  0.0 :   0.0
        ('L3', 'B3', 12) :   0.0 :  0.0 :   0.0
        ('L3', 'B3', 13) :   0.0 :  0.0 :   0.0
         ('L3', 'C3', 0) :   0.0 :  0.0 :   0.0
         ('L3', 'C3', 1) :   0.0 :  0.0 :   0.0
         ('L3', 'C3', 2) :   0.0 :  0.0 :   0.0
         ('L3', 'C3', 3) :   0.0 :  0.0 :   0.0
         ('L3', 'C3', 4) :   0.0 :  0.0 :   0.0
         ('L3', 'C3', 5) :   0.0 :  0.0 :   0.0
         ('L3', 'C3', 6) :   0.0 :  0.0 :   0.0
         ('L3', 'C3', 7) :   0.0 :  0.0 :   0.0
         ('L3', 'C3', 8) :   0.0 :  0.0 :   0.0
         ('L3', 'C3', 9) :   0.0 :  0.0 :   0.0
        ('L3', 'C3', 10) :   0.0 :  0.0 :   0.0
        ('L3', 'C3', 11) :   0.0 :  0.0 :   0.0
        ('L3', 'C3', 12) :   0.0 :  0.0 :   0.0
        ('L3', 'C3', 13) :   0.0 :  0.0 :   0.0
         ('L3', 'D3', 0) :   0.0 :  0.0 :   0.0
         ('L3', 'D3', 1) :   0.0 :  0.0 :   0.0
         ('L3', 'D3', 2) :   0.0 :  0.0 :   0.0
         ('L3', 'D3', 3) :   0.0 :  0.0 :   0.0
         ('L3', 'D3', 4) :   0.0 :  0.0 :   0.0
         ('L3', 'D3', 5) :   0.0 :  0.0 :   0.0
         ('L3', 'D3', 6) :   0.0 :  0.0 :   0.0
         ('L3', 'D3', 7) :   0.0 :  0.0 :   0.0
         ('L3', 'D3', 8) :   0.0 :  0.0 :   0.0
         ('L3', 'D3', 9) :   0.0 :  0.0 :   0.0
        ('L3', 'D3', 10) :   0.0 :  0.0 :   0.0
        ('L3', 'D3', 11) :   0.0 :  0.0 :   0.0
        ('L3', 'D3', 12) :   0.0 :  0.0 :   0.0
        ('L3', 'D3', 13) :   0.0 :  0.0 :   0.0
         ('L3', 'E3', 0) :   0.0 :  0.0 :   0.0
         ('L3', 'E3', 1) :   0.0 :  0.0 :   0.0
         ('L3', 'E3', 2) :   0.0 :  0.0 :   0.0
         ('L3', 'E3', 3) :   0.0 :  0.0 :   0.0
         ('L3', 'E3', 4) :   0.0 :  0.0 :   0.0
         ('L3', 'E3', 5) :   0.0 :  0.0 :   0.0
         ('L3', 'E3', 6) :   0.0 :  0.0 :   0.0
         ('L3', 'E3', 7) :   0.0 :  0.0 :   0.0
         ('L3', 'E3', 8) :   0.0 :  0.0 :   0.0
         ('L3', 'E3', 9) :   0.0 :  0.0 :   0.0
        ('L3', 'E3', 10) :   0.0 :  0.0 :   0.0
        ('L3', 'E3', 11) :   0.0 :  0.0 :   0.0
        ('L3', 'E3', 12) :   0.0 :  0.0 :   0.0
        ('L3', 'E3', 13) :   0.0 :  0.0 :   0.0
         ('L3', 'F3', 0) :   0.0 :  0.0 :   0.0
         ('L3', 'F3', 1) :   0.0 :  0.0 :   0.0
         ('L3', 'F3', 2) :   0.0 :  0.0 :   0.0
         ('L3', 'F3', 3) :   0.0 :  0.0 :   0.0
         ('L3', 'F3', 4) :   0.0 :  0.0 :   0.0
         ('L3', 'F3', 5) :   0.0 :  0.0 :   0.0
         ('L3', 'F3', 6) :   0.0 :  0.0 :   0.0
         ('L3', 'F3', 7) :   0.0 :  0.0 :   0.0
         ('L3', 'F3', 8) :   0.0 :  0.0 :   0.0
         ('L3', 'F3', 9) :   0.0 :  0.0 :   0.0
        ('L3', 'F3', 10) :   0.0 :  0.0 :   0.0
        ('L3', 'F3', 11) :   0.0 :  0.0 :   0.0
        ('L3', 'F3', 12) :   0.0 :  0.0 :   0.0
        ('L3', 'F3', 13) :   0.0 :  0.0 :   0.0
         ('L3', 'G3', 0) :   0.0 :  0.0 :   0.0
         ('L3', 'G3', 1) :   0.0 :  0.0 :   0.0
         ('L3', 'G3', 2) :   0.0 :  0.0 :   0.0
         ('L3', 'G3', 3) :   0.0 :  0.0 :   0.0
         ('L3', 'G3', 4) :   0.0 :  0.0 :   0.0
         ('L3', 'G3', 5) :   0.0 :  0.0 :   0.0
         ('L3', 'G3', 6) :   0.0 :  0.0 :   0.0
         ('L3', 'G3', 7) :   0.0 :  0.0 :   0.0
         ('L3', 'G3', 8) :   0.0 :  0.0 :   0.0
         ('L3', 'G3', 9) :   0.0 :  0.0 :   0.0
        ('L3', 'G3', 10) :   0.0 :  0.0 :   0.0
        ('L3', 'G3', 11) :   0.0 :  0.0 :   0.0
        ('L3', 'G3', 12) :   0.0 :  0.0 :   0.0
        ('L3', 'G3', 13) :   0.0 :  0.0 :   0.0
         ('L3', 'H3', 0) :   0.0 :  0.0 :   0.0
         ('L3', 'H3', 1) :   0.0 :  0.0 :   0.0
         ('L3', 'H3', 2) :   0.0 :  0.0 :   0.0
         ('L3', 'H3', 3) :   0.0 :  0.0 :   0.0
         ('L3', 'H3', 4) :   0.0 :  0.0 :   0.0
         ('L3', 'H3', 5) :   0.0 :  0.0 :   0.0
         ('L3', 'H3', 6) :   0.0 :  0.0 :   0.0
         ('L3', 'H3', 7) :   0.0 :  0.0 :   0.0
         ('L3', 'H3', 8) :   0.0 :  0.0 :   0.0
         ('L3', 'H3', 9) :   0.0 :  0.0 :   0.0
        ('L3', 'H3', 10) :   0.0 :  0.0 :   0.0
        ('L3', 'H3', 11) :   0.0 :  0.0 :   0.0
        ('L3', 'H3', 12) :   0.0 :  0.0 :   0.0
        ('L3', 'H3', 13) :   0.0 :  0.0 :   0.0
         ('L3', 'I3', 0) :   0.0 :  0.0 :   0.0
         ('L3', 'I3', 1) :   0.0 :  0.0 :   0.0
         ('L3', 'I3', 2) :   0.0 :  0.0 :   0.0
         ('L3', 'I3', 3) :   0.0 :  0.0 :   0.0
         ('L3', 'I3', 4) :   0.0 :  0.0 :   0.0
         ('L3', 'I3', 5) :   0.0 :  0.0 :   0.0
         ('L3', 'I3', 6) :   0.0 :  0.0 :   0.0
         ('L3', 'I3', 7) :   0.0 :  0.0 :   0.0
         ('L3', 'I3', 8) :   0.0 :  0.0 :   0.0
         ('L3', 'I3', 9) :   0.0 :  0.0 :   0.0
        ('L3', 'I3', 10) :   0.0 :  0.0 :   0.0
        ('L3', 'I3', 11) :   0.0 :  0.0 :   0.0
        ('L3', 'I3', 12) :   0.0 :  0.0 :   0.0
        ('L3', 'I3', 13) :   0.0 :  0.0 :   0.0
         ('L3', 'J3', 0) :   0.0 :  0.0 :   0.0
         ('L3', 'J3', 1) :   0.0 :  0.0 :   0.0
         ('L3', 'J3', 2) :   0.0 :  0.0 :   0.0
         ('L3', 'J3', 3) :   0.0 :  0.0 :   0.0
         ('L3', 'J3', 4) :   0.0 :  0.0 :   0.0
         ('L3', 'J3', 5) :   0.0 :  0.0 :   0.0
         ('L3', 'J3', 6) :   0.0 :  0.0 :   0.0
         ('L3', 'J3', 7) :   0.0 :  0.0 :   0.0
         ('L3', 'J3', 8) :   0.0 :  0.0 :   0.0
         ('L3', 'J3', 9) :   0.0 :  0.0 :   0.0
        ('L3', 'J3', 10) :   0.0 :  0.0 :   0.0
        ('L3', 'J3', 11) :   0.0 :  0.0 :   0.0
        ('L3', 'J3', 12) :   0.0 :  0.0 :   0.0
        ('L3', 'J3', 13) :   0.0 :  0.0 :   0.0
         ('L3', 'K3', 0) :   0.0 :  0.0 :   0.0
         ('L3', 'K3', 1) :   0.0 :  0.0 :   0.0
         ('L3', 'K3', 2) :   0.0 :  0.0 :   0.0
         ('L3', 'K3', 3) :   0.0 :  0.0 :   0.0
         ('L3', 'K3', 4) :   0.0 :  0.0 :   0.0
         ('L3', 'K3', 5) :   0.0 :  0.0 :   0.0
         ('L3', 'K3', 6) :   0.0 :  0.0 :   0.0
         ('L3', 'K3', 7) :   0.0 :  0.0 :   0.0
         ('L3', 'K3', 8) :   0.0 :  0.0 :   0.0
         ('L3', 'K3', 9) :   0.0 :  0.0 :   0.0
        ('L3', 'K3', 10) :   0.0 :  0.0 :   0.0
        ('L3', 'K3', 11) :   0.0 :  0.0 :   0.0
        ('L3', 'K3', 12) :   0.0 :  0.0 :   0.0
        ('L3', 'K3', 13) :   0.0 :  0.0 :   0.0
         ('L3', 'L3', 0) :   0.0 :  0.0 :   0.0
         ('L3', 'L3', 1) :   0.0 :  0.0 :   0.0
         ('L3', 'L3', 2) :   0.0 :  0.0 :   0.0
         ('L3', 'L3', 3) :   0.0 :  0.0 :   0.0
         ('L3', 'L3', 4) :   0.0 :  0.0 :   0.0
         ('L3', 'L3', 5) :   0.0 :  0.0 :   0.0
         ('L3', 'L3', 6) :   0.0 :  0.0 :   0.0
         ('L3', 'L3', 7) :   0.0 :  0.0 :   0.0
         ('L3', 'L3', 8) :   0.0 :  0.0 :   0.0
         ('L3', 'L3', 9) :   0.0 :  0.0 :   0.0
        ('L3', 'L3', 10) :   0.0 :  0.0 :   0.0
        ('L3', 'L3', 11) :   0.0 :  0.0 :   0.0
        ('L3', 'L3', 12) :   0.0 :  0.0 :   0.0
        ('L3', 'L3', 13) :   0.0 :  0.0 :   0.0
         ('L3', 'M3', 0) :   0.0 :  0.0 :   0.0
         ('L3', 'M3', 1) :   0.0 :  0.0 :   0.0
         ('L3', 'M3', 2) :   0.0 :  0.0 :   0.0
         ('L3', 'M3', 3) :   0.0 :  0.0 :   0.0
         ('L3', 'M3', 4) :   0.0 :  0.0 :   0.0
         ('L3', 'M3', 5) :   0.0 :  0.0 :   0.0
         ('L3', 'M3', 6) :   0.0 :  0.0 :   0.0
         ('L3', 'M3', 7) :   0.0 :  0.0 :   0.0
         ('L3', 'M3', 8) :   0.0 :  0.0 :   0.0
         ('L3', 'M3', 9) :   0.0 :  0.0 :   0.0
        ('L3', 'M3', 10) :   0.0 :  0.0 :   0.0
        ('L3', 'M3', 11) :   0.0 :  0.0 :   0.0
        ('L3', 'M3', 12) :   0.0 :  0.0 :   0.0
        ('L3', 'M3', 13) :   0.0 :  0.0 :   0.0
         ('L3', 'N3', 0) :   0.0 :  0.0 :   0.0
         ('L3', 'N3', 1) :   0.0 :  0.0 :   0.0
         ('L3', 'N3', 2) :   0.0 :  0.0 :   0.0
         ('L3', 'N3', 3) :   0.0 :  0.0 :   0.0
         ('L3', 'N3', 4) :   0.0 :  0.0 :   0.0
         ('L3', 'N3', 5) :   0.0 :  0.0 :   0.0
         ('L3', 'N3', 6) :   0.0 :  0.0 :   0.0
         ('L3', 'N3', 7) :   0.0 :  0.0 :   0.0
         ('L3', 'N3', 8) :   0.0 :  0.0 :   0.0
         ('L3', 'N3', 9) :   0.0 :  0.0 :   0.0
        ('L3', 'N3', 10) :   0.0 :  0.0 :   0.0
        ('L3', 'N3', 11) :   0.0 :  0.0 :   0.0
        ('L3', 'N3', 12) :   0.0 :  0.0 :   0.0
        ('L3', 'N3', 13) :   0.0 :  0.0 :   0.0
         ('L3', 'O3', 0) :   0.0 :  0.0 :   0.0
         ('L3', 'O3', 1) :   0.0 :  0.0 :   0.0
         ('L3', 'O3', 2) :   0.0 :  0.0 :   0.0
         ('L3', 'O3', 3) :   0.0 :  0.0 :   0.0
         ('L3', 'O3', 4) :   0.0 :  0.0 :   0.0
         ('L3', 'O3', 5) :   0.0 :  0.0 :   0.0
         ('L3', 'O3', 6) :   0.0 :  0.0 :   0.0
         ('L3', 'O3', 7) :   0.0 :  0.0 :   0.0
         ('L3', 'O3', 8) :   0.0 :  0.0 :   0.0
         ('L3', 'O3', 9) :   0.0 :  0.0 :   0.0
        ('L3', 'O3', 10) :   0.0 :  0.0 :   0.0
        ('L3', 'O3', 11) :   0.0 :  0.0 :   0.0
        ('L3', 'O3', 12) :   0.0 :  0.0 :   0.0
        ('L3', 'O3', 13) :   0.0 :  0.0 :   0.0
         ('L3', 'P3', 0) :   0.0 :  0.0 :   0.0
         ('L3', 'P3', 1) :   0.0 :  0.0 :   0.0
         ('L3', 'P3', 2) :   0.0 :  0.0 :   0.0
         ('L3', 'P3', 3) :   0.0 :  0.0 :   0.0
         ('L3', 'P3', 4) :   0.0 :  0.0 :   0.0
         ('L3', 'P3', 5) :   0.0 :  0.0 :   0.0
         ('L3', 'P3', 6) :   0.0 :  0.0 :   0.0
         ('L3', 'P3', 7) :   0.0 :  0.0 :   0.0
         ('L3', 'P3', 8) :   0.0 :  0.0 :   0.0
         ('L3', 'P3', 9) :   0.0 :  0.0 :   0.0
        ('L3', 'P3', 10) :   0.0 :  0.0 :   0.0
        ('L3', 'P3', 11) :   0.0 :  0.0 :   0.0
        ('L3', 'P3', 12) :   0.0 :  0.0 :   0.0
        ('L3', 'P3', 13) :   0.0 :  0.0 :   0.0
         ('L3', 'Q3', 0) :   0.0 :  0.0 :   0.0
         ('L3', 'Q3', 1) :   0.0 :  0.0 :   0.0
         ('L3', 'Q3', 2) :   0.0 :  0.0 :   0.0
         ('L3', 'Q3', 3) :   0.0 :  0.0 :   0.0
         ('L3', 'Q3', 4) :   0.0 :  0.0 :   0.0
         ('L3', 'Q3', 5) :   0.0 :  0.0 :   0.0
         ('L3', 'Q3', 6) :   0.0 :  0.0 :   0.0
         ('L3', 'Q3', 7) :   0.0 :  0.0 :   0.0
         ('L3', 'Q3', 8) :   0.0 :  0.0 :   0.0
         ('L3', 'Q3', 9) :   0.0 :  0.0 :   0.0
        ('L3', 'Q3', 10) :   0.0 :  0.0 :   0.0
        ('L3', 'Q3', 11) :   0.0 :  0.0 :   0.0
        ('L3', 'Q3', 12) :   0.0 :  0.0 :   0.0
        ('L3', 'Q3', 13) :   0.0 :  0.0 :   0.0
         ('L3', 'R3', 0) :   0.0 :  0.0 :   0.0
         ('L3', 'R3', 1) :   0.0 :  0.0 :   0.0
         ('L3', 'R3', 2) :   0.0 :  0.0 :   0.0
         ('L3', 'R3', 3) :   0.0 :  0.0 :   0.0
         ('L3', 'R3', 4) :   0.0 :  0.0 :   0.0
         ('L3', 'R3', 5) :   0.0 :  0.0 :   0.0
         ('L3', 'R3', 6) :   0.0 :  0.0 :   0.0
         ('L3', 'R3', 7) :   0.0 :  0.0 :   0.0
         ('L3', 'R3', 8) :   0.0 :  0.0 :   0.0
         ('L3', 'R3', 9) :   0.0 :  0.0 :   0.0
        ('L3', 'R3', 10) :   0.0 :  0.0 :   0.0
        ('L3', 'R3', 11) :   0.0 :  0.0 :   0.0
        ('L3', 'R3', 12) :   0.0 :  0.0 :   0.0
        ('L3', 'R3', 13) :   0.0 :  0.0 :   0.0
         ('L3', 'S3', 0) :   0.0 :  0.0 :   0.0
         ('L3', 'S3', 1) :   0.0 :  0.0 :   0.0
         ('L3', 'S3', 2) :   0.0 :  0.0 :   0.0
         ('L3', 'S3', 3) :   0.0 :  0.0 :   0.0
         ('L3', 'S3', 4) :   0.0 :  0.0 :   0.0
         ('L3', 'S3', 5) :   0.0 :  0.0 :   0.0
         ('L3', 'S3', 6) :   0.0 :  0.0 :   0.0
         ('L3', 'S3', 7) :   0.0 :  0.0 :   0.0
         ('L3', 'S3', 8) :   0.0 :  0.0 :   0.0
         ('L3', 'S3', 9) :   0.0 :  0.0 :   0.0
        ('L3', 'S3', 10) :   0.0 :  0.0 :   0.0
        ('L3', 'S3', 11) :   0.0 :  0.0 :   0.0
        ('L3', 'S3', 12) :   0.0 :  0.0 :   0.0
        ('L3', 'S3', 13) :   0.0 :  0.0 :   0.0
         ('L3', 'T3', 0) :   0.0 :  0.0 :   0.0
         ('L3', 'T3', 1) :   0.0 :  0.0 :   0.0
         ('L3', 'T3', 2) :   0.0 :  0.0 :   0.0
         ('L3', 'T3', 3) :   0.0 :  0.0 :   0.0
         ('L3', 'T3', 4) :   0.0 :  0.0 :   0.0
         ('L3', 'T3', 5) :   0.0 :  0.0 :   0.0
         ('L3', 'T3', 6) :   0.0 :  0.0 :   0.0
         ('L3', 'T3', 7) :   0.0 :  0.0 :   0.0
         ('L3', 'T3', 8) :   0.0 :  0.0 :   0.0
         ('L3', 'T3', 9) :   0.0 :  0.0 :   0.0
        ('L3', 'T3', 10) :   0.0 :  0.0 :   0.0
        ('L3', 'T3', 11) :   0.0 :  0.0 :   0.0
        ('L3', 'T3', 12) :   0.0 :  0.0 :   0.0
        ('L3', 'T3', 13) :   0.0 :  0.0 :   0.0
    constraint_under_cover : Size=42
        Key        : Lower : Body : Upper
         ('D3', 0) :   3.0 :  3.0 :  None
         ('D3', 1) :   4.0 :  4.0 :  None
         ('D3', 2) :   5.0 :  5.0 :  None
         ('D3', 3) :   5.0 :  5.0 :  None
         ('D3', 4) :   5.0 :  5.0 :  None
         ('D3', 5) :   6.0 :  6.0 :  None
         ('D3', 6) :   5.0 :  5.0 :  None
         ('D3', 7) :   6.0 :  6.0 :  None
         ('D3', 8) :   4.0 :  4.0 :  None
         ('D3', 9) :   5.0 :  5.0 :  None
        ('D3', 10) :   5.0 :  5.0 :  None
        ('D3', 11) :   3.0 :  3.0 :  None
        ('D3', 12) :   6.0 :  6.0 :  None
        ('D3', 13) :   5.0 :  5.0 :  None
         ('E3', 0) :   2.0 :  2.0 :  None
         ('E3', 1) :   3.0 :  3.0 :  None
         ('E3', 2) :   3.0 :  3.0 :  None
         ('E3', 3) :   4.0 :  4.0 :  None
         ('E3', 4) :   2.0 :  2.0 :  None
         ('E3', 5) :   4.0 :  4.0 :  None
         ('E3', 6) :   6.0 :  6.0 :  None
         ('E3', 7) :   4.0 :  4.0 :  None
         ('E3', 8) :   3.0 :  3.0 :  None
         ('E3', 9) :   4.0 :  4.0 :  None
        ('E3', 10) :   2.0 :  2.0 :  None
        ('E3', 11) :   2.0 :  2.0 :  None
        ('E3', 12) :   2.0 :  2.0 :  None
        ('E3', 13) :   3.0 :  3.0 :  None
         ('L3', 0) :   3.0 :  3.0 :  None
         ('L3', 1) :   3.0 :  3.0 :  None
         ('L3', 2) :   3.0 :  3.0 :  None
         ('L3', 3) :   2.0 :  2.0 :  None
         ('L3', 4) :   4.0 :  4.0 :  None
         ('L3', 5) :   2.0 :  2.0 :  None
         ('L3', 6) :   3.0 :  3.0 :  None
         ('L3', 7) :   3.0 :  3.0 :  None
         ('L3', 8) :   2.0 :  2.0 :  None
         ('L3', 9) :   4.0 :  4.0 :  None
        ('L3', 10) :   2.0 :  2.0 :  None
        ('L3', 11) :   4.0 :  4.0 :  None
        ('L3', 12) :   5.0 :  5.0 :  None
        ('L3', 13) :   3.0 :  3.0 :  None
    constraint_penalty_under_cover : Size=42
        Key        : Lower : Body : Upper
         ('D3', 0) :   0.0 :  0.0 :   0.0
         ('D3', 1) :   0.0 :  0.0 :   0.0
         ('D3', 2) :   0.0 :  0.0 :   0.0
         ('D3', 3) :   0.0 :  0.0 :   0.0
         ('D3', 4) :   0.0 :  0.0 :   0.0
         ('D3', 5) :   0.0 :  0.0 :   0.0
         ('D3', 6) :   0.0 :  0.0 :   0.0
         ('D3', 7) :   0.0 :  0.0 :   0.0
         ('D3', 8) :   0.0 :  0.0 :   0.0
         ('D3', 9) :   0.0 :  0.0 :   0.0
        ('D3', 10) :   0.0 :  0.0 :   0.0
        ('D3', 11) :   0.0 :  0.0 :   0.0
        ('D3', 12) :   0.0 :  0.0 :   0.0
        ('D3', 13) :   0.0 :  0.0 :   0.0
         ('E3', 0) :   0.0 :  0.0 :   0.0
         ('E3', 1) :   0.0 :  0.0 :   0.0
         ('E3', 2) :   0.0 :  0.0 :   0.0
         ('E3', 3) :   0.0 :  0.0 :   0.0
         ('E3', 4) :   0.0 :  0.0 :   0.0
         ('E3', 5) :   0.0 :  0.0 :   0.0
         ('E3', 6) :   0.0 :  0.0 :   0.0
         ('E3', 7) :   0.0 :  0.0 :   0.0
         ('E3', 8) :   0.0 :  0.0 :   0.0
         ('E3', 9) :   0.0 :  0.0 :   0.0
        ('E3', 10) :   0.0 :  0.0 :   0.0
        ('E3', 11) :   0.0 :  0.0 :   0.0
        ('E3', 12) :   0.0 :  0.0 :   0.0
        ('E3', 13) :   0.0 :  0.0 :   0.0
         ('L3', 0) :   0.0 :  0.0 :   0.0
         ('L3', 1) :   0.0 :  0.0 :   0.0
         ('L3', 2) :   0.0 :  0.0 :   0.0
         ('L3', 3) :   0.0 :  0.0 :   0.0
         ('L3', 4) :   0.0 :  0.0 :   0.0
         ('L3', 5) :   0.0 :  0.0 :   0.0
         ('L3', 6) :   0.0 :  0.0 :   0.0
         ('L3', 7) :   0.0 :  0.0 :   0.0
         ('L3', 8) :   0.0 :  0.0 :   0.0
         ('L3', 9) :   0.0 :  0.0 :   0.0
        ('L3', 10) :   0.0 :  0.0 :   0.0
        ('L3', 11) :   0.0 :  0.0 :   0.0
        ('L3', 12) :   0.0 :  0.0 :   0.0
        ('L3', 13) :   0.0 :  0.0 :   0.0
    constraint_over_cover : Size=42
        Key        : Lower : Body : Upper
         ('D3', 0) :  None :  3.0 :   3.0
         ('D3', 1) :  None :  4.0 :   4.0
         ('D3', 2) :  None :  5.0 :   5.0
         ('D3', 3) :  None :  5.0 :   5.0
         ('D3', 4) :  None :  5.0 :   5.0
         ('D3', 5) :  None :  5.0 :   6.0
         ('D3', 6) :  None :  5.0 :   5.0
         ('D3', 7) :  None :  6.0 :   6.0
         ('D3', 8) :  None :  4.0 :   4.0
         ('D3', 9) :  None :  5.0 :   5.0
        ('D3', 10) :  None :  5.0 :   5.0
        ('D3', 11) :  None :  3.0 :   3.0
        ('D3', 12) :  None :  6.0 :   6.0
        ('D3', 13) :  None :  5.0 :   5.0
         ('E3', 0) :  None :  2.0 :   2.0
         ('E3', 1) :  None :  3.0 :   3.0
         ('E3', 2) :  None :  3.0 :   3.0
         ('E3', 3) :  None :  4.0 :   4.0
         ('E3', 4) :  None :  2.0 :   2.0
         ('E3', 5) :  None :  3.0 :   4.0
         ('E3', 6) :  None :  3.0 :   6.0
         ('E3', 7) :  None :  4.0 :   4.0
         ('E3', 8) :  None :  3.0 :   3.0
         ('E3', 9) :  None :  4.0 :   4.0
        ('E3', 10) :  None :  2.0 :   2.0
        ('E3', 11) :  None :  2.0 :   2.0
        ('E3', 12) :  None :  2.0 :   2.0
        ('E3', 13) :  None :  2.0 :   3.0
         ('L3', 0) :  None :  3.0 :   3.0
         ('L3', 1) :  None :  3.0 :   3.0
         ('L3', 2) :  None :  3.0 :   3.0
         ('L3', 3) :  None :  2.0 :   2.0
         ('L3', 4) :  None :  4.0 :   4.0
         ('L3', 5) :  None :  2.0 :   2.0
         ('L3', 6) :  None :  2.0 :   3.0
         ('L3', 7) :  None :  3.0 :   3.0
         ('L3', 8) :  None :  2.0 :   2.0
         ('L3', 9) :  None :  4.0 :   4.0
        ('L3', 10) :  None :  2.0 :   2.0
        ('L3', 11) :  None :  4.0 :   4.0
        ('L3', 12) :  None :  2.0 :   5.0
        ('L3', 13) :  None :  3.0 :   3.0
    constraint_penalty_over_cover : Size=42
        Key        : Lower : Body : Upper
         ('D3', 0) :   0.0 :  0.0 :   0.0
         ('D3', 1) :   0.0 :  0.0 :   0.0
         ('D3', 2) :   0.0 :  0.0 :   0.0
         ('D3', 3) :   0.0 :  0.0 :   0.0
         ('D3', 4) :   0.0 :  0.0 :   0.0
         ('D3', 5) :   0.0 :  0.0 :   0.0
         ('D3', 6) :   0.0 :  0.0 :   0.0
         ('D3', 7) :   0.0 :  0.0 :   0.0
         ('D3', 8) :   0.0 :  0.0 :   0.0
         ('D3', 9) :   0.0 :  0.0 :   0.0
        ('D3', 10) :   0.0 :  0.0 :   0.0
        ('D3', 11) :   0.0 :  0.0 :   0.0
        ('D3', 12) :   0.0 :  0.0 :   0.0
        ('D3', 13) :   0.0 :  0.0 :   0.0
         ('E3', 0) :   0.0 :  0.0 :   0.0
         ('E3', 1) :   0.0 :  0.0 :   0.0
         ('E3', 2) :   0.0 :  0.0 :   0.0
         ('E3', 3) :   0.0 :  0.0 :   0.0
         ('E3', 4) :   0.0 :  0.0 :   0.0
         ('E3', 5) :   0.0 :  0.0 :   0.0
         ('E3', 6) :   0.0 :  0.0 :   0.0
         ('E3', 7) :   0.0 :  0.0 :   0.0
         ('E3', 8) :   0.0 :  0.0 :   0.0
         ('E3', 9) :   0.0 :  0.0 :   0.0
        ('E3', 10) :   0.0 :  0.0 :   0.0
        ('E3', 11) :   0.0 :  0.0 :   0.0
        ('E3', 12) :   0.0 :  0.0 :   0.0
        ('E3', 13) :   0.0 :  0.0 :   0.0
         ('L3', 0) :   0.0 :  0.0 :   0.0
         ('L3', 1) :   0.0 :  0.0 :   0.0
         ('L3', 2) :   0.0 :  0.0 :   0.0
         ('L3', 3) :   0.0 :  0.0 :   0.0
         ('L3', 4) :   0.0 :  0.0 :   0.0
         ('L3', 5) :   0.0 :  0.0 :   0.0
         ('L3', 6) :   0.0 :  0.0 :   0.0
         ('L3', 7) :   0.0 :  0.0 :   0.0
         ('L3', 8) :   0.0 :  0.0 :   0.0
         ('L3', 9) :   0.0 :  0.0 :   0.0
        ('L3', 10) :   0.0 :  0.0 :   0.0
        ('L3', 11) :   0.0 :  0.0 :   0.0
        ('L3', 12) :   0.0 :  0.0 :   0.0
        ('L3', 13) :   0.0 :  0.0 :   0.0
