Model NurseSchedulingProblem

  Variables:
    IsAssign : Size=112, Index=SHIFTTYPES*NURSES*DAYS
        Key              : Lower : Value                  : Upper : Fixed : Stale : Domain
         ('D1', 'A1', 0) :     0 :                    0.0 :     1 : False : False : Binary
         ('D1', 'A1', 1) :     0 :                    1.0 :     1 : False : False : Binary
         ('D1', 'A1', 2) :     0 :                    1.0 :     1 : False : False : Binary
         ('D1', 'A1', 3) :     0 :                    1.0 :     1 : False : False : Binary
         ('D1', 'A1', 4) :     0 :                    1.0 :     1 : False : False : Binary
         ('D1', 'A1', 5) :     0 :                    0.0 :     1 : False : False : Binary
         ('D1', 'A1', 6) :     0 :                    0.0 :     1 : False : False : Binary
         ('D1', 'A1', 7) :     0 :                    1.0 :     1 : False : False : Binary
         ('D1', 'A1', 8) :     0 :                    1.0 :     1 : False : False : Binary
         ('D1', 'A1', 9) :     0 :                    0.0 :     1 : False : False : Binary
        ('D1', 'A1', 10) :     0 :                    0.0 :     1 : False : False : Binary
        ('D1', 'A1', 11) :     0 :                    1.0 :     1 : False : False : Binary
        ('D1', 'A1', 12) :     0 :                    1.0 :     1 : False : False : Binary
        ('D1', 'A1', 13) :     0 :                    1.0 :     1 : False : False : Binary
         ('D1', 'B1', 0) :     0 :                    1.0 :     1 : False : False : Binary
         ('D1', 'B1', 1) :     0 :                    1.0 :     1 : False : False : Binary
         ('D1', 'B1', 2) :     0 :                    1.0 :     1 : False : False : Binary
         ('D1', 'B1', 3) :     0 :                    1.0 :     1 : False : False : Binary
         ('D1', 'B1', 4) :     0 :                    1.0 :     1 : False : False : Binary
         ('D1', 'B1', 5) :     0 :                    0.0 :     1 : False : False : Binary
         ('D1', 'B1', 6) :     0 :                    0.0 :     1 : False : False : Binary
         ('D1', 'B1', 7) :     0 :                    1.0 :     1 : False : False : Binary
         ('D1', 'B1', 8) :     0 :                    1.0 :     1 : False : False : Binary
         ('D1', 'B1', 9) :     0 :                    0.0 :     1 : False : False : Binary
        ('D1', 'B1', 10) :     0 :                    0.0 :     1 : False : False : Binary
        ('D1', 'B1', 11) :     0 :                    1.0 :     1 : False : False : Binary
        ('D1', 'B1', 12) :     0 :                    1.0 :     1 : False : False : Binary
        ('D1', 'B1', 13) :     0 :                    0.0 :     1 : False : False : Binary
         ('D1', 'C1', 0) :     0 :                    1.0 :     1 : False : False : Binary
         ('D1', 'C1', 1) :     0 :                    1.0 :     1 : False : False : Binary
         ('D1', 'C1', 2) :     0 :                    1.0 :     1 : False : False : Binary
         ('D1', 'C1', 3) :     0 :                    0.0 :     1 : False : False : Binary
         ('D1', 'C1', 4) :     0 : -2.220446049250313e-16 :     1 : False : False : Binary
         ('D1', 'C1', 5) :     0 :                    1.0 :     1 : False : False : Binary
         ('D1', 'C1', 6) :     0 :                    1.0 :     1 : False : False : Binary
         ('D1', 'C1', 7) :     0 :                    0.0 :     1 : False : False : Binary
         ('D1', 'C1', 8) :     0 :                    0.0 :     1 : False : False : Binary
         ('D1', 'C1', 9) :     0 :                    1.0 :     1 : False : False : Binary
        ('D1', 'C1', 10) :     0 :                    1.0 :     1 : False : False : Binary
        ('D1', 'C1', 11) :     0 :                    1.0 :     1 : False : False : Binary
        ('D1', 'C1', 12) :     0 :                    0.0 :     1 : False : False : Binary
        ('D1', 'C1', 13) :     0 :                    0.0 :     1 : False : False : Binary
         ('D1', 'D1', 0) :     0 :                    1.0 :     1 : False : False : Binary
         ('D1', 'D1', 1) :     0 :                    1.0 :     1 : False : False : Binary
         ('D1', 'D1', 2) :     0 :                    0.0 :     1 : False : False : Binary
         ('D1', 'D1', 3) :     0 :                    0.0 :     1 : False : False : Binary
         ('D1', 'D1', 4) :     0 :                    0.0 :     1 : False : False : Binary
         ('D1', 'D1', 5) :     0 :                    1.0 :     1 : False : False : Binary
         ('D1', 'D1', 6) :     0 :                    1.0 :     1 : False : False : Binary
         ('D1', 'D1', 7) :     0 :                    1.0 :     1 : False : False : Binary
         ('D1', 'D1', 8) :     0 :                    1.0 :     1 : False : False : Binary
         ('D1', 'D1', 9) :     0 :                    1.0 :     1 : False : False : Binary
        ('D1', 'D1', 10) :     0 :                    0.0 :     1 : False : False : Binary
        ('D1', 'D1', 11) :     0 :                    0.0 :     1 : False : False : Binary
        ('D1', 'D1', 12) :     0 :                    0.0 :     1 : False : False : Binary
        ('D1', 'D1', 13) :     0 :                    0.0 :     1 : False : False : Binary
         ('D1', 'E1', 0) :     0 :                    1.0 :     1 : False : False : Binary
         ('D1', 'E1', 1) :     0 :                    1.0 :     1 : False : False : Binary
         ('D1', 'E1', 2) :     0 :                    0.0 :     1 : False : False : Binary
         ('D1', 'E1', 3) :     0 :                    0.0 :     1 : False : False : Binary
         ('D1', 'E1', 4) :     0 :                    1.0 :     1 : False : False : Binary
         ('D1', 'E1', 5) :     0 :                    1.0 :     1 : False : False : Binary
         ('D1', 'E1', 6) :     0 :                    1.0 :     1 : False : False : Binary
         ('D1', 'E1', 7) :     0 :                    1.0 :     1 : False : False : Binary
         ('D1', 'E1', 8) :     0 :                    1.0 :     1 : False : False : Binary
         ('D1', 'E1', 9) :     0 :                    0.0 :     1 : False : False : Binary
        ('D1', 'E1', 10) :     0 :                    0.0 :     1 : False : False : Binary
        ('D1', 'E1', 11) :     0 :                    0.0 :     1 : False : False : Binary
        ('D1', 'E1', 12) :     0 :                    0.0 :     1 : False : False : Binary
        ('D1', 'E1', 13) :     0 :                    0.0 :     1 : False : False : Binary
         ('D1', 'F1', 0) :     0 :     0.9999999999999996 :     1 : False : False : Binary
         ('D1', 'F1', 1) :     0 :                    1.0 :     1 : False : False : Binary
         ('D1', 'F1', 2) :     0 :                    1.0 :     1 : False : False : Binary
         ('D1', 'F1', 3) :     0 :  4.440892098500626e-16 :     1 : False : False : Binary
         ('D1', 'F1', 4) :     0 :  4.440892098500626e-16 :     1 : False : False : Binary
         ('D1', 'F1', 5) :     0 :                    0.0 :     1 : False : False : Binary
         ('D1', 'F1', 6) :     0 :                    0.0 :     1 : False : False : Binary
         ('D1', 'F1', 7) :     0 :                    1.0 :     1 : False : False : Binary
         ('D1', 'F1', 8) :     0 :                    1.0 :     1 : False : False : Binary
         ('D1', 'F1', 9) :     0 :                    1.0 :     1 : False : False : Binary
        ('D1', 'F1', 10) :     0 :                    0.0 :     1 : False : False : Binary
        ('D1', 'F1', 11) :     0 :                    0.0 :     1 : False : False : Binary
        ('D1', 'F1', 12) :     0 :                    1.0 :     1 : False : False : Binary
        ('D1', 'F1', 13) :     0 :                    1.0 :     1 : False : False : Binary
         ('D1', 'G1', 0) :     0 :                   -0.0 :     1 : False : False : Binary
         ('D1', 'G1', 1) :     0 :                    0.0 :     1 : False : False : Binary
         ('D1', 'G1', 2) :     0 :                    1.0 :     1 : False : False : Binary
         ('D1', 'G1', 3) :     0 :                    1.0 :     1 : False : False : Binary
         ('D1', 'G1', 4) :     0 :                    1.0 :     1 : False : False : Binary
         ('D1', 'G1', 5) :     0 :                    0.0 :     1 : False : False : Binary
         ('D1', 'G1', 6) :     0 :                    0.0 :     1 : False : False : Binary
         ('D1', 'G1', 7) :     0 :                    1.0 :     1 : False : False : Binary
         ('D1', 'G1', 8) :     0 :                    1.0 :     1 : False : False : Binary
         ('D1', 'G1', 9) :     0 :                    0.0 :     1 : False : False : Binary
        ('D1', 'G1', 10) :     0 :                    0.0 :     1 : False : False : Binary
        ('D1', 'G1', 11) :     0 :                    1.0 :     1 : False : False : Binary
        ('D1', 'G1', 12) :     0 :                    1.0 :     1 : False : False : Binary
        ('D1', 'G1', 13) :     0 :                    1.0 :     1 : False : False : Binary
         ('D1', 'H1', 0) :     0 :                    0.0 :     1 : False : False : Binary
         ('D1', 'H1', 1) :     0 :                    1.0 :     1 : False : False : Binary
         ('D1', 'H1', 2) :     0 :                    1.0 :     1 : False : False : Binary
         ('D1', 'H1', 3) :     0 :                    1.0 :     1 : False : False : Binary
         ('D1', 'H1', 4) :     0 :                    1.0 :     1 : False : False : Binary
         ('D1', 'H1', 5) :     0 :                    0.0 :     1 : False : False : Binary
         ('D1', 'H1', 6) :     0 :                    0.0 :     1 : False : False : Binary
         ('D1', 'H1', 7) :     0 :                    0.0 :     1 : False : False : Binary
         ('D1', 'H1', 8) :     0 :                    0.0 :     1 : False : False : Binary
         ('D1', 'H1', 9) :     0 :                    1.0 :     1 : False : False : Binary
        ('D1', 'H1', 10) :     0 :                    1.0 :     1 : False : False : Binary
        ('D1', 'H1', 11) :     0 :                    1.0 :     1 : False : False : Binary
        ('D1', 'H1', 12) :     0 :                    1.0 :     1 : False : False : Binary
        ('D1', 'H1', 13) :     0 :                    1.0 :     1 : False : False : Binary
    IsRest : Size=112, Index=NURSES*DAYS
        Key        : Lower : Value                 : Upper : Fixed : Stale : Domain
         ('A1', 0) :     0 :                   1.0 :     1 : False : False : Binary
         ('A1', 1) :     0 :                  -0.0 :     1 : False : False : Binary
         ('A1', 2) :     0 :                  -0.0 :     1 : False : False : Binary
         ('A1', 3) :     0 :                   0.0 :     1 : False : False : Binary
         ('A1', 4) :     0 :                   0.0 :     1 : False : False : Binary
         ('A1', 5) :     0 :                   1.0 :     1 : False : False : Binary
         ('A1', 6) :     0 :                   1.0 :     1 : False : False : Binary
         ('A1', 7) :     0 :                  -0.0 :     1 : False : False : Binary
         ('A1', 8) :     0 :                  -0.0 :     1 : False : False : Binary
         ('A1', 9) :     0 :                   1.0 :     1 : False : False : Binary
        ('A1', 10) :     0 :                   1.0 :     1 : False : False : Binary
        ('A1', 11) :     0 :                   0.0 :     1 : False : False : Binary
        ('A1', 12) :     0 :                   0.0 :     1 : False : False : Binary
        ('A1', 13) :     0 :                   0.0 :     1 : False : False : Binary
         ('B1', 0) :     0 :                   0.0 :     1 : False : False : Binary
         ('B1', 1) :     0 :                  -0.0 :     1 : False : False : Binary
         ('B1', 2) :     0 :                  -0.0 :     1 : False : False : Binary
         ('B1', 3) :     0 :                  -0.0 :     1 : False : False : Binary
         ('B1', 4) :     0 :                  -0.0 :     1 : False : False : Binary
         ('B1', 5) :     0 :                   1.0 :     1 : False : False : Binary
         ('B1', 6) :     0 :                   1.0 :     1 : False : False : Binary
         ('B1', 7) :     0 :                  -0.0 :     1 : False : False : Binary
         ('B1', 8) :     0 :                  -0.0 :     1 : False : False : Binary
         ('B1', 9) :     0 :                   1.0 :     1 : False : False : Binary
        ('B1', 10) :     0 :                   1.0 :     1 : False : False : Binary
        ('B1', 11) :     0 :                  -0.0 :     1 : False : False : Binary
        ('B1', 12) :     0 :                   0.0 :     1 : False : False : Binary
        ('B1', 13) :     0 :                   1.0 :     1 : False : False : Binary
         ('C1', 0) :     0 :                   0.0 :     1 : False : False : Binary
         ('C1', 1) :     0 :                  -0.0 :     1 : False : False : Binary
         ('C1', 2) :     0 :                  -0.0 :     1 : False : False : Binary
         ('C1', 3) :     0 :                   1.0 :     1 : False : False : Binary
         ('C1', 4) :     0 :    1.0000000000000002 :     1 : False : False : Binary
         ('C1', 5) :     0 :                   0.0 :     1 : False : False : Binary
         ('C1', 6) :     0 :                   0.0 :     1 : False : False : Binary
         ('C1', 7) :     0 :                   1.0 :     1 : False : False : Binary
         ('C1', 8) :     0 :                   1.0 :     1 : False : False : Binary
         ('C1', 9) :     0 :                   0.0 :     1 : False : False : Binary
        ('C1', 10) :     0 :                   0.0 :     1 : False : False : Binary
        ('C1', 11) :     0 :                  -0.0 :     1 : False : False : Binary
        ('C1', 12) :     0 :                   1.0 :     1 : False : False : Binary
        ('C1', 13) :     0 :                   1.0 :     1 : False : False : Binary
         ('D1', 0) :     0 :                   0.0 :     1 : False : False : Binary
         ('D1', 1) :     0 :                  -0.0 :     1 : False : False : Binary
         ('D1', 2) :     0 :                   1.0 :     1 : False : False : Binary
         ('D1', 3) :     0 :                   1.0 :     1 : False : False : Binary
         ('D1', 4) :     0 :                   1.0 :     1 : False : False : Binary
         ('D1', 5) :     0 :                   0.0 :     1 : False : False : Binary
         ('D1', 6) :     0 :                   0.0 :     1 : False : False : Binary
         ('D1', 7) :     0 :                   0.0 :     1 : False : False : Binary
         ('D1', 8) :     0 :                   0.0 :     1 : False : False : Binary
         ('D1', 9) :     0 :                  -0.0 :     1 : False : False : Binary
        ('D1', 10) :     0 :                   1.0 :     1 : False : False : Binary
        ('D1', 11) :     0 :                   1.0 :     1 : False : False : Binary
        ('D1', 12) :     0 :                   1.0 :     1 : False : False : Binary
        ('D1', 13) :     0 :                   1.0 :     1 : False : False : Binary
         ('E1', 0) :     0 :                   0.0 :     1 : False : False : Binary
         ('E1', 1) :     0 :                  -0.0 :     1 : False : False : Binary
         ('E1', 2) :     0 :                   1.0 :     1 : False : False : Binary
         ('E1', 3) :     0 :                   1.0 :     1 : False : False : Binary
         ('E1', 4) :     0 :                   0.0 :     1 : False : False : Binary
         ('E1', 5) :     0 :                   0.0 :     1 : False : False : Binary
         ('E1', 6) :     0 :                   0.0 :     1 : False : False : Binary
         ('E1', 7) :     0 :                  -0.0 :     1 : False : False : Binary
         ('E1', 8) :     0 :                   0.0 :     1 : False : False : Binary
         ('E1', 9) :     0 :                   1.0 :     1 : False : False : Binary
        ('E1', 10) :     0 :                   1.0 :     1 : False : False : Binary
        ('E1', 11) :     0 :                   1.0 :     1 : False : False : Binary
        ('E1', 12) :     0 :                   1.0 :     1 : False : False : Binary
        ('E1', 13) :     0 :                   1.0 :     1 : False : False : Binary
         ('F1', 0) :     0 : 4.440892098500626e-16 :     1 : False : False : Binary
         ('F1', 1) :     0 :                  -0.0 :     1 : False : False : Binary
         ('F1', 2) :     0 :                  -0.0 :     1 : False : False : Binary
         ('F1', 3) :     0 :    0.9999999999999996 :     1 : False : False : Binary
         ('F1', 4) :     0 :    0.9999999999999996 :     1 : False : False : Binary
         ('F1', 5) :     0 :                   1.0 :     1 : False : False : Binary
         ('F1', 6) :     0 :                   1.0 :     1 : False : False : Binary
         ('F1', 7) :     0 :                   0.0 :     1 : False : False : Binary
         ('F1', 8) :     0 :                  -0.0 :     1 : False : False : Binary
         ('F1', 9) :     0 :                  -0.0 :     1 : False : False : Binary
        ('F1', 10) :     0 :                   1.0 :     1 : False : False : Binary
        ('F1', 11) :     0 :                   1.0 :     1 : False : False : Binary
        ('F1', 12) :     0 :                   0.0 :     1 : False : False : Binary
        ('F1', 13) :     0 :                  -0.0 :     1 : False : False : Binary
         ('G1', 0) :     0 :                   1.0 :     1 : False : False : Binary
         ('G1', 1) :     0 :                   1.0 :     1 : False : False : Binary
         ('G1', 2) :     0 :                   0.0 :     1 : False : False : Binary
         ('G1', 3) :     0 :                   0.0 :     1 : False : False : Binary
         ('G1', 4) :     0 :                   0.0 :     1 : False : False : Binary
         ('G1', 5) :     0 :                   1.0 :     1 : False : False : Binary
         ('G1', 6) :     0 :                   1.0 :     1 : False : False : Binary
         ('G1', 7) :     0 :                  -0.0 :     1 : False : False : Binary
         ('G1', 8) :     0 :                   0.0 :     1 : False : False : Binary
         ('G1', 9) :     0 :                   1.0 :     1 : False : False : Binary
        ('G1', 10) :     0 :                   1.0 :     1 : False : False : Binary
        ('G1', 11) :     0 :                  -0.0 :     1 : False : False : Binary
        ('G1', 12) :     0 :                   0.0 :     1 : False : False : Binary
        ('G1', 13) :     0 :                   0.0 :     1 : False : False : Binary
         ('H1', 0) :     0 :                   1.0 :     1 : False : False : Binary
         ('H1', 1) :     0 :                  -0.0 :     1 : False : False : Binary
         ('H1', 2) :     0 :                   0.0 :     1 : False : False : Binary
         ('H1', 3) :     0 :                   0.0 :     1 : False : False : Binary
         ('H1', 4) :     0 :                   0.0 :     1 : False : False : Binary
         ('H1', 5) :     0 :                   1.0 :     1 : False : False : Binary
         ('H1', 6) :     0 :                   1.0 :     1 : False : False : Binary
         ('H1', 7) :     0 :                   1.0 :     1 : False : False : Binary
         ('H1', 8) :     0 :                   1.0 :     1 : False : False : Binary
         ('H1', 9) :     0 :                   0.0 :     1 : False : False : Binary
        ('H1', 10) :     0 :                   0.0 :     1 : False : False : Binary
        ('H1', 11) :     0 :                   0.0 :     1 : False : False : Binary
        ('H1', 12) :     0 :                   0.0 :     1 : False : False : Binary
        ('H1', 13) :     0 :                   0.0 :     1 : False : False : Binary
    IsEndOfWorkBlock : Size=112, Index=NURSES*DAYS
        Key        : Lower : Value                  : Upper : Fixed : Stale : Domain
         ('A1', 0) :     0 :                    1.0 :     1 : False : False : Binary
         ('A1', 1) :     0 :                    0.0 :     1 : False : False : Binary
         ('A1', 2) :     0 :                    1.0 :     1 : False : False : Binary
         ('A1', 3) :     0 :                    1.0 :     1 : False : False : Binary
         ('A1', 4) :     0 :                    1.0 :     1 : False : False : Binary
         ('A1', 5) :     0 :                    1.0 :     1 : False : False : Binary
         ('A1', 6) :     0 :                    0.0 :     1 : False : False : Binary
         ('A1', 7) :     0 :                    0.0 :     1 : False : False : Binary
         ('A1', 8) :     0 :                    1.0 :     1 : False : False : Binary
         ('A1', 9) :     0 :                    1.0 :     1 : False : False : Binary
        ('A1', 10) :     0 :                    0.0 :     1 : False : False : Binary
        ('A1', 11) :     0 :                    0.0 :     1 : False : False : Binary
        ('A1', 12) :     0 :                    1.0 :     1 : False : False : Binary
        ('A1', 13) :     0 :                    0.0 :     1 : False : False : Binary
         ('B1', 0) :     0 :                    1.0 :     1 : False : False : Binary
         ('B1', 1) :     0 :                    1.0 :     1 : False : False : Binary
         ('B1', 2) :     0 :                    1.0 :     1 : False : False : Binary
         ('B1', 3) :     0 :                    1.0 :     1 : False : False : Binary
         ('B1', 4) :     0 :                    1.0 :     1 : False : False : Binary
         ('B1', 5) :     0 :                    1.0 :     1 : False : False : Binary
         ('B1', 6) :     0 :                    0.0 :     1 : False : False : Binary
         ('B1', 7) :     0 :                    0.0 :     1 : False : False : Binary
         ('B1', 8) :     0 :                    1.0 :     1 : False : False : Binary
         ('B1', 9) :     0 :                    1.0 :     1 : False : False : Binary
        ('B1', 10) :     0 :                    0.0 :     1 : False : False : Binary
        ('B1', 11) :     0 :                    0.0 :     1 : False : False : Binary
        ('B1', 12) :     0 :                    1.0 :     1 : False : False : Binary
        ('B1', 13) :     0 :                    0.0 :     1 : False : False : Binary
         ('C1', 0) :     0 :                    1.0 :     1 : False : False : Binary
         ('C1', 1) :     0 :                    1.0 :     1 : False : False : Binary
         ('C1', 2) :     0 :                    1.0 :     1 : False : False : Binary
         ('C1', 3) :     0 :                    1.0 :     1 : False : False : Binary
         ('C1', 4) :     0 :                    0.0 :     1 : False : False : Binary
         ('C1', 5) :     0 : -2.220446049250313e-16 :     1 : False : False : Binary
         ('C1', 6) :     0 :                    1.0 :     1 : False : False : Binary
         ('C1', 7) :     0 :                    1.0 :     1 : False : False : Binary
         ('C1', 8) :     0 :                    0.0 :     1 : False : False : Binary
         ('C1', 9) :     0 :                    0.0 :     1 : False : False : Binary
        ('C1', 10) :     0 :                    1.0 :     1 : False : False : Binary
        ('C1', 11) :     0 :                    1.0 :     1 : False : False : Binary
        ('C1', 12) :     0 :                    1.0 :     1 : False : False : Binary
        ('C1', 13) :     0 :                    0.0 :     1 : False : False : Binary
         ('D1', 0) :     0 :                    1.0 :     1 : False : False : Binary
         ('D1', 1) :     0 :                    1.0 :     1 : False : False : Binary
         ('D1', 2) :     0 :                    1.0 :     1 : False : False : Binary
         ('D1', 3) :     0 :                    0.0 :     1 : False : False : Binary
         ('D1', 4) :     0 :                    0.0 :     1 : False : False : Binary
         ('D1', 5) :     0 :                    0.0 :     1 : False : False : Binary
         ('D1', 6) :     0 :                    1.0 :     1 : False : False : Binary
         ('D1', 7) :     0 :                    1.0 :     1 : False : False : Binary
         ('D1', 8) :     0 :                    1.0 :     1 : False : False : Binary
         ('D1', 9) :     0 :                    1.0 :     1 : False : False : Binary
        ('D1', 10) :     0 :                    1.0 :     1 : False : False : Binary
        ('D1', 11) :     0 :                    0.0 :     1 : False : False : Binary
        ('D1', 12) :     0 :                    0.0 :     1 : False : False : Binary
        ('D1', 13) :     0 :                    0.0 :     1 : False : False : Binary
         ('E1', 0) :     0 :                    1.0 :     1 : False : False : Binary
         ('E1', 1) :     0 :                    1.0 :     1 : False : False : Binary
         ('E1', 2) :     0 :                    1.0 :     1 : False : False : Binary
         ('E1', 3) :     0 :                    0.0 :     1 : False : False : Binary
         ('E1', 4) :     0 :                    0.0 :     1 : False : False : Binary
         ('E1', 5) :     0 :                    1.0 :     1 : False : False : Binary
         ('E1', 6) :     0 :                    1.0 :     1 : False : False : Binary
         ('E1', 7) :     0 :                    1.0 :     1 : False : False : Binary
         ('E1', 8) :     0 :                    1.0 :     1 : False : False : Binary
         ('E1', 9) :     0 :                    1.0 :     1 : False : False : Binary
        ('E1', 10) :     0 :                    0.0 :     1 : False : False : Binary
        ('E1', 11) :     0 :                    0.0 :     1 : False : False : Binary
        ('E1', 12) :     0 :                    0.0 :     1 : False : False : Binary
        ('E1', 13) :     0 :                    0.0 :     1 : False : False : Binary
         ('F1', 0) :     0 :                    1.0 :     1 : False : False : Binary
         ('F1', 1) :     0 :     0.9999999999999996 :     1 : False : False : Binary
         ('F1', 2) :     0 :                    1.0 :     1 : False : False : Binary
         ('F1', 3) :     0 :                    1.0 :     1 : False : False : Binary
         ('F1', 4) :     0 :  4.440892098500626e-16 :     1 : False : False : Binary
         ('F1', 5) :     0 :  4.440892098500626e-16 :     1 : False : False : Binary
         ('F1', 6) :     0 :                    0.0 :     1 : False : False : Binary
         ('F1', 7) :     0 :                    0.0 :     1 : False : False : Binary
         ('F1', 8) :     0 :                    1.0 :     1 : False : False : Binary
         ('F1', 9) :     0 :                    1.0 :     1 : False : False : Binary
        ('F1', 10) :     0 :                    1.0 :     1 : False : False : Binary
        ('F1', 11) :     0 :                    0.0 :     1 : False : False : Binary
        ('F1', 12) :     0 :                    0.0 :     1 : False : False : Binary
        ('F1', 13) :     0 :                    0.0 :     1 : False : False : Binary
         ('G1', 0) :     0 :                    1.0 :     1 : False : False : Binary
         ('G1', 1) :     0 :                    0.0 :     1 : False : False : Binary
         ('G1', 2) :     0 :                    0.0 :     1 : False : False : Binary
         ('G1', 3) :     0 :                    1.0 :     1 : False : False : Binary
         ('G1', 4) :     0 :                    1.0 :     1 : False : False : Binary
         ('G1', 5) :     0 :                    1.0 :     1 : False : False : Binary
         ('G1', 6) :     0 :                    0.0 :     1 : False : False : Binary
         ('G1', 7) :     0 :                    0.0 :     1 : False : False : Binary
         ('G1', 8) :     0 :                    1.0 :     1 : False : False : Binary
         ('G1', 9) :     0 :                    1.0 :     1 : False : False : Binary
        ('G1', 10) :     0 :                    0.0 :     1 : False : False : Binary
        ('G1', 11) :     0 :                    0.0 :     1 : False : False : Binary
        ('G1', 12) :     0 :                    1.0 :     1 : False : False : Binary
        ('G1', 13) :     0 :                    0.0 :     1 : False : False : Binary
         ('H1', 0) :     0 :                    1.0 :     1 : False : False : Binary
         ('H1', 1) :     0 :                    0.0 :     1 : False : False : Binary
         ('H1', 2) :     0 :                    1.0 :     1 : False : False : Binary
         ('H1', 3) :     0 :                    1.0 :     1 : False : False : Binary
         ('H1', 4) :     0 :                    1.0 :     1 : False : False : Binary
         ('H1', 5) :     0 :                    1.0 :     1 : False : False : Binary
         ('H1', 6) :     0 :                    0.0 :     1 : False : False : Binary
         ('H1', 7) :     0 :                    0.0 :     1 : False : False : Binary
         ('H1', 8) :     0 :                    0.0 :     1 : False : False : Binary
         ('H1', 9) :     0 :                    0.0 :     1 : False : False : Binary
        ('H1', 10) :     0 :                    1.0 :     1 : False : False : Binary
        ('H1', 11) :     0 :                    1.0 :     1 : False : False : Binary
        ('H1', 12) :     0 :                    1.0 :     1 : False : False : Binary
        ('H1', 13) :     0 :                    0.0 :     1 : False : False : Binary
    IsEndOfRestBlock : Size=112, Index=NURSES*DAYS
        Key        : Lower : Value                 : Upper : Fixed : Stale : Domain
         ('A1', 0) :     0 :                   1.0 :     1 : False : False : Binary
         ('A1', 1) :     0 :                   1.0 :     1 : False : False : Binary
         ('A1', 2) :     0 :                   0.0 :     1 : False : False : Binary
         ('A1', 3) :     0 :                   0.0 :     1 : False : False : Binary
         ('A1', 4) :     0 :                   0.0 :     1 : False : False : Binary
         ('A1', 5) :     0 :                   0.0 :     1 : False : False : Binary
         ('A1', 6) :     0 :                   1.0 :     1 : False : False : Binary
         ('A1', 7) :     0 :                   1.0 :     1 : False : False : Binary
         ('A1', 8) :     0 :                   0.0 :     1 : False : False : Binary
         ('A1', 9) :     0 :                   0.0 :     1 : False : False : Binary
        ('A1', 10) :     0 :                   1.0 :     1 : False : False : Binary
        ('A1', 11) :     0 :                   1.0 :     1 : False : False : Binary
        ('A1', 12) :     0 :                   0.0 :     1 : False : False : Binary
        ('A1', 13) :     0 :                   0.0 :     1 : False : False : Binary
         ('B1', 0) :     0 :                   1.0 :     1 : False : False : Binary
         ('B1', 1) :     0 :                   0.0 :     1 : False : False : Binary
         ('B1', 2) :     0 :                   0.0 :     1 : False : False : Binary
         ('B1', 3) :     0 :                   0.0 :     1 : False : False : Binary
         ('B1', 4) :     0 :                   0.0 :     1 : False : False : Binary
         ('B1', 5) :     0 :                   0.0 :     1 : False : False : Binary
         ('B1', 6) :     0 :                   1.0 :     1 : False : False : Binary
         ('B1', 7) :     0 :                   1.0 :     1 : False : False : Binary
         ('B1', 8) :     0 :                   0.0 :     1 : False : False : Binary
         ('B1', 9) :     0 :                   0.0 :     1 : False : False : Binary
        ('B1', 10) :     0 :                   1.0 :     1 : False : False : Binary
        ('B1', 11) :     0 :                   1.0 :     1 : False : False : Binary
        ('B1', 12) :     0 :                   0.0 :     1 : False : False : Binary
        ('B1', 13) :     0 :                   0.0 :     1 : False : False : Binary
         ('C1', 0) :     0 :                   1.0 :     1 : False : False : Binary
         ('C1', 1) :     0 :                   0.0 :     1 : False : False : Binary
         ('C1', 2) :     0 :                   0.0 :     1 : False : False : Binary
         ('C1', 3) :     0 :                   0.0 :     1 : False : False : Binary
         ('C1', 4) :     0 :                   1.0 :     1 : False : False : Binary
         ('C1', 5) :     0 :    1.0000000000000002 :     1 : False : False : Binary
         ('C1', 6) :     0 :                   0.0 :     1 : False : False : Binary
         ('C1', 7) :     0 :                   0.0 :     1 : False : False : Binary
         ('C1', 8) :     0 :                   1.0 :     1 : False : False : Binary
         ('C1', 9) :     0 :                   1.0 :     1 : False : False : Binary
        ('C1', 10) :     0 :                   0.0 :     1 : False : False : Binary
        ('C1', 11) :     0 :                   0.0 :     1 : False : False : Binary
        ('C1', 12) :     0 :                   0.0 :     1 : False : False : Binary
        ('C1', 13) :     0 :                   0.0 :     1 : False : False : Binary
         ('D1', 0) :     0 :                   1.0 :     1 : False : False : Binary
         ('D1', 1) :     0 :                   0.0 :     1 : False : False : Binary
         ('D1', 2) :     0 :                   0.0 :     1 : False : False : Binary
         ('D1', 3) :     0 :                   1.0 :     1 : False : False : Binary
         ('D1', 4) :     0 :                   1.0 :     1 : False : False : Binary
         ('D1', 5) :     0 :                   1.0 :     1 : False : False : Binary
         ('D1', 6) :     0 :                   0.0 :     1 : False : False : Binary
         ('D1', 7) :     0 :                   0.0 :     1 : False : False : Binary
         ('D1', 8) :     0 :                   0.0 :     1 : False : False : Binary
         ('D1', 9) :     0 :                   0.0 :     1 : False : False : Binary
        ('D1', 10) :     0 :                   0.0 :     1 : False : False : Binary
        ('D1', 11) :     0 :                   1.0 :     1 : False : False : Binary
        ('D1', 12) :     0 :                   1.0 :     1 : False : False : Binary
        ('D1', 13) :     0 :                   0.0 :     1 : False : False : Binary
         ('E1', 0) :     0 :                   1.0 :     1 : False : False : Binary
         ('E1', 1) :     0 :                   0.0 :     1 : False : False : Binary
         ('E1', 2) :     0 :                   0.0 :     1 : False : False : Binary
         ('E1', 3) :     0 :                   1.0 :     1 : False : False : Binary
         ('E1', 4) :     0 :                   1.0 :     1 : False : False : Binary
         ('E1', 5) :     0 :                   0.0 :     1 : False : False : Binary
         ('E1', 6) :     0 :                   0.0 :     1 : False : False : Binary
         ('E1', 7) :     0 :                   0.0 :     1 : False : False : Binary
         ('E1', 8) :     0 :                   0.0 :     1 : False : False : Binary
         ('E1', 9) :     0 :                   0.0 :     1 : False : False : Binary
        ('E1', 10) :     0 :                   1.0 :     1 : False : False : Binary
        ('E1', 11) :     0 :                   1.0 :     1 : False : False : Binary
        ('E1', 12) :     0 :                   1.0 :     1 : False : False : Binary
        ('E1', 13) :     0 :                   0.0 :     1 : False : False : Binary
         ('F1', 0) :     0 :                   1.0 :     1 : False : False : Binary
         ('F1', 1) :     0 : 4.440892098500626e-16 :     1 : False : False : Binary
         ('F1', 2) :     0 :                   0.0 :     1 : False : False : Binary
         ('F1', 3) :     0 :                   0.0 :     1 : False : False : Binary
         ('F1', 4) :     0 :    0.9999999999999996 :     1 : False : False : Binary
         ('F1', 5) :     0 :    0.9999999999999996 :     1 : False : False : Binary
         ('F1', 6) :     0 :                   1.0 :     1 : False : False : Binary
         ('F1', 7) :     0 :                   1.0 :     1 : False : False : Binary
         ('F1', 8) :     0 :                   0.0 :     1 : False : False : Binary
         ('F1', 9) :     0 :                   0.0 :     1 : False : False : Binary
        ('F1', 10) :     0 :                   0.0 :     1 : False : False : Binary
        ('F1', 11) :     0 :                   1.0 :     1 : False : False : Binary
        ('F1', 12) :     0 :                   1.0 :     1 : False : False : Binary
        ('F1', 13) :     0 :                   0.0 :     1 : False : False : Binary
         ('G1', 0) :     0 :                   1.0 :     1 : False : False : Binary
         ('G1', 1) :     0 :                   1.0 :     1 : False : False : Binary
         ('G1', 2) :     0 :                   1.0 :     1 : False : False : Binary
         ('G1', 3) :     0 :                   0.0 :     1 : False : False : Binary
         ('G1', 4) :     0 :                   0.0 :     1 : False : False : Binary
         ('G1', 5) :     0 :                   0.0 :     1 : False : False : Binary
         ('G1', 6) :     0 :                   1.0 :     1 : False : False : Binary
         ('G1', 7) :     0 :                   1.0 :     1 : False : False : Binary
         ('G1', 8) :     0 :                   0.0 :     1 : False : False : Binary
         ('G1', 9) :     0 :                   0.0 :     1 : False : False : Binary
        ('G1', 10) :     0 :                   1.0 :     1 : False : False : Binary
        ('G1', 11) :     0 :                   1.0 :     1 : False : False : Binary
        ('G1', 12) :     0 :                   0.0 :     1 : False : False : Binary
        ('G1', 13) :     0 :                   0.0 :     1 : False : False : Binary
         ('H1', 0) :     0 :                   1.0 :     1 : False : False : Binary
         ('H1', 1) :     0 :                   1.0 :     1 : False : False : Binary
         ('H1', 2) :     0 :                   0.0 :     1 : False : False : Binary
         ('H1', 3) :     0 :                   0.0 :     1 : False : False : Binary
         ('H1', 4) :     0 :                   0.0 :     1 : False : False : Binary
         ('H1', 5) :     0 :                   0.0 :     1 : False : False : Binary
         ('H1', 6) :     0 :                   1.0 :     1 : False : False : Binary
         ('H1', 7) :     0 :                   1.0 :     1 : False : False : Binary
         ('H1', 8) :     0 :                   1.0 :     1 : False : False : Binary
         ('H1', 9) :     0 :                   1.0 :     1 : False : False : Binary
        ('H1', 10) :     0 :                   0.0 :     1 : False : False : Binary
        ('H1', 11) :     0 :                   0.0 :     1 : False : False : Binary
        ('H1', 12) :     0 :                   0.0 :     1 : False : False : Binary
        ('H1', 13) :     0 :                   0.0 :     1 : False : False : Binary
    HasWeekendWork : Size=16, Index=NURSES*WEEKS
        Key       : Lower : Value : Upper : Fixed : Stale : Domain
        ('A1', 0) :     0 :   0.0 :     1 : False : False : Binary
        ('A1', 1) :     0 :   1.0 :     1 : False : False : Binary
        ('B1', 0) :     0 :   0.0 :     1 : False : False : Binary
        ('B1', 1) :     0 :   1.0 :     1 : False : False : Binary
        ('C1', 0) :     0 :   1.0 :     1 : False : False : Binary
        ('C1', 1) :     0 :   0.0 :     1 : False : False : Binary
        ('D1', 0) :     0 :   1.0 :     1 : False : False : Binary
        ('D1', 1) :     0 :   0.0 :     1 : False : False : Binary
        ('E1', 0) :     0 :   1.0 :     1 : False : False : Binary
        ('E1', 1) :     0 :   0.0 :     1 : False : False : Binary
        ('F1', 0) :     0 :   0.0 :     1 : False : False : Binary
        ('F1', 1) :     0 :   1.0 :     1 : False : False : Binary
        ('G1', 0) :     0 :   0.0 :     1 : False : False : Binary
        ('G1', 1) :     0 :   1.0 :     1 : False : False : Binary
        ('H1', 0) :     0 :   0.0 :     1 : False : False : Binary
        ('H1', 1) :     0 :   1.0 :     1 : False : False : Binary
    PenaltyShiftOnReq : Size=112, Index=SHIFTTYPES*NURSES*DAYS
        Key              : Lower : Value                 : Upper : Fixed : Stale : Domain
         ('D1', 'A1', 0) :     0 :                   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'A1', 1) :     0 :                   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'A1', 2) :     0 :                   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'A1', 3) :     0 :                   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'A1', 4) :     0 :                   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'A1', 5) :     0 :                   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'A1', 6) :     0 :                   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'A1', 7) :     0 :                   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'A1', 8) :     0 :                   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'A1', 9) :     0 :                   0.0 :  None : False : False : NonNegativeReals
        ('D1', 'A1', 10) :     0 :                   0.0 :  None : False : False : NonNegativeReals
        ('D1', 'A1', 11) :     0 :                   0.0 :  None : False : False : NonNegativeReals
        ('D1', 'A1', 12) :     0 :                   0.0 :  None : False : False : NonNegativeReals
        ('D1', 'A1', 13) :     0 :                   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'B1', 0) :     0 :                   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'B1', 1) :     0 :                   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'B1', 2) :     0 :                   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'B1', 3) :     0 :                   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'B1', 4) :     0 :                   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'B1', 5) :     0 :                   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'B1', 6) :     0 :                   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'B1', 7) :     0 :                   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'B1', 8) :     0 :                   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'B1', 9) :     0 :                   0.0 :  None : False : False : NonNegativeReals
        ('D1', 'B1', 10) :     0 :                   0.0 :  None : False : False : NonNegativeReals
        ('D1', 'B1', 11) :     0 :                   0.0 :  None : False : False : NonNegativeReals
        ('D1', 'B1', 12) :     0 :                   0.0 :  None : False : False : NonNegativeReals
        ('D1', 'B1', 13) :     0 :                   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'C1', 0) :     0 :                   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'C1', 1) :     0 :                   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'C1', 2) :     0 :                   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'C1', 3) :     0 :                   1.0 :  None : False : False : NonNegativeReals
         ('D1', 'C1', 4) :     0 :    1.0000000000000002 :  None : False : False : NonNegativeReals
         ('D1', 'C1', 5) :     0 :                   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'C1', 6) :     0 :                   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'C1', 7) :     0 :                   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'C1', 8) :     0 :                   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'C1', 9) :     0 :                   0.0 :  None : False : False : NonNegativeReals
        ('D1', 'C1', 10) :     0 :                   0.0 :  None : False : False : NonNegativeReals
        ('D1', 'C1', 11) :     0 :                   0.0 :  None : False : False : NonNegativeReals
        ('D1', 'C1', 12) :     0 :                   0.0 :  None : False : False : NonNegativeReals
        ('D1', 'C1', 13) :     0 :                   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'D1', 0) :     0 :                   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'D1', 1) :     0 :                   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'D1', 2) :     0 :                   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'D1', 3) :     0 :                   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'D1', 4) :     0 :                   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'D1', 5) :     0 :                   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'D1', 6) :     0 :                   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'D1', 7) :     0 :                   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'D1', 8) :     0 :                   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'D1', 9) :     0 :                   0.0 :  None : False : False : NonNegativeReals
        ('D1', 'D1', 10) :     0 :                   0.0 :  None : False : False : NonNegativeReals
        ('D1', 'D1', 11) :     0 :                   0.0 :  None : False : False : NonNegativeReals
        ('D1', 'D1', 12) :     0 :                   0.0 :  None : False : False : NonNegativeReals
        ('D1', 'D1', 13) :     0 :                   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'E1', 0) :     0 :                   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'E1', 1) :     0 :                   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'E1', 2) :     0 :                   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'E1', 3) :     0 :                   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'E1', 4) :     0 :                   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'E1', 5) :     0 :                   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'E1', 6) :     0 :                   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'E1', 7) :     0 :                   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'E1', 8) :     0 :                   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'E1', 9) :     0 :                   0.0 :  None : False : False : NonNegativeReals
        ('D1', 'E1', 10) :     0 :                   0.0 :  None : False : False : NonNegativeReals
        ('D1', 'E1', 11) :     0 :                   0.0 :  None : False : False : NonNegativeReals
        ('D1', 'E1', 12) :     0 :                   0.0 :  None : False : False : NonNegativeReals
        ('D1', 'E1', 13) :     0 :                   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'F1', 0) :     0 : 8.881784197001252e-16 :  None : False : False : NonNegativeReals
         ('D1', 'F1', 1) :     0 :                   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'F1', 2) :     0 :                   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'F1', 3) :     0 :                   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'F1', 4) :     0 :                   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'F1', 5) :     0 :                   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'F1', 6) :     0 :                   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'F1', 7) :     0 :                   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'F1', 8) :     0 :                   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'F1', 9) :     0 :                   0.0 :  None : False : False : NonNegativeReals
        ('D1', 'F1', 10) :     0 :                   0.0 :  None : False : False : NonNegativeReals
        ('D1', 'F1', 11) :     0 :                   0.0 :  None : False : False : NonNegativeReals
        ('D1', 'F1', 12) :     0 :                   0.0 :  None : False : False : NonNegativeReals
        ('D1', 'F1', 13) :     0 :                   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'G1', 0) :     0 :                   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'G1', 1) :     0 :                   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'G1', 2) :     0 :                   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'G1', 3) :     0 :                   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'G1', 4) :     0 :                   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'G1', 5) :     0 :                   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'G1', 6) :     0 :                   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'G1', 7) :     0 :                   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'G1', 8) :     0 :                   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'G1', 9) :     0 :                   0.0 :  None : False : False : NonNegativeReals
        ('D1', 'G1', 10) :     0 :                   0.0 :  None : False : False : NonNegativeReals
        ('D1', 'G1', 11) :     0 :                   0.0 :  None : False : False : NonNegativeReals
        ('D1', 'G1', 12) :     0 :                   0.0 :  None : False : False : NonNegativeReals
        ('D1', 'G1', 13) :     0 :                   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'H1', 0) :     0 :                   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'H1', 1) :     0 :                   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'H1', 2) :     0 :                   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'H1', 3) :     0 :                   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'H1', 4) :     0 :                   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'H1', 5) :     0 :                   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'H1', 6) :     0 :                   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'H1', 7) :     0 :                   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'H1', 8) :     0 :                   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'H1', 9) :     0 :                   0.0 :  None : False : False : NonNegativeReals
        ('D1', 'H1', 10) :     0 :                   0.0 :  None : False : False : NonNegativeReals
        ('D1', 'H1', 11) :     0 :                   0.0 :  None : False : False : NonNegativeReals
        ('D1', 'H1', 12) :     0 :                   0.0 :  None : False : False : NonNegativeReals
        ('D1', 'H1', 13) :     0 :                   0.0 :  None : False : False : NonNegativeReals
    PenaltyShiftOffReq : Size=112, Index=SHIFTTYPES*NURSES*DAYS
        Key              : Lower : Value : Upper : Fixed : Stale : Domain
         ('D1', 'A1', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'A1', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'A1', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'A1', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'A1', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'A1', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'A1', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'A1', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'A1', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'A1', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D1', 'A1', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D1', 'A1', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D1', 'A1', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D1', 'A1', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'B1', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'B1', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'B1', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'B1', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'B1', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'B1', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'B1', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'B1', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'B1', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'B1', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D1', 'B1', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D1', 'B1', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D1', 'B1', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D1', 'B1', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'C1', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'C1', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'C1', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'C1', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'C1', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'C1', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'C1', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'C1', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'C1', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'C1', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D1', 'C1', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D1', 'C1', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D1', 'C1', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D1', 'C1', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'D1', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'D1', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'D1', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'D1', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'D1', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'D1', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'D1', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'D1', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'D1', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'D1', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D1', 'D1', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D1', 'D1', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D1', 'D1', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D1', 'D1', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'E1', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'E1', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'E1', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'E1', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'E1', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'E1', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'E1', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'E1', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'E1', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'E1', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D1', 'E1', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D1', 'E1', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D1', 'E1', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D1', 'E1', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'F1', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'F1', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'F1', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'F1', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'F1', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'F1', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'F1', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'F1', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'F1', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'F1', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D1', 'F1', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D1', 'F1', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D1', 'F1', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D1', 'F1', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'G1', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'G1', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'G1', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'G1', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'G1', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'G1', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'G1', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'G1', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'G1', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'G1', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D1', 'G1', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D1', 'G1', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D1', 'G1', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D1', 'G1', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'H1', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'H1', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'H1', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'H1', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'H1', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'H1', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'H1', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'H1', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'H1', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'H1', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D1', 'H1', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D1', 'H1', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D1', 'H1', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D1', 'H1', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
    UnderCover : Size=14, Index=SHIFTTYPES*DAYS
        Key        : Lower : Value : Upper : Fixed : Stale : Domain
         ('D1', 0) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('D1', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 2) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('D1', 3) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('D1', 4) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('D1', 5) :     0 :   2.0 :  None : False : False : NonNegativeReals
         ('D1', 6) :     0 :   2.0 :  None : False : False : NonNegativeReals
         ('D1', 7) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('D1', 8) :     0 :   1.0 :  None : False : False : NonNegativeReals
         ('D1', 9) :     0 :  -0.0 :  None : False : False : NonNegativeReals
        ('D1', 10) :     0 :  -0.0 :  None : False : False : NonNegativeReals
        ('D1', 11) :     0 :  -0.0 :  None : False : False : NonNegativeReals
        ('D1', 12) :     0 :   1.0 :  None : False : False : NonNegativeReals
        ('D1', 13) :     0 :  -0.0 :  None : False : False : NonNegativeReals
    OverCover : Size=14, Index=SHIFTTYPES*DAYS
        Key        : Lower : Value                 : Upper : Fixed : Stale : Domain
         ('D1', 0) :     0 :                  -0.0 :  None : False : False : NonNegativeReals
         ('D1', 1) :     0 :                   0.0 :  None : False : False : NonNegativeReals
         ('D1', 2) :     0 :                  -0.0 :  None : False : False : NonNegativeReals
         ('D1', 3) :     0 : 4.440892098500626e-16 :  None : False : False : NonNegativeReals
         ('D1', 4) :     0 :                  -0.0 :  None : False : False : NonNegativeReals
         ('D1', 5) :     0 :                  -0.0 :  None : False : False : NonNegativeReals
         ('D1', 6) :     0 :                  -0.0 :  None : False : False : NonNegativeReals
         ('D1', 7) :     0 :                  -0.0 :  None : False : False : NonNegativeReals
         ('D1', 8) :     0 :                   0.0 :  None : False : False : NonNegativeReals
         ('D1', 9) :     0 :                  -0.0 :  None : False : False : NonNegativeReals
        ('D1', 10) :     0 :                   0.0 :  None : False : False : NonNegativeReals
        ('D1', 11) :     0 :                  -0.0 :  None : False : False : NonNegativeReals
        ('D1', 12) :     0 :                  -0.0 :  None : False : False : NonNegativeReals
        ('D1', 13) :     0 :                  -0.0 :  None : False : False : NonNegativeReals
    PenaltyUnder : Size=14, Index=SHIFTTYPES*DAYS
        Key        : Lower : Value : Upper : Fixed : Stale : Domain
         ('D1', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 5) :     0 : 200.0 :  None : False : False : NonNegativeReals
         ('D1', 6) :     0 : 200.0 :  None : False : False : NonNegativeReals
         ('D1', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 8) :     0 : 100.0 :  None : False : False : NonNegativeReals
         ('D1', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D1', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D1', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D1', 12) :     0 : 100.0 :  None : False : False : NonNegativeReals
        ('D1', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
    PenaltyOver : Size=14, Index=SHIFTTYPES*DAYS
        Key        : Lower : Value                 : Upper : Fixed : Stale : Domain
         ('D1', 0) :     0 :                   0.0 :  None : False : False : NonNegativeReals
         ('D1', 1) :     0 :                   0.0 :  None : False : False : NonNegativeReals
         ('D1', 2) :     0 :                   0.0 :  None : False : False : NonNegativeReals
         ('D1', 3) :     0 : 4.440892098500626e-16 :  None : False : False : NonNegativeReals
         ('D1', 4) :     0 :                   0.0 :  None : False : False : NonNegativeReals
         ('D1', 5) :     0 :                   0.0 :  None : False : False : NonNegativeReals
         ('D1', 6) :     0 :                   0.0 :  None : False : False : NonNegativeReals
         ('D1', 7) :     0 :                   0.0 :  None : False : False : NonNegativeReals
         ('D1', 8) :     0 :                   0.0 :  None : False : False : NonNegativeReals
         ('D1', 9) :     0 :                   0.0 :  None : False : False : NonNegativeReals
        ('D1', 10) :     0 :                   0.0 :  None : False : False : NonNegativeReals
        ('D1', 11) :     0 :                   0.0 :  None : False : False : NonNegativeReals
        ('D1', 12) :     0 :                   0.0 :  None : False : False : NonNegativeReals
        ('D1', 13) :     0 :                   0.0 :  None : False : False : NonNegativeReals
    MinTotalMinsUnder : Size=8, Index=NURSES
        Key : Lower : Value : Upper : Fixed : Stale : Domain
         A1 :     0 :  -0.0 :  None : False : False : NonNegativeReals
         B1 :     0 :  -0.0 :  None : False : False : NonNegativeReals
         C1 :     0 :  -0.0 :  None : False : False : NonNegativeReals
         D1 :     0 :  -0.0 :  None : False : False : NonNegativeReals
         E1 :     0 :  -0.0 :  None : False : False : NonNegativeReals
         F1 :     0 :  -0.0 :  None : False : False : NonNegativeReals
         G1 :     0 :  -0.0 :  None : False : False : NonNegativeReals
         H1 :     0 :  -0.0 :  None : False : False : NonNegativeReals

  Objectives:
    objective : Size=1, Index=None, Active=True
        Key  : Active : Value
        None :   True : 602.0

  Constraints:
    constraint_one_shift_one_day : Size=112
        Key        : Lower : Body : Upper
         ('A1', 0) :   1.0 :  1.0 :   1.0
         ('A1', 1) :   1.0 :  1.0 :   1.0
         ('A1', 2) :   1.0 :  1.0 :   1.0
         ('A1', 3) :   1.0 :  1.0 :   1.0
         ('A1', 4) :   1.0 :  1.0 :   1.0
         ('A1', 5) :   1.0 :  1.0 :   1.0
         ('A1', 6) :   1.0 :  1.0 :   1.0
         ('A1', 7) :   1.0 :  1.0 :   1.0
         ('A1', 8) :   1.0 :  1.0 :   1.0
         ('A1', 9) :   1.0 :  1.0 :   1.0
        ('A1', 10) :   1.0 :  1.0 :   1.0
        ('A1', 11) :   1.0 :  1.0 :   1.0
        ('A1', 12) :   1.0 :  1.0 :   1.0
        ('A1', 13) :   1.0 :  1.0 :   1.0
         ('B1', 0) :   1.0 :  1.0 :   1.0
         ('B1', 1) :   1.0 :  1.0 :   1.0
         ('B1', 2) :   1.0 :  1.0 :   1.0
         ('B1', 3) :   1.0 :  1.0 :   1.0
         ('B1', 4) :   1.0 :  1.0 :   1.0
         ('B1', 5) :   1.0 :  1.0 :   1.0
         ('B1', 6) :   1.0 :  1.0 :   1.0
         ('B1', 7) :   1.0 :  1.0 :   1.0
         ('B1', 8) :   1.0 :  1.0 :   1.0
         ('B1', 9) :   1.0 :  1.0 :   1.0
        ('B1', 10) :   1.0 :  1.0 :   1.0
        ('B1', 11) :   1.0 :  1.0 :   1.0
        ('B1', 12) :   1.0 :  1.0 :   1.0
        ('B1', 13) :   1.0 :  1.0 :   1.0
         ('C1', 0) :   1.0 :  1.0 :   1.0
         ('C1', 1) :   1.0 :  1.0 :   1.0
         ('C1', 2) :   1.0 :  1.0 :   1.0
         ('C1', 3) :   1.0 :  1.0 :   1.0
         ('C1', 4) :   1.0 :  1.0 :   1.0
         ('C1', 5) :   1.0 :  1.0 :   1.0
         ('C1', 6) :   1.0 :  1.0 :   1.0
         ('C1', 7) :   1.0 :  1.0 :   1.0
         ('C1', 8) :   1.0 :  1.0 :   1.0
         ('C1', 9) :   1.0 :  1.0 :   1.0
        ('C1', 10) :   1.0 :  1.0 :   1.0
        ('C1', 11) :   1.0 :  1.0 :   1.0
        ('C1', 12) :   1.0 :  1.0 :   1.0
        ('C1', 13) :   1.0 :  1.0 :   1.0
         ('D1', 0) :   1.0 :  1.0 :   1.0
         ('D1', 1) :   1.0 :  1.0 :   1.0
         ('D1', 2) :   1.0 :  1.0 :   1.0
         ('D1', 3) :   1.0 :  1.0 :   1.0
         ('D1', 4) :   1.0 :  1.0 :   1.0
         ('D1', 5) :   1.0 :  1.0 :   1.0
         ('D1', 6) :   1.0 :  1.0 :   1.0
         ('D1', 7) :   1.0 :  1.0 :   1.0
         ('D1', 8) :   1.0 :  1.0 :   1.0
         ('D1', 9) :   1.0 :  1.0 :   1.0
        ('D1', 10) :   1.0 :  1.0 :   1.0
        ('D1', 11) :   1.0 :  1.0 :   1.0
        ('D1', 12) :   1.0 :  1.0 :   1.0
        ('D1', 13) :   1.0 :  1.0 :   1.0
         ('E1', 0) :   1.0 :  1.0 :   1.0
         ('E1', 1) :   1.0 :  1.0 :   1.0
         ('E1', 2) :   1.0 :  1.0 :   1.0
         ('E1', 3) :   1.0 :  1.0 :   1.0
         ('E1', 4) :   1.0 :  1.0 :   1.0
         ('E1', 5) :   1.0 :  1.0 :   1.0
         ('E1', 6) :   1.0 :  1.0 :   1.0
         ('E1', 7) :   1.0 :  1.0 :   1.0
         ('E1', 8) :   1.0 :  1.0 :   1.0
         ('E1', 9) :   1.0 :  1.0 :   1.0
        ('E1', 10) :   1.0 :  1.0 :   1.0
        ('E1', 11) :   1.0 :  1.0 :   1.0
        ('E1', 12) :   1.0 :  1.0 :   1.0
        ('E1', 13) :   1.0 :  1.0 :   1.0
         ('F1', 0) :   1.0 :  1.0 :   1.0
         ('F1', 1) :   1.0 :  1.0 :   1.0
         ('F1', 2) :   1.0 :  1.0 :   1.0
         ('F1', 3) :   1.0 :  1.0 :   1.0
         ('F1', 4) :   1.0 :  1.0 :   1.0
         ('F1', 5) :   1.0 :  1.0 :   1.0
         ('F1', 6) :   1.0 :  1.0 :   1.0
         ('F1', 7) :   1.0 :  1.0 :   1.0
         ('F1', 8) :   1.0 :  1.0 :   1.0
         ('F1', 9) :   1.0 :  1.0 :   1.0
        ('F1', 10) :   1.0 :  1.0 :   1.0
        ('F1', 11) :   1.0 :  1.0 :   1.0
        ('F1', 12) :   1.0 :  1.0 :   1.0
        ('F1', 13) :   1.0 :  1.0 :   1.0
         ('G1', 0) :   1.0 :  1.0 :   1.0
         ('G1', 1) :   1.0 :  1.0 :   1.0
         ('G1', 2) :   1.0 :  1.0 :   1.0
         ('G1', 3) :   1.0 :  1.0 :   1.0
         ('G1', 4) :   1.0 :  1.0 :   1.0
         ('G1', 5) :   1.0 :  1.0 :   1.0
         ('G1', 6) :   1.0 :  1.0 :   1.0
         ('G1', 7) :   1.0 :  1.0 :   1.0
         ('G1', 8) :   1.0 :  1.0 :   1.0
         ('G1', 9) :   1.0 :  1.0 :   1.0
        ('G1', 10) :   1.0 :  1.0 :   1.0
        ('G1', 11) :   1.0 :  1.0 :   1.0
        ('G1', 12) :   1.0 :  1.0 :   1.0
        ('G1', 13) :   1.0 :  1.0 :   1.0
         ('H1', 0) :   1.0 :  1.0 :   1.0
         ('H1', 1) :   1.0 :  1.0 :   1.0
         ('H1', 2) :   1.0 :  1.0 :   1.0
         ('H1', 3) :   1.0 :  1.0 :   1.0
         ('H1', 4) :   1.0 :  1.0 :   1.0
         ('H1', 5) :   1.0 :  1.0 :   1.0
         ('H1', 6) :   1.0 :  1.0 :   1.0
         ('H1', 7) :   1.0 :  1.0 :   1.0
         ('H1', 8) :   1.0 :  1.0 :   1.0
         ('H1', 9) :   1.0 :  1.0 :   1.0
        ('H1', 10) :   1.0 :  1.0 :   1.0
        ('H1', 11) :   1.0 :  1.0 :   1.0
        ('H1', 12) :   1.0 :  1.0 :   1.0
        ('H1', 13) :   1.0 :  1.0 :   1.0
    constraint_shift_rotation_ub : Size=0
        Key : Lower : Body : Upper
    constraint_shift_rotation : Size=104
        Key              : Lower : Body                   : Upper
         ('D1', 'A1', 0) :  None :                    0.0 :   1.0
         ('D1', 'A1', 1) :  None :                    1.0 :   1.0
         ('D1', 'A1', 2) :  None :                    1.0 :   1.0
         ('D1', 'A1', 3) :  None :                    1.0 :   1.0
         ('D1', 'A1', 4) :  None :                    1.0 :   1.0
         ('D1', 'A1', 5) :  None :                    0.0 :   1.0
         ('D1', 'A1', 6) :  None :                    0.0 :   1.0
         ('D1', 'A1', 7) :  None :                    1.0 :   1.0
         ('D1', 'A1', 8) :  None :                    1.0 :   1.0
         ('D1', 'A1', 9) :  None :                    0.0 :   1.0
        ('D1', 'A1', 10) :  None :                    0.0 :   1.0
        ('D1', 'A1', 11) :  None :                    1.0 :   1.0
        ('D1', 'A1', 12) :  None :                    1.0 :   1.0
         ('D1', 'B1', 0) :  None :                    1.0 :   1.0
         ('D1', 'B1', 1) :  None :                    1.0 :   1.0
         ('D1', 'B1', 2) :  None :                    1.0 :   1.0
         ('D1', 'B1', 3) :  None :                    1.0 :   1.0
         ('D1', 'B1', 4) :  None :                    1.0 :   1.0
         ('D1', 'B1', 5) :  None :                    0.0 :   1.0
         ('D1', 'B1', 6) :  None :                    0.0 :   1.0
         ('D1', 'B1', 7) :  None :                    1.0 :   1.0
         ('D1', 'B1', 8) :  None :                    1.0 :   1.0
         ('D1', 'B1', 9) :  None :                    0.0 :   1.0
        ('D1', 'B1', 10) :  None :                    0.0 :   1.0
        ('D1', 'B1', 11) :  None :                    1.0 :   1.0
        ('D1', 'B1', 12) :  None :                    1.0 :   1.0
         ('D1', 'C1', 0) :  None :                    1.0 :   1.0
         ('D1', 'C1', 1) :  None :                    1.0 :   1.0
         ('D1', 'C1', 2) :  None :                    1.0 :   1.0
         ('D1', 'C1', 3) :  None :                    0.0 :   1.0
         ('D1', 'C1', 4) :  None : -2.220446049250313e-16 :   1.0
         ('D1', 'C1', 5) :  None :                    1.0 :   1.0
         ('D1', 'C1', 6) :  None :                    1.0 :   1.0
         ('D1', 'C1', 7) :  None :                    0.0 :   1.0
         ('D1', 'C1', 8) :  None :                    0.0 :   1.0
         ('D1', 'C1', 9) :  None :                    1.0 :   1.0
        ('D1', 'C1', 10) :  None :                    1.0 :   1.0
        ('D1', 'C1', 11) :  None :                    1.0 :   1.0
        ('D1', 'C1', 12) :  None :                    0.0 :   1.0
         ('D1', 'D1', 0) :  None :                    1.0 :   1.0
         ('D1', 'D1', 1) :  None :                    1.0 :   1.0
         ('D1', 'D1', 2) :  None :                    0.0 :   1.0
         ('D1', 'D1', 3) :  None :                    0.0 :   1.0
         ('D1', 'D1', 4) :  None :                    0.0 :   1.0
         ('D1', 'D1', 5) :  None :                    1.0 :   1.0
         ('D1', 'D1', 6) :  None :                    1.0 :   1.0
         ('D1', 'D1', 7) :  None :                    1.0 :   1.0
         ('D1', 'D1', 8) :  None :                    1.0 :   1.0
         ('D1', 'D1', 9) :  None :                    1.0 :   1.0
        ('D1', 'D1', 10) :  None :                    0.0 :   1.0
        ('D1', 'D1', 11) :  None :                    0.0 :   1.0
        ('D1', 'D1', 12) :  None :                    0.0 :   1.0
         ('D1', 'E1', 0) :  None :                    1.0 :   1.0
         ('D1', 'E1', 1) :  None :                    1.0 :   1.0
         ('D1', 'E1', 2) :  None :                    0.0 :   1.0
         ('D1', 'E1', 3) :  None :                    0.0 :   1.0
         ('D1', 'E1', 4) :  None :                    1.0 :   1.0
         ('D1', 'E1', 5) :  None :                    1.0 :   1.0
         ('D1', 'E1', 6) :  None :                    1.0 :   1.0
         ('D1', 'E1', 7) :  None :                    1.0 :   1.0
         ('D1', 'E1', 8) :  None :                    1.0 :   1.0
         ('D1', 'E1', 9) :  None :                    0.0 :   1.0
        ('D1', 'E1', 10) :  None :                    0.0 :   1.0
        ('D1', 'E1', 11) :  None :                    0.0 :   1.0
        ('D1', 'E1', 12) :  None :                    0.0 :   1.0
         ('D1', 'F1', 0) :  None :     0.9999999999999996 :   1.0
         ('D1', 'F1', 1) :  None :                    1.0 :   1.0
         ('D1', 'F1', 2) :  None :                    1.0 :   1.0
         ('D1', 'F1', 3) :  None :  4.440892098500626e-16 :   1.0
         ('D1', 'F1', 4) :  None :  4.440892098500626e-16 :   1.0
         ('D1', 'F1', 5) :  None :                    0.0 :   1.0
         ('D1', 'F1', 6) :  None :                    0.0 :   1.0
         ('D1', 'F1', 7) :  None :                    1.0 :   1.0
         ('D1', 'F1', 8) :  None :                    1.0 :   1.0
         ('D1', 'F1', 9) :  None :                    1.0 :   1.0
        ('D1', 'F1', 10) :  None :                    0.0 :   1.0
        ('D1', 'F1', 11) :  None :                    0.0 :   1.0
        ('D1', 'F1', 12) :  None :                    1.0 :   1.0
         ('D1', 'G1', 0) :  None :                   -0.0 :   1.0
         ('D1', 'G1', 1) :  None :                    0.0 :   1.0
         ('D1', 'G1', 2) :  None :                    1.0 :   1.0
         ('D1', 'G1', 3) :  None :                    1.0 :   1.0
         ('D1', 'G1', 4) :  None :                    1.0 :   1.0
         ('D1', 'G1', 5) :  None :                    0.0 :   1.0
         ('D1', 'G1', 6) :  None :                    0.0 :   1.0
         ('D1', 'G1', 7) :  None :                    1.0 :   1.0
         ('D1', 'G1', 8) :  None :                    1.0 :   1.0
         ('D1', 'G1', 9) :  None :                    0.0 :   1.0
        ('D1', 'G1', 10) :  None :                    0.0 :   1.0
        ('D1', 'G1', 11) :  None :                    1.0 :   1.0
        ('D1', 'G1', 12) :  None :                    1.0 :   1.0
         ('D1', 'H1', 0) :  None :                    0.0 :   1.0
         ('D1', 'H1', 1) :  None :                    1.0 :   1.0
         ('D1', 'H1', 2) :  None :                    1.0 :   1.0
         ('D1', 'H1', 3) :  None :                    1.0 :   1.0
         ('D1', 'H1', 4) :  None :                    1.0 :   1.0
         ('D1', 'H1', 5) :  None :                    0.0 :   1.0
         ('D1', 'H1', 6) :  None :                    0.0 :   1.0
         ('D1', 'H1', 7) :  None :                    0.0 :   1.0
         ('D1', 'H1', 8) :  None :                    0.0 :   1.0
         ('D1', 'H1', 9) :  None :                    1.0 :   1.0
        ('D1', 'H1', 10) :  None :                    1.0 :   1.0
        ('D1', 'H1', 11) :  None :                    1.0 :   1.0
        ('D1', 'H1', 12) :  None :                    1.0 :   1.0
    constraint_max_nr_shifts : Size=8
        Key          : Lower : Body : Upper
        ('A1', 'D1') :  None :  9.0 :  14.0
        ('B1', 'D1') :  None :  9.0 :  14.0
        ('C1', 'D1') :  None :  8.0 :  14.0
        ('D1', 'D1') :  None :  7.0 :  14.0
        ('E1', 'D1') :  None :  7.0 :  14.0
        ('F1', 'D1') :  None :  8.0 :  14.0
        ('G1', 'D1') :  None :  8.0 :  14.0
        ('H1', 'D1') :  None :  9.0 :  14.0
    constraint_max_total_minutes : Size=8
        Key : Lower : Body   : Upper
         A1 :  None : 4320.0 : 4320.0
         B1 :  None : 4320.0 : 4320.0
         C1 :  None : 3840.0 : 4320.0
         D1 :  None : 3360.0 : 4320.0
         E1 :  None : 3360.0 : 4320.0
         F1 :  None : 3840.0 : 4320.0
         G1 :  None : 3840.0 : 4320.0
         H1 :  None : 4320.0 : 4320.0
    constraint_min_total_minutes : Size=8
        Key : Lower  : Body   : Upper
         A1 : 3360.0 : 4320.0 :  None
         B1 : 3360.0 : 4320.0 :  None
         C1 : 3360.0 : 3840.0 :  None
         D1 : 3360.0 : 3360.0 :  None
         E1 : 3360.0 : 3360.0 :  None
         F1 : 3360.0 : 3840.0 :  None
         G1 : 3360.0 : 3840.0 :  None
         H1 : 3360.0 : 4320.0 :  None
    constraint_max_cons_shifts_backward : Size=72
        Key        : Lower : Body               : Upper
         ('A1', 5) :   1.0 :                2.0 :  None
         ('A1', 6) :   1.0 :                2.0 :  None
         ('A1', 7) :   1.0 :                2.0 :  None
         ('A1', 8) :   1.0 :                2.0 :  None
         ('A1', 9) :   1.0 :                3.0 :  None
        ('A1', 10) :   1.0 :                4.0 :  None
        ('A1', 11) :   1.0 :                3.0 :  None
        ('A1', 12) :   1.0 :                2.0 :  None
        ('A1', 13) :   1.0 :                2.0 :  None
         ('B1', 5) :   1.0 :                1.0 :  None
         ('B1', 6) :   1.0 :                2.0 :  None
         ('B1', 7) :   1.0 :                2.0 :  None
         ('B1', 8) :   1.0 :                2.0 :  None
         ('B1', 9) :   1.0 :                3.0 :  None
        ('B1', 10) :   1.0 :                4.0 :  None
        ('B1', 11) :   1.0 :                3.0 :  None
        ('B1', 12) :   1.0 :                2.0 :  None
        ('B1', 13) :   1.0 :                3.0 :  None
         ('C1', 5) :   1.0 :                2.0 :  None
         ('C1', 6) :   1.0 :                2.0 :  None
         ('C1', 7) :   1.0 :                3.0 :  None
         ('C1', 8) :   1.0 :                4.0 :  None
         ('C1', 9) :   1.0 :                3.0 :  None
        ('C1', 10) :   1.0 :                2.0 :  None
        ('C1', 11) :   1.0 :                2.0 :  None
        ('C1', 12) :   1.0 :                3.0 :  None
        ('C1', 13) :   1.0 :                3.0 :  None
         ('D1', 5) :   1.0 :                3.0 :  None
         ('D1', 6) :   1.0 :                3.0 :  None
         ('D1', 7) :   1.0 :                3.0 :  None
         ('D1', 8) :   1.0 :                2.0 :  None
         ('D1', 9) :   1.0 :                1.0 :  None
        ('D1', 10) :   1.0 :                1.0 :  None
        ('D1', 11) :   1.0 :                2.0 :  None
        ('D1', 12) :   1.0 :                3.0 :  None
        ('D1', 13) :   1.0 :                4.0 :  None
         ('E1', 5) :   1.0 :                2.0 :  None
         ('E1', 6) :   1.0 :                2.0 :  None
         ('E1', 7) :   1.0 :                2.0 :  None
         ('E1', 8) :   1.0 :                1.0 :  None
         ('E1', 9) :   1.0 :                1.0 :  None
        ('E1', 10) :   1.0 :                2.0 :  None
        ('E1', 11) :   1.0 :                3.0 :  None
        ('E1', 12) :   1.0 :                4.0 :  None
        ('E1', 13) :   1.0 :                5.0 :  None
         ('F1', 5) :   1.0 : 2.9999999999999996 :  None
         ('F1', 6) :   1.0 :  3.999999999999999 :  None
         ('F1', 7) :   1.0 :  3.999999999999999 :  None
         ('F1', 8) :   1.0 :  3.999999999999999 :  None
         ('F1', 9) :   1.0 : 2.9999999999999996 :  None
        ('F1', 10) :   1.0 :                3.0 :  None
        ('F1', 11) :   1.0 :                3.0 :  None
        ('F1', 12) :   1.0 :                2.0 :  None
        ('F1', 13) :   1.0 :                2.0 :  None
         ('G1', 5) :   1.0 :                3.0 :  None
         ('G1', 6) :   1.0 :                3.0 :  None
         ('G1', 7) :   1.0 :                2.0 :  None
         ('G1', 8) :   1.0 :                2.0 :  None
         ('G1', 9) :   1.0 :                3.0 :  None
        ('G1', 10) :   1.0 :                4.0 :  None
        ('G1', 11) :   1.0 :                3.0 :  None
        ('G1', 12) :   1.0 :                2.0 :  None
        ('G1', 13) :   1.0 :                2.0 :  None
         ('H1', 5) :   1.0 :                2.0 :  None
         ('H1', 6) :   1.0 :                2.0 :  None
         ('H1', 7) :   1.0 :                3.0 :  None
         ('H1', 8) :   1.0 :                4.0 :  None
         ('H1', 9) :   1.0 :                4.0 :  None
        ('H1', 10) :   1.0 :                4.0 :  None
        ('H1', 11) :   1.0 :                3.0 :  None
        ('H1', 12) :   1.0 :                2.0 :  None
        ('H1', 13) :   1.0 :                1.0 :  None
    constraint_max_cons_shifts_forward : Size=0
        Key : Lower : Body : Upper
    constraint_max_cons_shifts_in_between : Size=0
        Key : Lower : Body : Upper
    constraint_is_end_of_work_block : Size=112
        Key        : Lower : Body                   : Upper
         ('A1', 0) :  None :                   -2.0 :   0.0
         ('A1', 1) :  None :                    0.0 :   0.0
         ('A1', 2) :  None :                   -1.0 :   0.0
         ('A1', 3) :  None :                   -1.0 :   0.0
         ('A1', 4) :  None :                    0.0 :   0.0
         ('A1', 5) :  None :                   -1.0 :   0.0
         ('A1', 6) :  None :                   -1.0 :   0.0
         ('A1', 7) :  None :                    0.0 :   0.0
         ('A1', 8) :  None :                    0.0 :   0.0
         ('A1', 9) :  None :                   -1.0 :   0.0
        ('A1', 10) :  None :                   -1.0 :   0.0
        ('A1', 11) :  None :                    0.0 :   0.0
        ('A1', 12) :  None :                   -1.0 :   0.0
        ('A1', 13) :   0.0 :                    0.0 :   0.0
         ('B1', 0) :  None :                   -1.0 :   0.0
         ('B1', 1) :  None :                   -1.0 :   0.0
         ('B1', 2) :  None :                   -1.0 :   0.0
         ('B1', 3) :  None :                   -1.0 :   0.0
         ('B1', 4) :  None :                    0.0 :   0.0
         ('B1', 5) :  None :                   -1.0 :   0.0
         ('B1', 6) :  None :                   -1.0 :   0.0
         ('B1', 7) :  None :                    0.0 :   0.0
         ('B1', 8) :  None :                    0.0 :   0.0
         ('B1', 9) :  None :                   -1.0 :   0.0
        ('B1', 10) :  None :                   -1.0 :   0.0
        ('B1', 11) :  None :                    0.0 :   0.0
        ('B1', 12) :  None :                    0.0 :   0.0
        ('B1', 13) :   0.0 :                    0.0 :   0.0
         ('C1', 0) :  None :                   -1.0 :   0.0
         ('C1', 1) :  None :                   -1.0 :   0.0
         ('C1', 2) :  None :                    0.0 :   0.0
         ('C1', 3) :  None :    -0.9999999999999998 :   0.0
         ('C1', 4) :  None :    -1.0000000000000002 :   0.0
         ('C1', 5) :  None :  2.220446049250313e-16 :   0.0
         ('C1', 6) :  None :                    0.0 :   0.0
         ('C1', 7) :  None :                   -1.0 :   0.0
         ('C1', 8) :  None :                   -1.0 :   0.0
         ('C1', 9) :  None :                    0.0 :   0.0
        ('C1', 10) :  None :                   -1.0 :   0.0
        ('C1', 11) :  None :                    0.0 :   0.0
        ('C1', 12) :  None :                   -1.0 :   0.0
        ('C1', 13) :   0.0 :                    0.0 :   0.0
         ('D1', 0) :  None :                   -1.0 :   0.0
         ('D1', 1) :  None :                    0.0 :   0.0
         ('D1', 2) :  None :                   -1.0 :   0.0
         ('D1', 3) :  None :                    0.0 :   0.0
         ('D1', 4) :  None :                   -1.0 :   0.0
         ('D1', 5) :  None :                    0.0 :   0.0
         ('D1', 6) :  None :                   -1.0 :   0.0
         ('D1', 7) :  None :                   -1.0 :   0.0
         ('D1', 8) :  None :                   -1.0 :   0.0
         ('D1', 9) :  None :                    0.0 :   0.0
        ('D1', 10) :  None :                   -1.0 :   0.0
        ('D1', 11) :  None :                    0.0 :   0.0
        ('D1', 12) :  None :                    0.0 :   0.0
        ('D1', 13) :   0.0 :                    0.0 :   0.0
         ('E1', 0) :  None :                   -1.0 :   0.0
         ('E1', 1) :  None :                    0.0 :   0.0
         ('E1', 2) :  None :                   -1.0 :   0.0
         ('E1', 3) :  None :                   -1.0 :   0.0
         ('E1', 4) :  None :                    0.0 :   0.0
         ('E1', 5) :  None :                   -1.0 :   0.0
         ('E1', 6) :  None :                   -1.0 :   0.0
         ('E1', 7) :  None :                   -1.0 :   0.0
         ('E1', 8) :  None :                    0.0 :   0.0
         ('E1', 9) :  None :                   -1.0 :   0.0
        ('E1', 10) :  None :                    0.0 :   0.0
        ('E1', 11) :  None :                    0.0 :   0.0
        ('E1', 12) :  None :                    0.0 :   0.0
        ('E1', 13) :   0.0 :                    0.0 :   0.0
         ('F1', 0) :  None :    -1.0000000000000004 :   0.0
         ('F1', 1) :  None :    -0.9999999999999996 :   0.0
         ('F1', 2) :  None : -4.440892098500626e-16 :   0.0
         ('F1', 3) :  None :                   -1.0 :   0.0
         ('F1', 4) :  None :                    0.0 :   0.0
         ('F1', 5) :  None : -4.440892098500626e-16 :   0.0
         ('F1', 6) :  None :                   -1.0 :   0.0
         ('F1', 7) :  None :                    0.0 :   0.0
         ('F1', 8) :  None :                   -1.0 :   0.0
         ('F1', 9) :  None :                    0.0 :   0.0
        ('F1', 10) :  None :                   -1.0 :   0.0
        ('F1', 11) :  None :                   -1.0 :   0.0
        ('F1', 12) :  None :                    0.0 :   0.0
        ('F1', 13) :   0.0 :                    0.0 :   0.0
         ('G1', 0) :  None :                   -1.0 :   0.0
         ('G1', 1) :  None :                   -1.0 :   0.0
         ('G1', 2) :  None :                    0.0 :   0.0
         ('G1', 3) :  None :                   -1.0 :   0.0
         ('G1', 4) :  None :                    0.0 :   0.0
         ('G1', 5) :  None :                   -1.0 :   0.0
         ('G1', 6) :  None :                   -1.0 :   0.0
         ('G1', 7) :  None :                    0.0 :   0.0
         ('G1', 8) :  None :                    0.0 :   0.0
         ('G1', 9) :  None :                   -1.0 :   0.0
        ('G1', 10) :  None :                   -1.0 :   0.0
        ('G1', 11) :  None :                    0.0 :   0.0
        ('G1', 12) :  None :                   -1.0 :   0.0
        ('G1', 13) :   0.0 :                    0.0 :   0.0
         ('H1', 0) :  None :                   -2.0 :   0.0
         ('H1', 1) :  None :                    0.0 :   0.0
         ('H1', 2) :  None :                   -1.0 :   0.0
         ('H1', 3) :  None :                   -1.0 :   0.0
         ('H1', 4) :  None :                    0.0 :   0.0
         ('H1', 5) :  None :                   -1.0 :   0.0
         ('H1', 6) :  None :                    0.0 :   0.0
         ('H1', 7) :  None :                    0.0 :   0.0
         ('H1', 8) :  None :                   -1.0 :   0.0
         ('H1', 9) :  None :                    0.0 :   0.0
        ('H1', 10) :  None :                   -1.0 :   0.0
        ('H1', 11) :  None :                   -1.0 :   0.0
        ('H1', 12) :  None :                   -1.0 :   0.0
        ('H1', 13) :   0.0 :                    0.0 :   0.0
    constraint_min_cons_shift_inscope : Size=112
        Key        : Lower : Body : Upper
         ('A1', 0) :  None :  0.0 :   0.0
         ('A1', 1) :  None :  1.0 :   1.0
         ('A1', 2) :  None :  1.0 :   1.0
         ('A1', 3) :  None :  1.0 :   1.0
         ('A1', 4) :  None :  1.0 :   1.0
         ('A1', 5) :  None :  1.0 :   1.0
         ('A1', 6) :  None :  1.0 :   1.0
         ('A1', 7) :  None :  1.0 :   1.0
         ('A1', 8) :  None :  1.0 :   1.0
         ('A1', 9) :  None :  1.0 :   1.0
        ('A1', 10) :  None :  1.0 :   1.0
        ('A1', 11) :  None :  1.0 :   1.0
        ('A1', 12) :  None :  1.0 :   1.0
        ('A1', 13) :  None :  0.0 :   1.0
         ('B1', 0) :  None :  0.0 :   0.0
         ('B1', 1) :  None :  1.0 :   1.0
         ('B1', 2) :  None :  1.0 :   1.0
         ('B1', 3) :  None :  1.0 :   1.0
         ('B1', 4) :  None :  1.0 :   1.0
         ('B1', 5) :  None :  1.0 :   1.0
         ('B1', 6) :  None :  1.0 :   1.0
         ('B1', 7) :  None :  1.0 :   1.0
         ('B1', 8) :  None :  1.0 :   1.0
         ('B1', 9) :  None :  1.0 :   1.0
        ('B1', 10) :  None :  1.0 :   1.0
        ('B1', 11) :  None :  1.0 :   1.0
        ('B1', 12) :  None :  1.0 :   1.0
        ('B1', 13) :  None :  0.0 :   1.0
         ('C1', 0) :  None :  0.0 :   0.0
         ('C1', 1) :  None :  1.0 :   1.0
         ('C1', 2) :  None :  1.0 :   1.0
         ('C1', 3) :  None :  1.0 :   1.0
         ('C1', 4) :  None :  1.0 :   1.0
         ('C1', 5) :  None :  1.0 :   1.0
         ('C1', 6) :  None :  1.0 :   1.0
         ('C1', 7) :  None :  1.0 :   1.0
         ('C1', 8) :  None :  1.0 :   1.0
         ('C1', 9) :  None :  1.0 :   1.0
        ('C1', 10) :  None :  1.0 :   1.0
        ('C1', 11) :  None :  1.0 :   1.0
        ('C1', 12) :  None :  1.0 :   1.0
        ('C1', 13) :  None :  1.0 :   1.0
         ('D1', 0) :  None :  0.0 :   0.0
         ('D1', 1) :  None :  1.0 :   1.0
         ('D1', 2) :  None :  1.0 :   1.0
         ('D1', 3) :  None :  1.0 :   1.0
         ('D1', 4) :  None :  1.0 :   1.0
         ('D1', 5) :  None :  1.0 :   1.0
         ('D1', 6) :  None :  1.0 :   1.0
         ('D1', 7) :  None :  1.0 :   1.0
         ('D1', 8) :  None :  1.0 :   1.0
         ('D1', 9) :  None :  1.0 :   1.0
        ('D1', 10) :  None :  1.0 :   1.0
        ('D1', 11) :  None :  1.0 :   1.0
        ('D1', 12) :  None :  1.0 :   1.0
        ('D1', 13) :  None :  1.0 :   1.0
         ('E1', 0) :  None :  0.0 :   0.0
         ('E1', 1) :  None :  1.0 :   1.0
         ('E1', 2) :  None :  1.0 :   1.0
         ('E1', 3) :  None :  1.0 :   1.0
         ('E1', 4) :  None :  1.0 :   1.0
         ('E1', 5) :  None :  1.0 :   1.0
         ('E1', 6) :  None :  1.0 :   1.0
         ('E1', 7) :  None :  1.0 :   1.0
         ('E1', 8) :  None :  1.0 :   1.0
         ('E1', 9) :  None :  1.0 :   1.0
        ('E1', 10) :  None :  1.0 :   1.0
        ('E1', 11) :  None :  1.0 :   1.0
        ('E1', 12) :  None :  1.0 :   1.0
        ('E1', 13) :  None :  1.0 :   1.0
         ('F1', 0) :  None :  0.0 :   0.0
         ('F1', 1) :  None :  1.0 :   1.0
         ('F1', 2) :  None :  1.0 :   1.0
         ('F1', 3) :  None :  1.0 :   1.0
         ('F1', 4) :  None :  1.0 :   1.0
         ('F1', 5) :  None :  1.0 :   1.0
         ('F1', 6) :  None :  1.0 :   1.0
         ('F1', 7) :  None :  1.0 :   1.0
         ('F1', 8) :  None :  1.0 :   1.0
         ('F1', 9) :  None :  1.0 :   1.0
        ('F1', 10) :  None :  1.0 :   1.0
        ('F1', 11) :  None :  1.0 :   1.0
        ('F1', 12) :  None :  1.0 :   1.0
        ('F1', 13) :  None :  0.0 :   1.0
         ('G1', 0) :  None :  0.0 :   0.0
         ('G1', 1) :  None :  1.0 :   1.0
         ('G1', 2) :  None :  1.0 :   1.0
         ('G1', 3) :  None :  1.0 :   1.0
         ('G1', 4) :  None :  1.0 :   1.0
         ('G1', 5) :  None :  1.0 :   1.0
         ('G1', 6) :  None :  1.0 :   1.0
         ('G1', 7) :  None :  1.0 :   1.0
         ('G1', 8) :  None :  1.0 :   1.0
         ('G1', 9) :  None :  1.0 :   1.0
        ('G1', 10) :  None :  1.0 :   1.0
        ('G1', 11) :  None :  1.0 :   1.0
        ('G1', 12) :  None :  1.0 :   1.0
        ('G1', 13) :  None :  0.0 :   1.0
         ('H1', 0) :  None :  0.0 :   0.0
         ('H1', 1) :  None :  1.0 :   1.0
         ('H1', 2) :  None :  1.0 :   1.0
         ('H1', 3) :  None :  1.0 :   1.0
         ('H1', 4) :  None :  1.0 :   1.0
         ('H1', 5) :  None :  1.0 :   1.0
         ('H1', 6) :  None :  1.0 :   1.0
         ('H1', 7) :  None :  1.0 :   1.0
         ('H1', 8) :  None :  1.0 :   1.0
         ('H1', 9) :  None :  1.0 :   1.0
        ('H1', 10) :  None :  1.0 :   1.0
        ('H1', 11) :  None :  1.0 :   1.0
        ('H1', 12) :  None :  1.0 :   1.0
        ('H1', 13) :  None :  0.0 :   1.0
    constraint_min_cons_shift_backward : Size=0
        Key : Lower : Body : Upper
    constraint_min_cons_shift_forward : Size=0
        Key : Lower : Body : Upper
    constraint_is_end_of_rest_block : Size=112
        Key        : Lower : Body                   : Upper
         ('A1', 0) :  None :                    0.0 :   0.0
         ('A1', 1) :  None :                   -1.0 :   0.0
         ('A1', 2) :  None :                    0.0 :   0.0
         ('A1', 3) :  None :                    0.0 :   0.0
         ('A1', 4) :  None :                   -1.0 :   0.0
         ('A1', 5) :  None :                    0.0 :   0.0
         ('A1', 6) :  None :                    0.0 :   0.0
         ('A1', 7) :  None :                   -1.0 :   0.0
         ('A1', 8) :  None :                   -1.0 :   0.0
         ('A1', 9) :  None :                    0.0 :   0.0
        ('A1', 10) :  None :                    0.0 :   0.0
        ('A1', 11) :  None :                   -1.0 :   0.0
        ('A1', 12) :  None :                    0.0 :   0.0
        ('A1', 13) :   0.0 :                    0.0 :   0.0
         ('B1', 0) :  None :                   -1.0 :   0.0
         ('B1', 1) :  None :                    0.0 :   0.0
         ('B1', 2) :  None :                    0.0 :   0.0
         ('B1', 3) :  None :                    0.0 :   0.0
         ('B1', 4) :  None :                   -1.0 :   0.0
         ('B1', 5) :  None :                    0.0 :   0.0
         ('B1', 6) :  None :                    0.0 :   0.0
         ('B1', 7) :  None :                   -1.0 :   0.0
         ('B1', 8) :  None :                   -1.0 :   0.0
         ('B1', 9) :  None :                    0.0 :   0.0
        ('B1', 10) :  None :                    0.0 :   0.0
        ('B1', 11) :  None :                   -1.0 :   0.0
        ('B1', 12) :  None :                   -1.0 :   0.0
        ('B1', 13) :   0.0 :                    0.0 :   0.0
         ('C1', 0) :  None :                   -1.0 :   0.0
         ('C1', 1) :  None :                    0.0 :   0.0
         ('C1', 2) :  None :                   -1.0 :   0.0
         ('C1', 3) :  None : -2.220446049250313e-16 :   0.0
         ('C1', 4) :  None :  2.220446049250313e-16 :   0.0
         ('C1', 5) :  None :    -1.0000000000000002 :   0.0
         ('C1', 6) :  None :                   -1.0 :   0.0
         ('C1', 7) :  None :                    0.0 :   0.0
         ('C1', 8) :  None :                    0.0 :   0.0
         ('C1', 9) :  None :                   -1.0 :   0.0
        ('C1', 10) :  None :                    0.0 :   0.0
        ('C1', 11) :  None :                   -1.0 :   0.0
        ('C1', 12) :  None :                    0.0 :   0.0
        ('C1', 13) :   0.0 :                    0.0 :   0.0
         ('D1', 0) :  None :                   -1.0 :   0.0
         ('D1', 1) :  None :                   -1.0 :   0.0
         ('D1', 2) :  None :                    0.0 :   0.0
         ('D1', 3) :  None :                   -1.0 :   0.0
         ('D1', 4) :  None :                    0.0 :   0.0
         ('D1', 5) :  None :                   -1.0 :   0.0
         ('D1', 6) :  None :                    0.0 :   0.0
         ('D1', 7) :  None :                    0.0 :   0.0
         ('D1', 8) :  None :                    0.0 :   0.0
         ('D1', 9) :  None :                   -1.0 :   0.0
        ('D1', 10) :  None :                    0.0 :   0.0
        ('D1', 11) :  None :                   -1.0 :   0.0
        ('D1', 12) :  None :                   -1.0 :   0.0
        ('D1', 13) :   0.0 :                    0.0 :   0.0
         ('E1', 0) :  None :                   -1.0 :   0.0
         ('E1', 1) :  None :                   -1.0 :   0.0
         ('E1', 2) :  None :                    0.0 :   0.0
         ('E1', 3) :  None :                    0.0 :   0.0
         ('E1', 4) :  None :                   -1.0 :   0.0
         ('E1', 5) :  None :                    0.0 :   0.0
         ('E1', 6) :  None :                    0.0 :   0.0
         ('E1', 7) :  None :                    0.0 :   0.0
         ('E1', 8) :  None :                   -1.0 :   0.0
         ('E1', 9) :  None :                    0.0 :   0.0
        ('E1', 10) :  None :                   -1.0 :   0.0
        ('E1', 11) :  None :                   -1.0 :   0.0
        ('E1', 12) :  None :                   -1.0 :   0.0
        ('E1', 13) :   0.0 :                    0.0 :   0.0
         ('F1', 0) :  None :    -0.9999999999999996 :   0.0
         ('F1', 1) :  None : -4.440892098500626e-16 :   0.0
         ('F1', 2) :  None :    -0.9999999999999996 :   0.0
         ('F1', 3) :  None :                    0.0 :   0.0
         ('F1', 4) :  None :                   -1.0 :   0.0
         ('F1', 5) :  None :    -0.9999999999999996 :   0.0
         ('F1', 6) :  None :                    0.0 :   0.0
         ('F1', 7) :  None :                   -1.0 :   0.0
         ('F1', 8) :  None :                    0.0 :   0.0
         ('F1', 9) :  None :                   -1.0 :   0.0
        ('F1', 10) :  None :                    0.0 :   0.0
        ('F1', 11) :  None :                    0.0 :   0.0
        ('F1', 12) :  None :                   -1.0 :   0.0
        ('F1', 13) :   0.0 :                    0.0 :   0.0
         ('G1', 0) :  None :                   -1.0 :   0.0
         ('G1', 1) :  None :                    0.0 :   0.0
         ('G1', 2) :  None :                   -1.0 :   0.0
         ('G1', 3) :  None :                    0.0 :   0.0
         ('G1', 4) :  None :                   -1.0 :   0.0
         ('G1', 5) :  None :                    0.0 :   0.0
         ('G1', 6) :  None :                    0.0 :   0.0
         ('G1', 7) :  None :                   -1.0 :   0.0
         ('G1', 8) :  None :                   -1.0 :   0.0
         ('G1', 9) :  None :                    0.0 :   0.0
        ('G1', 10) :  None :                    0.0 :   0.0
        ('G1', 11) :  None :                   -1.0 :   0.0
        ('G1', 12) :  None :                    0.0 :   0.0
        ('G1', 13) :   0.0 :                    0.0 :   0.0
         ('H1', 0) :  None :                    0.0 :   0.0
         ('H1', 1) :  None :                   -1.0 :   0.0
         ('H1', 2) :  None :                    0.0 :   0.0
         ('H1', 3) :  None :                    0.0 :   0.0
         ('H1', 4) :  None :                   -1.0 :   0.0
         ('H1', 5) :  None :                    0.0 :   0.0
         ('H1', 6) :  None :                   -1.0 :   0.0
         ('H1', 7) :  None :                   -1.0 :   0.0
         ('H1', 8) :  None :                    0.0 :   0.0
         ('H1', 9) :  None :                   -1.0 :   0.0
        ('H1', 10) :  None :                    0.0 :   0.0
        ('H1', 11) :  None :                    0.0 :   0.0
        ('H1', 12) :  None :                    0.0 :   0.0
        ('H1', 13) :   0.0 :                    0.0 :   0.0
    constraint_min_cons_days_off_inscope : Size=112
        Key        : Lower : Body : Upper
         ('A1', 0) :  None :  0.0 :   0.0
         ('A1', 1) :  None :  0.0 :   0.0
         ('A1', 2) :  None :  0.0 :   0.0
         ('A1', 3) :  None :  0.0 :   0.0
         ('A1', 4) :  None :  0.0 :   0.0
         ('A1', 5) :  None :  0.0 :   0.0
         ('A1', 6) :  None :  0.0 :   0.0
         ('A1', 7) :  None :  0.0 :   0.0
         ('A1', 8) :  None :  0.0 :   0.0
         ('A1', 9) :  None :  0.0 :   0.0
        ('A1', 10) :  None :  0.0 :   0.0
        ('A1', 11) :  None :  0.0 :   0.0
        ('A1', 12) :  None :  0.0 :   0.0
        ('A1', 13) :  None :  0.0 :   0.0
         ('B1', 0) :  None :  0.0 :   0.0
         ('B1', 1) :  None :  0.0 :   0.0
         ('B1', 2) :  None :  0.0 :   0.0
         ('B1', 3) :  None :  0.0 :   0.0
         ('B1', 4) :  None :  0.0 :   0.0
         ('B1', 5) :  None :  0.0 :   0.0
         ('B1', 6) :  None :  0.0 :   0.0
         ('B1', 7) :  None :  0.0 :   0.0
         ('B1', 8) :  None :  0.0 :   0.0
         ('B1', 9) :  None :  0.0 :   0.0
        ('B1', 10) :  None :  0.0 :   0.0
        ('B1', 11) :  None :  0.0 :   0.0
        ('B1', 12) :  None :  0.0 :   0.0
        ('B1', 13) :  None :  0.0 :   0.0
         ('C1', 0) :  None :  0.0 :   0.0
         ('C1', 1) :  None :  0.0 :   0.0
         ('C1', 2) :  None :  0.0 :   0.0
         ('C1', 3) :  None :  0.0 :   0.0
         ('C1', 4) :  None :  0.0 :   0.0
         ('C1', 5) :  None :  0.0 :   0.0
         ('C1', 6) :  None :  0.0 :   0.0
         ('C1', 7) :  None :  0.0 :   0.0
         ('C1', 8) :  None :  0.0 :   0.0
         ('C1', 9) :  None :  0.0 :   0.0
        ('C1', 10) :  None :  0.0 :   0.0
        ('C1', 11) :  None :  0.0 :   0.0
        ('C1', 12) :  None :  0.0 :   0.0
        ('C1', 13) :  None : -1.0 :   0.0
         ('D1', 0) :  None :  0.0 :   0.0
         ('D1', 1) :  None :  0.0 :   0.0
         ('D1', 2) :  None :  0.0 :   0.0
         ('D1', 3) :  None :  0.0 :   0.0
         ('D1', 4) :  None :  0.0 :   0.0
         ('D1', 5) :  None :  0.0 :   0.0
         ('D1', 6) :  None :  0.0 :   0.0
         ('D1', 7) :  None :  0.0 :   0.0
         ('D1', 8) :  None :  0.0 :   0.0
         ('D1', 9) :  None :  0.0 :   0.0
        ('D1', 10) :  None :  0.0 :   0.0
        ('D1', 11) :  None :  0.0 :   0.0
        ('D1', 12) :  None :  0.0 :   0.0
        ('D1', 13) :  None : -1.0 :   0.0
         ('E1', 0) :  None :  0.0 :   0.0
         ('E1', 1) :  None :  0.0 :   0.0
         ('E1', 2) :  None :  0.0 :   0.0
         ('E1', 3) :  None :  0.0 :   0.0
         ('E1', 4) :  None :  0.0 :   0.0
         ('E1', 5) :  None :  0.0 :   0.0
         ('E1', 6) :  None :  0.0 :   0.0
         ('E1', 7) :  None :  0.0 :   0.0
         ('E1', 8) :  None :  0.0 :   0.0
         ('E1', 9) :  None :  0.0 :   0.0
        ('E1', 10) :  None :  0.0 :   0.0
        ('E1', 11) :  None :  0.0 :   0.0
        ('E1', 12) :  None :  0.0 :   0.0
        ('E1', 13) :  None : -1.0 :   0.0
         ('F1', 0) :  None :  0.0 :   0.0
         ('F1', 1) :  None :  0.0 :   0.0
         ('F1', 2) :  None :  0.0 :   0.0
         ('F1', 3) :  None :  0.0 :   0.0
         ('F1', 4) :  None :  0.0 :   0.0
         ('F1', 5) :  None :  0.0 :   0.0
         ('F1', 6) :  None :  0.0 :   0.0
         ('F1', 7) :  None :  0.0 :   0.0
         ('F1', 8) :  None :  0.0 :   0.0
         ('F1', 9) :  None :  0.0 :   0.0
        ('F1', 10) :  None :  0.0 :   0.0
        ('F1', 11) :  None :  0.0 :   0.0
        ('F1', 12) :  None :  0.0 :   0.0
        ('F1', 13) :  None :  0.0 :   0.0
         ('G1', 0) :  None :  0.0 :   0.0
         ('G1', 1) :  None :  0.0 :   0.0
         ('G1', 2) :  None :  0.0 :   0.0
         ('G1', 3) :  None :  0.0 :   0.0
         ('G1', 4) :  None :  0.0 :   0.0
         ('G1', 5) :  None :  0.0 :   0.0
         ('G1', 6) :  None :  0.0 :   0.0
         ('G1', 7) :  None :  0.0 :   0.0
         ('G1', 8) :  None :  0.0 :   0.0
         ('G1', 9) :  None :  0.0 :   0.0
        ('G1', 10) :  None :  0.0 :   0.0
        ('G1', 11) :  None :  0.0 :   0.0
        ('G1', 12) :  None :  0.0 :   0.0
        ('G1', 13) :  None :  0.0 :   0.0
         ('H1', 0) :  None :  0.0 :   0.0
         ('H1', 1) :  None :  0.0 :   0.0
         ('H1', 2) :  None :  0.0 :   0.0
         ('H1', 3) :  None :  0.0 :   0.0
         ('H1', 4) :  None :  0.0 :   0.0
         ('H1', 5) :  None :  0.0 :   0.0
         ('H1', 6) :  None :  0.0 :   0.0
         ('H1', 7) :  None :  0.0 :   0.0
         ('H1', 8) :  None :  0.0 :   0.0
         ('H1', 9) :  None :  0.0 :   0.0
        ('H1', 10) :  None :  0.0 :   0.0
        ('H1', 11) :  None :  0.0 :   0.0
        ('H1', 12) :  None :  0.0 :   0.0
        ('H1', 13) :  None :  0.0 :   0.0
    constraint_min_cons_days_off_backward : Size=0
        Key : Lower : Body : Upper
    constraint_min_cons_days_off_forward : Size=0
        Key : Lower : Body : Upper
    constraint_has_weekend_work_lb : Size=0
        Key : Lower : Body : Upper
    constraint_has_weekend_work : Size=32
        Key        : Lower : Body : Upper
         ('A1', 5) :  None :  0.0 :   0.0
         ('A1', 6) :  None :  0.0 :   0.0
        ('A1', 12) :  None :  0.0 :   0.0
        ('A1', 13) :  None :  0.0 :   0.0
         ('B1', 5) :  None :  0.0 :   0.0
         ('B1', 6) :  None :  0.0 :   0.0
        ('B1', 12) :  None :  0.0 :   0.0
        ('B1', 13) :  None : -1.0 :   0.0
         ('C1', 5) :  None :  0.0 :   0.0
         ('C1', 6) :  None :  0.0 :   0.0
        ('C1', 12) :  None :  0.0 :   0.0
        ('C1', 13) :  None :  0.0 :   0.0
         ('D1', 5) :  None :  0.0 :   0.0
         ('D1', 6) :  None :  0.0 :   0.0
        ('D1', 12) :  None :  0.0 :   0.0
        ('D1', 13) :  None :  0.0 :   0.0
         ('E1', 5) :  None :  0.0 :   0.0
         ('E1', 6) :  None :  0.0 :   0.0
        ('E1', 12) :  None :  0.0 :   0.0
        ('E1', 13) :  None :  0.0 :   0.0
         ('F1', 5) :  None :  0.0 :   0.0
         ('F1', 6) :  None :  0.0 :   0.0
        ('F1', 12) :  None :  0.0 :   0.0
        ('F1', 13) :  None :  0.0 :   0.0
         ('G1', 5) :  None :  0.0 :   0.0
         ('G1', 6) :  None :  0.0 :   0.0
        ('G1', 12) :  None :  0.0 :   0.0
        ('G1', 13) :  None :  0.0 :   0.0
         ('H1', 5) :  None :  0.0 :   0.0
         ('H1', 6) :  None :  0.0 :   0.0
        ('H1', 12) :  None :  0.0 :   0.0
        ('H1', 13) :  None :  0.0 :   0.0
    constraint_max_nr_weekend : Size=8
        Key : Lower : Body : Upper
         A1 :  None :  1.0 :   1.0
         B1 :  None :  1.0 :   1.0
         C1 :  None :  1.0 :   1.0
         D1 :  None :  1.0 :   1.0
         E1 :  None :  1.0 :   1.0
         F1 :  None :  1.0 :   1.0
         G1 :  None :  1.0 :   1.0
         H1 :  None :  1.0 :   1.0
    constraint_days_off : Size=8
        Key       : Lower : Body : Upper
        ('A1', 0) :   1.0 :  1.0 :   1.0
        ('B1', 5) :   1.0 :  1.0 :   1.0
        ('C1', 8) :   1.0 :  1.0 :   1.0
        ('D1', 2) :   1.0 :  1.0 :   1.0
        ('E1', 9) :   1.0 :  1.0 :   1.0
        ('F1', 5) :   1.0 :  1.0 :   1.0
        ('G1', 1) :   1.0 :  1.0 :   1.0
        ('H1', 7) :   1.0 :  1.0 :   1.0
    constraint_shift_on_request : Size=112
        Key              : Lower : Body : Upper
         ('D1', 'A1', 0) :   0.0 :  0.0 :   0.0
         ('D1', 'A1', 1) :   0.0 :  0.0 :   0.0
         ('D1', 'A1', 2) :   0.0 :  0.0 :   0.0
         ('D1', 'A1', 3) :   0.0 :  0.0 :   0.0
         ('D1', 'A1', 4) :   0.0 :  0.0 :   0.0
         ('D1', 'A1', 5) :   0.0 :  0.0 :   0.0
         ('D1', 'A1', 6) :   0.0 :  0.0 :   0.0
         ('D1', 'A1', 7) :   0.0 :  0.0 :   0.0
         ('D1', 'A1', 8) :   0.0 :  0.0 :   0.0
         ('D1', 'A1', 9) :   0.0 :  0.0 :   0.0
        ('D1', 'A1', 10) :   0.0 :  0.0 :   0.0
        ('D1', 'A1', 11) :   0.0 :  0.0 :   0.0
        ('D1', 'A1', 12) :   0.0 :  0.0 :   0.0
        ('D1', 'A1', 13) :   0.0 :  0.0 :   0.0
         ('D1', 'B1', 0) :   0.0 :  0.0 :   0.0
         ('D1', 'B1', 1) :   0.0 :  0.0 :   0.0
         ('D1', 'B1', 2) :   0.0 :  0.0 :   0.0
         ('D1', 'B1', 3) :   0.0 :  0.0 :   0.0
         ('D1', 'B1', 4) :   0.0 :  0.0 :   0.0
         ('D1', 'B1', 5) :   0.0 :  0.0 :   0.0
         ('D1', 'B1', 6) :   0.0 :  0.0 :   0.0
         ('D1', 'B1', 7) :   0.0 :  0.0 :   0.0
         ('D1', 'B1', 8) :   0.0 :  0.0 :   0.0
         ('D1', 'B1', 9) :   0.0 :  0.0 :   0.0
        ('D1', 'B1', 10) :   0.0 :  0.0 :   0.0
        ('D1', 'B1', 11) :   0.0 :  0.0 :   0.0
        ('D1', 'B1', 12) :   0.0 :  0.0 :   0.0
        ('D1', 'B1', 13) :   0.0 :  0.0 :   0.0
         ('D1', 'C1', 0) :   0.0 :  0.0 :   0.0
         ('D1', 'C1', 1) :   0.0 :  0.0 :   0.0
         ('D1', 'C1', 2) :   0.0 :  0.0 :   0.0
         ('D1', 'C1', 3) :   0.0 :  0.0 :   0.0
         ('D1', 'C1', 4) :   0.0 :  0.0 :   0.0
         ('D1', 'C1', 5) :   0.0 :  0.0 :   0.0
         ('D1', 'C1', 6) :   0.0 :  0.0 :   0.0
         ('D1', 'C1', 7) :   0.0 :  0.0 :   0.0
         ('D1', 'C1', 8) :   0.0 :  0.0 :   0.0
         ('D1', 'C1', 9) :   0.0 :  0.0 :   0.0
        ('D1', 'C1', 10) :   0.0 :  0.0 :   0.0
        ('D1', 'C1', 11) :   0.0 :  0.0 :   0.0
        ('D1', 'C1', 12) :   0.0 :  0.0 :   0.0
        ('D1', 'C1', 13) :   0.0 :  0.0 :   0.0
         ('D1', 'D1', 0) :   0.0 :  0.0 :   0.0
         ('D1', 'D1', 1) :   0.0 :  0.0 :   0.0
         ('D1', 'D1', 2) :   0.0 :  0.0 :   0.0
         ('D1', 'D1', 3) :   0.0 :  0.0 :   0.0
         ('D1', 'D1', 4) :   0.0 :  0.0 :   0.0
         ('D1', 'D1', 5) :   0.0 :  0.0 :   0.0
         ('D1', 'D1', 6) :   0.0 :  0.0 :   0.0
         ('D1', 'D1', 7) :   0.0 :  0.0 :   0.0
         ('D1', 'D1', 8) :   0.0 :  0.0 :   0.0
         ('D1', 'D1', 9) :   0.0 :  0.0 :   0.0
        ('D1', 'D1', 10) :   0.0 :  0.0 :   0.0
        ('D1', 'D1', 11) :   0.0 :  0.0 :   0.0
        ('D1', 'D1', 12) :   0.0 :  0.0 :   0.0
        ('D1', 'D1', 13) :   0.0 :  0.0 :   0.0
         ('D1', 'E1', 0) :   0.0 :  0.0 :   0.0
         ('D1', 'E1', 1) :   0.0 :  0.0 :   0.0
         ('D1', 'E1', 2) :   0.0 :  0.0 :   0.0
         ('D1', 'E1', 3) :   0.0 :  0.0 :   0.0
         ('D1', 'E1', 4) :   0.0 :  0.0 :   0.0
         ('D1', 'E1', 5) :   0.0 :  0.0 :   0.0
         ('D1', 'E1', 6) :   0.0 :  0.0 :   0.0
         ('D1', 'E1', 7) :   0.0 :  0.0 :   0.0
         ('D1', 'E1', 8) :   0.0 :  0.0 :   0.0
         ('D1', 'E1', 9) :   0.0 :  0.0 :   0.0
        ('D1', 'E1', 10) :   0.0 :  0.0 :   0.0
        ('D1', 'E1', 11) :   0.0 :  0.0 :   0.0
        ('D1', 'E1', 12) :   0.0 :  0.0 :   0.0
        ('D1', 'E1', 13) :   0.0 :  0.0 :   0.0
         ('D1', 'F1', 0) :   0.0 :  0.0 :   0.0
         ('D1', 'F1', 1) :   0.0 :  0.0 :   0.0
         ('D1', 'F1', 2) :   0.0 :  0.0 :   0.0
         ('D1', 'F1', 3) :   0.0 :  0.0 :   0.0
         ('D1', 'F1', 4) :   0.0 :  0.0 :   0.0
         ('D1', 'F1', 5) :   0.0 :  0.0 :   0.0
         ('D1', 'F1', 6) :   0.0 :  0.0 :   0.0
         ('D1', 'F1', 7) :   0.0 :  0.0 :   0.0
         ('D1', 'F1', 8) :   0.0 :  0.0 :   0.0
         ('D1', 'F1', 9) :   0.0 :  0.0 :   0.0
        ('D1', 'F1', 10) :   0.0 :  0.0 :   0.0
        ('D1', 'F1', 11) :   0.0 :  0.0 :   0.0
        ('D1', 'F1', 12) :   0.0 :  0.0 :   0.0
        ('D1', 'F1', 13) :   0.0 :  0.0 :   0.0
         ('D1', 'G1', 0) :   0.0 :  0.0 :   0.0
         ('D1', 'G1', 1) :   0.0 :  0.0 :   0.0
         ('D1', 'G1', 2) :   0.0 :  0.0 :   0.0
         ('D1', 'G1', 3) :   0.0 :  0.0 :   0.0
         ('D1', 'G1', 4) :   0.0 :  0.0 :   0.0
         ('D1', 'G1', 5) :   0.0 :  0.0 :   0.0
         ('D1', 'G1', 6) :   0.0 :  0.0 :   0.0
         ('D1', 'G1', 7) :   0.0 :  0.0 :   0.0
         ('D1', 'G1', 8) :   0.0 :  0.0 :   0.0
         ('D1', 'G1', 9) :   0.0 :  0.0 :   0.0
        ('D1', 'G1', 10) :   0.0 :  0.0 :   0.0
        ('D1', 'G1', 11) :   0.0 :  0.0 :   0.0
        ('D1', 'G1', 12) :   0.0 :  0.0 :   0.0
        ('D1', 'G1', 13) :   0.0 :  0.0 :   0.0
         ('D1', 'H1', 0) :   0.0 :  0.0 :   0.0
         ('D1', 'H1', 1) :   0.0 :  0.0 :   0.0
         ('D1', 'H1', 2) :   0.0 :  0.0 :   0.0
         ('D1', 'H1', 3) :   0.0 :  0.0 :   0.0
         ('D1', 'H1', 4) :   0.0 :  0.0 :   0.0
         ('D1', 'H1', 5) :   0.0 :  0.0 :   0.0
         ('D1', 'H1', 6) :   0.0 :  0.0 :   0.0
         ('D1', 'H1', 7) :   0.0 :  0.0 :   0.0
         ('D1', 'H1', 8) :   0.0 :  0.0 :   0.0
         ('D1', 'H1', 9) :   0.0 :  0.0 :   0.0
        ('D1', 'H1', 10) :   0.0 :  0.0 :   0.0
        ('D1', 'H1', 11) :   0.0 :  0.0 :   0.0
        ('D1', 'H1', 12) :   0.0 :  0.0 :   0.0
        ('D1', 'H1', 13) :   0.0 :  0.0 :   0.0
    constraint_shift_off_request : Size=112
        Key              : Lower : Body : Upper
         ('D1', 'A1', 0) :   0.0 :  0.0 :   0.0
         ('D1', 'A1', 1) :   0.0 :  0.0 :   0.0
         ('D1', 'A1', 2) :   0.0 :  0.0 :   0.0
         ('D1', 'A1', 3) :   0.0 :  0.0 :   0.0
         ('D1', 'A1', 4) :   0.0 :  0.0 :   0.0
         ('D1', 'A1', 5) :   0.0 :  0.0 :   0.0
         ('D1', 'A1', 6) :   0.0 :  0.0 :   0.0
         ('D1', 'A1', 7) :   0.0 :  0.0 :   0.0
         ('D1', 'A1', 8) :   0.0 :  0.0 :   0.0
         ('D1', 'A1', 9) :   0.0 :  0.0 :   0.0
        ('D1', 'A1', 10) :   0.0 :  0.0 :   0.0
        ('D1', 'A1', 11) :   0.0 :  0.0 :   0.0
        ('D1', 'A1', 12) :   0.0 :  0.0 :   0.0
        ('D1', 'A1', 13) :   0.0 :  0.0 :   0.0
         ('D1', 'B1', 0) :   0.0 :  0.0 :   0.0
         ('D1', 'B1', 1) :   0.0 :  0.0 :   0.0
         ('D1', 'B1', 2) :   0.0 :  0.0 :   0.0
         ('D1', 'B1', 3) :   0.0 :  0.0 :   0.0
         ('D1', 'B1', 4) :   0.0 :  0.0 :   0.0
         ('D1', 'B1', 5) :   0.0 :  0.0 :   0.0
         ('D1', 'B1', 6) :   0.0 :  0.0 :   0.0
         ('D1', 'B1', 7) :   0.0 :  0.0 :   0.0
         ('D1', 'B1', 8) :   0.0 :  0.0 :   0.0
         ('D1', 'B1', 9) :   0.0 :  0.0 :   0.0
        ('D1', 'B1', 10) :   0.0 :  0.0 :   0.0
        ('D1', 'B1', 11) :   0.0 :  0.0 :   0.0
        ('D1', 'B1', 12) :   0.0 :  0.0 :   0.0
        ('D1', 'B1', 13) :   0.0 :  0.0 :   0.0
         ('D1', 'C1', 0) :   0.0 :  0.0 :   0.0
         ('D1', 'C1', 1) :   0.0 :  0.0 :   0.0
         ('D1', 'C1', 2) :   0.0 :  0.0 :   0.0
         ('D1', 'C1', 3) :   0.0 :  0.0 :   0.0
         ('D1', 'C1', 4) :   0.0 :  0.0 :   0.0
         ('D1', 'C1', 5) :   0.0 :  0.0 :   0.0
         ('D1', 'C1', 6) :   0.0 :  0.0 :   0.0
         ('D1', 'C1', 7) :   0.0 :  0.0 :   0.0
         ('D1', 'C1', 8) :   0.0 :  0.0 :   0.0
         ('D1', 'C1', 9) :   0.0 :  0.0 :   0.0
        ('D1', 'C1', 10) :   0.0 :  0.0 :   0.0
        ('D1', 'C1', 11) :   0.0 :  0.0 :   0.0
        ('D1', 'C1', 12) :   0.0 :  0.0 :   0.0
        ('D1', 'C1', 13) :   0.0 :  0.0 :   0.0
         ('D1', 'D1', 0) :   0.0 :  0.0 :   0.0
         ('D1', 'D1', 1) :   0.0 :  0.0 :   0.0
         ('D1', 'D1', 2) :   0.0 :  0.0 :   0.0
         ('D1', 'D1', 3) :   0.0 :  0.0 :   0.0
         ('D1', 'D1', 4) :   0.0 :  0.0 :   0.0
         ('D1', 'D1', 5) :   0.0 :  0.0 :   0.0
         ('D1', 'D1', 6) :   0.0 :  0.0 :   0.0
         ('D1', 'D1', 7) :   0.0 :  0.0 :   0.0
         ('D1', 'D1', 8) :   0.0 :  0.0 :   0.0
         ('D1', 'D1', 9) :   0.0 :  0.0 :   0.0
        ('D1', 'D1', 10) :   0.0 :  0.0 :   0.0
        ('D1', 'D1', 11) :   0.0 :  0.0 :   0.0
        ('D1', 'D1', 12) :   0.0 :  0.0 :   0.0
        ('D1', 'D1', 13) :   0.0 :  0.0 :   0.0
         ('D1', 'E1', 0) :   0.0 :  0.0 :   0.0
         ('D1', 'E1', 1) :   0.0 :  0.0 :   0.0
         ('D1', 'E1', 2) :   0.0 :  0.0 :   0.0
         ('D1', 'E1', 3) :   0.0 :  0.0 :   0.0
         ('D1', 'E1', 4) :   0.0 :  0.0 :   0.0
         ('D1', 'E1', 5) :   0.0 :  0.0 :   0.0
         ('D1', 'E1', 6) :   0.0 :  0.0 :   0.0
         ('D1', 'E1', 7) :   0.0 :  0.0 :   0.0
         ('D1', 'E1', 8) :   0.0 :  0.0 :   0.0
         ('D1', 'E1', 9) :   0.0 :  0.0 :   0.0
        ('D1', 'E1', 10) :   0.0 :  0.0 :   0.0
        ('D1', 'E1', 11) :   0.0 :  0.0 :   0.0
        ('D1', 'E1', 12) :   0.0 :  0.0 :   0.0
        ('D1', 'E1', 13) :   0.0 :  0.0 :   0.0
         ('D1', 'F1', 0) :   0.0 :  0.0 :   0.0
         ('D1', 'F1', 1) :   0.0 :  0.0 :   0.0
         ('D1', 'F1', 2) :   0.0 :  0.0 :   0.0
         ('D1', 'F1', 3) :   0.0 :  0.0 :   0.0
         ('D1', 'F1', 4) :   0.0 :  0.0 :   0.0
         ('D1', 'F1', 5) :   0.0 :  0.0 :   0.0
         ('D1', 'F1', 6) :   0.0 :  0.0 :   0.0
         ('D1', 'F1', 7) :   0.0 :  0.0 :   0.0
         ('D1', 'F1', 8) :   0.0 :  0.0 :   0.0
         ('D1', 'F1', 9) :   0.0 :  0.0 :   0.0
        ('D1', 'F1', 10) :   0.0 :  0.0 :   0.0
        ('D1', 'F1', 11) :   0.0 :  0.0 :   0.0
        ('D1', 'F1', 12) :   0.0 :  0.0 :   0.0
        ('D1', 'F1', 13) :   0.0 :  0.0 :   0.0
         ('D1', 'G1', 0) :   0.0 :  0.0 :   0.0
         ('D1', 'G1', 1) :   0.0 :  0.0 :   0.0
         ('D1', 'G1', 2) :   0.0 :  0.0 :   0.0
         ('D1', 'G1', 3) :   0.0 :  0.0 :   0.0
         ('D1', 'G1', 4) :   0.0 :  0.0 :   0.0
         ('D1', 'G1', 5) :   0.0 :  0.0 :   0.0
         ('D1', 'G1', 6) :   0.0 :  0.0 :   0.0
         ('D1', 'G1', 7) :   0.0 :  0.0 :   0.0
         ('D1', 'G1', 8) :   0.0 :  0.0 :   0.0
         ('D1', 'G1', 9) :   0.0 :  0.0 :   0.0
        ('D1', 'G1', 10) :   0.0 :  0.0 :   0.0
        ('D1', 'G1', 11) :   0.0 :  0.0 :   0.0
        ('D1', 'G1', 12) :   0.0 :  0.0 :   0.0
        ('D1', 'G1', 13) :   0.0 :  0.0 :   0.0
         ('D1', 'H1', 0) :   0.0 :  0.0 :   0.0
         ('D1', 'H1', 1) :   0.0 :  0.0 :   0.0
         ('D1', 'H1', 2) :   0.0 :  0.0 :   0.0
         ('D1', 'H1', 3) :   0.0 :  0.0 :   0.0
         ('D1', 'H1', 4) :   0.0 :  0.0 :   0.0
         ('D1', 'H1', 5) :   0.0 :  0.0 :   0.0
         ('D1', 'H1', 6) :   0.0 :  0.0 :   0.0
         ('D1', 'H1', 7) :   0.0 :  0.0 :   0.0
         ('D1', 'H1', 8) :   0.0 :  0.0 :   0.0
         ('D1', 'H1', 9) :   0.0 :  0.0 :   0.0
        ('D1', 'H1', 10) :   0.0 :  0.0 :   0.0
        ('D1', 'H1', 11) :   0.0 :  0.0 :   0.0
        ('D1', 'H1', 12) :   0.0 :  0.0 :   0.0
        ('D1', 'H1', 13) :   0.0 :  0.0 :   0.0
    constraint_under_cover : Size=14
        Key        : Lower : Body : Upper
         ('D1', 0) :   5.0 :  5.0 :  None
         ('D1', 1) :   7.0 :  7.0 :  None
         ('D1', 2) :   6.0 :  6.0 :  None
         ('D1', 3) :   4.0 :  4.0 :  None
         ('D1', 4) :   5.0 :  5.0 :  None
         ('D1', 5) :   5.0 :  5.0 :  None
         ('D1', 6) :   5.0 :  5.0 :  None
         ('D1', 7) :   6.0 :  6.0 :  None
         ('D1', 8) :   7.0 :  7.0 :  None
         ('D1', 9) :   4.0 :  4.0 :  None
        ('D1', 10) :   2.0 :  2.0 :  None
        ('D1', 11) :   5.0 :  5.0 :  None
        ('D1', 12) :   6.0 :  6.0 :  None
        ('D1', 13) :   4.0 :  4.0 :  None
    constraint_penalty_under_cover : Size=14
        Key        : Lower : Body : Upper
         ('D1', 0) :   0.0 :  0.0 :   0.0
         ('D1', 1) :   0.0 :  0.0 :   0.0
         ('D1', 2) :   0.0 :  0.0 :   0.0
         ('D1', 3) :   0.0 :  0.0 :   0.0
         ('D1', 4) :   0.0 :  0.0 :   0.0
         ('D1', 5) :   0.0 :  0.0 :   0.0
         ('D1', 6) :   0.0 :  0.0 :   0.0
         ('D1', 7) :   0.0 :  0.0 :   0.0
         ('D1', 8) :   0.0 :  0.0 :   0.0
         ('D1', 9) :   0.0 :  0.0 :   0.0
        ('D1', 10) :   0.0 :  0.0 :   0.0
        ('D1', 11) :   0.0 :  0.0 :   0.0
        ('D1', 12) :   0.0 :  0.0 :   0.0
        ('D1', 13) :   0.0 :  0.0 :   0.0
    constraint_over_cover : Size=14
        Key        : Lower : Body : Upper
         ('D1', 0) :  None :  5.0 :   5.0
         ('D1', 1) :  None :  7.0 :   7.0
         ('D1', 2) :  None :  6.0 :   6.0
         ('D1', 3) :  None :  4.0 :   4.0
         ('D1', 4) :  None :  5.0 :   5.0
         ('D1', 5) :  None :  3.0 :   5.0
         ('D1', 6) :  None :  3.0 :   5.0
         ('D1', 7) :  None :  6.0 :   6.0
         ('D1', 8) :  None :  6.0 :   7.0
         ('D1', 9) :  None :  4.0 :   4.0
        ('D1', 10) :  None :  2.0 :   2.0
        ('D1', 11) :  None :  5.0 :   5.0
        ('D1', 12) :  None :  5.0 :   6.0
        ('D1', 13) :  None :  4.0 :   4.0
    constraint_penalty_over_cover : Size=14
        Key        : Lower : Body : Upper
         ('D1', 0) :   0.0 :  0.0 :   0.0
         ('D1', 1) :   0.0 :  0.0 :   0.0
         ('D1', 2) :   0.0 :  0.0 :   0.0
         ('D1', 3) :   0.0 :  0.0 :   0.0
         ('D1', 4) :   0.0 :  0.0 :   0.0
         ('D1', 5) :   0.0 :  0.0 :   0.0
         ('D1', 6) :   0.0 :  0.0 :   0.0
         ('D1', 7) :   0.0 :  0.0 :   0.0
         ('D1', 8) :   0.0 :  0.0 :   0.0
         ('D1', 9) :   0.0 :  0.0 :   0.0
        ('D1', 10) :   0.0 :  0.0 :   0.0
        ('D1', 11) :   0.0 :  0.0 :   0.0
        ('D1', 12) :   0.0 :  0.0 :   0.0
        ('D1', 13) :   0.0 :  0.0 :   0.0
