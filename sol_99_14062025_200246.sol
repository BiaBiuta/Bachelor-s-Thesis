Model NurseSchedulingProblem

  Variables:
    IsAssign : Size=392, Index=SHIFTTYPES*NURSES*DAYS
        Key              : Lower : Value : Upper : Fixed : Stale : Domain
         ('E2', 'A2', 0) :     0 :  -0.0 :     1 : False : False : Binary
         ('E2', 'A2', 1) :     0 :  -0.0 :     1 : False : False : Binary
         ('E2', 'A2', 2) :     0 :  -0.0 :     1 : False : False : Binary
         ('E2', 'A2', 3) :     0 :   0.0 :     1 : False : False : Binary
         ('E2', 'A2', 4) :     0 :   0.0 :     1 : False : False : Binary
         ('E2', 'A2', 5) :     0 :  -0.0 :     1 : False : False : Binary
         ('E2', 'A2', 6) :     0 :   0.0 :     1 : False : False : Binary
         ('E2', 'A2', 7) :     0 :  -0.0 :     1 : False : False : Binary
         ('E2', 'A2', 8) :     0 :  -0.0 :     1 : False : False : Binary
         ('E2', 'A2', 9) :     0 :  -0.0 :     1 : False : False : Binary
        ('E2', 'A2', 10) :     0 :  -0.0 :     1 : False : False : Binary
        ('E2', 'A2', 11) :     0 :   0.0 :     1 : False : False : Binary
        ('E2', 'A2', 12) :     0 :   0.0 :     1 : False : False : Binary
        ('E2', 'A2', 13) :     0 :   0.0 :     1 : False : False : Binary
         ('E2', 'B2', 0) :     0 :  -0.0 :     1 : False : False : Binary
         ('E2', 'B2', 1) :     0 :   0.0 :     1 : False : False : Binary
         ('E2', 'B2', 2) :     0 :   1.0 :     1 : False : False : Binary
         ('E2', 'B2', 3) :     0 :   1.0 :     1 : False : False : Binary
         ('E2', 'B2', 4) :     0 :   1.0 :     1 : False : False : Binary
         ('E2', 'B2', 5) :     0 :   0.0 :     1 : False : False : Binary
         ('E2', 'B2', 6) :     0 :   0.0 :     1 : False : False : Binary
         ('E2', 'B2', 7) :     0 :   1.0 :     1 : False : False : Binary
         ('E2', 'B2', 8) :     0 :   1.0 :     1 : False : False : Binary
         ('E2', 'B2', 9) :     0 :   1.0 :     1 : False : False : Binary
        ('E2', 'B2', 10) :     0 :   0.0 :     1 : False : False : Binary
        ('E2', 'B2', 11) :     0 :  -0.0 :     1 : False : False : Binary
        ('E2', 'B2', 12) :     0 :   1.0 :     1 : False : False : Binary
        ('E2', 'B2', 13) :     0 :   1.0 :     1 : False : False : Binary
         ('E2', 'C2', 0) :     0 :   0.0 :     1 : False : False : Binary
         ('E2', 'C2', 1) :     0 :  -0.0 :     1 : False : False : Binary
         ('E2', 'C2', 2) :     0 :   0.0 :     1 : False : False : Binary
         ('E2', 'C2', 3) :     0 :   1.0 :     1 : False : False : Binary
         ('E2', 'C2', 4) :     0 :   1.0 :     1 : False : False : Binary
         ('E2', 'C2', 5) :     0 :   1.0 :     1 : False : False : Binary
         ('E2', 'C2', 6) :     0 :   1.0 :     1 : False : False : Binary
         ('E2', 'C2', 7) :     0 :   0.0 :     1 : False : False : Binary
         ('E2', 'C2', 8) :     0 :   0.0 :     1 : False : False : Binary
         ('E2', 'C2', 9) :     0 :   1.0 :     1 : False : False : Binary
        ('E2', 'C2', 10) :     0 :   1.0 :     1 : False : False : Binary
        ('E2', 'C2', 11) :     0 :   1.0 :     1 : False : False : Binary
        ('E2', 'C2', 12) :     0 :   0.0 :     1 : False : False : Binary
        ('E2', 'C2', 13) :     0 :   0.0 :     1 : False : False : Binary
         ('E2', 'D2', 0) :     0 :   1.0 :     1 : False : False : Binary
         ('E2', 'D2', 1) :     0 :   1.0 :     1 : False : False : Binary
         ('E2', 'D2', 2) :     0 :   1.0 :     1 : False : False : Binary
         ('E2', 'D2', 3) :     0 :   1.0 :     1 : False : False : Binary
         ('E2', 'D2', 4) :     0 :   1.0 :     1 : False : False : Binary
         ('E2', 'D2', 5) :     0 :   0.0 :     1 : False : False : Binary
         ('E2', 'D2', 6) :     0 :   0.0 :     1 : False : False : Binary
         ('E2', 'D2', 7) :     0 :   0.0 :     1 : False : False : Binary
         ('E2', 'D2', 8) :     0 :   1.0 :     1 : False : False : Binary
         ('E2', 'D2', 9) :     0 :   1.0 :     1 : False : False : Binary
        ('E2', 'D2', 10) :     0 :   1.0 :     1 : False : False : Binary
        ('E2', 'D2', 11) :     0 :   0.0 :     1 : False : False : Binary
        ('E2', 'D2', 12) :     0 :   0.0 :     1 : False : False : Binary
        ('E2', 'D2', 13) :     0 :   1.0 :     1 : False : False : Binary
         ('E2', 'E2', 0) :     0 :   0.0 :     1 : False : False : Binary
         ('E2', 'E2', 1) :     0 :   0.0 :     1 : False : False : Binary
         ('E2', 'E2', 2) :     0 :   0.0 :     1 : False : False : Binary
         ('E2', 'E2', 3) :     0 :   0.0 :     1 : False : False : Binary
         ('E2', 'E2', 4) :     0 :   0.0 :     1 : False : False : Binary
         ('E2', 'E2', 5) :     0 :   0.0 :     1 : False : False : Binary
         ('E2', 'E2', 6) :     0 :   0.0 :     1 : False : False : Binary
         ('E2', 'E2', 7) :     0 :   0.0 :     1 : False : False : Binary
         ('E2', 'E2', 8) :     0 :   0.0 :     1 : False : False : Binary
         ('E2', 'E2', 9) :     0 :   0.0 :     1 : False : False : Binary
        ('E2', 'E2', 10) :     0 :   0.0 :     1 : False : False : Binary
        ('E2', 'E2', 11) :     0 :   0.0 :     1 : False : False : Binary
        ('E2', 'E2', 12) :     0 :   0.0 :     1 : False : False : Binary
        ('E2', 'E2', 13) :     0 :   0.0 :     1 : False : False : Binary
         ('E2', 'F2', 0) :     0 :   1.0 :     1 : False : False : Binary
         ('E2', 'F2', 1) :     0 :  -0.0 :     1 : False : False : Binary
         ('E2', 'F2', 2) :     0 :  -0.0 :     1 : False : False : Binary
         ('E2', 'F2', 3) :     0 :   0.0 :     1 : False : False : Binary
         ('E2', 'F2', 4) :     0 :  -0.0 :     1 : False : False : Binary
         ('E2', 'F2', 5) :     0 :   0.0 :     1 : False : False : Binary
         ('E2', 'F2', 6) :     0 :   0.0 :     1 : False : False : Binary
         ('E2', 'F2', 7) :     0 :  -0.0 :     1 : False : False : Binary
         ('E2', 'F2', 8) :     0 :  -0.0 :     1 : False : False : Binary
         ('E2', 'F2', 9) :     0 :   1.0 :     1 : False : False : Binary
        ('E2', 'F2', 10) :     0 :   1.0 :     1 : False : False : Binary
        ('E2', 'F2', 11) :     0 :   0.0 :     1 : False : False : Binary
        ('E2', 'F2', 12) :     0 :   0.0 :     1 : False : False : Binary
        ('E2', 'F2', 13) :     0 :   0.0 :     1 : False : False : Binary
         ('E2', 'G2', 0) :     0 :   1.0 :     1 : False : False : Binary
         ('E2', 'G2', 1) :     0 :   1.0 :     1 : False : False : Binary
         ('E2', 'G2', 2) :     0 :   1.0 :     1 : False : False : Binary
         ('E2', 'G2', 3) :     0 :   1.0 :     1 : False : False : Binary
         ('E2', 'G2', 4) :     0 :  -0.0 :     1 : False : False : Binary
         ('E2', 'G2', 5) :     0 :  -0.0 :     1 : False : False : Binary
         ('E2', 'G2', 6) :     0 :  -0.0 :     1 : False : False : Binary
         ('E2', 'G2', 7) :     0 :  -0.0 :     1 : False : False : Binary
         ('E2', 'G2', 8) :     0 :  -0.0 :     1 : False : False : Binary
         ('E2', 'G2', 9) :     0 :   0.0 :     1 : False : False : Binary
        ('E2', 'G2', 10) :     0 :   0.0 :     1 : False : False : Binary
        ('E2', 'G2', 11) :     0 :   1.0 :     1 : False : False : Binary
        ('E2', 'G2', 12) :     0 :   1.0 :     1 : False : False : Binary
        ('E2', 'G2', 13) :     0 :   0.0 :     1 : False : False : Binary
         ('E2', 'H2', 0) :     0 :   1.0 :     1 : False : False : Binary
         ('E2', 'H2', 1) :     0 :   1.0 :     1 : False : False : Binary
         ('E2', 'H2', 2) :     0 :  -0.0 :     1 : False : False : Binary
         ('E2', 'H2', 3) :     0 :   0.0 :     1 : False : False : Binary
         ('E2', 'H2', 4) :     0 :   0.0 :     1 : False : False : Binary
         ('E2', 'H2', 5) :     0 :   1.0 :     1 : False : False : Binary
         ('E2', 'H2', 6) :     0 :   1.0 :     1 : False : False : Binary
         ('E2', 'H2', 7) :     0 :   1.0 :     1 : False : False : Binary
         ('E2', 'H2', 8) :     0 :   1.0 :     1 : False : False : Binary
         ('E2', 'H2', 9) :     0 :   0.0 :     1 : False : False : Binary
        ('E2', 'H2', 10) :     0 :  -0.0 :     1 : False : False : Binary
        ('E2', 'H2', 11) :     0 :  -0.0 :     1 : False : False : Binary
        ('E2', 'H2', 12) :     0 :   0.0 :     1 : False : False : Binary
        ('E2', 'H2', 13) :     0 :   0.0 :     1 : False : False : Binary
         ('E2', 'I2', 0) :     0 :   0.0 :     1 : False : False : Binary
         ('E2', 'I2', 1) :     0 :   0.0 :     1 : False : False : Binary
         ('E2', 'I2', 2) :     0 :   0.0 :     1 : False : False : Binary
         ('E2', 'I2', 3) :     0 :  -0.0 :     1 : False : False : Binary
         ('E2', 'I2', 4) :     0 :   0.0 :     1 : False : False : Binary
         ('E2', 'I2', 5) :     0 :  -0.0 :     1 : False : False : Binary
         ('E2', 'I2', 6) :     0 :   0.0 :     1 : False : False : Binary
         ('E2', 'I2', 7) :     0 :   1.0 :     1 : False : False : Binary
         ('E2', 'I2', 8) :     0 :  -0.0 :     1 : False : False : Binary
         ('E2', 'I2', 9) :     0 :   0.0 :     1 : False : False : Binary
        ('E2', 'I2', 10) :     0 :  -0.0 :     1 : False : False : Binary
        ('E2', 'I2', 11) :     0 :   0.0 :     1 : False : False : Binary
        ('E2', 'I2', 12) :     0 :   1.0 :     1 : False : False : Binary
        ('E2', 'I2', 13) :     0 :   1.0 :     1 : False : False : Binary
         ('E2', 'J2', 0) :     0 :   0.0 :     1 : False : False : Binary
         ('E2', 'J2', 1) :     0 :   0.0 :     1 : False : False : Binary
         ('E2', 'J2', 2) :     0 :   0.0 :     1 : False : False : Binary
         ('E2', 'J2', 3) :     0 :   0.0 :     1 : False : False : Binary
         ('E2', 'J2', 4) :     0 :   0.0 :     1 : False : False : Binary
         ('E2', 'J2', 5) :     0 :  -0.0 :     1 : False : False : Binary
         ('E2', 'J2', 6) :     0 :  -0.0 :     1 : False : False : Binary
         ('E2', 'J2', 7) :     0 :   0.0 :     1 : False : False : Binary
         ('E2', 'J2', 8) :     0 :   0.0 :     1 : False : False : Binary
         ('E2', 'J2', 9) :     0 :   0.0 :     1 : False : False : Binary
        ('E2', 'J2', 10) :     0 :   0.0 :     1 : False : False : Binary
        ('E2', 'J2', 11) :     0 :   0.0 :     1 : False : False : Binary
        ('E2', 'J2', 12) :     0 :  -0.0 :     1 : False : False : Binary
        ('E2', 'J2', 13) :     0 :  -0.0 :     1 : False : False : Binary
         ('E2', 'K2', 0) :     0 :   0.0 :     1 : False : False : Binary
         ('E2', 'K2', 1) :     0 :   0.0 :     1 : False : False : Binary
         ('E2', 'K2', 2) :     0 :   0.0 :     1 : False : False : Binary
         ('E2', 'K2', 3) :     0 :   0.0 :     1 : False : False : Binary
         ('E2', 'K2', 4) :     0 :   0.0 :     1 : False : False : Binary
         ('E2', 'K2', 5) :     0 :   0.0 :     1 : False : False : Binary
         ('E2', 'K2', 6) :     0 :   0.0 :     1 : False : False : Binary
         ('E2', 'K2', 7) :     0 :   0.0 :     1 : False : False : Binary
         ('E2', 'K2', 8) :     0 :   0.0 :     1 : False : False : Binary
         ('E2', 'K2', 9) :     0 :   0.0 :     1 : False : False : Binary
        ('E2', 'K2', 10) :     0 :   0.0 :     1 : False : False : Binary
        ('E2', 'K2', 11) :     0 :   0.0 :     1 : False : False : Binary
        ('E2', 'K2', 12) :     0 :   0.0 :     1 : False : False : Binary
        ('E2', 'K2', 13) :     0 :   0.0 :     1 : False : False : Binary
         ('E2', 'L2', 0) :     0 :   0.0 :     1 : False : False : Binary
         ('E2', 'L2', 1) :     0 :   0.0 :     1 : False : False : Binary
         ('E2', 'L2', 2) :     0 :   0.0 :     1 : False : False : Binary
         ('E2', 'L2', 3) :     0 :   0.0 :     1 : False : False : Binary
         ('E2', 'L2', 4) :     0 :   0.0 :     1 : False : False : Binary
         ('E2', 'L2', 5) :     0 :   0.0 :     1 : False : False : Binary
         ('E2', 'L2', 6) :     0 :   0.0 :     1 : False : False : Binary
         ('E2', 'L2', 7) :     0 :   0.0 :     1 : False : False : Binary
         ('E2', 'L2', 8) :     0 :   0.0 :     1 : False : False : Binary
         ('E2', 'L2', 9) :     0 :   0.0 :     1 : False : False : Binary
        ('E2', 'L2', 10) :     0 :   0.0 :     1 : False : False : Binary
        ('E2', 'L2', 11) :     0 :   0.0 :     1 : False : False : Binary
        ('E2', 'L2', 12) :     0 :   0.0 :     1 : False : False : Binary
        ('E2', 'L2', 13) :     0 :   0.0 :     1 : False : False : Binary
         ('E2', 'M2', 0) :     0 :  -0.0 :     1 : False : False : Binary
         ('E2', 'M2', 1) :     0 :   1.0 :     1 : False : False : Binary
         ('E2', 'M2', 2) :     0 :  -0.0 :     1 : False : False : Binary
         ('E2', 'M2', 3) :     0 :   1.0 :     1 : False : False : Binary
         ('E2', 'M2', 4) :     0 :  -0.0 :     1 : False : False : Binary
         ('E2', 'M2', 5) :     0 :  -0.0 :     1 : False : False : Binary
         ('E2', 'M2', 6) :     0 :   0.0 :     1 : False : False : Binary
         ('E2', 'M2', 7) :     0 :  -0.0 :     1 : False : False : Binary
         ('E2', 'M2', 8) :     0 :   0.0 :     1 : False : False : Binary
         ('E2', 'M2', 9) :     0 :  -0.0 :     1 : False : False : Binary
        ('E2', 'M2', 10) :     0 :  -0.0 :     1 : False : False : Binary
        ('E2', 'M2', 11) :     0 :  -0.0 :     1 : False : False : Binary
        ('E2', 'M2', 12) :     0 :   0.0 :     1 : False : False : Binary
        ('E2', 'M2', 13) :     0 :  -0.0 :     1 : False : False : Binary
         ('E2', 'N2', 0) :     0 :   0.0 :     1 : False : False : Binary
         ('E2', 'N2', 1) :     0 :   0.0 :     1 : False : False : Binary
         ('E2', 'N2', 2) :     0 :  -0.0 :     1 : False : False : Binary
         ('E2', 'N2', 3) :     0 :  -0.0 :     1 : False : False : Binary
         ('E2', 'N2', 4) :     0 :  -0.0 :     1 : False : False : Binary
         ('E2', 'N2', 5) :     0 :  -0.0 :     1 : False : False : Binary
         ('E2', 'N2', 6) :     0 :   0.0 :     1 : False : False : Binary
         ('E2', 'N2', 7) :     0 :  -0.0 :     1 : False : False : Binary
         ('E2', 'N2', 8) :     0 :   1.0 :     1 : False : False : Binary
         ('E2', 'N2', 9) :     0 :  -0.0 :     1 : False : False : Binary
        ('E2', 'N2', 10) :     0 :   1.0 :     1 : False : False : Binary
        ('E2', 'N2', 11) :     0 :  -0.0 :     1 : False : False : Binary
        ('E2', 'N2', 12) :     0 :   1.0 :     1 : False : False : Binary
        ('E2', 'N2', 13) :     0 :  -0.0 :     1 : False : False : Binary
         ('L2', 'A2', 0) :     0 :   1.0 :     1 : False : False : Binary
         ('L2', 'A2', 1) :     0 :   1.0 :     1 : False : False : Binary
         ('L2', 'A2', 2) :     0 :   1.0 :     1 : False : False : Binary
         ('L2', 'A2', 3) :     0 :   0.0 :     1 : False : False : Binary
         ('L2', 'A2', 4) :     0 :  -0.0 :     1 : False : False : Binary
         ('L2', 'A2', 5) :     0 :   1.0 :     1 : False : False : Binary
         ('L2', 'A2', 6) :     0 :   1.0 :     1 : False : False : Binary
         ('L2', 'A2', 7) :     0 :   1.0 :     1 : False : False : Binary
         ('L2', 'A2', 8) :     0 :   1.0 :     1 : False : False : Binary
         ('L2', 'A2', 9) :     0 :   1.0 :     1 : False : False : Binary
        ('L2', 'A2', 10) :     0 :   0.0 :     1 : False : False : Binary
        ('L2', 'A2', 11) :     0 :   0.0 :     1 : False : False : Binary
        ('L2', 'A2', 12) :     0 :  -0.0 :     1 : False : False : Binary
        ('L2', 'A2', 13) :     0 :  -0.0 :     1 : False : False : Binary
         ('L2', 'B2', 0) :     0 :   0.0 :     1 : False : False : Binary
         ('L2', 'B2', 1) :     0 :   0.0 :     1 : False : False : Binary
         ('L2', 'B2', 2) :     0 :   0.0 :     1 : False : False : Binary
         ('L2', 'B2', 3) :     0 :  -0.0 :     1 : False : False : Binary
         ('L2', 'B2', 4) :     0 :   0.0 :     1 : False : False : Binary
         ('L2', 'B2', 5) :     0 :  -0.0 :     1 : False : False : Binary
         ('L2', 'B2', 6) :     0 :  -0.0 :     1 : False : False : Binary
         ('L2', 'B2', 7) :     0 :  -0.0 :     1 : False : False : Binary
         ('L2', 'B2', 8) :     0 :  -0.0 :     1 : False : False : Binary
         ('L2', 'B2', 9) :     0 :  -0.0 :     1 : False : False : Binary
        ('L2', 'B2', 10) :     0 :  -0.0 :     1 : False : False : Binary
        ('L2', 'B2', 11) :     0 :   0.0 :     1 : False : False : Binary
        ('L2', 'B2', 12) :     0 :  -0.0 :     1 : False : False : Binary
        ('L2', 'B2', 13) :     0 :  -0.0 :     1 : False : False : Binary
         ('L2', 'C2', 0) :     0 :   1.0 :     1 : False : False : Binary
         ('L2', 'C2', 1) :     0 :   0.0 :     1 : False : False : Binary
         ('L2', 'C2', 2) :     0 :   0.0 :     1 : False : False : Binary
         ('L2', 'C2', 3) :     0 :  -0.0 :     1 : False : False : Binary
         ('L2', 'C2', 4) :     0 :  -0.0 :     1 : False : False : Binary
         ('L2', 'C2', 5) :     0 :  -0.0 :     1 : False : False : Binary
         ('L2', 'C2', 6) :     0 :   0.0 :     1 : False : False : Binary
         ('L2', 'C2', 7) :     0 :  -0.0 :     1 : False : False : Binary
         ('L2', 'C2', 8) :     0 :  -0.0 :     1 : False : False : Binary
         ('L2', 'C2', 9) :     0 :  -0.0 :     1 : False : False : Binary
        ('L2', 'C2', 10) :     0 :  -0.0 :     1 : False : False : Binary
        ('L2', 'C2', 11) :     0 :  -0.0 :     1 : False : False : Binary
        ('L2', 'C2', 12) :     0 :   0.0 :     1 : False : False : Binary
        ('L2', 'C2', 13) :     0 :  -0.0 :     1 : False : False : Binary
         ('L2', 'D2', 0) :     0 :   0.0 :     1 : False : False : Binary
         ('L2', 'D2', 1) :     0 :   0.0 :     1 : False : False : Binary
         ('L2', 'D2', 2) :     0 :   0.0 :     1 : False : False : Binary
         ('L2', 'D2', 3) :     0 :   0.0 :     1 : False : False : Binary
         ('L2', 'D2', 4) :     0 :   0.0 :     1 : False : False : Binary
         ('L2', 'D2', 5) :     0 :   0.0 :     1 : False : False : Binary
         ('L2', 'D2', 6) :     0 :   0.0 :     1 : False : False : Binary
         ('L2', 'D2', 7) :     0 :   0.0 :     1 : False : False : Binary
         ('L2', 'D2', 8) :     0 :   0.0 :     1 : False : False : Binary
         ('L2', 'D2', 9) :     0 :   0.0 :     1 : False : False : Binary
        ('L2', 'D2', 10) :     0 :   0.0 :     1 : False : False : Binary
        ('L2', 'D2', 11) :     0 :   0.0 :     1 : False : False : Binary
        ('L2', 'D2', 12) :     0 :   0.0 :     1 : False : False : Binary
        ('L2', 'D2', 13) :     0 :   0.0 :     1 : False : False : Binary
         ('L2', 'E2', 0) :     0 :   0.0 :     1 : False : False : Binary
         ('L2', 'E2', 1) :     0 :   0.0 :     1 : False : False : Binary
         ('L2', 'E2', 2) :     0 :   1.0 :     1 : False : False : Binary
         ('L2', 'E2', 3) :     0 :   1.0 :     1 : False : False : Binary
         ('L2', 'E2', 4) :     0 :   1.0 :     1 : False : False : Binary
         ('L2', 'E2', 5) :     0 :   1.0 :     1 : False : False : Binary
         ('L2', 'E2', 6) :     0 :   1.0 :     1 : False : False : Binary
         ('L2', 'E2', 7) :     0 :   0.0 :     1 : False : False : Binary
         ('L2', 'E2', 8) :     0 :   0.0 :     1 : False : False : Binary
         ('L2', 'E2', 9) :     0 :   1.0 :     1 : False : False : Binary
        ('L2', 'E2', 10) :     0 :   1.0 :     1 : False : False : Binary
        ('L2', 'E2', 11) :     0 :   1.0 :     1 : False : False : Binary
        ('L2', 'E2', 12) :     0 :   0.0 :     1 : False : False : Binary
        ('L2', 'E2', 13) :     0 :   0.0 :     1 : False : False : Binary
         ('L2', 'F2', 0) :     0 :  -0.0 :     1 : False : False : Binary
         ('L2', 'F2', 1) :     0 :  -0.0 :     1 : False : False : Binary
         ('L2', 'F2', 2) :     0 :   0.0 :     1 : False : False : Binary
         ('L2', 'F2', 3) :     0 :   1.0 :     1 : False : False : Binary
         ('L2', 'F2', 4) :     0 :   1.0 :     1 : False : False : Binary
         ('L2', 'F2', 5) :     0 :   1.0 :     1 : False : False : Binary
         ('L2', 'F2', 6) :     0 :   1.0 :     1 : False : False : Binary
         ('L2', 'F2', 7) :     0 :  -0.0 :     1 : False : False : Binary
         ('L2', 'F2', 8) :     0 :   0.0 :     1 : False : False : Binary
         ('L2', 'F2', 9) :     0 :   0.0 :     1 : False : False : Binary
        ('L2', 'F2', 10) :     0 :   0.0 :     1 : False : False : Binary
        ('L2', 'F2', 11) :     0 :   1.0 :     1 : False : False : Binary
        ('L2', 'F2', 12) :     0 :  -0.0 :     1 : False : False : Binary
        ('L2', 'F2', 13) :     0 :   0.0 :     1 : False : False : Binary
         ('L2', 'G2', 0) :     0 :  -0.0 :     1 : False : False : Binary
         ('L2', 'G2', 1) :     0 :   0.0 :     1 : False : False : Binary
         ('L2', 'G2', 2) :     0 :   0.0 :     1 : False : False : Binary
         ('L2', 'G2', 3) :     0 :  -0.0 :     1 : False : False : Binary
         ('L2', 'G2', 4) :     0 :   0.0 :     1 : False : False : Binary
         ('L2', 'G2', 5) :     0 :   0.0 :     1 : False : False : Binary
         ('L2', 'G2', 6) :     0 :   0.0 :     1 : False : False : Binary
         ('L2', 'G2', 7) :     0 :   1.0 :     1 : False : False : Binary
         ('L2', 'G2', 8) :     0 :   1.0 :     1 : False : False : Binary
         ('L2', 'G2', 9) :     0 :   0.0 :     1 : False : False : Binary
        ('L2', 'G2', 10) :     0 :  -0.0 :     1 : False : False : Binary
        ('L2', 'G2', 11) :     0 :  -0.0 :     1 : False : False : Binary
        ('L2', 'G2', 12) :     0 :   0.0 :     1 : False : False : Binary
        ('L2', 'G2', 13) :     0 :   1.0 :     1 : False : False : Binary
         ('L2', 'H2', 0) :     0 :   0.0 :     1 : False : False : Binary
         ('L2', 'H2', 1) :     0 :   0.0 :     1 : False : False : Binary
         ('L2', 'H2', 2) :     0 :   1.0 :     1 : False : False : Binary
         ('L2', 'H2', 3) :     0 :   0.0 :     1 : False : False : Binary
         ('L2', 'H2', 4) :     0 :  -0.0 :     1 : False : False : Binary
         ('L2', 'H2', 5) :     0 :   0.0 :     1 : False : False : Binary
         ('L2', 'H2', 6) :     0 :   0.0 :     1 : False : False : Binary
         ('L2', 'H2', 7) :     0 :  -0.0 :     1 : False : False : Binary
         ('L2', 'H2', 8) :     0 :   0.0 :     1 : False : False : Binary
         ('L2', 'H2', 9) :     0 :   1.0 :     1 : False : False : Binary
        ('L2', 'H2', 10) :     0 :   0.0 :     1 : False : False : Binary
        ('L2', 'H2', 11) :     0 :   0.0 :     1 : False : False : Binary
        ('L2', 'H2', 12) :     0 :  -0.0 :     1 : False : False : Binary
        ('L2', 'H2', 13) :     0 :  -0.0 :     1 : False : False : Binary
         ('L2', 'I2', 0) :     0 :   0.0 :     1 : False : False : Binary
         ('L2', 'I2', 1) :     0 :   1.0 :     1 : False : False : Binary
         ('L2', 'I2', 2) :     0 :   1.0 :     1 : False : False : Binary
         ('L2', 'I2', 3) :     0 :   1.0 :     1 : False : False : Binary
         ('L2', 'I2', 4) :     0 :   1.0 :     1 : False : False : Binary
         ('L2', 'I2', 5) :     0 :   0.0 :     1 : False : False : Binary
         ('L2', 'I2', 6) :     0 :  -0.0 :     1 : False : False : Binary
         ('L2', 'I2', 7) :     0 :   0.0 :     1 : False : False : Binary
         ('L2', 'I2', 8) :     0 :   1.0 :     1 : False : False : Binary
         ('L2', 'I2', 9) :     0 :   1.0 :     1 : False : False : Binary
        ('L2', 'I2', 10) :     0 :   0.0 :     1 : False : False : Binary
        ('L2', 'I2', 11) :     0 :  -0.0 :     1 : False : False : Binary
        ('L2', 'I2', 12) :     0 :  -0.0 :     1 : False : False : Binary
        ('L2', 'I2', 13) :     0 :  -0.0 :     1 : False : False : Binary
         ('L2', 'J2', 0) :     0 :   1.0 :     1 : False : False : Binary
         ('L2', 'J2', 1) :     0 :   1.0 :     1 : False : False : Binary
         ('L2', 'J2', 2) :     0 :   1.0 :     1 : False : False : Binary
         ('L2', 'J2', 3) :     0 :   1.0 :     1 : False : False : Binary
         ('L2', 'J2', 4) :     0 :   1.0 :     1 : False : False : Binary
         ('L2', 'J2', 5) :     0 :   0.0 :     1 : False : False : Binary
         ('L2', 'J2', 6) :     0 :   0.0 :     1 : False : False : Binary
         ('L2', 'J2', 7) :     0 :  -0.0 :     1 : False : False : Binary
         ('L2', 'J2', 8) :     0 :   0.0 :     1 : False : False : Binary
         ('L2', 'J2', 9) :     0 :  -0.0 :     1 : False : False : Binary
        ('L2', 'J2', 10) :     0 :   1.0 :     1 : False : False : Binary
        ('L2', 'J2', 11) :     0 :   1.0 :     1 : False : False : Binary
        ('L2', 'J2', 12) :     0 :   1.0 :     1 : False : False : Binary
        ('L2', 'J2', 13) :     0 :   1.0 :     1 : False : False : Binary
         ('L2', 'K2', 0) :     0 :  -0.0 :     1 : False : False : Binary
         ('L2', 'K2', 1) :     0 :  -0.0 :     1 : False : False : Binary
         ('L2', 'K2', 2) :     0 :   1.0 :     1 : False : False : Binary
         ('L2', 'K2', 3) :     0 :  -0.0 :     1 : False : False : Binary
         ('L2', 'K2', 4) :     0 :  -0.0 :     1 : False : False : Binary
         ('L2', 'K2', 5) :     0 :   0.0 :     1 : False : False : Binary
         ('L2', 'K2', 6) :     0 :   0.0 :     1 : False : False : Binary
         ('L2', 'K2', 7) :     0 :  -0.0 :     1 : False : False : Binary
         ('L2', 'K2', 8) :     0 :   1.0 :     1 : False : False : Binary
         ('L2', 'K2', 9) :     0 :  -0.0 :     1 : False : False : Binary
        ('L2', 'K2', 10) :     0 :  -0.0 :     1 : False : False : Binary
        ('L2', 'K2', 11) :     0 :  -0.0 :     1 : False : False : Binary
        ('L2', 'K2', 12) :     0 :   1.0 :     1 : False : False : Binary
        ('L2', 'K2', 13) :     0 :   1.0 :     1 : False : False : Binary
         ('L2', 'L2', 0) :     0 :   1.0 :     1 : False : False : Binary
         ('L2', 'L2', 1) :     0 :  -0.0 :     1 : False : False : Binary
         ('L2', 'L2', 2) :     0 :   0.0 :     1 : False : False : Binary
         ('L2', 'L2', 3) :     0 :   0.0 :     1 : False : False : Binary
         ('L2', 'L2', 4) :     0 :  -0.0 :     1 : False : False : Binary
         ('L2', 'L2', 5) :     0 :   0.0 :     1 : False : False : Binary
         ('L2', 'L2', 6) :     0 :   0.0 :     1 : False : False : Binary
         ('L2', 'L2', 7) :     0 :   0.0 :     1 : False : False : Binary
         ('L2', 'L2', 8) :     0 :   0.0 :     1 : False : False : Binary
         ('L2', 'L2', 9) :     0 :   0.0 :     1 : False : False : Binary
        ('L2', 'L2', 10) :     0 :   1.0 :     1 : False : False : Binary
        ('L2', 'L2', 11) :     0 :   0.0 :     1 : False : False : Binary
        ('L2', 'L2', 12) :     0 :   1.0 :     1 : False : False : Binary
        ('L2', 'L2', 13) :     0 :   1.0 :     1 : False : False : Binary
         ('L2', 'M2', 0) :     0 :   0.0 :     1 : False : False : Binary
         ('L2', 'M2', 1) :     0 :  -0.0 :     1 : False : False : Binary
         ('L2', 'M2', 2) :     0 :   0.0 :     1 : False : False : Binary
         ('L2', 'M2', 3) :     0 :  -0.0 :     1 : False : False : Binary
         ('L2', 'M2', 4) :     0 :  -0.0 :     1 : False : False : Binary
         ('L2', 'M2', 5) :     0 :   1.0 :     1 : False : False : Binary
         ('L2', 'M2', 6) :     0 :   1.0 :     1 : False : False : Binary
         ('L2', 'M2', 7) :     0 :  -0.0 :     1 : False : False : Binary
         ('L2', 'M2', 8) :     0 :   0.0 :     1 : False : False : Binary
         ('L2', 'M2', 9) :     0 :  -0.0 :     1 : False : False : Binary
        ('L2', 'M2', 10) :     0 :  -0.0 :     1 : False : False : Binary
        ('L2', 'M2', 11) :     0 :  -0.0 :     1 : False : False : Binary
        ('L2', 'M2', 12) :     0 :  -0.0 :     1 : False : False : Binary
        ('L2', 'M2', 13) :     0 :   0.0 :     1 : False : False : Binary
         ('L2', 'N2', 0) :     0 :  -0.0 :     1 : False : False : Binary
         ('L2', 'N2', 1) :     0 :  -0.0 :     1 : False : False : Binary
         ('L2', 'N2', 2) :     0 :  -0.0 :     1 : False : False : Binary
         ('L2', 'N2', 3) :     0 :  -0.0 :     1 : False : False : Binary
         ('L2', 'N2', 4) :     0 :  -0.0 :     1 : False : False : Binary
         ('L2', 'N2', 5) :     0 :  -0.0 :     1 : False : False : Binary
         ('L2', 'N2', 6) :     0 :   0.0 :     1 : False : False : Binary
         ('L2', 'N2', 7) :     0 :  -0.0 :     1 : False : False : Binary
         ('L2', 'N2', 8) :     0 :  -0.0 :     1 : False : False : Binary
         ('L2', 'N2', 9) :     0 :  -0.0 :     1 : False : False : Binary
        ('L2', 'N2', 10) :     0 :  -0.0 :     1 : False : False : Binary
        ('L2', 'N2', 11) :     0 :  -0.0 :     1 : False : False : Binary
        ('L2', 'N2', 12) :     0 :   0.0 :     1 : False : False : Binary
        ('L2', 'N2', 13) :     0 :   1.0 :     1 : False : False : Binary
    IsRest : Size=196, Index=NURSES*DAYS
        Key        : Lower : Value : Upper : Fixed : Stale : Domain
         ('A2', 0) :     0 :  -0.0 :     1 : False : False : Binary
         ('A2', 1) :     0 :  -0.0 :     1 : False : False : Binary
         ('A2', 2) :     0 :  -0.0 :     1 : False : False : Binary
         ('A2', 3) :     0 :   1.0 :     1 : False : False : Binary
         ('A2', 4) :     0 :   1.0 :     1 : False : False : Binary
         ('A2', 5) :     0 :   0.0 :     1 : False : False : Binary
         ('A2', 6) :     0 :  -0.0 :     1 : False : False : Binary
         ('A2', 7) :     0 :  -0.0 :     1 : False : False : Binary
         ('A2', 8) :     0 :   0.0 :     1 : False : False : Binary
         ('A2', 9) :     0 :   0.0 :     1 : False : False : Binary
        ('A2', 10) :     0 :   1.0 :     1 : False : False : Binary
        ('A2', 11) :     0 :   1.0 :     1 : False : False : Binary
        ('A2', 12) :     0 :   1.0 :     1 : False : False : Binary
        ('A2', 13) :     0 :   1.0 :     1 : False : False : Binary
         ('B2', 0) :     0 :   1.0 :     1 : False : False : Binary
         ('B2', 1) :     0 :   1.0 :     1 : False : False : Binary
         ('B2', 2) :     0 :   0.0 :     1 : False : False : Binary
         ('B2', 3) :     0 :   0.0 :     1 : False : False : Binary
         ('B2', 4) :     0 :   0.0 :     1 : False : False : Binary
         ('B2', 5) :     0 :   1.0 :     1 : False : False : Binary
         ('B2', 6) :     0 :   1.0 :     1 : False : False : Binary
         ('B2', 7) :     0 :   0.0 :     1 : False : False : Binary
         ('B2', 8) :     0 :   0.0 :     1 : False : False : Binary
         ('B2', 9) :     0 :  -0.0 :     1 : False : False : Binary
        ('B2', 10) :     0 :   1.0 :     1 : False : False : Binary
        ('B2', 11) :     0 :   1.0 :     1 : False : False : Binary
        ('B2', 12) :     0 :   0.0 :     1 : False : False : Binary
        ('B2', 13) :     0 :   0.0 :     1 : False : False : Binary
         ('C2', 0) :     0 :  -0.0 :     1 : False : False : Binary
         ('C2', 1) :     0 :   1.0 :     1 : False : False : Binary
         ('C2', 2) :     0 :   1.0 :     1 : False : False : Binary
         ('C2', 3) :     0 :   0.0 :     1 : False : False : Binary
         ('C2', 4) :     0 :   0.0 :     1 : False : False : Binary
         ('C2', 5) :     0 :   0.0 :     1 : False : False : Binary
         ('C2', 6) :     0 :   0.0 :     1 : False : False : Binary
         ('C2', 7) :     0 :   1.0 :     1 : False : False : Binary
         ('C2', 8) :     0 :   1.0 :     1 : False : False : Binary
         ('C2', 9) :     0 :   0.0 :     1 : False : False : Binary
        ('C2', 10) :     0 :   0.0 :     1 : False : False : Binary
        ('C2', 11) :     0 :  -0.0 :     1 : False : False : Binary
        ('C2', 12) :     0 :   1.0 :     1 : False : False : Binary
        ('C2', 13) :     0 :   1.0 :     1 : False : False : Binary
         ('D2', 0) :     0 :   0.0 :     1 : False : False : Binary
         ('D2', 1) :     0 :   0.0 :     1 : False : False : Binary
         ('D2', 2) :     0 :  -0.0 :     1 : False : False : Binary
         ('D2', 3) :     0 :  -0.0 :     1 : False : False : Binary
         ('D2', 4) :     0 :   0.0 :     1 : False : False : Binary
         ('D2', 5) :     0 :   1.0 :     1 : False : False : Binary
         ('D2', 6) :     0 :   1.0 :     1 : False : False : Binary
         ('D2', 7) :     0 :   1.0 :     1 : False : False : Binary
         ('D2', 8) :     0 :   0.0 :     1 : False : False : Binary
         ('D2', 9) :     0 :  -0.0 :     1 : False : False : Binary
        ('D2', 10) :     0 :   0.0 :     1 : False : False : Binary
        ('D2', 11) :     0 :   1.0 :     1 : False : False : Binary
        ('D2', 12) :     0 :   1.0 :     1 : False : False : Binary
        ('D2', 13) :     0 :   0.0 :     1 : False : False : Binary
         ('E2', 0) :     0 :   1.0 :     1 : False : False : Binary
         ('E2', 1) :     0 :   1.0 :     1 : False : False : Binary
         ('E2', 2) :     0 :   0.0 :     1 : False : False : Binary
         ('E2', 3) :     0 :  -0.0 :     1 : False : False : Binary
         ('E2', 4) :     0 :   0.0 :     1 : False : False : Binary
         ('E2', 5) :     0 :   0.0 :     1 : False : False : Binary
         ('E2', 6) :     0 :   0.0 :     1 : False : False : Binary
         ('E2', 7) :     0 :   1.0 :     1 : False : False : Binary
         ('E2', 8) :     0 :   1.0 :     1 : False : False : Binary
         ('E2', 9) :     0 :   0.0 :     1 : False : False : Binary
        ('E2', 10) :     0 :  -0.0 :     1 : False : False : Binary
        ('E2', 11) :     0 :  -0.0 :     1 : False : False : Binary
        ('E2', 12) :     0 :   1.0 :     1 : False : False : Binary
        ('E2', 13) :     0 :   1.0 :     1 : False : False : Binary
         ('F2', 0) :     0 :   0.0 :     1 : False : False : Binary
         ('F2', 1) :     0 :   1.0 :     1 : False : False : Binary
         ('F2', 2) :     0 :   1.0 :     1 : False : False : Binary
         ('F2', 3) :     0 :   0.0 :     1 : False : False : Binary
         ('F2', 4) :     0 :   0.0 :     1 : False : False : Binary
         ('F2', 5) :     0 :  -0.0 :     1 : False : False : Binary
         ('F2', 6) :     0 :   0.0 :     1 : False : False : Binary
         ('F2', 7) :     0 :   1.0 :     1 : False : False : Binary
         ('F2', 8) :     0 :   1.0 :     1 : False : False : Binary
         ('F2', 9) :     0 :  -0.0 :     1 : False : False : Binary
        ('F2', 10) :     0 :   0.0 :     1 : False : False : Binary
        ('F2', 11) :     0 :   0.0 :     1 : False : False : Binary
        ('F2', 12) :     0 :   1.0 :     1 : False : False : Binary
        ('F2', 13) :     0 :   1.0 :     1 : False : False : Binary
         ('G2', 0) :     0 :   0.0 :     1 : False : False : Binary
         ('G2', 1) :     0 :  -0.0 :     1 : False : False : Binary
         ('G2', 2) :     0 :  -0.0 :     1 : False : False : Binary
         ('G2', 3) :     0 :   0.0 :     1 : False : False : Binary
         ('G2', 4) :     0 :   1.0 :     1 : False : False : Binary
         ('G2', 5) :     0 :   1.0 :     1 : False : False : Binary
         ('G2', 6) :     0 :   1.0 :     1 : False : False : Binary
         ('G2', 7) :     0 :   0.0 :     1 : False : False : Binary
         ('G2', 8) :     0 :   0.0 :     1 : False : False : Binary
         ('G2', 9) :     0 :   1.0 :     1 : False : False : Binary
        ('G2', 10) :     0 :   1.0 :     1 : False : False : Binary
        ('G2', 11) :     0 :   0.0 :     1 : False : False : Binary
        ('G2', 12) :     0 :   0.0 :     1 : False : False : Binary
        ('G2', 13) :     0 :  -0.0 :     1 : False : False : Binary
         ('H2', 0) :     0 :  -0.0 :     1 : False : False : Binary
         ('H2', 1) :     0 :  -0.0 :     1 : False : False : Binary
         ('H2', 2) :     0 :   0.0 :     1 : False : False : Binary
         ('H2', 3) :     0 :   1.0 :     1 : False : False : Binary
         ('H2', 4) :     0 :   1.0 :     1 : False : False : Binary
         ('H2', 5) :     0 :   0.0 :     1 : False : False : Binary
         ('H2', 6) :     0 :   0.0 :     1 : False : False : Binary
         ('H2', 7) :     0 :   0.0 :     1 : False : False : Binary
         ('H2', 8) :     0 :  -0.0 :     1 : False : False : Binary
         ('H2', 9) :     0 :   0.0 :     1 : False : False : Binary
        ('H2', 10) :     0 :   1.0 :     1 : False : False : Binary
        ('H2', 11) :     0 :   1.0 :     1 : False : False : Binary
        ('H2', 12) :     0 :   1.0 :     1 : False : False : Binary
        ('H2', 13) :     0 :   1.0 :     1 : False : False : Binary
         ('I2', 0) :     0 :   1.0 :     1 : False : False : Binary
         ('I2', 1) :     0 :  -0.0 :     1 : False : False : Binary
         ('I2', 2) :     0 :  -0.0 :     1 : False : False : Binary
         ('I2', 3) :     0 :  -0.0 :     1 : False : False : Binary
         ('I2', 4) :     0 :   0.0 :     1 : False : False : Binary
         ('I2', 5) :     0 :   1.0 :     1 : False : False : Binary
         ('I2', 6) :     0 :   1.0 :     1 : False : False : Binary
         ('I2', 7) :     0 :   0.0 :     1 : False : False : Binary
         ('I2', 8) :     0 :  -0.0 :     1 : False : False : Binary
         ('I2', 9) :     0 :  -0.0 :     1 : False : False : Binary
        ('I2', 10) :     0 :   1.0 :     1 : False : False : Binary
        ('I2', 11) :     0 :   1.0 :     1 : False : False : Binary
        ('I2', 12) :     0 :   0.0 :     1 : False : False : Binary
        ('I2', 13) :     0 :   0.0 :     1 : False : False : Binary
         ('J2', 0) :     0 :  -0.0 :     1 : False : False : Binary
         ('J2', 1) :     0 :  -0.0 :     1 : False : False : Binary
         ('J2', 2) :     0 :  -0.0 :     1 : False : False : Binary
         ('J2', 3) :     0 :   0.0 :     1 : False : False : Binary
         ('J2', 4) :     0 :   0.0 :     1 : False : False : Binary
         ('J2', 5) :     0 :   1.0 :     1 : False : False : Binary
         ('J2', 6) :     0 :   1.0 :     1 : False : False : Binary
         ('J2', 7) :     0 :   1.0 :     1 : False : False : Binary
         ('J2', 8) :     0 :   1.0 :     1 : False : False : Binary
         ('J2', 9) :     0 :   1.0 :     1 : False : False : Binary
        ('J2', 10) :     0 :  -0.0 :     1 : False : False : Binary
        ('J2', 11) :     0 :  -0.0 :     1 : False : False : Binary
        ('J2', 12) :     0 :   0.0 :     1 : False : False : Binary
        ('J2', 13) :     0 :   0.0 :     1 : False : False : Binary
         ('K2', 0) :     0 :   1.0 :     1 : False : False : Binary
         ('K2', 1) :     0 :   1.0 :     1 : False : False : Binary
         ('K2', 2) :     0 :   0.0 :     1 : False : False : Binary
         ('K2', 3) :     0 :   1.0 :     1 : False : False : Binary
         ('K2', 4) :     0 :   1.0 :     1 : False : False : Binary
         ('K2', 5) :     0 :   1.0 :     1 : False : False : Binary
         ('K2', 6) :     0 :   1.0 :     1 : False : False : Binary
         ('K2', 7) :     0 :   1.0 :     1 : False : False : Binary
         ('K2', 8) :     0 :   0.0 :     1 : False : False : Binary
         ('K2', 9) :     0 :   1.0 :     1 : False : False : Binary
        ('K2', 10) :     0 :   1.0 :     1 : False : False : Binary
        ('K2', 11) :     0 :   1.0 :     1 : False : False : Binary
        ('K2', 12) :     0 :   0.0 :     1 : False : False : Binary
        ('K2', 13) :     0 :   0.0 :     1 : False : False : Binary
         ('L2', 0) :     0 :   0.0 :     1 : False : False : Binary
         ('L2', 1) :     0 :   1.0 :     1 : False : False : Binary
         ('L2', 2) :     0 :   1.0 :     1 : False : False : Binary
         ('L2', 3) :     0 :   1.0 :     1 : False : False : Binary
         ('L2', 4) :     0 :   1.0 :     1 : False : False : Binary
         ('L2', 5) :     0 :   1.0 :     1 : False : False : Binary
         ('L2', 6) :     0 :   1.0 :     1 : False : False : Binary
         ('L2', 7) :     0 :   1.0 :     1 : False : False : Binary
         ('L2', 8) :     0 :   1.0 :     1 : False : False : Binary
         ('L2', 9) :     0 :   1.0 :     1 : False : False : Binary
        ('L2', 10) :     0 :  -0.0 :     1 : False : False : Binary
        ('L2', 11) :     0 :   1.0 :     1 : False : False : Binary
        ('L2', 12) :     0 :   0.0 :     1 : False : False : Binary
        ('L2', 13) :     0 :   0.0 :     1 : False : False : Binary
         ('M2', 0) :     0 :   1.0 :     1 : False : False : Binary
         ('M2', 1) :     0 :   0.0 :     1 : False : False : Binary
         ('M2', 2) :     0 :   1.0 :     1 : False : False : Binary
         ('M2', 3) :     0 :   0.0 :     1 : False : False : Binary
         ('M2', 4) :     0 :   1.0 :     1 : False : False : Binary
         ('M2', 5) :     0 :   0.0 :     1 : False : False : Binary
         ('M2', 6) :     0 :  -0.0 :     1 : False : False : Binary
         ('M2', 7) :     0 :   1.0 :     1 : False : False : Binary
         ('M2', 8) :     0 :   1.0 :     1 : False : False : Binary
         ('M2', 9) :     0 :   1.0 :     1 : False : False : Binary
        ('M2', 10) :     0 :   1.0 :     1 : False : False : Binary
        ('M2', 11) :     0 :   1.0 :     1 : False : False : Binary
        ('M2', 12) :     0 :   1.0 :     1 : False : False : Binary
        ('M2', 13) :     0 :   1.0 :     1 : False : False : Binary
         ('N2', 0) :     0 :   1.0 :     1 : False : False : Binary
         ('N2', 1) :     0 :   1.0 :     1 : False : False : Binary
         ('N2', 2) :     0 :   1.0 :     1 : False : False : Binary
         ('N2', 3) :     0 :   1.0 :     1 : False : False : Binary
         ('N2', 4) :     0 :   1.0 :     1 : False : False : Binary
         ('N2', 5) :     0 :   1.0 :     1 : False : False : Binary
         ('N2', 6) :     0 :   1.0 :     1 : False : False : Binary
         ('N2', 7) :     0 :   1.0 :     1 : False : False : Binary
         ('N2', 8) :     0 :  -0.0 :     1 : False : False : Binary
         ('N2', 9) :     0 :   1.0 :     1 : False : False : Binary
        ('N2', 10) :     0 :   0.0 :     1 : False : False : Binary
        ('N2', 11) :     0 :   1.0 :     1 : False : False : Binary
        ('N2', 12) :     0 :  -0.0 :     1 : False : False : Binary
        ('N2', 13) :     0 :   0.0 :     1 : False : False : Binary
    IsEndOfWorkBlock : Size=196, Index=NURSES*DAYS
        Key        : Lower : Value : Upper : Fixed : Stale : Domain
         ('A2', 0) :     0 :   1.0 :     1 : False : False : Binary
         ('A2', 1) :     0 :   1.0 :     1 : False : False : Binary
         ('A2', 2) :     0 :   1.0 :     1 : False : False : Binary
         ('A2', 3) :     0 :   1.0 :     1 : False : False : Binary
         ('A2', 4) :     0 :   0.0 :     1 : False : False : Binary
         ('A2', 5) :     0 :   0.0 :     1 : False : False : Binary
         ('A2', 6) :     0 :   1.0 :     1 : False : False : Binary
         ('A2', 7) :     0 :   1.0 :     1 : False : False : Binary
         ('A2', 8) :     0 :   1.0 :     1 : False : False : Binary
         ('A2', 9) :     0 :   1.0 :     1 : False : False : Binary
        ('A2', 10) :     0 :   1.0 :     1 : False : False : Binary
        ('A2', 11) :     0 :   0.0 :     1 : False : False : Binary
        ('A2', 12) :     0 :   0.0 :     1 : False : False : Binary
        ('A2', 13) :     0 :   0.0 :     1 : False : False : Binary
         ('B2', 0) :     0 :   1.0 :     1 : False : False : Binary
         ('B2', 1) :     0 :   0.0 :     1 : False : False : Binary
         ('B2', 2) :     0 :   0.0 :     1 : False : False : Binary
         ('B2', 3) :     0 :   1.0 :     1 : False : False : Binary
         ('B2', 4) :     0 :   1.0 :     1 : False : False : Binary
         ('B2', 5) :     0 :   1.0 :     1 : False : False : Binary
         ('B2', 6) :     0 :   0.0 :     1 : False : False : Binary
         ('B2', 7) :     0 :   0.0 :     1 : False : False : Binary
         ('B2', 8) :     0 :   1.0 :     1 : False : False : Binary
         ('B2', 9) :     0 :   1.0 :     1 : False : False : Binary
        ('B2', 10) :     0 :   1.0 :     1 : False : False : Binary
        ('B2', 11) :     0 :   0.0 :     1 : False : False : Binary
        ('B2', 12) :     0 :   0.0 :     1 : False : False : Binary
        ('B2', 13) :     0 :   0.0 :     1 : False : False : Binary
         ('C2', 0) :     0 :   1.0 :     1 : False : False : Binary
         ('C2', 1) :     0 :   1.0 :     1 : False : False : Binary
         ('C2', 2) :     0 :   0.0 :     1 : False : False : Binary
         ('C2', 3) :     0 :   0.0 :     1 : False : False : Binary
         ('C2', 4) :     0 :   1.0 :     1 : False : False : Binary
         ('C2', 5) :     0 :   1.0 :     1 : False : False : Binary
         ('C2', 6) :     0 :   1.0 :     1 : False : False : Binary
         ('C2', 7) :     0 :   1.0 :     1 : False : False : Binary
         ('C2', 8) :     0 :   0.0 :     1 : False : False : Binary
         ('C2', 9) :     0 :   0.0 :     1 : False : False : Binary
        ('C2', 10) :     0 :   1.0 :     1 : False : False : Binary
        ('C2', 11) :     0 :   1.0 :     1 : False : False : Binary
        ('C2', 12) :     0 :   1.0 :     1 : False : False : Binary
        ('C2', 13) :     0 :   0.0 :     1 : False : False : Binary
         ('D2', 0) :     0 :   1.0 :     1 : False : False : Binary
         ('D2', 1) :     0 :   1.0 :     1 : False : False : Binary
         ('D2', 2) :     0 :   1.0 :     1 : False : False : Binary
         ('D2', 3) :     0 :   1.0 :     1 : False : False : Binary
         ('D2', 4) :     0 :   1.0 :     1 : False : False : Binary
         ('D2', 5) :     0 :   1.0 :     1 : False : False : Binary
         ('D2', 6) :     0 :   0.0 :     1 : False : False : Binary
         ('D2', 7) :     0 :   0.0 :     1 : False : False : Binary
         ('D2', 8) :     0 :   0.0 :     1 : False : False : Binary
         ('D2', 9) :     0 :   1.0 :     1 : False : False : Binary
        ('D2', 10) :     0 :   1.0 :     1 : False : False : Binary
        ('D2', 11) :     0 :   1.0 :     1 : False : False : Binary
        ('D2', 12) :     0 :   0.0 :     1 : False : False : Binary
        ('D2', 13) :     0 :   0.0 :     1 : False : False : Binary
         ('E2', 0) :     0 :   1.0 :     1 : False : False : Binary
         ('E2', 1) :     0 :   0.0 :     1 : False : False : Binary
         ('E2', 2) :     0 :   0.0 :     1 : False : False : Binary
         ('E2', 3) :     0 :   1.0 :     1 : False : False : Binary
         ('E2', 4) :     0 :   1.0 :     1 : False : False : Binary
         ('E2', 5) :     0 :   1.0 :     1 : False : False : Binary
         ('E2', 6) :     0 :   1.0 :     1 : False : False : Binary
         ('E2', 7) :     0 :   1.0 :     1 : False : False : Binary
         ('E2', 8) :     0 :   0.0 :     1 : False : False : Binary
         ('E2', 9) :     0 :   0.0 :     1 : False : False : Binary
        ('E2', 10) :     0 :   1.0 :     1 : False : False : Binary
        ('E2', 11) :     0 :   1.0 :     1 : False : False : Binary
        ('E2', 12) :     0 :   1.0 :     1 : False : False : Binary
        ('E2', 13) :     0 :   0.0 :     1 : False : False : Binary
         ('F2', 0) :     0 :   1.0 :     1 : False : False : Binary
         ('F2', 1) :     0 :   1.0 :     1 : False : False : Binary
         ('F2', 2) :     0 :   0.0 :     1 : False : False : Binary
         ('F2', 3) :     0 :   0.0 :     1 : False : False : Binary
         ('F2', 4) :     0 :   1.0 :     1 : False : False : Binary
         ('F2', 5) :     0 :   1.0 :     1 : False : False : Binary
         ('F2', 6) :     0 :   1.0 :     1 : False : False : Binary
         ('F2', 7) :     0 :   1.0 :     1 : False : False : Binary
         ('F2', 8) :     0 :   0.0 :     1 : False : False : Binary
         ('F2', 9) :     0 :   0.0 :     1 : False : False : Binary
        ('F2', 10) :     0 :   1.0 :     1 : False : False : Binary
        ('F2', 11) :     0 :   1.0 :     1 : False : False : Binary
        ('F2', 12) :     0 :   1.0 :     1 : False : False : Binary
        ('F2', 13) :     0 :   0.0 :     1 : False : False : Binary
         ('G2', 0) :     0 :   1.0 :     1 : False : False : Binary
         ('G2', 1) :     0 :   1.0 :     1 : False : False : Binary
         ('G2', 2) :     0 :   1.0 :     1 : False : False : Binary
         ('G2', 3) :     0 :   1.0 :     1 : False : False : Binary
         ('G2', 4) :     0 :   1.0 :     1 : False : False : Binary
         ('G2', 5) :     0 :   0.0 :     1 : False : False : Binary
         ('G2', 6) :     0 :   0.0 :     1 : False : False : Binary
         ('G2', 7) :     0 :   0.0 :     1 : False : False : Binary
         ('G2', 8) :     0 :   1.0 :     1 : False : False : Binary
         ('G2', 9) :     0 :   1.0 :     1 : False : False : Binary
        ('G2', 10) :     0 :   0.0 :     1 : False : False : Binary
        ('G2', 11) :     0 :   0.0 :     1 : False : False : Binary
        ('G2', 12) :     0 :   1.0 :     1 : False : False : Binary
        ('G2', 13) :     0 :   0.0 :     1 : False : False : Binary
         ('H2', 0) :     0 :   1.0 :     1 : False : False : Binary
         ('H2', 1) :     0 :   1.0 :     1 : False : False : Binary
         ('H2', 2) :     0 :   1.0 :     1 : False : False : Binary
         ('H2', 3) :     0 :   1.0 :     1 : False : False : Binary
         ('H2', 4) :     0 :   0.0 :     1 : False : False : Binary
         ('H2', 5) :     0 :   0.0 :     1 : False : False : Binary
         ('H2', 6) :     0 :   1.0 :     1 : False : False : Binary
         ('H2', 7) :     0 :   1.0 :     1 : False : False : Binary
         ('H2', 8) :     0 :   1.0 :     1 : False : False : Binary
         ('H2', 9) :     0 :   1.0 :     1 : False : False : Binary
        ('H2', 10) :     0 :   1.0 :     1 : False : False : Binary
        ('H2', 11) :     0 :   0.0 :     1 : False : False : Binary
        ('H2', 12) :     0 :   0.0 :     1 : False : False : Binary
        ('H2', 13) :     0 :   0.0 :     1 : False : False : Binary
         ('I2', 0) :     0 :   1.0 :     1 : False : False : Binary
         ('I2', 1) :     0 :   0.0 :     1 : False : False : Binary
         ('I2', 2) :     0 :   1.0 :     1 : False : False : Binary
         ('I2', 3) :     0 :   1.0 :     1 : False : False : Binary
         ('I2', 4) :     0 :   1.0 :     1 : False : False : Binary
         ('I2', 5) :     0 :   1.0 :     1 : False : False : Binary
         ('I2', 6) :     0 :   0.0 :     1 : False : False : Binary
         ('I2', 7) :     0 :   0.0 :     1 : False : False : Binary
         ('I2', 8) :     0 :   1.0 :     1 : False : False : Binary
         ('I2', 9) :     0 :   1.0 :     1 : False : False : Binary
        ('I2', 10) :     0 :   1.0 :     1 : False : False : Binary
        ('I2', 11) :     0 :   0.0 :     1 : False : False : Binary
        ('I2', 12) :     0 :   0.0 :     1 : False : False : Binary
        ('I2', 13) :     0 :   0.0 :     1 : False : False : Binary
         ('J2', 0) :     0 :   1.0 :     1 : False : False : Binary
         ('J2', 1) :     0 :   1.0 :     1 : False : False : Binary
         ('J2', 2) :     0 :   1.0 :     1 : False : False : Binary
         ('J2', 3) :     0 :   1.0 :     1 : False : False : Binary
         ('J2', 4) :     0 :   1.0 :     1 : False : False : Binary
         ('J2', 5) :     0 :   1.0 :     1 : False : False : Binary
         ('J2', 6) :     0 :   0.0 :     1 : False : False : Binary
         ('J2', 7) :     0 :   0.0 :     1 : False : False : Binary
         ('J2', 8) :     0 :   0.0 :     1 : False : False : Binary
         ('J2', 9) :     0 :   0.0 :     1 : False : False : Binary
        ('J2', 10) :     0 :   0.0 :     1 : False : False : Binary
        ('J2', 11) :     0 :   1.0 :     1 : False : False : Binary
        ('J2', 12) :     0 :   1.0 :     1 : False : False : Binary
        ('J2', 13) :     0 :   0.0 :     1 : False : False : Binary
         ('K2', 0) :     0 :  None :     1 : False :  True : Binary
         ('K2', 1) :     0 :  None :     1 : False :  True : Binary
         ('K2', 2) :     0 :  None :     1 : False :  True : Binary
         ('K2', 3) :     0 :  None :     1 : False :  True : Binary
         ('K2', 4) :     0 :  None :     1 : False :  True : Binary
         ('K2', 5) :     0 :  None :     1 : False :  True : Binary
         ('K2', 6) :     0 :  None :     1 : False :  True : Binary
         ('K2', 7) :     0 :  None :     1 : False :  True : Binary
         ('K2', 8) :     0 :  None :     1 : False :  True : Binary
         ('K2', 9) :     0 :  None :     1 : False :  True : Binary
        ('K2', 10) :     0 :  None :     1 : False :  True : Binary
        ('K2', 11) :     0 :  None :     1 : False :  True : Binary
        ('K2', 12) :     0 :  None :     1 : False :  True : Binary
        ('K2', 13) :     0 :  None :     1 : False :  True : Binary
         ('L2', 0) :     0 :  None :     1 : False :  True : Binary
         ('L2', 1) :     0 :  None :     1 : False :  True : Binary
         ('L2', 2) :     0 :  None :     1 : False :  True : Binary
         ('L2', 3) :     0 :  None :     1 : False :  True : Binary
         ('L2', 4) :     0 :  None :     1 : False :  True : Binary
         ('L2', 5) :     0 :  None :     1 : False :  True : Binary
         ('L2', 6) :     0 :  None :     1 : False :  True : Binary
         ('L2', 7) :     0 :  None :     1 : False :  True : Binary
         ('L2', 8) :     0 :  None :     1 : False :  True : Binary
         ('L2', 9) :     0 :  None :     1 : False :  True : Binary
        ('L2', 10) :     0 :  None :     1 : False :  True : Binary
        ('L2', 11) :     0 :  None :     1 : False :  True : Binary
        ('L2', 12) :     0 :  None :     1 : False :  True : Binary
        ('L2', 13) :     0 :  None :     1 : False :  True : Binary
         ('M2', 0) :     0 :  None :     1 : False :  True : Binary
         ('M2', 1) :     0 :  None :     1 : False :  True : Binary
         ('M2', 2) :     0 :  None :     1 : False :  True : Binary
         ('M2', 3) :     0 :  None :     1 : False :  True : Binary
         ('M2', 4) :     0 :  None :     1 : False :  True : Binary
         ('M2', 5) :     0 :  None :     1 : False :  True : Binary
         ('M2', 6) :     0 :  None :     1 : False :  True : Binary
         ('M2', 7) :     0 :  None :     1 : False :  True : Binary
         ('M2', 8) :     0 :  None :     1 : False :  True : Binary
         ('M2', 9) :     0 :  None :     1 : False :  True : Binary
        ('M2', 10) :     0 :  None :     1 : False :  True : Binary
        ('M2', 11) :     0 :  None :     1 : False :  True : Binary
        ('M2', 12) :     0 :  None :     1 : False :  True : Binary
        ('M2', 13) :     0 :  None :     1 : False :  True : Binary
         ('N2', 0) :     0 :  None :     1 : False :  True : Binary
         ('N2', 1) :     0 :  None :     1 : False :  True : Binary
         ('N2', 2) :     0 :  None :     1 : False :  True : Binary
         ('N2', 3) :     0 :  None :     1 : False :  True : Binary
         ('N2', 4) :     0 :  None :     1 : False :  True : Binary
         ('N2', 5) :     0 :  None :     1 : False :  True : Binary
         ('N2', 6) :     0 :  None :     1 : False :  True : Binary
         ('N2', 7) :     0 :  None :     1 : False :  True : Binary
         ('N2', 8) :     0 :  None :     1 : False :  True : Binary
         ('N2', 9) :     0 :  None :     1 : False :  True : Binary
        ('N2', 10) :     0 :  None :     1 : False :  True : Binary
        ('N2', 11) :     0 :  None :     1 : False :  True : Binary
        ('N2', 12) :     0 :  None :     1 : False :  True : Binary
        ('N2', 13) :     0 :  None :     1 : False :  True : Binary
    IsEndOfRestBlock : Size=196, Index=NURSES*DAYS
        Key        : Lower : Value : Upper : Fixed : Stale : Domain
         ('A2', 0) :     0 :   1.0 :     1 : False : False : Binary
         ('A2', 1) :     0 :   0.0 :     1 : False : False : Binary
         ('A2', 2) :     0 :   0.0 :     1 : False : False : Binary
         ('A2', 3) :     0 :   0.0 :     1 : False : False : Binary
         ('A2', 4) :     0 :   1.0 :     1 : False : False : Binary
         ('A2', 5) :     0 :   1.0 :     1 : False : False : Binary
         ('A2', 6) :     0 :   0.0 :     1 : False : False : Binary
         ('A2', 7) :     0 :   0.0 :     1 : False : False : Binary
         ('A2', 8) :     0 :   0.0 :     1 : False : False : Binary
         ('A2', 9) :     0 :   0.0 :     1 : False : False : Binary
        ('A2', 10) :     0 :   0.0 :     1 : False : False : Binary
        ('A2', 11) :     0 :   1.0 :     1 : False : False : Binary
        ('A2', 12) :     0 :   1.0 :     1 : False : False : Binary
        ('A2', 13) :     0 :   0.0 :     1 : False : False : Binary
         ('B2', 0) :     0 :   1.0 :     1 : False : False : Binary
         ('B2', 1) :     0 :   1.0 :     1 : False : False : Binary
         ('B2', 2) :     0 :   1.0 :     1 : False : False : Binary
         ('B2', 3) :     0 :   0.0 :     1 : False : False : Binary
         ('B2', 4) :     0 :   0.0 :     1 : False : False : Binary
         ('B2', 5) :     0 :   0.0 :     1 : False : False : Binary
         ('B2', 6) :     0 :   1.0 :     1 : False : False : Binary
         ('B2', 7) :     0 :   1.0 :     1 : False : False : Binary
         ('B2', 8) :     0 :   0.0 :     1 : False : False : Binary
         ('B2', 9) :     0 :   0.0 :     1 : False : False : Binary
        ('B2', 10) :     0 :   0.0 :     1 : False : False : Binary
        ('B2', 11) :     0 :   1.0 :     1 : False : False : Binary
        ('B2', 12) :     0 :   1.0 :     1 : False : False : Binary
        ('B2', 13) :     0 :   0.0 :     1 : False : False : Binary
         ('C2', 0) :     0 :   1.0 :     1 : False : False : Binary
         ('C2', 1) :     0 :   0.0 :     1 : False : False : Binary
         ('C2', 2) :     0 :   1.0 :     1 : False : False : Binary
         ('C2', 3) :     0 :   1.0 :     1 : False : False : Binary
         ('C2', 4) :     0 :   0.0 :     1 : False : False : Binary
         ('C2', 5) :     0 :   0.0 :     1 : False : False : Binary
         ('C2', 6) :     0 :   0.0 :     1 : False : False : Binary
         ('C2', 7) :     0 :   0.0 :     1 : False : False : Binary
         ('C2', 8) :     0 :   1.0 :     1 : False : False : Binary
         ('C2', 9) :     0 :   1.0 :     1 : False : False : Binary
        ('C2', 10) :     0 :   0.0 :     1 : False : False : Binary
        ('C2', 11) :     0 :   0.0 :     1 : False : False : Binary
        ('C2', 12) :     0 :   0.0 :     1 : False : False : Binary
        ('C2', 13) :     0 :   0.0 :     1 : False : False : Binary
         ('D2', 0) :     0 :   1.0 :     1 : False : False : Binary
         ('D2', 1) :     0 :   0.0 :     1 : False : False : Binary
         ('D2', 2) :     0 :   0.0 :     1 : False : False : Binary
         ('D2', 3) :     0 :   0.0 :     1 : False : False : Binary
         ('D2', 4) :     0 :   0.0 :     1 : False : False : Binary
         ('D2', 5) :     0 :   0.0 :     1 : False : False : Binary
         ('D2', 6) :     0 :   1.0 :     1 : False : False : Binary
         ('D2', 7) :     0 :   1.0 :     1 : False : False : Binary
         ('D2', 8) :     0 :   1.0 :     1 : False : False : Binary
         ('D2', 9) :     0 :   0.0 :     1 : False : False : Binary
        ('D2', 10) :     0 :   0.0 :     1 : False : False : Binary
        ('D2', 11) :     0 :   0.0 :     1 : False : False : Binary
        ('D2', 12) :     0 :   1.0 :     1 : False : False : Binary
        ('D2', 13) :     0 :   0.0 :     1 : False : False : Binary
         ('E2', 0) :     0 :   1.0 :     1 : False : False : Binary
         ('E2', 1) :     0 :   1.0 :     1 : False : False : Binary
         ('E2', 2) :     0 :   1.0 :     1 : False : False : Binary
         ('E2', 3) :     0 :   0.0 :     1 : False : False : Binary
         ('E2', 4) :     0 :   0.0 :     1 : False : False : Binary
         ('E2', 5) :     0 :   0.0 :     1 : False : False : Binary
         ('E2', 6) :     0 :   0.0 :     1 : False : False : Binary
         ('E2', 7) :     0 :   0.0 :     1 : False : False : Binary
         ('E2', 8) :     0 :   1.0 :     1 : False : False : Binary
         ('E2', 9) :     0 :   1.0 :     1 : False : False : Binary
        ('E2', 10) :     0 :   0.0 :     1 : False : False : Binary
        ('E2', 11) :     0 :   0.0 :     1 : False : False : Binary
        ('E2', 12) :     0 :   0.0 :     1 : False : False : Binary
        ('E2', 13) :     0 :   0.0 :     1 : False : False : Binary
         ('F2', 0) :     0 :   1.0 :     1 : False : False : Binary
         ('F2', 1) :     0 :   0.0 :     1 : False : False : Binary
         ('F2', 2) :     0 :   1.0 :     1 : False : False : Binary
         ('F2', 3) :     0 :   1.0 :     1 : False : False : Binary
         ('F2', 4) :     0 :   0.0 :     1 : False : False : Binary
         ('F2', 5) :     0 :   0.0 :     1 : False : False : Binary
         ('F2', 6) :     0 :   0.0 :     1 : False : False : Binary
         ('F2', 7) :     0 :   0.0 :     1 : False : False : Binary
         ('F2', 8) :     0 :   1.0 :     1 : False : False : Binary
         ('F2', 9) :     0 :   1.0 :     1 : False : False : Binary
        ('F2', 10) :     0 :   0.0 :     1 : False : False : Binary
        ('F2', 11) :     0 :   0.0 :     1 : False : False : Binary
        ('F2', 12) :     0 :   0.0 :     1 : False : False : Binary
        ('F2', 13) :     0 :   0.0 :     1 : False : False : Binary
         ('G2', 0) :     0 :   1.0 :     1 : False : False : Binary
         ('G2', 1) :     0 :   0.0 :     1 : False : False : Binary
         ('G2', 2) :     0 :   0.0 :     1 : False : False : Binary
         ('G2', 3) :     0 :   0.0 :     1 : False : False : Binary
         ('G2', 4) :     0 :   0.0 :     1 : False : False : Binary
         ('G2', 5) :     0 :   1.0 :     1 : False : False : Binary
         ('G2', 6) :     0 :   1.0 :     1 : False : False : Binary
         ('G2', 7) :     0 :   1.0 :     1 : False : False : Binary
         ('G2', 8) :     0 :   0.0 :     1 : False : False : Binary
         ('G2', 9) :     0 :   0.0 :     1 : False : False : Binary
        ('G2', 10) :     0 :   1.0 :     1 : False : False : Binary
        ('G2', 11) :     0 :   1.0 :     1 : False : False : Binary
        ('G2', 12) :     0 :   0.0 :     1 : False : False : Binary
        ('G2', 13) :     0 :   0.0 :     1 : False : False : Binary
         ('H2', 0) :     0 :   1.0 :     1 : False : False : Binary
         ('H2', 1) :     0 :   0.0 :     1 : False : False : Binary
         ('H2', 2) :     0 :   0.0 :     1 : False : False : Binary
         ('H2', 3) :     0 :   0.0 :     1 : False : False : Binary
         ('H2', 4) :     0 :   1.0 :     1 : False : False : Binary
         ('H2', 5) :     0 :   1.0 :     1 : False : False : Binary
         ('H2', 6) :     0 :   0.0 :     1 : False : False : Binary
         ('H2', 7) :     0 :   0.0 :     1 : False : False : Binary
         ('H2', 8) :     0 :   0.0 :     1 : False : False : Binary
         ('H2', 9) :     0 :   0.0 :     1 : False : False : Binary
        ('H2', 10) :     0 :   0.0 :     1 : False : False : Binary
        ('H2', 11) :     0 :   1.0 :     1 : False : False : Binary
        ('H2', 12) :     0 :   1.0 :     1 : False : False : Binary
        ('H2', 13) :     0 :   0.0 :     1 : False : False : Binary
         ('I2', 0) :     0 :   1.0 :     1 : False : False : Binary
         ('I2', 1) :     0 :   1.0 :     1 : False : False : Binary
         ('I2', 2) :     0 :   0.0 :     1 : False : False : Binary
         ('I2', 3) :     0 :   0.0 :     1 : False : False : Binary
         ('I2', 4) :     0 :   0.0 :     1 : False : False : Binary
         ('I2', 5) :     0 :   0.0 :     1 : False : False : Binary
         ('I2', 6) :     0 :   1.0 :     1 : False : False : Binary
         ('I2', 7) :     0 :   1.0 :     1 : False : False : Binary
         ('I2', 8) :     0 :   0.0 :     1 : False : False : Binary
         ('I2', 9) :     0 :   0.0 :     1 : False : False : Binary
        ('I2', 10) :     0 :   0.0 :     1 : False : False : Binary
        ('I2', 11) :     0 :   1.0 :     1 : False : False : Binary
        ('I2', 12) :     0 :   1.0 :     1 : False : False : Binary
        ('I2', 13) :     0 :   0.0 :     1 : False : False : Binary
         ('J2', 0) :     0 :   1.0 :     1 : False : False : Binary
         ('J2', 1) :     0 :   0.0 :     1 : False : False : Binary
         ('J2', 2) :     0 :   0.0 :     1 : False : False : Binary
         ('J2', 3) :     0 :   0.0 :     1 : False : False : Binary
         ('J2', 4) :     0 :   0.0 :     1 : False : False : Binary
         ('J2', 5) :     0 :   0.0 :     1 : False : False : Binary
         ('J2', 6) :     0 :   1.0 :     1 : False : False : Binary
         ('J2', 7) :     0 :   1.0 :     1 : False : False : Binary
         ('J2', 8) :     0 :   1.0 :     1 : False : False : Binary
         ('J2', 9) :     0 :   1.0 :     1 : False : False : Binary
        ('J2', 10) :     0 :   1.0 :     1 : False : False : Binary
        ('J2', 11) :     0 :   0.0 :     1 : False : False : Binary
        ('J2', 12) :     0 :   0.0 :     1 : False : False : Binary
        ('J2', 13) :     0 :   0.0 :     1 : False : False : Binary
         ('K2', 0) :     0 :  None :     1 : False :  True : Binary
         ('K2', 1) :     0 :  None :     1 : False :  True : Binary
         ('K2', 2) :     0 :  None :     1 : False :  True : Binary
         ('K2', 3) :     0 :  None :     1 : False :  True : Binary
         ('K2', 4) :     0 :  None :     1 : False :  True : Binary
         ('K2', 5) :     0 :  None :     1 : False :  True : Binary
         ('K2', 6) :     0 :  None :     1 : False :  True : Binary
         ('K2', 7) :     0 :  None :     1 : False :  True : Binary
         ('K2', 8) :     0 :  None :     1 : False :  True : Binary
         ('K2', 9) :     0 :  None :     1 : False :  True : Binary
        ('K2', 10) :     0 :  None :     1 : False :  True : Binary
        ('K2', 11) :     0 :  None :     1 : False :  True : Binary
        ('K2', 12) :     0 :  None :     1 : False :  True : Binary
        ('K2', 13) :     0 :  None :     1 : False :  True : Binary
         ('L2', 0) :     0 :  None :     1 : False :  True : Binary
         ('L2', 1) :     0 :  None :     1 : False :  True : Binary
         ('L2', 2) :     0 :  None :     1 : False :  True : Binary
         ('L2', 3) :     0 :  None :     1 : False :  True : Binary
         ('L2', 4) :     0 :  None :     1 : False :  True : Binary
         ('L2', 5) :     0 :  None :     1 : False :  True : Binary
         ('L2', 6) :     0 :  None :     1 : False :  True : Binary
         ('L2', 7) :     0 :  None :     1 : False :  True : Binary
         ('L2', 8) :     0 :  None :     1 : False :  True : Binary
         ('L2', 9) :     0 :  None :     1 : False :  True : Binary
        ('L2', 10) :     0 :  None :     1 : False :  True : Binary
        ('L2', 11) :     0 :  None :     1 : False :  True : Binary
        ('L2', 12) :     0 :  None :     1 : False :  True : Binary
        ('L2', 13) :     0 :  None :     1 : False :  True : Binary
         ('M2', 0) :     0 :  None :     1 : False :  True : Binary
         ('M2', 1) :     0 :  None :     1 : False :  True : Binary
         ('M2', 2) :     0 :  None :     1 : False :  True : Binary
         ('M2', 3) :     0 :  None :     1 : False :  True : Binary
         ('M2', 4) :     0 :  None :     1 : False :  True : Binary
         ('M2', 5) :     0 :  None :     1 : False :  True : Binary
         ('M2', 6) :     0 :  None :     1 : False :  True : Binary
         ('M2', 7) :     0 :  None :     1 : False :  True : Binary
         ('M2', 8) :     0 :  None :     1 : False :  True : Binary
         ('M2', 9) :     0 :  None :     1 : False :  True : Binary
        ('M2', 10) :     0 :  None :     1 : False :  True : Binary
        ('M2', 11) :     0 :  None :     1 : False :  True : Binary
        ('M2', 12) :     0 :  None :     1 : False :  True : Binary
        ('M2', 13) :     0 :  None :     1 : False :  True : Binary
         ('N2', 0) :     0 :  None :     1 : False :  True : Binary
         ('N2', 1) :     0 :  None :     1 : False :  True : Binary
         ('N2', 2) :     0 :  None :     1 : False :  True : Binary
         ('N2', 3) :     0 :  None :     1 : False :  True : Binary
         ('N2', 4) :     0 :  None :     1 : False :  True : Binary
         ('N2', 5) :     0 :  None :     1 : False :  True : Binary
         ('N2', 6) :     0 :  None :     1 : False :  True : Binary
         ('N2', 7) :     0 :  None :     1 : False :  True : Binary
         ('N2', 8) :     0 :  None :     1 : False :  True : Binary
         ('N2', 9) :     0 :  None :     1 : False :  True : Binary
        ('N2', 10) :     0 :  None :     1 : False :  True : Binary
        ('N2', 11) :     0 :  None :     1 : False :  True : Binary
        ('N2', 12) :     0 :  None :     1 : False :  True : Binary
        ('N2', 13) :     0 :  None :     1 : False :  True : Binary
    HasWeekendWork : Size=28, Index=NURSES*WEEKS
        Key       : Lower : Value : Upper : Fixed : Stale : Domain
        ('A2', 0) :     0 :   1.0 :     1 : False : False : Binary
        ('A2', 1) :     0 :   0.0 :     1 : False : False : Binary
        ('B2', 0) :     0 :   0.0 :     1 : False : False : Binary
        ('B2', 1) :     0 :   1.0 :     1 : False : False : Binary
        ('C2', 0) :     0 :   1.0 :     1 : False : False : Binary
        ('C2', 1) :     0 :   0.0 :     1 : False : False : Binary
        ('D2', 0) :     0 :   0.0 :     1 : False : False : Binary
        ('D2', 1) :     0 :   1.0 :     1 : False : False : Binary
        ('E2', 0) :     0 :   1.0 :     1 : False : False : Binary
        ('E2', 1) :     0 :   0.0 :     1 : False : False : Binary
        ('F2', 0) :     0 :   1.0 :     1 : False : False : Binary
        ('F2', 1) :     0 :   0.0 :     1 : False : False : Binary
        ('G2', 0) :     0 :   0.0 :     1 : False : False : Binary
        ('G2', 1) :     0 :   1.0 :     1 : False : False : Binary
        ('H2', 0) :     0 :   1.0 :     1 : False : False : Binary
        ('H2', 1) :     0 :   0.0 :     1 : False : False : Binary
        ('I2', 0) :     0 :   0.0 :     1 : False : False : Binary
        ('I2', 1) :     0 :   1.0 :     1 : False : False : Binary
        ('J2', 0) :     0 :   0.0 :     1 : False : False : Binary
        ('J2', 1) :     0 :   1.0 :     1 : False : False : Binary
        ('K2', 0) :     0 :   0.0 :     1 : False : False : Binary
        ('K2', 1) :     0 :   1.0 :     1 : False : False : Binary
        ('L2', 0) :     0 :   0.0 :     1 : False : False : Binary
        ('L2', 1) :     0 :   1.0 :     1 : False : False : Binary
        ('M2', 0) :     0 :   1.0 :     1 : False : False : Binary
        ('M2', 1) :     0 :   0.0 :     1 : False : False : Binary
        ('N2', 0) :     0 :   0.0 :     1 : False : False : Binary
        ('N2', 1) :     0 :   1.0 :     1 : False : False : Binary
    PenaltyShiftOnReq : Size=392, Index=SHIFTTYPES*NURSES*DAYS
        Key              : Lower : Value : Upper : Fixed : Stale : Domain
         ('E2', 'A2', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'A2', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'A2', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'A2', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'A2', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'A2', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'A2', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'A2', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'A2', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'A2', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 'A2', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 'A2', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 'A2', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 'A2', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'B2', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'B2', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'B2', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'B2', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'B2', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'B2', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'B2', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'B2', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'B2', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'B2', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 'B2', 10) :     0 :   1.0 :  None : False : False : NonNegativeReals
        ('E2', 'B2', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 'B2', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 'B2', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'C2', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'C2', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'C2', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'C2', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'C2', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'C2', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'C2', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'C2', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'C2', 8) :     0 :   1.0 :  None : False : False : NonNegativeReals
         ('E2', 'C2', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 'C2', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 'C2', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 'C2', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 'C2', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'D2', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'D2', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'D2', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'D2', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'D2', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'D2', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'D2', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'D2', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'D2', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'D2', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 'D2', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 'D2', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 'D2', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 'D2', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'E2', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'E2', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'E2', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'E2', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'E2', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'E2', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'E2', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'E2', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'E2', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'E2', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 'E2', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 'E2', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 'E2', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 'E2', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'F2', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'F2', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'F2', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'F2', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'F2', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'F2', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'F2', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'F2', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'F2', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'F2', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 'F2', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 'F2', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 'F2', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 'F2', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'G2', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'G2', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'G2', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'G2', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'G2', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'G2', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'G2', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'G2', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'G2', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'G2', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 'G2', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 'G2', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 'G2', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 'G2', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'H2', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'H2', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'H2', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'H2', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'H2', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'H2', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'H2', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'H2', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'H2', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'H2', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 'H2', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 'H2', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 'H2', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 'H2', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'I2', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'I2', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'I2', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'I2', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'I2', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'I2', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'I2', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'I2', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'I2', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'I2', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 'I2', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 'I2', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 'I2', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 'I2', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'J2', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'J2', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'J2', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'J2', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'J2', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'J2', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'J2', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'J2', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'J2', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'J2', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 'J2', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 'J2', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 'J2', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 'J2', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'K2', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'K2', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'K2', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'K2', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'K2', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'K2', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'K2', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'K2', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'K2', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'K2', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 'K2', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 'K2', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 'K2', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 'K2', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'L2', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'L2', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'L2', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'L2', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'L2', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'L2', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'L2', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'L2', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'L2', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'L2', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 'L2', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 'L2', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 'L2', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 'L2', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'M2', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'M2', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'M2', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'M2', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'M2', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'M2', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'M2', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'M2', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'M2', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'M2', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 'M2', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 'M2', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 'M2', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 'M2', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'N2', 0) :     0 :   2.0 :  None : False : False : NonNegativeReals
         ('E2', 'N2', 1) :     0 :   2.0 :  None : False : False : NonNegativeReals
         ('E2', 'N2', 2) :     0 :   2.0 :  None : False : False : NonNegativeReals
         ('E2', 'N2', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'N2', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'N2', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'N2', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'N2', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'N2', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'N2', 9) :     0 :   3.0 :  None : False : False : NonNegativeReals
        ('E2', 'N2', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 'N2', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 'N2', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 'N2', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'A2', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'A2', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'A2', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'A2', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'A2', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'A2', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'A2', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'A2', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'A2', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'A2', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 'A2', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 'A2', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 'A2', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 'A2', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'B2', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'B2', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'B2', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'B2', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'B2', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'B2', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'B2', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'B2', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'B2', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'B2', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 'B2', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 'B2', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 'B2', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 'B2', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'C2', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'C2', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'C2', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'C2', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'C2', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'C2', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'C2', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'C2', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'C2', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'C2', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 'C2', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 'C2', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 'C2', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 'C2', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'D2', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'D2', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'D2', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'D2', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'D2', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'D2', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'D2', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'D2', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'D2', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'D2', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 'D2', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 'D2', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 'D2', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 'D2', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'E2', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'E2', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'E2', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'E2', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'E2', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'E2', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'E2', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'E2', 7) :     0 :   1.0 :  None : False : False : NonNegativeReals
         ('L2', 'E2', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'E2', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 'E2', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 'E2', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 'E2', 12) :     0 :   2.0 :  None : False : False : NonNegativeReals
        ('L2', 'E2', 13) :     0 :   2.0 :  None : False : False : NonNegativeReals
         ('L2', 'F2', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'F2', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'F2', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'F2', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'F2', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'F2', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'F2', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'F2', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'F2', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'F2', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 'F2', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 'F2', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 'F2', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 'F2', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'G2', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'G2', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'G2', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'G2', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'G2', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'G2', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'G2', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'G2', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'G2', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'G2', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 'G2', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 'G2', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 'G2', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 'G2', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'H2', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'H2', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'H2', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'H2', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'H2', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'H2', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'H2', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'H2', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'H2', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'H2', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 'H2', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 'H2', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 'H2', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 'H2', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'I2', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'I2', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'I2', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'I2', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'I2', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'I2', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'I2', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'I2', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'I2', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'I2', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 'I2', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 'I2', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 'I2', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 'I2', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'J2', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'J2', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'J2', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'J2', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'J2', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'J2', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'J2', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'J2', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'J2', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'J2', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 'J2', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 'J2', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 'J2', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 'J2', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'K2', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'K2', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'K2', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'K2', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'K2', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'K2', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'K2', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'K2', 7) :     0 :   1.0 :  None : False : False : NonNegativeReals
         ('L2', 'K2', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'K2', 9) :     0 :   1.0 :  None : False : False : NonNegativeReals
        ('L2', 'K2', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 'K2', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 'K2', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 'K2', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'L2', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'L2', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'L2', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'L2', 3) :     0 :   1.0 :  None : False : False : NonNegativeReals
         ('L2', 'L2', 4) :     0 :   1.0 :  None : False : False : NonNegativeReals
         ('L2', 'L2', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'L2', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'L2', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'L2', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'L2', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 'L2', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 'L2', 11) :     0 :   3.0 :  None : False : False : NonNegativeReals
        ('L2', 'L2', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 'L2', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'M2', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'M2', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'M2', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'M2', 3) :     0 :   1.0 :  None : False : False : NonNegativeReals
         ('L2', 'M2', 4) :     0 :   1.0 :  None : False : False : NonNegativeReals
         ('L2', 'M2', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'M2', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'M2', 7) :     0 :   1.0 :  None : False : False : NonNegativeReals
         ('L2', 'M2', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'M2', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 'M2', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 'M2', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 'M2', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 'M2', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'N2', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'N2', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'N2', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'N2', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'N2', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'N2', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'N2', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'N2', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'N2', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'N2', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 'N2', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 'N2', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 'N2', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 'N2', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
    PenaltyShiftOffReq : Size=392, Index=SHIFTTYPES*NURSES*DAYS
        Key              : Lower : Value : Upper : Fixed : Stale : Domain
         ('E2', 'A2', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'A2', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'A2', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'A2', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'A2', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'A2', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'A2', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'A2', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'A2', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'A2', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 'A2', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 'A2', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 'A2', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 'A2', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'B2', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'B2', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'B2', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'B2', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'B2', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'B2', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'B2', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'B2', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'B2', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'B2', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 'B2', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 'B2', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 'B2', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 'B2', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'C2', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'C2', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'C2', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'C2', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'C2', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'C2', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'C2', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'C2', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'C2', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'C2', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 'C2', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 'C2', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 'C2', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 'C2', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'D2', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'D2', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'D2', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'D2', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'D2', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'D2', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'D2', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'D2', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'D2', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'D2', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 'D2', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 'D2', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 'D2', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 'D2', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'E2', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'E2', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'E2', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'E2', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'E2', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'E2', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'E2', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'E2', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'E2', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'E2', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 'E2', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 'E2', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 'E2', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 'E2', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'F2', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'F2', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'F2', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'F2', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'F2', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'F2', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'F2', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'F2', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'F2', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'F2', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 'F2', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 'F2', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 'F2', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 'F2', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'G2', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'G2', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'G2', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'G2', 3) :     0 :   2.0 :  None : False : False : NonNegativeReals
         ('E2', 'G2', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'G2', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'G2', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'G2', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'G2', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'G2', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 'G2', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 'G2', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 'G2', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 'G2', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'H2', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'H2', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'H2', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'H2', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'H2', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'H2', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'H2', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'H2', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'H2', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'H2', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 'H2', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 'H2', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 'H2', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 'H2', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'I2', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'I2', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'I2', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'I2', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'I2', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'I2', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'I2', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'I2', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'I2', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'I2', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 'I2', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 'I2', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 'I2', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 'I2', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'J2', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'J2', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'J2', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'J2', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'J2', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'J2', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'J2', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'J2', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'J2', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'J2', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 'J2', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 'J2', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 'J2', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 'J2', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'K2', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'K2', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'K2', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'K2', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'K2', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'K2', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'K2', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'K2', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'K2', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'K2', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 'K2', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 'K2', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 'K2', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 'K2', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'L2', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'L2', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'L2', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'L2', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'L2', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'L2', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'L2', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'L2', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'L2', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'L2', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 'L2', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 'L2', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 'L2', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 'L2', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'M2', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'M2', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'M2', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'M2', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'M2', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'M2', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'M2', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'M2', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'M2', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'M2', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 'M2', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 'M2', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 'M2', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 'M2', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'N2', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'N2', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'N2', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'N2', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'N2', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'N2', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'N2', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'N2', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'N2', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 'N2', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 'N2', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 'N2', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 'N2', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 'N2', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'A2', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'A2', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'A2', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'A2', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'A2', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'A2', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'A2', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'A2', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'A2', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'A2', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 'A2', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 'A2', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 'A2', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 'A2', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'B2', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'B2', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'B2', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'B2', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'B2', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'B2', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'B2', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'B2', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'B2', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'B2', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 'B2', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 'B2', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 'B2', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 'B2', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'C2', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'C2', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'C2', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'C2', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'C2', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'C2', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'C2', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'C2', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'C2', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'C2', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 'C2', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 'C2', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 'C2', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 'C2', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'D2', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'D2', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'D2', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'D2', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'D2', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'D2', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'D2', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'D2', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'D2', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'D2', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 'D2', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 'D2', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 'D2', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 'D2', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'E2', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'E2', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'E2', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'E2', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'E2', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'E2', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'E2', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'E2', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'E2', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'E2', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 'E2', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 'E2', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 'E2', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 'E2', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'F2', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'F2', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'F2', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'F2', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'F2', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'F2', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'F2', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'F2', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'F2', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'F2', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 'F2', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 'F2', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 'F2', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 'F2', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'G2', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'G2', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'G2', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'G2', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'G2', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'G2', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'G2', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'G2', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'G2', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'G2', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 'G2', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 'G2', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 'G2', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 'G2', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'H2', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'H2', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'H2', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'H2', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'H2', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'H2', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'H2', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'H2', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'H2', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'H2', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 'H2', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 'H2', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 'H2', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 'H2', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'I2', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'I2', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'I2', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'I2', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'I2', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'I2', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'I2', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'I2', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'I2', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'I2', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 'I2', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 'I2', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 'I2', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 'I2', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'J2', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'J2', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'J2', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'J2', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'J2', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'J2', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'J2', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'J2', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'J2', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'J2', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 'J2', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 'J2', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 'J2', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 'J2', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'K2', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'K2', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'K2', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'K2', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'K2', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'K2', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'K2', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'K2', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'K2', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'K2', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 'K2', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 'K2', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 'K2', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 'K2', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'L2', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'L2', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'L2', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'L2', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'L2', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'L2', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'L2', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'L2', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'L2', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'L2', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 'L2', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 'L2', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 'L2', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 'L2', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'M2', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'M2', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'M2', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'M2', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'M2', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'M2', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'M2', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'M2', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'M2', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'M2', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 'M2', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 'M2', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 'M2', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 'M2', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'N2', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'N2', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'N2', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'N2', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'N2', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'N2', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'N2', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'N2', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'N2', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 'N2', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 'N2', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 'N2', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 'N2', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 'N2', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
    UnderCover : Size=28, Index=SHIFTTYPES*DAYS
        Key        : Lower : Value : Upper : Fixed : Stale : Domain
         ('E2', 0) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('E2', 1) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('E2', 2) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('E2', 3) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('E2', 4) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('E2', 5) :     0 :   3.0 :  None : False : False : NonNegativeReals
         ('E2', 6) :     0 :   3.0 :  None : False : False : NonNegativeReals
         ('E2', 7) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('E2', 8) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('E2', 9) :     0 :  -0.0 :  None : False : False : NonNegativeReals
        ('E2', 10) :     0 :  -0.0 :  None : False : False : NonNegativeReals
        ('E2', 11) :     0 :  -0.0 :  None : False : False : NonNegativeReals
        ('E2', 12) :     0 :  -0.0 :  None : False : False : NonNegativeReals
        ('E2', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 0) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('L2', 1) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('L2', 2) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('L2', 3) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('L2', 4) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('L2', 5) :     0 :   1.0 :  None : False : False : NonNegativeReals
         ('L2', 6) :     0 :   1.0 :  None : False : False : NonNegativeReals
         ('L2', 7) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('L2', 8) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('L2', 9) :     0 :  -0.0 :  None : False : False : NonNegativeReals
        ('L2', 10) :     0 :  -0.0 :  None : False : False : NonNegativeReals
        ('L2', 11) :     0 :  -0.0 :  None : False : False : NonNegativeReals
        ('L2', 12) :     0 :  -0.0 :  None : False : False : NonNegativeReals
        ('L2', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
    OverCover : Size=28, Index=SHIFTTYPES*DAYS
        Key        : Lower : Value : Upper : Fixed : Stale : Domain
         ('E2', 0) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('E2', 1) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('E2', 2) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('E2', 3) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('E2', 4) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('E2', 5) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('E2', 6) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('E2', 7) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('E2', 8) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('E2', 9) :     0 :  -0.0 :  None : False : False : NonNegativeReals
        ('E2', 10) :     0 :  -0.0 :  None : False : False : NonNegativeReals
        ('E2', 11) :     0 :  -0.0 :  None : False : False : NonNegativeReals
        ('E2', 12) :     0 :  -0.0 :  None : False : False : NonNegativeReals
        ('E2', 13) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('L2', 0) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('L2', 1) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('L2', 2) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('L2', 3) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('L2', 4) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('L2', 5) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('L2', 6) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('L2', 7) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('L2', 8) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('L2', 9) :     0 :  -0.0 :  None : False : False : NonNegativeReals
        ('L2', 10) :     0 :  -0.0 :  None : False : False : NonNegativeReals
        ('L2', 11) :     0 :  -0.0 :  None : False : False : NonNegativeReals
        ('L2', 12) :     0 :  -0.0 :  None : False : False : NonNegativeReals
        ('L2', 13) :     0 :  -0.0 :  None : False : False : NonNegativeReals
    PenaltyUnder : Size=28, Index=SHIFTTYPES*DAYS
        Key        : Lower : Value : Upper : Fixed : Stale : Domain
         ('E2', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 5) :     0 : 300.0 :  None : False : False : NonNegativeReals
         ('E2', 6) :     0 : 300.0 :  None : False : False : NonNegativeReals
         ('E2', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 5) :     0 : 100.0 :  None : False : False : NonNegativeReals
         ('L2', 6) :     0 : 100.0 :  None : False : False : NonNegativeReals
         ('L2', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
    PenaltyOver : Size=28, Index=SHIFTTYPES*DAYS
        Key        : Lower : Value : Upper : Fixed : Stale : Domain
         ('E2', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E2', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E2', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L2', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L2', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
    MinTotalMinsUnder : Size=14, Index=NURSES
        Key : Lower : Value : Upper : Fixed : Stale : Domain
         A2 :     0 :  -0.0 :  None : False : False : NonNegativeReals
         B2 :     0 :  -0.0 :  None : False : False : NonNegativeReals
         C2 :     0 :  -0.0 :  None : False : False : NonNegativeReals
         D2 :     0 :  -0.0 :  None : False : False : NonNegativeReals
         E2 :     0 :  -0.0 :  None : False : False : NonNegativeReals
         F2 :     0 :  -0.0 :  None : False : False : NonNegativeReals
         G2 :     0 :  -0.0 :  None : False : False : NonNegativeReals
         H2 :     0 :  -0.0 :  None : False : False : NonNegativeReals
         I2 :     0 :  -0.0 :  None : False : False : NonNegativeReals
         J2 :     0 :  -0.0 :  None : False : False : NonNegativeReals
         K2 :     0 :  -0.0 :  None : False : False : NonNegativeReals
         L2 :     0 :  -0.0 :  None : False : False : NonNegativeReals
         M2 :     0 :  -0.0 :  None : False : False : NonNegativeReals
         N2 :     0 :  -0.0 :  None : False : False : NonNegativeReals

  Objectives:
    objective : Size=1, Index=None, Active=True
        Key  : Active : Value
        None :   True : 828.0

  Constraints:
    constraint_one_shift_one_day : Size=196
        Key        : Lower : Body : Upper
         ('A2', 0) :   1.0 :  1.0 :   1.0
         ('A2', 1) :   1.0 :  1.0 :   1.0
         ('A2', 2) :   1.0 :  1.0 :   1.0
         ('A2', 3) :   1.0 :  1.0 :   1.0
         ('A2', 4) :   1.0 :  1.0 :   1.0
         ('A2', 5) :   1.0 :  1.0 :   1.0
         ('A2', 6) :   1.0 :  1.0 :   1.0
         ('A2', 7) :   1.0 :  1.0 :   1.0
         ('A2', 8) :   1.0 :  1.0 :   1.0
         ('A2', 9) :   1.0 :  1.0 :   1.0
        ('A2', 10) :   1.0 :  1.0 :   1.0
        ('A2', 11) :   1.0 :  1.0 :   1.0
        ('A2', 12) :   1.0 :  1.0 :   1.0
        ('A2', 13) :   1.0 :  1.0 :   1.0
         ('B2', 0) :   1.0 :  1.0 :   1.0
         ('B2', 1) :   1.0 :  1.0 :   1.0
         ('B2', 2) :   1.0 :  1.0 :   1.0
         ('B2', 3) :   1.0 :  1.0 :   1.0
         ('B2', 4) :   1.0 :  1.0 :   1.0
         ('B2', 5) :   1.0 :  1.0 :   1.0
         ('B2', 6) :   1.0 :  1.0 :   1.0
         ('B2', 7) :   1.0 :  1.0 :   1.0
         ('B2', 8) :   1.0 :  1.0 :   1.0
         ('B2', 9) :   1.0 :  1.0 :   1.0
        ('B2', 10) :   1.0 :  1.0 :   1.0
        ('B2', 11) :   1.0 :  1.0 :   1.0
        ('B2', 12) :   1.0 :  1.0 :   1.0
        ('B2', 13) :   1.0 :  1.0 :   1.0
         ('C2', 0) :   1.0 :  1.0 :   1.0
         ('C2', 1) :   1.0 :  1.0 :   1.0
         ('C2', 2) :   1.0 :  1.0 :   1.0
         ('C2', 3) :   1.0 :  1.0 :   1.0
         ('C2', 4) :   1.0 :  1.0 :   1.0
         ('C2', 5) :   1.0 :  1.0 :   1.0
         ('C2', 6) :   1.0 :  1.0 :   1.0
         ('C2', 7) :   1.0 :  1.0 :   1.0
         ('C2', 8) :   1.0 :  1.0 :   1.0
         ('C2', 9) :   1.0 :  1.0 :   1.0
        ('C2', 10) :   1.0 :  1.0 :   1.0
        ('C2', 11) :   1.0 :  1.0 :   1.0
        ('C2', 12) :   1.0 :  1.0 :   1.0
        ('C2', 13) :   1.0 :  1.0 :   1.0
         ('D2', 0) :   1.0 :  1.0 :   1.0
         ('D2', 1) :   1.0 :  1.0 :   1.0
         ('D2', 2) :   1.0 :  1.0 :   1.0
         ('D2', 3) :   1.0 :  1.0 :   1.0
         ('D2', 4) :   1.0 :  1.0 :   1.0
         ('D2', 5) :   1.0 :  1.0 :   1.0
         ('D2', 6) :   1.0 :  1.0 :   1.0
         ('D2', 7) :   1.0 :  1.0 :   1.0
         ('D2', 8) :   1.0 :  1.0 :   1.0
         ('D2', 9) :   1.0 :  1.0 :   1.0
        ('D2', 10) :   1.0 :  1.0 :   1.0
        ('D2', 11) :   1.0 :  1.0 :   1.0
        ('D2', 12) :   1.0 :  1.0 :   1.0
        ('D2', 13) :   1.0 :  1.0 :   1.0
         ('E2', 0) :   1.0 :  1.0 :   1.0
         ('E2', 1) :   1.0 :  1.0 :   1.0
         ('E2', 2) :   1.0 :  1.0 :   1.0
         ('E2', 3) :   1.0 :  1.0 :   1.0
         ('E2', 4) :   1.0 :  1.0 :   1.0
         ('E2', 5) :   1.0 :  1.0 :   1.0
         ('E2', 6) :   1.0 :  1.0 :   1.0
         ('E2', 7) :   1.0 :  1.0 :   1.0
         ('E2', 8) :   1.0 :  1.0 :   1.0
         ('E2', 9) :   1.0 :  1.0 :   1.0
        ('E2', 10) :   1.0 :  1.0 :   1.0
        ('E2', 11) :   1.0 :  1.0 :   1.0
        ('E2', 12) :   1.0 :  1.0 :   1.0
        ('E2', 13) :   1.0 :  1.0 :   1.0
         ('F2', 0) :   1.0 :  1.0 :   1.0
         ('F2', 1) :   1.0 :  1.0 :   1.0
         ('F2', 2) :   1.0 :  1.0 :   1.0
         ('F2', 3) :   1.0 :  1.0 :   1.0
         ('F2', 4) :   1.0 :  1.0 :   1.0
         ('F2', 5) :   1.0 :  1.0 :   1.0
         ('F2', 6) :   1.0 :  1.0 :   1.0
         ('F2', 7) :   1.0 :  1.0 :   1.0
         ('F2', 8) :   1.0 :  1.0 :   1.0
         ('F2', 9) :   1.0 :  1.0 :   1.0
        ('F2', 10) :   1.0 :  1.0 :   1.0
        ('F2', 11) :   1.0 :  1.0 :   1.0
        ('F2', 12) :   1.0 :  1.0 :   1.0
        ('F2', 13) :   1.0 :  1.0 :   1.0
         ('G2', 0) :   1.0 :  1.0 :   1.0
         ('G2', 1) :   1.0 :  1.0 :   1.0
         ('G2', 2) :   1.0 :  1.0 :   1.0
         ('G2', 3) :   1.0 :  1.0 :   1.0
         ('G2', 4) :   1.0 :  1.0 :   1.0
         ('G2', 5) :   1.0 :  1.0 :   1.0
         ('G2', 6) :   1.0 :  1.0 :   1.0
         ('G2', 7) :   1.0 :  1.0 :   1.0
         ('G2', 8) :   1.0 :  1.0 :   1.0
         ('G2', 9) :   1.0 :  1.0 :   1.0
        ('G2', 10) :   1.0 :  1.0 :   1.0
        ('G2', 11) :   1.0 :  1.0 :   1.0
        ('G2', 12) :   1.0 :  1.0 :   1.0
        ('G2', 13) :   1.0 :  1.0 :   1.0
         ('H2', 0) :   1.0 :  1.0 :   1.0
         ('H2', 1) :   1.0 :  1.0 :   1.0
         ('H2', 2) :   1.0 :  1.0 :   1.0
         ('H2', 3) :   1.0 :  1.0 :   1.0
         ('H2', 4) :   1.0 :  1.0 :   1.0
         ('H2', 5) :   1.0 :  1.0 :   1.0
         ('H2', 6) :   1.0 :  1.0 :   1.0
         ('H2', 7) :   1.0 :  1.0 :   1.0
         ('H2', 8) :   1.0 :  1.0 :   1.0
         ('H2', 9) :   1.0 :  1.0 :   1.0
        ('H2', 10) :   1.0 :  1.0 :   1.0
        ('H2', 11) :   1.0 :  1.0 :   1.0
        ('H2', 12) :   1.0 :  1.0 :   1.0
        ('H2', 13) :   1.0 :  1.0 :   1.0
         ('I2', 0) :   1.0 :  1.0 :   1.0
         ('I2', 1) :   1.0 :  1.0 :   1.0
         ('I2', 2) :   1.0 :  1.0 :   1.0
         ('I2', 3) :   1.0 :  1.0 :   1.0
         ('I2', 4) :   1.0 :  1.0 :   1.0
         ('I2', 5) :   1.0 :  1.0 :   1.0
         ('I2', 6) :   1.0 :  1.0 :   1.0
         ('I2', 7) :   1.0 :  1.0 :   1.0
         ('I2', 8) :   1.0 :  1.0 :   1.0
         ('I2', 9) :   1.0 :  1.0 :   1.0
        ('I2', 10) :   1.0 :  1.0 :   1.0
        ('I2', 11) :   1.0 :  1.0 :   1.0
        ('I2', 12) :   1.0 :  1.0 :   1.0
        ('I2', 13) :   1.0 :  1.0 :   1.0
         ('J2', 0) :   1.0 :  1.0 :   1.0
         ('J2', 1) :   1.0 :  1.0 :   1.0
         ('J2', 2) :   1.0 :  1.0 :   1.0
         ('J2', 3) :   1.0 :  1.0 :   1.0
         ('J2', 4) :   1.0 :  1.0 :   1.0
         ('J2', 5) :   1.0 :  1.0 :   1.0
         ('J2', 6) :   1.0 :  1.0 :   1.0
         ('J2', 7) :   1.0 :  1.0 :   1.0
         ('J2', 8) :   1.0 :  1.0 :   1.0
         ('J2', 9) :   1.0 :  1.0 :   1.0
        ('J2', 10) :   1.0 :  1.0 :   1.0
        ('J2', 11) :   1.0 :  1.0 :   1.0
        ('J2', 12) :   1.0 :  1.0 :   1.0
        ('J2', 13) :   1.0 :  1.0 :   1.0
         ('K2', 0) :   1.0 :  1.0 :   1.0
         ('K2', 1) :   1.0 :  1.0 :   1.0
         ('K2', 2) :   1.0 :  1.0 :   1.0
         ('K2', 3) :   1.0 :  1.0 :   1.0
         ('K2', 4) :   1.0 :  1.0 :   1.0
         ('K2', 5) :   1.0 :  1.0 :   1.0
         ('K2', 6) :   1.0 :  1.0 :   1.0
         ('K2', 7) :   1.0 :  1.0 :   1.0
         ('K2', 8) :   1.0 :  1.0 :   1.0
         ('K2', 9) :   1.0 :  1.0 :   1.0
        ('K2', 10) :   1.0 :  1.0 :   1.0
        ('K2', 11) :   1.0 :  1.0 :   1.0
        ('K2', 12) :   1.0 :  1.0 :   1.0
        ('K2', 13) :   1.0 :  1.0 :   1.0
         ('L2', 0) :   1.0 :  1.0 :   1.0
         ('L2', 1) :   1.0 :  1.0 :   1.0
         ('L2', 2) :   1.0 :  1.0 :   1.0
         ('L2', 3) :   1.0 :  1.0 :   1.0
         ('L2', 4) :   1.0 :  1.0 :   1.0
         ('L2', 5) :   1.0 :  1.0 :   1.0
         ('L2', 6) :   1.0 :  1.0 :   1.0
         ('L2', 7) :   1.0 :  1.0 :   1.0
         ('L2', 8) :   1.0 :  1.0 :   1.0
         ('L2', 9) :   1.0 :  1.0 :   1.0
        ('L2', 10) :   1.0 :  1.0 :   1.0
        ('L2', 11) :   1.0 :  1.0 :   1.0
        ('L2', 12) :   1.0 :  1.0 :   1.0
        ('L2', 13) :   1.0 :  1.0 :   1.0
         ('M2', 0) :   1.0 :  1.0 :   1.0
         ('M2', 1) :   1.0 :  1.0 :   1.0
         ('M2', 2) :   1.0 :  1.0 :   1.0
         ('M2', 3) :   1.0 :  1.0 :   1.0
         ('M2', 4) :   1.0 :  1.0 :   1.0
         ('M2', 5) :   1.0 :  1.0 :   1.0
         ('M2', 6) :   1.0 :  1.0 :   1.0
         ('M2', 7) :   1.0 :  1.0 :   1.0
         ('M2', 8) :   1.0 :  1.0 :   1.0
         ('M2', 9) :   1.0 :  1.0 :   1.0
        ('M2', 10) :   1.0 :  1.0 :   1.0
        ('M2', 11) :   1.0 :  1.0 :   1.0
        ('M2', 12) :   1.0 :  1.0 :   1.0
        ('M2', 13) :   1.0 :  1.0 :   1.0
         ('N2', 0) :   1.0 :  1.0 :   1.0
         ('N2', 1) :   1.0 :  1.0 :   1.0
         ('N2', 2) :   1.0 :  1.0 :   1.0
         ('N2', 3) :   1.0 :  1.0 :   1.0
         ('N2', 4) :   1.0 :  1.0 :   1.0
         ('N2', 5) :   1.0 :  1.0 :   1.0
         ('N2', 6) :   1.0 :  1.0 :   1.0
         ('N2', 7) :   1.0 :  1.0 :   1.0
         ('N2', 8) :   1.0 :  1.0 :   1.0
         ('N2', 9) :   1.0 :  1.0 :   1.0
        ('N2', 10) :   1.0 :  1.0 :   1.0
        ('N2', 11) :   1.0 :  1.0 :   1.0
        ('N2', 12) :   1.0 :  1.0 :   1.0
        ('N2', 13) :   1.0 :  1.0 :   1.0
    constraint_shift_rotation_ub : Size=0
        Key : Lower : Body : Upper
    constraint_shift_rotation : Size=364
        Key              : Lower : Body : Upper
         ('E2', 'A2', 0) :  None : -0.0 :   1.0
         ('E2', 'A2', 1) :  None : -0.0 :   1.0
         ('E2', 'A2', 2) :  None : -0.0 :   1.0
         ('E2', 'A2', 3) :  None :  0.0 :   1.0
         ('E2', 'A2', 4) :  None :  0.0 :   1.0
         ('E2', 'A2', 5) :  None : -0.0 :   1.0
         ('E2', 'A2', 6) :  None :  0.0 :   1.0
         ('E2', 'A2', 7) :  None : -0.0 :   1.0
         ('E2', 'A2', 8) :  None : -0.0 :   1.0
         ('E2', 'A2', 9) :  None : -0.0 :   1.0
        ('E2', 'A2', 10) :  None : -0.0 :   1.0
        ('E2', 'A2', 11) :  None :  0.0 :   1.0
        ('E2', 'A2', 12) :  None :  0.0 :   1.0
         ('E2', 'B2', 0) :  None : -0.0 :   1.0
         ('E2', 'B2', 1) :  None :  0.0 :   1.0
         ('E2', 'B2', 2) :  None :  1.0 :   1.0
         ('E2', 'B2', 3) :  None :  1.0 :   1.0
         ('E2', 'B2', 4) :  None :  1.0 :   1.0
         ('E2', 'B2', 5) :  None :  0.0 :   1.0
         ('E2', 'B2', 6) :  None :  0.0 :   1.0
         ('E2', 'B2', 7) :  None :  1.0 :   1.0
         ('E2', 'B2', 8) :  None :  1.0 :   1.0
         ('E2', 'B2', 9) :  None :  1.0 :   1.0
        ('E2', 'B2', 10) :  None :  0.0 :   1.0
        ('E2', 'B2', 11) :  None : -0.0 :   1.0
        ('E2', 'B2', 12) :  None :  1.0 :   1.0
         ('E2', 'C2', 0) :  None :  0.0 :   1.0
         ('E2', 'C2', 1) :  None : -0.0 :   1.0
         ('E2', 'C2', 2) :  None :  0.0 :   1.0
         ('E2', 'C2', 3) :  None :  1.0 :   1.0
         ('E2', 'C2', 4) :  None :  1.0 :   1.0
         ('E2', 'C2', 5) :  None :  1.0 :   1.0
         ('E2', 'C2', 6) :  None :  1.0 :   1.0
         ('E2', 'C2', 7) :  None :  0.0 :   1.0
         ('E2', 'C2', 8) :  None :  0.0 :   1.0
         ('E2', 'C2', 9) :  None :  1.0 :   1.0
        ('E2', 'C2', 10) :  None :  1.0 :   1.0
        ('E2', 'C2', 11) :  None :  1.0 :   1.0
        ('E2', 'C2', 12) :  None :  0.0 :   1.0
         ('E2', 'D2', 0) :  None :  1.0 :   1.0
         ('E2', 'D2', 1) :  None :  1.0 :   1.0
         ('E2', 'D2', 2) :  None :  1.0 :   1.0
         ('E2', 'D2', 3) :  None :  1.0 :   1.0
         ('E2', 'D2', 4) :  None :  1.0 :   1.0
         ('E2', 'D2', 5) :  None :  0.0 :   1.0
         ('E2', 'D2', 6) :  None :  0.0 :   1.0
         ('E2', 'D2', 7) :  None :  0.0 :   1.0
         ('E2', 'D2', 8) :  None :  1.0 :   1.0
         ('E2', 'D2', 9) :  None :  1.0 :   1.0
        ('E2', 'D2', 10) :  None :  1.0 :   1.0
        ('E2', 'D2', 11) :  None :  0.0 :   1.0
        ('E2', 'D2', 12) :  None :  0.0 :   1.0
         ('E2', 'E2', 0) :  None :  0.0 :   1.0
         ('E2', 'E2', 1) :  None :  0.0 :   1.0
         ('E2', 'E2', 2) :  None :  0.0 :   1.0
         ('E2', 'E2', 3) :  None :  0.0 :   1.0
         ('E2', 'E2', 4) :  None :  0.0 :   1.0
         ('E2', 'E2', 5) :  None :  0.0 :   1.0
         ('E2', 'E2', 6) :  None :  0.0 :   1.0
         ('E2', 'E2', 7) :  None :  0.0 :   1.0
         ('E2', 'E2', 8) :  None :  0.0 :   1.0
         ('E2', 'E2', 9) :  None :  0.0 :   1.0
        ('E2', 'E2', 10) :  None :  0.0 :   1.0
        ('E2', 'E2', 11) :  None :  0.0 :   1.0
        ('E2', 'E2', 12) :  None :  0.0 :   1.0
         ('E2', 'F2', 0) :  None :  1.0 :   1.0
         ('E2', 'F2', 1) :  None : -0.0 :   1.0
         ('E2', 'F2', 2) :  None : -0.0 :   1.0
         ('E2', 'F2', 3) :  None :  0.0 :   1.0
         ('E2', 'F2', 4) :  None : -0.0 :   1.0
         ('E2', 'F2', 5) :  None :  0.0 :   1.0
         ('E2', 'F2', 6) :  None :  0.0 :   1.0
         ('E2', 'F2', 7) :  None : -0.0 :   1.0
         ('E2', 'F2', 8) :  None : -0.0 :   1.0
         ('E2', 'F2', 9) :  None :  1.0 :   1.0
        ('E2', 'F2', 10) :  None :  1.0 :   1.0
        ('E2', 'F2', 11) :  None :  0.0 :   1.0
        ('E2', 'F2', 12) :  None :  0.0 :   1.0
         ('E2', 'G2', 0) :  None :  1.0 :   1.0
         ('E2', 'G2', 1) :  None :  1.0 :   1.0
         ('E2', 'G2', 2) :  None :  1.0 :   1.0
         ('E2', 'G2', 3) :  None :  1.0 :   1.0
         ('E2', 'G2', 4) :  None : -0.0 :   1.0
         ('E2', 'G2', 5) :  None : -0.0 :   1.0
         ('E2', 'G2', 6) :  None : -0.0 :   1.0
         ('E2', 'G2', 7) :  None : -0.0 :   1.0
         ('E2', 'G2', 8) :  None : -0.0 :   1.0
         ('E2', 'G2', 9) :  None :  0.0 :   1.0
        ('E2', 'G2', 10) :  None :  0.0 :   1.0
        ('E2', 'G2', 11) :  None :  1.0 :   1.0
        ('E2', 'G2', 12) :  None :  1.0 :   1.0
         ('E2', 'H2', 0) :  None :  1.0 :   1.0
         ('E2', 'H2', 1) :  None :  1.0 :   1.0
         ('E2', 'H2', 2) :  None : -0.0 :   1.0
         ('E2', 'H2', 3) :  None :  0.0 :   1.0
         ('E2', 'H2', 4) :  None :  0.0 :   1.0
         ('E2', 'H2', 5) :  None :  1.0 :   1.0
         ('E2', 'H2', 6) :  None :  1.0 :   1.0
         ('E2', 'H2', 7) :  None :  1.0 :   1.0
         ('E2', 'H2', 8) :  None :  1.0 :   1.0
         ('E2', 'H2', 9) :  None :  0.0 :   1.0
        ('E2', 'H2', 10) :  None : -0.0 :   1.0
        ('E2', 'H2', 11) :  None : -0.0 :   1.0
        ('E2', 'H2', 12) :  None :  0.0 :   1.0
         ('E2', 'I2', 0) :  None :  0.0 :   1.0
         ('E2', 'I2', 1) :  None :  0.0 :   1.0
         ('E2', 'I2', 2) :  None :  0.0 :   1.0
         ('E2', 'I2', 3) :  None : -0.0 :   1.0
         ('E2', 'I2', 4) :  None :  0.0 :   1.0
         ('E2', 'I2', 5) :  None : -0.0 :   1.0
         ('E2', 'I2', 6) :  None :  0.0 :   1.0
         ('E2', 'I2', 7) :  None :  1.0 :   1.0
         ('E2', 'I2', 8) :  None : -0.0 :   1.0
         ('E2', 'I2', 9) :  None :  0.0 :   1.0
        ('E2', 'I2', 10) :  None : -0.0 :   1.0
        ('E2', 'I2', 11) :  None :  0.0 :   1.0
        ('E2', 'I2', 12) :  None :  1.0 :   1.0
         ('E2', 'J2', 0) :  None :  0.0 :   1.0
         ('E2', 'J2', 1) :  None :  0.0 :   1.0
         ('E2', 'J2', 2) :  None :  0.0 :   1.0
         ('E2', 'J2', 3) :  None :  0.0 :   1.0
         ('E2', 'J2', 4) :  None :  0.0 :   1.0
         ('E2', 'J2', 5) :  None : -0.0 :   1.0
         ('E2', 'J2', 6) :  None : -0.0 :   1.0
         ('E2', 'J2', 7) :  None :  0.0 :   1.0
         ('E2', 'J2', 8) :  None :  0.0 :   1.0
         ('E2', 'J2', 9) :  None :  0.0 :   1.0
        ('E2', 'J2', 10) :  None :  0.0 :   1.0
        ('E2', 'J2', 11) :  None :  0.0 :   1.0
        ('E2', 'J2', 12) :  None : -0.0 :   1.0
         ('E2', 'K2', 0) :  None :  0.0 :   1.0
         ('E2', 'K2', 1) :  None :  0.0 :   1.0
         ('E2', 'K2', 2) :  None :  0.0 :   1.0
         ('E2', 'K2', 3) :  None :  0.0 :   1.0
         ('E2', 'K2', 4) :  None :  0.0 :   1.0
         ('E2', 'K2', 5) :  None :  0.0 :   1.0
         ('E2', 'K2', 6) :  None :  0.0 :   1.0
         ('E2', 'K2', 7) :  None :  0.0 :   1.0
         ('E2', 'K2', 8) :  None :  0.0 :   1.0
         ('E2', 'K2', 9) :  None :  0.0 :   1.0
        ('E2', 'K2', 10) :  None :  0.0 :   1.0
        ('E2', 'K2', 11) :  None :  0.0 :   1.0
        ('E2', 'K2', 12) :  None :  0.0 :   1.0
         ('E2', 'L2', 0) :  None :  0.0 :   1.0
         ('E2', 'L2', 1) :  None :  0.0 :   1.0
         ('E2', 'L2', 2) :  None :  0.0 :   1.0
         ('E2', 'L2', 3) :  None :  0.0 :   1.0
         ('E2', 'L2', 4) :  None :  0.0 :   1.0
         ('E2', 'L2', 5) :  None :  0.0 :   1.0
         ('E2', 'L2', 6) :  None :  0.0 :   1.0
         ('E2', 'L2', 7) :  None :  0.0 :   1.0
         ('E2', 'L2', 8) :  None :  0.0 :   1.0
         ('E2', 'L2', 9) :  None :  0.0 :   1.0
        ('E2', 'L2', 10) :  None :  0.0 :   1.0
        ('E2', 'L2', 11) :  None :  0.0 :   1.0
        ('E2', 'L2', 12) :  None :  0.0 :   1.0
         ('E2', 'M2', 0) :  None : -0.0 :   1.0
         ('E2', 'M2', 1) :  None :  1.0 :   1.0
         ('E2', 'M2', 2) :  None : -0.0 :   1.0
         ('E2', 'M2', 3) :  None :  1.0 :   1.0
         ('E2', 'M2', 4) :  None : -0.0 :   1.0
         ('E2', 'M2', 5) :  None : -0.0 :   1.0
         ('E2', 'M2', 6) :  None :  0.0 :   1.0
         ('E2', 'M2', 7) :  None : -0.0 :   1.0
         ('E2', 'M2', 8) :  None :  0.0 :   1.0
         ('E2', 'M2', 9) :  None : -0.0 :   1.0
        ('E2', 'M2', 10) :  None : -0.0 :   1.0
        ('E2', 'M2', 11) :  None : -0.0 :   1.0
        ('E2', 'M2', 12) :  None :  0.0 :   1.0
         ('E2', 'N2', 0) :  None :  0.0 :   1.0
         ('E2', 'N2', 1) :  None :  0.0 :   1.0
         ('E2', 'N2', 2) :  None : -0.0 :   1.0
         ('E2', 'N2', 3) :  None : -0.0 :   1.0
         ('E2', 'N2', 4) :  None : -0.0 :   1.0
         ('E2', 'N2', 5) :  None : -0.0 :   1.0
         ('E2', 'N2', 6) :  None :  0.0 :   1.0
         ('E2', 'N2', 7) :  None : -0.0 :   1.0
         ('E2', 'N2', 8) :  None :  1.0 :   1.0
         ('E2', 'N2', 9) :  None : -0.0 :   1.0
        ('E2', 'N2', 10) :  None :  1.0 :   1.0
        ('E2', 'N2', 11) :  None : -0.0 :   1.0
        ('E2', 'N2', 12) :  None :  1.0 :   1.0
         ('L2', 'A2', 0) :  None :  1.0 :   1.0
         ('L2', 'A2', 1) :  None :  1.0 :   1.0
         ('L2', 'A2', 2) :  None :  1.0 :   1.0
         ('L2', 'A2', 3) :  None :  0.0 :   1.0
         ('L2', 'A2', 4) :  None :  0.0 :   1.0
         ('L2', 'A2', 5) :  None :  1.0 :   1.0
         ('L2', 'A2', 6) :  None :  1.0 :   1.0
         ('L2', 'A2', 7) :  None :  1.0 :   1.0
         ('L2', 'A2', 8) :  None :  1.0 :   1.0
         ('L2', 'A2', 9) :  None :  1.0 :   1.0
        ('L2', 'A2', 10) :  None :  0.0 :   1.0
        ('L2', 'A2', 11) :  None :  0.0 :   1.0
        ('L2', 'A2', 12) :  None :  0.0 :   1.0
         ('L2', 'B2', 0) :  None :  0.0 :   1.0
         ('L2', 'B2', 1) :  None :  1.0 :   1.0
         ('L2', 'B2', 2) :  None :  1.0 :   1.0
         ('L2', 'B2', 3) :  None :  1.0 :   1.0
         ('L2', 'B2', 4) :  None :  0.0 :   1.0
         ('L2', 'B2', 5) :  None :  0.0 :   1.0
         ('L2', 'B2', 6) :  None :  1.0 :   1.0
         ('L2', 'B2', 7) :  None :  1.0 :   1.0
         ('L2', 'B2', 8) :  None :  1.0 :   1.0
         ('L2', 'B2', 9) :  None :  0.0 :   1.0
        ('L2', 'B2', 10) :  None :  0.0 :   1.0
        ('L2', 'B2', 11) :  None :  1.0 :   1.0
        ('L2', 'B2', 12) :  None :  1.0 :   1.0
         ('L2', 'C2', 0) :  None :  1.0 :   1.0
         ('L2', 'C2', 1) :  None :  0.0 :   1.0
         ('L2', 'C2', 2) :  None :  1.0 :   1.0
         ('L2', 'C2', 3) :  None :  1.0 :   1.0
         ('L2', 'C2', 4) :  None :  1.0 :   1.0
         ('L2', 'C2', 5) :  None :  1.0 :   1.0
         ('L2', 'C2', 6) :  None :  0.0 :   1.0
         ('L2', 'C2', 7) :  None :  0.0 :   1.0
         ('L2', 'C2', 8) :  None :  1.0 :   1.0
         ('L2', 'C2', 9) :  None :  1.0 :   1.0
        ('L2', 'C2', 10) :  None :  1.0 :   1.0
        ('L2', 'C2', 11) :  None :  0.0 :   1.0
        ('L2', 'C2', 12) :  None :  0.0 :   1.0
         ('L2', 'D2', 0) :  None :  1.0 :   1.0
         ('L2', 'D2', 1) :  None :  1.0 :   1.0
         ('L2', 'D2', 2) :  None :  1.0 :   1.0
         ('L2', 'D2', 3) :  None :  1.0 :   1.0
         ('L2', 'D2', 4) :  None :  0.0 :   1.0
         ('L2', 'D2', 5) :  None :  0.0 :   1.0
         ('L2', 'D2', 6) :  None :  0.0 :   1.0
         ('L2', 'D2', 7) :  None :  1.0 :   1.0
         ('L2', 'D2', 8) :  None :  1.0 :   1.0
         ('L2', 'D2', 9) :  None :  1.0 :   1.0
        ('L2', 'D2', 10) :  None :  0.0 :   1.0
        ('L2', 'D2', 11) :  None :  0.0 :   1.0
        ('L2', 'D2', 12) :  None :  1.0 :   1.0
         ('L2', 'E2', 0) :  None :  0.0 :   1.0
         ('L2', 'E2', 1) :  None :  0.0 :   1.0
         ('L2', 'E2', 2) :  None :  1.0 :   1.0
         ('L2', 'E2', 3) :  None :  1.0 :   1.0
         ('L2', 'E2', 4) :  None :  1.0 :   1.0
         ('L2', 'E2', 5) :  None :  1.0 :   1.0
         ('L2', 'E2', 6) :  None :  1.0 :   1.0
         ('L2', 'E2', 7) :  None :  0.0 :   1.0
         ('L2', 'E2', 8) :  None :  0.0 :   1.0
         ('L2', 'E2', 9) :  None :  1.0 :   1.0
        ('L2', 'E2', 10) :  None :  1.0 :   1.0
        ('L2', 'E2', 11) :  None :  1.0 :   1.0
        ('L2', 'E2', 12) :  None :  0.0 :   1.0
         ('L2', 'F2', 0) :  None :  0.0 :   1.0
         ('L2', 'F2', 1) :  None :  0.0 :   1.0
         ('L2', 'F2', 2) :  None :  0.0 :   1.0
         ('L2', 'F2', 3) :  None :  1.0 :   1.0
         ('L2', 'F2', 4) :  None :  1.0 :   1.0
         ('L2', 'F2', 5) :  None :  1.0 :   1.0
         ('L2', 'F2', 6) :  None :  1.0 :   1.0
         ('L2', 'F2', 7) :  None :  0.0 :   1.0
         ('L2', 'F2', 8) :  None :  1.0 :   1.0
         ('L2', 'F2', 9) :  None :  1.0 :   1.0
        ('L2', 'F2', 10) :  None :  0.0 :   1.0
        ('L2', 'F2', 11) :  None :  1.0 :   1.0
        ('L2', 'F2', 12) :  None :  0.0 :   1.0
         ('L2', 'G2', 0) :  None :  1.0 :   1.0
         ('L2', 'G2', 1) :  None :  1.0 :   1.0
         ('L2', 'G2', 2) :  None :  1.0 :   1.0
         ('L2', 'G2', 3) :  None :  0.0 :   1.0
         ('L2', 'G2', 4) :  None :  0.0 :   1.0
         ('L2', 'G2', 5) :  None :  0.0 :   1.0
         ('L2', 'G2', 6) :  None :  0.0 :   1.0
         ('L2', 'G2', 7) :  None :  1.0 :   1.0
         ('L2', 'G2', 8) :  None :  1.0 :   1.0
         ('L2', 'G2', 9) :  None :  0.0 :   1.0
        ('L2', 'G2', 10) :  None :  1.0 :   1.0
        ('L2', 'G2', 11) :  None :  1.0 :   1.0
        ('L2', 'G2', 12) :  None :  0.0 :   1.0
         ('L2', 'H2', 0) :  None :  1.0 :   1.0
         ('L2', 'H2', 1) :  None :  0.0 :   1.0
         ('L2', 'H2', 2) :  None :  1.0 :   1.0
         ('L2', 'H2', 3) :  None :  0.0 :   1.0
         ('L2', 'H2', 4) :  None :  1.0 :   1.0
         ('L2', 'H2', 5) :  None :  1.0 :   1.0
         ('L2', 'H2', 6) :  None :  1.0 :   1.0
         ('L2', 'H2', 7) :  None :  1.0 :   1.0
         ('L2', 'H2', 8) :  None :  0.0 :   1.0
         ('L2', 'H2', 9) :  None :  1.0 :   1.0
        ('L2', 'H2', 10) :  None :  0.0 :   1.0
        ('L2', 'H2', 11) :  None :  0.0 :   1.0
        ('L2', 'H2', 12) :  None :  0.0 :   1.0
         ('L2', 'I2', 0) :  None :  0.0 :   1.0
         ('L2', 'I2', 1) :  None :  1.0 :   1.0
         ('L2', 'I2', 2) :  None :  1.0 :   1.0
         ('L2', 'I2', 3) :  None :  1.0 :   1.0
         ('L2', 'I2', 4) :  None :  1.0 :   1.0
         ('L2', 'I2', 5) :  None :  0.0 :   1.0
         ('L2', 'I2', 6) :  None :  1.0 :   1.0
         ('L2', 'I2', 7) :  None :  0.0 :   1.0
         ('L2', 'I2', 8) :  None :  1.0 :   1.0
         ('L2', 'I2', 9) :  None :  1.0 :   1.0
        ('L2', 'I2', 10) :  None :  0.0 :   1.0
        ('L2', 'I2', 11) :  None :  1.0 :   1.0
        ('L2', 'I2', 12) :  None :  1.0 :   1.0
         ('L2', 'J2', 0) :  None :  1.0 :   1.0
         ('L2', 'J2', 1) :  None :  1.0 :   1.0
         ('L2', 'J2', 2) :  None :  1.0 :   1.0
         ('L2', 'J2', 3) :  None :  1.0 :   1.0
         ('L2', 'J2', 4) :  None :  1.0 :   1.0
         ('L2', 'J2', 5) :  None :  0.0 :   1.0
         ('L2', 'J2', 6) :  None :  0.0 :   1.0
         ('L2', 'J2', 7) :  None :  0.0 :   1.0
         ('L2', 'J2', 8) :  None :  0.0 :   1.0
         ('L2', 'J2', 9) :  None :  0.0 :   1.0
        ('L2', 'J2', 10) :  None :  1.0 :   1.0
        ('L2', 'J2', 11) :  None :  1.0 :   1.0
        ('L2', 'J2', 12) :  None :  1.0 :   1.0
         ('L2', 'K2', 0) :  None :  0.0 :   1.0
         ('L2', 'K2', 1) :  None :  0.0 :   1.0
         ('L2', 'K2', 2) :  None :  1.0 :   1.0
         ('L2', 'K2', 3) :  None :  0.0 :   1.0
         ('L2', 'K2', 4) :  None :  0.0 :   1.0
         ('L2', 'K2', 5) :  None :  0.0 :   1.0
         ('L2', 'K2', 6) :  None :  0.0 :   1.0
         ('L2', 'K2', 7) :  None :  0.0 :   1.0
         ('L2', 'K2', 8) :  None :  1.0 :   1.0
         ('L2', 'K2', 9) :  None :  0.0 :   1.0
        ('L2', 'K2', 10) :  None :  0.0 :   1.0
        ('L2', 'K2', 11) :  None :  0.0 :   1.0
        ('L2', 'K2', 12) :  None :  1.0 :   1.0
         ('L2', 'L2', 0) :  None :  1.0 :   1.0
         ('L2', 'L2', 1) :  None :  0.0 :   1.0
         ('L2', 'L2', 2) :  None :  0.0 :   1.0
         ('L2', 'L2', 3) :  None :  0.0 :   1.0
         ('L2', 'L2', 4) :  None :  0.0 :   1.0
         ('L2', 'L2', 5) :  None :  0.0 :   1.0
         ('L2', 'L2', 6) :  None :  0.0 :   1.0
         ('L2', 'L2', 7) :  None :  0.0 :   1.0
         ('L2', 'L2', 8) :  None :  0.0 :   1.0
         ('L2', 'L2', 9) :  None :  0.0 :   1.0
        ('L2', 'L2', 10) :  None :  1.0 :   1.0
        ('L2', 'L2', 11) :  None :  0.0 :   1.0
        ('L2', 'L2', 12) :  None :  1.0 :   1.0
         ('L2', 'M2', 0) :  None :  1.0 :   1.0
         ('L2', 'M2', 1) :  None :  0.0 :   1.0
         ('L2', 'M2', 2) :  None :  1.0 :   1.0
         ('L2', 'M2', 3) :  None :  0.0 :   1.0
         ('L2', 'M2', 4) :  None :  0.0 :   1.0
         ('L2', 'M2', 5) :  None :  1.0 :   1.0
         ('L2', 'M2', 6) :  None :  1.0 :   1.0
         ('L2', 'M2', 7) :  None :  0.0 :   1.0
         ('L2', 'M2', 8) :  None :  0.0 :   1.0
         ('L2', 'M2', 9) :  None :  0.0 :   1.0
        ('L2', 'M2', 10) :  None :  0.0 :   1.0
        ('L2', 'M2', 11) :  None :  0.0 :   1.0
        ('L2', 'M2', 12) :  None :  0.0 :   1.0
         ('L2', 'N2', 0) :  None :  0.0 :   1.0
         ('L2', 'N2', 1) :  None :  0.0 :   1.0
         ('L2', 'N2', 2) :  None :  0.0 :   1.0
         ('L2', 'N2', 3) :  None :  0.0 :   1.0
         ('L2', 'N2', 4) :  None :  0.0 :   1.0
         ('L2', 'N2', 5) :  None :  0.0 :   1.0
         ('L2', 'N2', 6) :  None :  0.0 :   1.0
         ('L2', 'N2', 7) :  None :  1.0 :   1.0
         ('L2', 'N2', 8) :  None :  0.0 :   1.0
         ('L2', 'N2', 9) :  None :  1.0 :   1.0
        ('L2', 'N2', 10) :  None :  0.0 :   1.0
        ('L2', 'N2', 11) :  None :  1.0 :   1.0
        ('L2', 'N2', 12) :  None :  0.0 :   1.0
    constraint_max_nr_shifts : Size=28
        Key          : Lower : Body : Upper
        ('A2', 'E2') :  None :  0.0 :  14.0
        ('A2', 'L2') :  None :  8.0 :  14.0
        ('B2', 'E2') :  None :  8.0 :  14.0
        ('B2', 'L2') :  None :  0.0 :  14.0
        ('C2', 'E2') :  None :  7.0 :  14.0
        ('C2', 'L2') :  None :  1.0 :  14.0
        ('D2', 'E2') :  None :  9.0 :  14.0
        ('D2', 'L2') :  None :  0.0 :   0.0
        ('E2', 'E2') :  None :  0.0 :   0.0
        ('E2', 'L2') :  None :  8.0 :  14.0
        ('F2', 'E2') :  None :  3.0 :  14.0
        ('F2', 'L2') :  None :  5.0 :  14.0
        ('G2', 'E2') :  None :  6.0 :  14.0
        ('G2', 'L2') :  None :  3.0 :  14.0
        ('H2', 'E2') :  None :  6.0 :  14.0
        ('H2', 'L2') :  None :  2.0 :  14.0
        ('I2', 'E2') :  None :  3.0 :  14.0
        ('I2', 'L2') :  None :  6.0 :  14.0
        ('J2', 'E2') :  None :  0.0 :  14.0
        ('J2', 'L2') :  None :  9.0 :  14.0
        ('K2', 'E2') :  None :  0.0 :   0.0
        ('K2', 'L2') :  None :  4.0 :  14.0
        ('L2', 'E2') :  None :  0.0 :   0.0
        ('L2', 'L2') :  None :  4.0 :  14.0
        ('M2', 'E2') :  None :  2.0 :  14.0
        ('M2', 'L2') :  None :  2.0 :  14.0
        ('N2', 'E2') :  None :  3.0 :  14.0
        ('N2', 'L2') :  None :  1.0 :  14.0
    constraint_max_total_minutes : Size=14
        Key : Lower : Body   : Upper
         A2 :  None : 3840.0 : 4320.0
         B2 :  None : 3840.0 : 4320.0
         C2 :  None : 3840.0 : 4320.0
         D2 :  None : 4320.0 : 4320.0
         E2 :  None : 3840.0 : 4320.0
         F2 :  None : 3840.0 : 4320.0
         G2 :  None : 4320.0 : 4320.0
         H2 :  None : 3840.0 : 4320.0
         I2 :  None : 4320.0 : 4320.0
         J2 :  None : 4320.0 : 4320.0
         K2 :  None : 1920.0 : 2160.0
         L2 :  None : 1920.0 : 2160.0
         M2 :  None : 1920.0 : 2160.0
         N2 :  None : 1920.0 : 2160.0
    constraint_min_total_minutes : Size=14
        Key : Lower  : Body   : Upper
         A2 : 3360.0 : 3840.0 :  None
         B2 : 3360.0 : 3840.0 :  None
         C2 : 3360.0 : 3840.0 :  None
         D2 : 3360.0 : 4320.0 :  None
         E2 : 3360.0 : 3840.0 :  None
         F2 : 3360.0 : 3840.0 :  None
         G2 : 3360.0 : 4320.0 :  None
         H2 : 3360.0 : 3840.0 :  None
         I2 : 3360.0 : 4320.0 :  None
         J2 : 3360.0 : 4320.0 :  None
         K2 : 1200.0 : 1920.0 :  None
         L2 : 1200.0 : 1920.0 :  None
         M2 : 1200.0 : 1920.0 :  None
         N2 : 1200.0 : 1920.0 :  None
    constraint_max_cons_shifts_backward : Size=126
        Key        : Lower : Body : Upper
         ('A2', 5) :   1.0 :  2.0 :  None
         ('A2', 6) :   1.0 :  2.0 :  None
         ('A2', 7) :   1.0 :  2.0 :  None
         ('A2', 8) :   1.0 :  2.0 :  None
         ('A2', 9) :   1.0 :  1.0 :  None
        ('A2', 10) :   1.0 :  1.0 :  None
        ('A2', 11) :   1.0 :  2.0 :  None
        ('A2', 12) :   1.0 :  3.0 :  None
        ('A2', 13) :   1.0 :  4.0 :  None
         ('B2', 5) :   1.0 :  3.0 :  None
         ('B2', 6) :   1.0 :  3.0 :  None
         ('B2', 7) :   1.0 :  2.0 :  None
         ('B2', 8) :   1.0 :  2.0 :  None
         ('B2', 9) :   1.0 :  2.0 :  None
        ('B2', 10) :   1.0 :  3.0 :  None
        ('B2', 11) :   1.0 :  3.0 :  None
        ('B2', 12) :   1.0 :  2.0 :  None
        ('B2', 13) :   1.0 :  2.0 :  None
         ('C2', 5) :   1.0 :  2.0 :  None
         ('C2', 6) :   1.0 :  2.0 :  None
         ('C2', 7) :   1.0 :  2.0 :  None
         ('C2', 8) :   1.0 :  2.0 :  None
         ('C2', 9) :   1.0 :  2.0 :  None
        ('C2', 10) :   1.0 :  2.0 :  None
        ('C2', 11) :   1.0 :  2.0 :  None
        ('C2', 12) :   1.0 :  3.0 :  None
        ('C2', 13) :   1.0 :  3.0 :  None
         ('D2', 5) :   1.0 :  1.0 :  None
         ('D2', 6) :   1.0 :  2.0 :  None
         ('D2', 7) :   1.0 :  3.0 :  None
         ('D2', 8) :   1.0 :  3.0 :  None
         ('D2', 9) :   1.0 :  3.0 :  None
        ('D2', 10) :   1.0 :  3.0 :  None
        ('D2', 11) :   1.0 :  3.0 :  None
        ('D2', 12) :   1.0 :  3.0 :  None
        ('D2', 13) :   1.0 :  2.0 :  None
         ('E2', 5) :   1.0 :  2.0 :  None
         ('E2', 6) :   1.0 :  1.0 :  None
         ('E2', 7) :   1.0 :  1.0 :  None
         ('E2', 8) :   1.0 :  2.0 :  None
         ('E2', 9) :   1.0 :  2.0 :  None
        ('E2', 10) :   1.0 :  2.0 :  None
        ('E2', 11) :   1.0 :  2.0 :  None
        ('E2', 12) :   1.0 :  3.0 :  None
        ('E2', 13) :   1.0 :  3.0 :  None
         ('F2', 5) :   1.0 :  2.0 :  None
         ('F2', 6) :   1.0 :  2.0 :  None
         ('F2', 7) :   1.0 :  2.0 :  None
         ('F2', 8) :   1.0 :  2.0 :  None
         ('F2', 9) :   1.0 :  2.0 :  None
        ('F2', 10) :   1.0 :  2.0 :  None
        ('F2', 11) :   1.0 :  2.0 :  None
        ('F2', 12) :   1.0 :  3.0 :  None
        ('F2', 13) :   1.0 :  3.0 :  None
         ('G2', 5) :   1.0 :  2.0 :  None
         ('G2', 6) :   1.0 :  3.0 :  None
         ('G2', 7) :   1.0 :  3.0 :  None
         ('G2', 8) :   1.0 :  3.0 :  None
         ('G2', 9) :   1.0 :  4.0 :  None
        ('G2', 10) :   1.0 :  4.0 :  None
        ('G2', 11) :   1.0 :  3.0 :  None
        ('G2', 12) :   1.0 :  2.0 :  None
        ('G2', 13) :   1.0 :  2.0 :  None
         ('H2', 5) :   1.0 :  2.0 :  None
         ('H2', 6) :   1.0 :  2.0 :  None
         ('H2', 7) :   1.0 :  2.0 :  None
         ('H2', 8) :   1.0 :  2.0 :  None
         ('H2', 9) :   1.0 :  1.0 :  None
        ('H2', 10) :   1.0 :  1.0 :  None
        ('H2', 11) :   1.0 :  2.0 :  None
        ('H2', 12) :   1.0 :  3.0 :  None
        ('H2', 13) :   1.0 :  4.0 :  None
         ('I2', 5) :   1.0 :  2.0 :  None
         ('I2', 6) :   1.0 :  2.0 :  None
         ('I2', 7) :   1.0 :  2.0 :  None
         ('I2', 8) :   1.0 :  2.0 :  None
         ('I2', 9) :   1.0 :  2.0 :  None
        ('I2', 10) :   1.0 :  3.0 :  None
        ('I2', 11) :   1.0 :  3.0 :  None
        ('I2', 12) :   1.0 :  2.0 :  None
        ('I2', 13) :   1.0 :  2.0 :  None
         ('J2', 5) :   1.0 :  1.0 :  None
         ('J2', 6) :   1.0 :  2.0 :  None
         ('J2', 7) :   1.0 :  3.0 :  None
         ('J2', 8) :   1.0 :  4.0 :  None
         ('J2', 9) :   1.0 :  5.0 :  None
        ('J2', 10) :   1.0 :  5.0 :  None
        ('J2', 11) :   1.0 :  4.0 :  None
        ('J2', 12) :   1.0 :  3.0 :  None
        ('J2', 13) :   1.0 :  2.0 :  None
         ('K2', 5) :   1.0 :  5.0 :  None
         ('K2', 6) :   1.0 :  5.0 :  None
         ('K2', 7) :   1.0 :  5.0 :  None
         ('K2', 8) :   1.0 :  5.0 :  None
         ('K2', 9) :   1.0 :  5.0 :  None
        ('K2', 10) :   1.0 :  5.0 :  None
        ('K2', 11) :   1.0 :  5.0 :  None
        ('K2', 12) :   1.0 :  4.0 :  None
        ('K2', 13) :   1.0 :  3.0 :  None
         ('L2', 5) :   1.0 :  5.0 :  None
         ('L2', 6) :   1.0 :  6.0 :  None
         ('L2', 7) :   1.0 :  6.0 :  None
         ('L2', 8) :   1.0 :  6.0 :  None
         ('L2', 9) :   1.0 :  6.0 :  None
        ('L2', 10) :   1.0 :  5.0 :  None
        ('L2', 11) :   1.0 :  5.0 :  None
        ('L2', 12) :   1.0 :  4.0 :  None
        ('L2', 13) :   1.0 :  3.0 :  None
         ('M2', 5) :   1.0 :  3.0 :  None
         ('M2', 6) :   1.0 :  2.0 :  None
         ('M2', 7) :   1.0 :  3.0 :  None
         ('M2', 8) :   1.0 :  3.0 :  None
         ('M2', 9) :   1.0 :  4.0 :  None
        ('M2', 10) :   1.0 :  4.0 :  None
        ('M2', 11) :   1.0 :  5.0 :  None
        ('M2', 12) :   1.0 :  6.0 :  None
        ('M2', 13) :   1.0 :  6.0 :  None
         ('N2', 5) :   1.0 :  6.0 :  None
         ('N2', 6) :   1.0 :  6.0 :  None
         ('N2', 7) :   1.0 :  6.0 :  None
         ('N2', 8) :   1.0 :  5.0 :  None
         ('N2', 9) :   1.0 :  5.0 :  None
        ('N2', 10) :   1.0 :  4.0 :  None
        ('N2', 11) :   1.0 :  4.0 :  None
        ('N2', 12) :   1.0 :  3.0 :  None
        ('N2', 13) :   1.0 :  2.0 :  None
    constraint_max_cons_shifts_forward : Size=0
        Key : Lower : Body : Upper
    constraint_max_cons_shifts_in_between : Size=0
        Key : Lower : Body : Upper
    constraint_is_end_of_work_block : Size=140
        Key        : Lower : Body : Upper
         ('A2', 0) :  None : -1.0 :   0.0
         ('A2', 1) :  None : -1.0 :   0.0
         ('A2', 2) :  None :  0.0 :   0.0
         ('A2', 3) :  None : -1.0 :   0.0
         ('A2', 4) :  None : -1.0 :   0.0
         ('A2', 5) :  None :  0.0 :   0.0
         ('A2', 6) :  None : -1.0 :   0.0
         ('A2', 7) :  None : -1.0 :   0.0
         ('A2', 8) :  None : -1.0 :   0.0
         ('A2', 9) :  None :  0.0 :   0.0
        ('A2', 10) :  None : -1.0 :   0.0
        ('A2', 11) :  None :  0.0 :   0.0
        ('A2', 12) :  None :  0.0 :   0.0
        ('A2', 13) :   0.0 :  0.0 :   0.0
         ('B2', 0) :  None : -1.0 :   0.0
         ('B2', 1) :  None : -1.0 :   0.0
         ('B2', 2) :  None :  0.0 :   0.0
         ('B2', 3) :  None : -1.0 :   0.0
         ('B2', 4) :  None :  0.0 :   0.0
         ('B2', 5) :  None : -1.0 :   0.0
         ('B2', 6) :  None : -1.0 :   0.0
         ('B2', 7) :  None :  0.0 :   0.0
         ('B2', 8) :  None : -1.0 :   0.0
         ('B2', 9) :  None :  0.0 :   0.0
        ('B2', 10) :  None : -1.0 :   0.0
        ('B2', 11) :  None : -1.0 :   0.0
        ('B2', 12) :  None :  0.0 :   0.0
        ('B2', 13) :   0.0 :  0.0 :   0.0
         ('C2', 0) :  None :  0.0 :   0.0
         ('C2', 1) :  None : -1.0 :   0.0
         ('C2', 2) :  None : -1.0 :   0.0
         ('C2', 3) :  None :  0.0 :   0.0
         ('C2', 4) :  None : -1.0 :   0.0
         ('C2', 5) :  None : -1.0 :   0.0
         ('C2', 6) :  None :  0.0 :   0.0
         ('C2', 7) :  None : -1.0 :   0.0
         ('C2', 8) :  None : -1.0 :   0.0
         ('C2', 9) :  None :  0.0 :   0.0
        ('C2', 10) :  None : -1.0 :   0.0
        ('C2', 11) :  None :  0.0 :   0.0
        ('C2', 12) :  None : -1.0 :   0.0
        ('C2', 13) :   0.0 :  0.0 :   0.0
         ('D2', 0) :  None : -1.0 :   0.0
         ('D2', 1) :  None : -1.0 :   0.0
         ('D2', 2) :  None : -1.0 :   0.0
         ('D2', 3) :  None : -1.0 :   0.0
         ('D2', 4) :  None :  0.0 :   0.0
         ('D2', 5) :  None : -1.0 :   0.0
         ('D2', 6) :  None :  0.0 :   0.0
         ('D2', 7) :  None : -1.0 :   0.0
         ('D2', 8) :  None :  0.0 :   0.0
         ('D2', 9) :  None : -1.0 :   0.0
        ('D2', 10) :  None :  0.0 :   0.0
        ('D2', 11) :  None : -1.0 :   0.0
        ('D2', 12) :  None : -1.0 :   0.0
        ('D2', 13) :   0.0 :  0.0 :   0.0
         ('E2', 0) :  None : -1.0 :   0.0
         ('E2', 1) :  None : -1.0 :   0.0
         ('E2', 2) :  None :  0.0 :   0.0
         ('E2', 3) :  None : -1.0 :   0.0
         ('E2', 4) :  None : -1.0 :   0.0
         ('E2', 5) :  None : -1.0 :   0.0
         ('E2', 6) :  None :  0.0 :   0.0
         ('E2', 7) :  None : -1.0 :   0.0
         ('E2', 8) :  None : -1.0 :   0.0
         ('E2', 9) :  None :  0.0 :   0.0
        ('E2', 10) :  None : -1.0 :   0.0
        ('E2', 11) :  None :  0.0 :   0.0
        ('E2', 12) :  None : -1.0 :   0.0
        ('E2', 13) :   0.0 :  0.0 :   0.0
         ('F2', 0) :  None :  0.0 :   0.0
         ('F2', 1) :  None : -1.0 :   0.0
         ('F2', 2) :  None : -1.0 :   0.0
         ('F2', 3) :  None :  0.0 :   0.0
         ('F2', 4) :  None : -1.0 :   0.0
         ('F2', 5) :  None : -1.0 :   0.0
         ('F2', 6) :  None :  0.0 :   0.0
         ('F2', 7) :  None : -1.0 :   0.0
         ('F2', 8) :  None : -1.0 :   0.0
         ('F2', 9) :  None :  0.0 :   0.0
        ('F2', 10) :  None : -1.0 :   0.0
        ('F2', 11) :  None :  0.0 :   0.0
        ('F2', 12) :  None : -1.0 :   0.0
        ('F2', 13) :   0.0 :  0.0 :   0.0
         ('G2', 0) :  None : -1.0 :   0.0
         ('G2', 1) :  None : -1.0 :   0.0
         ('G2', 2) :  None : -1.0 :   0.0
         ('G2', 3) :  None :  0.0 :   0.0
         ('G2', 4) :  None : -1.0 :   0.0
         ('G2', 5) :  None :  0.0 :   0.0
         ('G2', 6) :  None : -1.0 :   0.0
         ('G2', 7) :  None :  0.0 :   0.0
         ('G2', 8) :  None :  0.0 :   0.0
         ('G2', 9) :  None : -1.0 :   0.0
        ('G2', 10) :  None : -1.0 :   0.0
        ('G2', 11) :  None :  0.0 :   0.0
        ('G2', 12) :  None : -1.0 :   0.0
        ('G2', 13) :   0.0 :  0.0 :   0.0
         ('H2', 0) :  None : -1.0 :   0.0
         ('H2', 1) :  None : -1.0 :   0.0
         ('H2', 2) :  None :  0.0 :   0.0
         ('H2', 3) :  None : -1.0 :   0.0
         ('H2', 4) :  None : -1.0 :   0.0
         ('H2', 5) :  None :  0.0 :   0.0
         ('H2', 6) :  None : -1.0 :   0.0
         ('H2', 7) :  None : -1.0 :   0.0
         ('H2', 8) :  None : -1.0 :   0.0
         ('H2', 9) :  None :  0.0 :   0.0
        ('H2', 10) :  None : -1.0 :   0.0
        ('H2', 11) :  None :  0.0 :   0.0
        ('H2', 12) :  None :  0.0 :   0.0
        ('H2', 13) :   0.0 :  0.0 :   0.0
         ('I2', 0) :  None : -2.0 :   0.0
         ('I2', 1) :  None :  0.0 :   0.0
         ('I2', 2) :  None : -1.0 :   0.0
         ('I2', 3) :  None : -1.0 :   0.0
         ('I2', 4) :  None :  0.0 :   0.0
         ('I2', 5) :  None : -1.0 :   0.0
         ('I2', 6) :  None : -1.0 :   0.0
         ('I2', 7) :  None :  0.0 :   0.0
         ('I2', 8) :  None : -1.0 :   0.0
         ('I2', 9) :  None :  0.0 :   0.0
        ('I2', 10) :  None : -1.0 :   0.0
        ('I2', 11) :  None : -1.0 :   0.0
        ('I2', 12) :  None :  0.0 :   0.0
        ('I2', 13) :   0.0 :  0.0 :   0.0
         ('J2', 0) :  None : -1.0 :   0.0
         ('J2', 1) :  None : -1.0 :   0.0
         ('J2', 2) :  None : -1.0 :   0.0
         ('J2', 3) :  None : -1.0 :   0.0
         ('J2', 4) :  None :  0.0 :   0.0
         ('J2', 5) :  None : -1.0 :   0.0
         ('J2', 6) :  None :  0.0 :   0.0
         ('J2', 7) :  None :  0.0 :   0.0
         ('J2', 8) :  None :  0.0 :   0.0
         ('J2', 9) :  None : -1.0 :   0.0
        ('J2', 10) :  None :  0.0 :   0.0
        ('J2', 11) :  None : -1.0 :   0.0
        ('J2', 12) :  None : -1.0 :   0.0
        ('J2', 13) :   0.0 :  0.0 :   0.0
    constraint_min_cons_shift_inscope : Size=140
        Key        : Lower : Body : Upper
         ('A2', 0) :  None :  0.0 :   0.0
         ('A2', 1) :  None :  1.0 :   1.0
         ('A2', 2) :  None :  1.0 :   1.0
         ('A2', 3) :  None :  1.0 :   1.0
         ('A2', 4) :  None :  1.0 :   1.0
         ('A2', 5) :  None :  1.0 :   1.0
         ('A2', 6) :  None :  1.0 :   1.0
         ('A2', 7) :  None :  1.0 :   1.0
         ('A2', 8) :  None :  1.0 :   1.0
         ('A2', 9) :  None :  1.0 :   1.0
        ('A2', 10) :  None :  1.0 :   1.0
        ('A2', 11) :  None :  1.0 :   1.0
        ('A2', 12) :  None :  1.0 :   1.0
        ('A2', 13) :  None :  1.0 :   1.0
         ('B2', 0) :  None :  0.0 :   0.0
         ('B2', 1) :  None :  1.0 :   1.0
         ('B2', 2) :  None :  1.0 :   1.0
         ('B2', 3) :  None :  1.0 :   1.0
         ('B2', 4) :  None :  1.0 :   1.0
         ('B2', 5) :  None :  1.0 :   1.0
         ('B2', 6) :  None :  1.0 :   1.0
         ('B2', 7) :  None :  1.0 :   1.0
         ('B2', 8) :  None :  1.0 :   1.0
         ('B2', 9) :  None :  1.0 :   1.0
        ('B2', 10) :  None :  1.0 :   1.0
        ('B2', 11) :  None :  1.0 :   1.0
        ('B2', 12) :  None :  1.0 :   1.0
        ('B2', 13) :  None :  0.0 :   1.0
         ('C2', 0) :  None :  0.0 :   0.0
         ('C2', 1) :  None :  1.0 :   1.0
         ('C2', 2) :  None :  1.0 :   1.0
         ('C2', 3) :  None :  1.0 :   1.0
         ('C2', 4) :  None :  1.0 :   1.0
         ('C2', 5) :  None :  1.0 :   1.0
         ('C2', 6) :  None :  1.0 :   1.0
         ('C2', 7) :  None :  1.0 :   1.0
         ('C2', 8) :  None :  1.0 :   1.0
         ('C2', 9) :  None :  1.0 :   1.0
        ('C2', 10) :  None :  1.0 :   1.0
        ('C2', 11) :  None :  1.0 :   1.0
        ('C2', 12) :  None :  1.0 :   1.0
        ('C2', 13) :  None :  1.0 :   1.0
         ('D2', 0) :  None :  0.0 :   0.0
         ('D2', 1) :  None :  1.0 :   1.0
         ('D2', 2) :  None :  1.0 :   1.0
         ('D2', 3) :  None :  1.0 :   1.0
         ('D2', 4) :  None :  1.0 :   1.0
         ('D2', 5) :  None :  1.0 :   1.0
         ('D2', 6) :  None :  1.0 :   1.0
         ('D2', 7) :  None :  1.0 :   1.0
         ('D2', 8) :  None :  1.0 :   1.0
         ('D2', 9) :  None :  1.0 :   1.0
        ('D2', 10) :  None :  1.0 :   1.0
        ('D2', 11) :  None :  1.0 :   1.0
        ('D2', 12) :  None :  1.0 :   1.0
        ('D2', 13) :  None :  1.0 :   1.0
         ('E2', 0) :  None :  0.0 :   0.0
         ('E2', 1) :  None :  1.0 :   1.0
         ('E2', 2) :  None :  1.0 :   1.0
         ('E2', 3) :  None :  1.0 :   1.0
         ('E2', 4) :  None :  1.0 :   1.0
         ('E2', 5) :  None :  1.0 :   1.0
         ('E2', 6) :  None :  1.0 :   1.0
         ('E2', 7) :  None :  1.0 :   1.0
         ('E2', 8) :  None :  1.0 :   1.0
         ('E2', 9) :  None :  1.0 :   1.0
        ('E2', 10) :  None :  1.0 :   1.0
        ('E2', 11) :  None :  1.0 :   1.0
        ('E2', 12) :  None :  1.0 :   1.0
        ('E2', 13) :  None :  1.0 :   1.0
         ('F2', 0) :  None :  0.0 :   0.0
         ('F2', 1) :  None :  1.0 :   1.0
         ('F2', 2) :  None :  1.0 :   1.0
         ('F2', 3) :  None :  1.0 :   1.0
         ('F2', 4) :  None :  1.0 :   1.0
         ('F2', 5) :  None :  1.0 :   1.0
         ('F2', 6) :  None :  1.0 :   1.0
         ('F2', 7) :  None :  1.0 :   1.0
         ('F2', 8) :  None :  1.0 :   1.0
         ('F2', 9) :  None :  1.0 :   1.0
        ('F2', 10) :  None :  1.0 :   1.0
        ('F2', 11) :  None :  1.0 :   1.0
        ('F2', 12) :  None :  1.0 :   1.0
        ('F2', 13) :  None :  1.0 :   1.0
         ('G2', 0) :  None :  0.0 :   0.0
         ('G2', 1) :  None :  1.0 :   1.0
         ('G2', 2) :  None :  1.0 :   1.0
         ('G2', 3) :  None :  1.0 :   1.0
         ('G2', 4) :  None :  1.0 :   1.0
         ('G2', 5) :  None :  1.0 :   1.0
         ('G2', 6) :  None :  1.0 :   1.0
         ('G2', 7) :  None :  1.0 :   1.0
         ('G2', 8) :  None :  1.0 :   1.0
         ('G2', 9) :  None :  1.0 :   1.0
        ('G2', 10) :  None :  1.0 :   1.0
        ('G2', 11) :  None :  1.0 :   1.0
        ('G2', 12) :  None :  1.0 :   1.0
        ('G2', 13) :  None :  0.0 :   1.0
         ('H2', 0) :  None :  0.0 :   0.0
         ('H2', 1) :  None :  1.0 :   1.0
         ('H2', 2) :  None :  1.0 :   1.0
         ('H2', 3) :  None :  1.0 :   1.0
         ('H2', 4) :  None :  1.0 :   1.0
         ('H2', 5) :  None :  1.0 :   1.0
         ('H2', 6) :  None :  1.0 :   1.0
         ('H2', 7) :  None :  1.0 :   1.0
         ('H2', 8) :  None :  1.0 :   1.0
         ('H2', 9) :  None :  1.0 :   1.0
        ('H2', 10) :  None :  1.0 :   1.0
        ('H2', 11) :  None :  1.0 :   1.0
        ('H2', 12) :  None :  1.0 :   1.0
        ('H2', 13) :  None :  1.0 :   1.0
         ('I2', 0) :  None :  0.0 :   0.0
         ('I2', 1) :  None :  1.0 :   1.0
         ('I2', 2) :  None :  1.0 :   1.0
         ('I2', 3) :  None :  1.0 :   1.0
         ('I2', 4) :  None :  1.0 :   1.0
         ('I2', 5) :  None :  1.0 :   1.0
         ('I2', 6) :  None :  1.0 :   1.0
         ('I2', 7) :  None :  1.0 :   1.0
         ('I2', 8) :  None :  1.0 :   1.0
         ('I2', 9) :  None :  1.0 :   1.0
        ('I2', 10) :  None :  1.0 :   1.0
        ('I2', 11) :  None :  1.0 :   1.0
        ('I2', 12) :  None :  1.0 :   1.0
        ('I2', 13) :  None :  0.0 :   1.0
         ('J2', 0) :  None :  0.0 :   0.0
         ('J2', 1) :  None :  1.0 :   1.0
         ('J2', 2) :  None :  1.0 :   1.0
         ('J2', 3) :  None :  1.0 :   1.0
         ('J2', 4) :  None :  1.0 :   1.0
         ('J2', 5) :  None :  1.0 :   1.0
         ('J2', 6) :  None :  1.0 :   1.0
         ('J2', 7) :  None :  1.0 :   1.0
         ('J2', 8) :  None :  1.0 :   1.0
         ('J2', 9) :  None :  1.0 :   1.0
        ('J2', 10) :  None :  1.0 :   1.0
        ('J2', 11) :  None :  1.0 :   1.0
        ('J2', 12) :  None :  1.0 :   1.0
        ('J2', 13) :  None :  0.0 :   1.0
    constraint_min_cons_shift_backward : Size=0
        Key : Lower : Body : Upper
    constraint_min_cons_shift_forward : Size=0
        Key : Lower : Body : Upper
    constraint_is_end_of_rest_block : Size=140
        Key        : Lower : Body : Upper
         ('A2', 0) :  None : -1.0 :   0.0
         ('A2', 1) :  None :  0.0 :   0.0
         ('A2', 2) :  None : -1.0 :   0.0
         ('A2', 3) :  None :  0.0 :   0.0
         ('A2', 4) :  None :  0.0 :   0.0
         ('A2', 5) :  None : -1.0 :   0.0
         ('A2', 6) :  None :  0.0 :   0.0
         ('A2', 7) :  None :  0.0 :   0.0
         ('A2', 8) :  None :  0.0 :   0.0
         ('A2', 9) :  None : -1.0 :   0.0
        ('A2', 10) :  None :  0.0 :   0.0
        ('A2', 11) :  None : -1.0 :   0.0
        ('A2', 12) :  None : -1.0 :   0.0
        ('A2', 13) :   0.0 :  0.0 :   0.0
         ('B2', 0) :  None : -1.0 :   0.0
         ('B2', 1) :  None :  0.0 :   0.0
         ('B2', 2) :  None : -1.0 :   0.0
         ('B2', 3) :  None :  0.0 :   0.0
         ('B2', 4) :  None : -1.0 :   0.0
         ('B2', 5) :  None :  0.0 :   0.0
         ('B2', 6) :  None :  0.0 :   0.0
         ('B2', 7) :  None : -1.0 :   0.0
         ('B2', 8) :  None :  0.0 :   0.0
         ('B2', 9) :  None : -1.0 :   0.0
        ('B2', 10) :  None :  0.0 :   0.0
        ('B2', 11) :  None :  0.0 :   0.0
        ('B2', 12) :  None : -1.0 :   0.0
        ('B2', 13) :   0.0 :  0.0 :   0.0
         ('C2', 0) :  None : -2.0 :   0.0
         ('C2', 1) :  None :  0.0 :   0.0
         ('C2', 2) :  None :  0.0 :   0.0
         ('C2', 3) :  None : -1.0 :   0.0
         ('C2', 4) :  None :  0.0 :   0.0
         ('C2', 5) :  None :  0.0 :   0.0
         ('C2', 6) :  None : -1.0 :   0.0
         ('C2', 7) :  None :  0.0 :   0.0
         ('C2', 8) :  None :  0.0 :   0.0
         ('C2', 9) :  None : -1.0 :   0.0
        ('C2', 10) :  None :  0.0 :   0.0
        ('C2', 11) :  None : -1.0 :   0.0
        ('C2', 12) :  None :  0.0 :   0.0
        ('C2', 13) :   0.0 :  0.0 :   0.0
         ('D2', 0) :  None : -1.0 :   0.0
         ('D2', 1) :  None :  0.0 :   0.0
         ('D2', 2) :  None :  0.0 :   0.0
         ('D2', 3) :  None :  0.0 :   0.0
         ('D2', 4) :  None : -1.0 :   0.0
         ('D2', 5) :  None :  0.0 :   0.0
         ('D2', 6) :  None : -1.0 :   0.0
         ('D2', 7) :  None :  0.0 :   0.0
         ('D2', 8) :  None : -1.0 :   0.0
         ('D2', 9) :  None :  0.0 :   0.0
        ('D2', 10) :  None : -1.0 :   0.0
        ('D2', 11) :  None :  0.0 :   0.0
        ('D2', 12) :  None :  0.0 :   0.0
        ('D2', 13) :   0.0 :  0.0 :   0.0
         ('E2', 0) :  None : -1.0 :   0.0
         ('E2', 1) :  None :  0.0 :   0.0
         ('E2', 2) :  None : -1.0 :   0.0
         ('E2', 3) :  None :  0.0 :   0.0
         ('E2', 4) :  None :  0.0 :   0.0
         ('E2', 5) :  None :  0.0 :   0.0
         ('E2', 6) :  None : -1.0 :   0.0
         ('E2', 7) :  None :  0.0 :   0.0
         ('E2', 8) :  None :  0.0 :   0.0
         ('E2', 9) :  None : -1.0 :   0.0
        ('E2', 10) :  None :  0.0 :   0.0
        ('E2', 11) :  None : -1.0 :   0.0
        ('E2', 12) :  None :  0.0 :   0.0
        ('E2', 13) :   0.0 :  0.0 :   0.0
         ('F2', 0) :  None : -2.0 :   0.0
         ('F2', 1) :  None :  0.0 :   0.0
         ('F2', 2) :  None :  0.0 :   0.0
         ('F2', 3) :  None : -1.0 :   0.0
         ('F2', 4) :  None :  0.0 :   0.0
         ('F2', 5) :  None :  0.0 :   0.0
         ('F2', 6) :  None : -1.0 :   0.0
         ('F2', 7) :  None :  0.0 :   0.0
         ('F2', 8) :  None :  0.0 :   0.0
         ('F2', 9) :  None : -1.0 :   0.0
        ('F2', 10) :  None :  0.0 :   0.0
        ('F2', 11) :  None : -1.0 :   0.0
        ('F2', 12) :  None :  0.0 :   0.0
        ('F2', 13) :   0.0 :  0.0 :   0.0
         ('G2', 0) :  None : -1.0 :   0.0
         ('G2', 1) :  None :  0.0 :   0.0
         ('G2', 2) :  None :  0.0 :   0.0
         ('G2', 3) :  None : -1.0 :   0.0
         ('G2', 4) :  None :  0.0 :   0.0
         ('G2', 5) :  None : -1.0 :   0.0
         ('G2', 6) :  None :  0.0 :   0.0
         ('G2', 7) :  None : -1.0 :   0.0
         ('G2', 8) :  None : -1.0 :   0.0
         ('G2', 9) :  None :  0.0 :   0.0
        ('G2', 10) :  None :  0.0 :   0.0
        ('G2', 11) :  None : -1.0 :   0.0
        ('G2', 12) :  None :  0.0 :   0.0
        ('G2', 13) :   0.0 :  0.0 :   0.0
         ('H2', 0) :  None : -1.0 :   0.0
         ('H2', 1) :  None :  0.0 :   0.0
         ('H2', 2) :  None : -1.0 :   0.0
         ('H2', 3) :  None :  0.0 :   0.0
         ('H2', 4) :  None :  0.0 :   0.0
         ('H2', 5) :  None : -1.0 :   0.0
         ('H2', 6) :  None :  0.0 :   0.0
         ('H2', 7) :  None :  0.0 :   0.0
         ('H2', 8) :  None :  0.0 :   0.0
         ('H2', 9) :  None : -1.0 :   0.0
        ('H2', 10) :  None :  0.0 :   0.0
        ('H2', 11) :  None : -1.0 :   0.0
        ('H2', 12) :  None : -1.0 :   0.0
        ('H2', 13) :   0.0 :  0.0 :   0.0
         ('I2', 0) :  None :  0.0 :   0.0
         ('I2', 1) :  None : -1.0 :   0.0
         ('I2', 2) :  None :  0.0 :   0.0
         ('I2', 3) :  None :  0.0 :   0.0
         ('I2', 4) :  None : -1.0 :   0.0
         ('I2', 5) :  None :  0.0 :   0.0
         ('I2', 6) :  None :  0.0 :   0.0
         ('I2', 7) :  None : -1.0 :   0.0
         ('I2', 8) :  None :  0.0 :   0.0
         ('I2', 9) :  None : -1.0 :   0.0
        ('I2', 10) :  None :  0.0 :   0.0
        ('I2', 11) :  None :  0.0 :   0.0
        ('I2', 12) :  None : -1.0 :   0.0
        ('I2', 13) :   0.0 :  0.0 :   0.0
         ('J2', 0) :  None : -1.0 :   0.0
         ('J2', 1) :  None :  0.0 :   0.0
         ('J2', 2) :  None :  0.0 :   0.0
         ('J2', 3) :  None :  0.0 :   0.0
         ('J2', 4) :  None : -1.0 :   0.0
         ('J2', 5) :  None :  0.0 :   0.0
         ('J2', 6) :  None : -1.0 :   0.0
         ('J2', 7) :  None : -1.0 :   0.0
         ('J2', 8) :  None : -1.0 :   0.0
         ('J2', 9) :  None :  0.0 :   0.0
        ('J2', 10) :  None : -1.0 :   0.0
        ('J2', 11) :  None :  0.0 :   0.0
        ('J2', 12) :  None :  0.0 :   0.0
        ('J2', 13) :   0.0 :  0.0 :   0.0
    constraint_min_cons_days_off_inscope : Size=140
        Key        : Lower : Body : Upper
         ('A2', 0) :  None :  0.0 :   0.0
         ('A2', 1) :  None :  0.0 :   0.0
         ('A2', 2) :  None :  0.0 :   0.0
         ('A2', 3) :  None :  0.0 :   0.0
         ('A2', 4) :  None :  0.0 :   0.0
         ('A2', 5) :  None :  0.0 :   0.0
         ('A2', 6) :  None :  0.0 :   0.0
         ('A2', 7) :  None :  0.0 :   0.0
         ('A2', 8) :  None :  0.0 :   0.0
         ('A2', 9) :  None :  0.0 :   0.0
        ('A2', 10) :  None :  0.0 :   0.0
        ('A2', 11) :  None :  0.0 :   0.0
        ('A2', 12) :  None :  0.0 :   0.0
        ('A2', 13) :  None : -1.0 :   0.0
         ('B2', 0) :  None :  0.0 :   0.0
         ('B2', 1) :  None :  0.0 :   0.0
         ('B2', 2) :  None :  0.0 :   0.0
         ('B2', 3) :  None :  0.0 :   0.0
         ('B2', 4) :  None :  0.0 :   0.0
         ('B2', 5) :  None :  0.0 :   0.0
         ('B2', 6) :  None :  0.0 :   0.0
         ('B2', 7) :  None :  0.0 :   0.0
         ('B2', 8) :  None :  0.0 :   0.0
         ('B2', 9) :  None :  0.0 :   0.0
        ('B2', 10) :  None :  0.0 :   0.0
        ('B2', 11) :  None :  0.0 :   0.0
        ('B2', 12) :  None :  0.0 :   0.0
        ('B2', 13) :  None :  0.0 :   0.0
         ('C2', 0) :  None :  0.0 :   0.0
         ('C2', 1) :  None :  0.0 :   0.0
         ('C2', 2) :  None :  0.0 :   0.0
         ('C2', 3) :  None :  0.0 :   0.0
         ('C2', 4) :  None :  0.0 :   0.0
         ('C2', 5) :  None :  0.0 :   0.0
         ('C2', 6) :  None :  0.0 :   0.0
         ('C2', 7) :  None :  0.0 :   0.0
         ('C2', 8) :  None :  0.0 :   0.0
         ('C2', 9) :  None :  0.0 :   0.0
        ('C2', 10) :  None :  0.0 :   0.0
        ('C2', 11) :  None :  0.0 :   0.0
        ('C2', 12) :  None :  0.0 :   0.0
        ('C2', 13) :  None : -1.0 :   0.0
         ('D2', 0) :  None :  0.0 :   0.0
         ('D2', 1) :  None :  0.0 :   0.0
         ('D2', 2) :  None :  0.0 :   0.0
         ('D2', 3) :  None :  0.0 :   0.0
         ('D2', 4) :  None :  0.0 :   0.0
         ('D2', 5) :  None :  0.0 :   0.0
         ('D2', 6) :  None :  0.0 :   0.0
         ('D2', 7) :  None :  0.0 :   0.0
         ('D2', 8) :  None :  0.0 :   0.0
         ('D2', 9) :  None :  0.0 :   0.0
        ('D2', 10) :  None :  0.0 :   0.0
        ('D2', 11) :  None :  0.0 :   0.0
        ('D2', 12) :  None :  0.0 :   0.0
        ('D2', 13) :  None : -1.0 :   0.0
         ('E2', 0) :  None :  0.0 :   0.0
         ('E2', 1) :  None :  0.0 :   0.0
         ('E2', 2) :  None :  0.0 :   0.0
         ('E2', 3) :  None :  0.0 :   0.0
         ('E2', 4) :  None :  0.0 :   0.0
         ('E2', 5) :  None :  0.0 :   0.0
         ('E2', 6) :  None :  0.0 :   0.0
         ('E2', 7) :  None :  0.0 :   0.0
         ('E2', 8) :  None :  0.0 :   0.0
         ('E2', 9) :  None :  0.0 :   0.0
        ('E2', 10) :  None :  0.0 :   0.0
        ('E2', 11) :  None :  0.0 :   0.0
        ('E2', 12) :  None :  0.0 :   0.0
        ('E2', 13) :  None : -1.0 :   0.0
         ('F2', 0) :  None :  0.0 :   0.0
         ('F2', 1) :  None :  0.0 :   0.0
         ('F2', 2) :  None :  0.0 :   0.0
         ('F2', 3) :  None :  0.0 :   0.0
         ('F2', 4) :  None :  0.0 :   0.0
         ('F2', 5) :  None :  0.0 :   0.0
         ('F2', 6) :  None :  0.0 :   0.0
         ('F2', 7) :  None :  0.0 :   0.0
         ('F2', 8) :  None :  0.0 :   0.0
         ('F2', 9) :  None :  0.0 :   0.0
        ('F2', 10) :  None :  0.0 :   0.0
        ('F2', 11) :  None :  0.0 :   0.0
        ('F2', 12) :  None :  0.0 :   0.0
        ('F2', 13) :  None : -1.0 :   0.0
         ('G2', 0) :  None :  0.0 :   0.0
         ('G2', 1) :  None :  0.0 :   0.0
         ('G2', 2) :  None :  0.0 :   0.0
         ('G2', 3) :  None :  0.0 :   0.0
         ('G2', 4) :  None :  0.0 :   0.0
         ('G2', 5) :  None :  0.0 :   0.0
         ('G2', 6) :  None :  0.0 :   0.0
         ('G2', 7) :  None :  0.0 :   0.0
         ('G2', 8) :  None :  0.0 :   0.0
         ('G2', 9) :  None :  0.0 :   0.0
        ('G2', 10) :  None :  0.0 :   0.0
        ('G2', 11) :  None :  0.0 :   0.0
        ('G2', 12) :  None :  0.0 :   0.0
        ('G2', 13) :  None :  0.0 :   0.0
         ('H2', 0) :  None :  0.0 :   0.0
         ('H2', 1) :  None :  0.0 :   0.0
         ('H2', 2) :  None :  0.0 :   0.0
         ('H2', 3) :  None :  0.0 :   0.0
         ('H2', 4) :  None :  0.0 :   0.0
         ('H2', 5) :  None :  0.0 :   0.0
         ('H2', 6) :  None :  0.0 :   0.0
         ('H2', 7) :  None :  0.0 :   0.0
         ('H2', 8) :  None :  0.0 :   0.0
         ('H2', 9) :  None :  0.0 :   0.0
        ('H2', 10) :  None :  0.0 :   0.0
        ('H2', 11) :  None :  0.0 :   0.0
        ('H2', 12) :  None :  0.0 :   0.0
        ('H2', 13) :  None : -1.0 :   0.0
         ('I2', 0) :  None :  0.0 :   0.0
         ('I2', 1) :  None :  0.0 :   0.0
         ('I2', 2) :  None :  0.0 :   0.0
         ('I2', 3) :  None :  0.0 :   0.0
         ('I2', 4) :  None :  0.0 :   0.0
         ('I2', 5) :  None :  0.0 :   0.0
         ('I2', 6) :  None :  0.0 :   0.0
         ('I2', 7) :  None :  0.0 :   0.0
         ('I2', 8) :  None :  0.0 :   0.0
         ('I2', 9) :  None :  0.0 :   0.0
        ('I2', 10) :  None :  0.0 :   0.0
        ('I2', 11) :  None :  0.0 :   0.0
        ('I2', 12) :  None :  0.0 :   0.0
        ('I2', 13) :  None :  0.0 :   0.0
         ('J2', 0) :  None :  0.0 :   0.0
         ('J2', 1) :  None :  0.0 :   0.0
         ('J2', 2) :  None :  0.0 :   0.0
         ('J2', 3) :  None :  0.0 :   0.0
         ('J2', 4) :  None :  0.0 :   0.0
         ('J2', 5) :  None :  0.0 :   0.0
         ('J2', 6) :  None :  0.0 :   0.0
         ('J2', 7) :  None :  0.0 :   0.0
         ('J2', 8) :  None :  0.0 :   0.0
         ('J2', 9) :  None :  0.0 :   0.0
        ('J2', 10) :  None :  0.0 :   0.0
        ('J2', 11) :  None :  0.0 :   0.0
        ('J2', 12) :  None :  0.0 :   0.0
        ('J2', 13) :  None :  0.0 :   0.0
    constraint_min_cons_days_off_backward : Size=0
        Key : Lower : Body : Upper
    constraint_min_cons_days_off_forward : Size=0
        Key : Lower : Body : Upper
    constraint_has_weekend_work_lb : Size=0
        Key : Lower : Body : Upper
    constraint_has_weekend_work : Size=56
        Key        : Lower : Body : Upper
         ('A2', 5) :  None :  0.0 :   0.0
         ('A2', 6) :  None :  0.0 :   0.0
        ('A2', 12) :  None :  0.0 :   0.0
        ('A2', 13) :  None :  0.0 :   0.0
         ('B2', 5) :  None :  0.0 :   0.0
         ('B2', 6) :  None :  0.0 :   0.0
        ('B2', 12) :  None :  0.0 :   0.0
        ('B2', 13) :  None :  0.0 :   0.0
         ('C2', 5) :  None :  0.0 :   0.0
         ('C2', 6) :  None :  0.0 :   0.0
        ('C2', 12) :  None :  0.0 :   0.0
        ('C2', 13) :  None :  0.0 :   0.0
         ('D2', 5) :  None :  0.0 :   0.0
         ('D2', 6) :  None :  0.0 :   0.0
        ('D2', 12) :  None : -1.0 :   0.0
        ('D2', 13) :  None :  0.0 :   0.0
         ('E2', 5) :  None :  0.0 :   0.0
         ('E2', 6) :  None :  0.0 :   0.0
        ('E2', 12) :  None :  0.0 :   0.0
        ('E2', 13) :  None :  0.0 :   0.0
         ('F2', 5) :  None :  0.0 :   0.0
         ('F2', 6) :  None :  0.0 :   0.0
        ('F2', 12) :  None :  0.0 :   0.0
        ('F2', 13) :  None :  0.0 :   0.0
         ('G2', 5) :  None :  0.0 :   0.0
         ('G2', 6) :  None :  0.0 :   0.0
        ('G2', 12) :  None :  0.0 :   0.0
        ('G2', 13) :  None :  0.0 :   0.0
         ('H2', 5) :  None :  0.0 :   0.0
         ('H2', 6) :  None :  0.0 :   0.0
        ('H2', 12) :  None :  0.0 :   0.0
        ('H2', 13) :  None :  0.0 :   0.0
         ('I2', 5) :  None :  0.0 :   0.0
         ('I2', 6) :  None :  0.0 :   0.0
        ('I2', 12) :  None :  0.0 :   0.0
        ('I2', 13) :  None :  0.0 :   0.0
         ('J2', 5) :  None :  0.0 :   0.0
         ('J2', 6) :  None :  0.0 :   0.0
        ('J2', 12) :  None :  0.0 :   0.0
        ('J2', 13) :  None :  0.0 :   0.0
         ('K2', 5) :  None :  0.0 :   0.0
         ('K2', 6) :  None :  0.0 :   0.0
        ('K2', 12) :  None :  0.0 :   0.0
        ('K2', 13) :  None :  0.0 :   0.0
         ('L2', 5) :  None :  0.0 :   0.0
         ('L2', 6) :  None :  0.0 :   0.0
        ('L2', 12) :  None :  0.0 :   0.0
        ('L2', 13) :  None :  0.0 :   0.0
         ('M2', 5) :  None :  0.0 :   0.0
         ('M2', 6) :  None :  0.0 :   0.0
        ('M2', 12) :  None :  0.0 :   0.0
        ('M2', 13) :  None :  0.0 :   0.0
         ('N2', 5) :  None :  0.0 :   0.0
         ('N2', 6) :  None :  0.0 :   0.0
        ('N2', 12) :  None :  0.0 :   0.0
        ('N2', 13) :  None :  0.0 :   0.0
    constraint_max_nr_weekend : Size=14
        Key : Lower : Body : Upper
         A2 :  None :  1.0 :   1.0
         B2 :  None :  1.0 :   1.0
         C2 :  None :  1.0 :   1.0
         D2 :  None :  1.0 :   1.0
         E2 :  None :  1.0 :   1.0
         F2 :  None :  1.0 :   1.0
         G2 :  None :  1.0 :   1.0
         H2 :  None :  1.0 :   1.0
         I2 :  None :  1.0 :   1.0
         J2 :  None :  1.0 :   1.0
         K2 :  None :  1.0 :   1.0
         L2 :  None :  1.0 :   1.0
         M2 :  None :  1.0 :   1.0
         N2 :  None :  1.0 :   1.0
    constraint_days_off : Size=14
        Key        : Lower : Body : Upper
         ('A2', 3) :   1.0 :  1.0 :   1.0
         ('B2', 1) :   1.0 :  1.0 :   1.0
         ('C2', 2) :   1.0 :  1.0 :   1.0
        ('D2', 12) :   1.0 :  1.0 :   1.0
         ('E2', 1) :   1.0 :  1.0 :   1.0
        ('F2', 13) :   1.0 :  1.0 :   1.0
         ('G2', 9) :   1.0 :  1.0 :   1.0
         ('H2', 3) :   1.0 :  1.0 :   1.0
         ('I2', 0) :   1.0 :  1.0 :   1.0
         ('J2', 8) :   1.0 :  1.0 :   1.0
         ('K2', 5) :   1.0 :  1.0 :   1.0
         ('L2', 2) :   1.0 :  1.0 :   1.0
         ('M2', 8) :   1.0 :  1.0 :   1.0
         ('N2', 6) :   1.0 :  1.0 :   1.0
    constraint_shift_on_request : Size=392
        Key              : Lower : Body : Upper
         ('E2', 'A2', 0) :   0.0 :  0.0 :   0.0
         ('E2', 'A2', 1) :   0.0 :  0.0 :   0.0
         ('E2', 'A2', 2) :   0.0 :  0.0 :   0.0
         ('E2', 'A2', 3) :   0.0 :  0.0 :   0.0
         ('E2', 'A2', 4) :   0.0 :  0.0 :   0.0
         ('E2', 'A2', 5) :   0.0 :  0.0 :   0.0
         ('E2', 'A2', 6) :   0.0 :  0.0 :   0.0
         ('E2', 'A2', 7) :   0.0 :  0.0 :   0.0
         ('E2', 'A2', 8) :   0.0 :  0.0 :   0.0
         ('E2', 'A2', 9) :   0.0 :  0.0 :   0.0
        ('E2', 'A2', 10) :   0.0 :  0.0 :   0.0
        ('E2', 'A2', 11) :   0.0 :  0.0 :   0.0
        ('E2', 'A2', 12) :   0.0 :  0.0 :   0.0
        ('E2', 'A2', 13) :   0.0 :  0.0 :   0.0
         ('E2', 'B2', 0) :   0.0 :  0.0 :   0.0
         ('E2', 'B2', 1) :   0.0 :  0.0 :   0.0
         ('E2', 'B2', 2) :   0.0 :  0.0 :   0.0
         ('E2', 'B2', 3) :   0.0 :  0.0 :   0.0
         ('E2', 'B2', 4) :   0.0 :  0.0 :   0.0
         ('E2', 'B2', 5) :   0.0 :  0.0 :   0.0
         ('E2', 'B2', 6) :   0.0 :  0.0 :   0.0
         ('E2', 'B2', 7) :   0.0 :  0.0 :   0.0
         ('E2', 'B2', 8) :   0.0 :  0.0 :   0.0
         ('E2', 'B2', 9) :   0.0 :  0.0 :   0.0
        ('E2', 'B2', 10) :   0.0 :  0.0 :   0.0
        ('E2', 'B2', 11) :   0.0 :  0.0 :   0.0
        ('E2', 'B2', 12) :   0.0 :  0.0 :   0.0
        ('E2', 'B2', 13) :   0.0 :  0.0 :   0.0
         ('E2', 'C2', 0) :   0.0 :  0.0 :   0.0
         ('E2', 'C2', 1) :   0.0 :  0.0 :   0.0
         ('E2', 'C2', 2) :   0.0 :  0.0 :   0.0
         ('E2', 'C2', 3) :   0.0 :  0.0 :   0.0
         ('E2', 'C2', 4) :   0.0 :  0.0 :   0.0
         ('E2', 'C2', 5) :   0.0 :  0.0 :   0.0
         ('E2', 'C2', 6) :   0.0 :  0.0 :   0.0
         ('E2', 'C2', 7) :   0.0 :  0.0 :   0.0
         ('E2', 'C2', 8) :   0.0 :  0.0 :   0.0
         ('E2', 'C2', 9) :   0.0 :  0.0 :   0.0
        ('E2', 'C2', 10) :   0.0 :  0.0 :   0.0
        ('E2', 'C2', 11) :   0.0 :  0.0 :   0.0
        ('E2', 'C2', 12) :   0.0 :  0.0 :   0.0
        ('E2', 'C2', 13) :   0.0 :  0.0 :   0.0
         ('E2', 'D2', 0) :   0.0 :  0.0 :   0.0
         ('E2', 'D2', 1) :   0.0 :  0.0 :   0.0
         ('E2', 'D2', 2) :   0.0 :  0.0 :   0.0
         ('E2', 'D2', 3) :   0.0 :  0.0 :   0.0
         ('E2', 'D2', 4) :   0.0 :  0.0 :   0.0
         ('E2', 'D2', 5) :   0.0 :  0.0 :   0.0
         ('E2', 'D2', 6) :   0.0 :  0.0 :   0.0
         ('E2', 'D2', 7) :   0.0 :  0.0 :   0.0
         ('E2', 'D2', 8) :   0.0 :  0.0 :   0.0
         ('E2', 'D2', 9) :   0.0 :  0.0 :   0.0
        ('E2', 'D2', 10) :   0.0 :  0.0 :   0.0
        ('E2', 'D2', 11) :   0.0 :  0.0 :   0.0
        ('E2', 'D2', 12) :   0.0 :  0.0 :   0.0
        ('E2', 'D2', 13) :   0.0 :  0.0 :   0.0
         ('E2', 'E2', 0) :   0.0 :  0.0 :   0.0
         ('E2', 'E2', 1) :   0.0 :  0.0 :   0.0
         ('E2', 'E2', 2) :   0.0 :  0.0 :   0.0
         ('E2', 'E2', 3) :   0.0 :  0.0 :   0.0
         ('E2', 'E2', 4) :   0.0 :  0.0 :   0.0
         ('E2', 'E2', 5) :   0.0 :  0.0 :   0.0
         ('E2', 'E2', 6) :   0.0 :  0.0 :   0.0
         ('E2', 'E2', 7) :   0.0 :  0.0 :   0.0
         ('E2', 'E2', 8) :   0.0 :  0.0 :   0.0
         ('E2', 'E2', 9) :   0.0 :  0.0 :   0.0
        ('E2', 'E2', 10) :   0.0 :  0.0 :   0.0
        ('E2', 'E2', 11) :   0.0 :  0.0 :   0.0
        ('E2', 'E2', 12) :   0.0 :  0.0 :   0.0
        ('E2', 'E2', 13) :   0.0 :  0.0 :   0.0
         ('E2', 'F2', 0) :   0.0 :  0.0 :   0.0
         ('E2', 'F2', 1) :   0.0 :  0.0 :   0.0
         ('E2', 'F2', 2) :   0.0 :  0.0 :   0.0
         ('E2', 'F2', 3) :   0.0 :  0.0 :   0.0
         ('E2', 'F2', 4) :   0.0 :  0.0 :   0.0
         ('E2', 'F2', 5) :   0.0 :  0.0 :   0.0
         ('E2', 'F2', 6) :   0.0 :  0.0 :   0.0
         ('E2', 'F2', 7) :   0.0 :  0.0 :   0.0
         ('E2', 'F2', 8) :   0.0 :  0.0 :   0.0
         ('E2', 'F2', 9) :   0.0 :  0.0 :   0.0
        ('E2', 'F2', 10) :   0.0 :  0.0 :   0.0
        ('E2', 'F2', 11) :   0.0 :  0.0 :   0.0
        ('E2', 'F2', 12) :   0.0 :  0.0 :   0.0
        ('E2', 'F2', 13) :   0.0 :  0.0 :   0.0
         ('E2', 'G2', 0) :   0.0 :  0.0 :   0.0
         ('E2', 'G2', 1) :   0.0 :  0.0 :   0.0
         ('E2', 'G2', 2) :   0.0 :  0.0 :   0.0
         ('E2', 'G2', 3) :   0.0 :  0.0 :   0.0
         ('E2', 'G2', 4) :   0.0 :  0.0 :   0.0
         ('E2', 'G2', 5) :   0.0 :  0.0 :   0.0
         ('E2', 'G2', 6) :   0.0 :  0.0 :   0.0
         ('E2', 'G2', 7) :   0.0 :  0.0 :   0.0
         ('E2', 'G2', 8) :   0.0 :  0.0 :   0.0
         ('E2', 'G2', 9) :   0.0 :  0.0 :   0.0
        ('E2', 'G2', 10) :   0.0 :  0.0 :   0.0
        ('E2', 'G2', 11) :   0.0 :  0.0 :   0.0
        ('E2', 'G2', 12) :   0.0 :  0.0 :   0.0
        ('E2', 'G2', 13) :   0.0 :  0.0 :   0.0
         ('E2', 'H2', 0) :   0.0 :  0.0 :   0.0
         ('E2', 'H2', 1) :   0.0 :  0.0 :   0.0
         ('E2', 'H2', 2) :   0.0 :  0.0 :   0.0
         ('E2', 'H2', 3) :   0.0 :  0.0 :   0.0
         ('E2', 'H2', 4) :   0.0 :  0.0 :   0.0
         ('E2', 'H2', 5) :   0.0 :  0.0 :   0.0
         ('E2', 'H2', 6) :   0.0 :  0.0 :   0.0
         ('E2', 'H2', 7) :   0.0 :  0.0 :   0.0
         ('E2', 'H2', 8) :   0.0 :  0.0 :   0.0
         ('E2', 'H2', 9) :   0.0 :  0.0 :   0.0
        ('E2', 'H2', 10) :   0.0 :  0.0 :   0.0
        ('E2', 'H2', 11) :   0.0 :  0.0 :   0.0
        ('E2', 'H2', 12) :   0.0 :  0.0 :   0.0
        ('E2', 'H2', 13) :   0.0 :  0.0 :   0.0
         ('E2', 'I2', 0) :   0.0 :  0.0 :   0.0
         ('E2', 'I2', 1) :   0.0 :  0.0 :   0.0
         ('E2', 'I2', 2) :   0.0 :  0.0 :   0.0
         ('E2', 'I2', 3) :   0.0 :  0.0 :   0.0
         ('E2', 'I2', 4) :   0.0 :  0.0 :   0.0
         ('E2', 'I2', 5) :   0.0 :  0.0 :   0.0
         ('E2', 'I2', 6) :   0.0 :  0.0 :   0.0
         ('E2', 'I2', 7) :   0.0 :  0.0 :   0.0
         ('E2', 'I2', 8) :   0.0 :  0.0 :   0.0
         ('E2', 'I2', 9) :   0.0 :  0.0 :   0.0
        ('E2', 'I2', 10) :   0.0 :  0.0 :   0.0
        ('E2', 'I2', 11) :   0.0 :  0.0 :   0.0
        ('E2', 'I2', 12) :   0.0 :  0.0 :   0.0
        ('E2', 'I2', 13) :   0.0 :  0.0 :   0.0
         ('E2', 'J2', 0) :   0.0 :  0.0 :   0.0
         ('E2', 'J2', 1) :   0.0 :  0.0 :   0.0
         ('E2', 'J2', 2) :   0.0 :  0.0 :   0.0
         ('E2', 'J2', 3) :   0.0 :  0.0 :   0.0
         ('E2', 'J2', 4) :   0.0 :  0.0 :   0.0
         ('E2', 'J2', 5) :   0.0 :  0.0 :   0.0
         ('E2', 'J2', 6) :   0.0 :  0.0 :   0.0
         ('E2', 'J2', 7) :   0.0 :  0.0 :   0.0
         ('E2', 'J2', 8) :   0.0 :  0.0 :   0.0
         ('E2', 'J2', 9) :   0.0 :  0.0 :   0.0
        ('E2', 'J2', 10) :   0.0 :  0.0 :   0.0
        ('E2', 'J2', 11) :   0.0 :  0.0 :   0.0
        ('E2', 'J2', 12) :   0.0 :  0.0 :   0.0
        ('E2', 'J2', 13) :   0.0 :  0.0 :   0.0
         ('E2', 'K2', 0) :   0.0 :  0.0 :   0.0
         ('E2', 'K2', 1) :   0.0 :  0.0 :   0.0
         ('E2', 'K2', 2) :   0.0 :  0.0 :   0.0
         ('E2', 'K2', 3) :   0.0 :  0.0 :   0.0
         ('E2', 'K2', 4) :   0.0 :  0.0 :   0.0
         ('E2', 'K2', 5) :   0.0 :  0.0 :   0.0
         ('E2', 'K2', 6) :   0.0 :  0.0 :   0.0
         ('E2', 'K2', 7) :   0.0 :  0.0 :   0.0
         ('E2', 'K2', 8) :   0.0 :  0.0 :   0.0
         ('E2', 'K2', 9) :   0.0 :  0.0 :   0.0
        ('E2', 'K2', 10) :   0.0 :  0.0 :   0.0
        ('E2', 'K2', 11) :   0.0 :  0.0 :   0.0
        ('E2', 'K2', 12) :   0.0 :  0.0 :   0.0
        ('E2', 'K2', 13) :   0.0 :  0.0 :   0.0
         ('E2', 'L2', 0) :   0.0 :  0.0 :   0.0
         ('E2', 'L2', 1) :   0.0 :  0.0 :   0.0
         ('E2', 'L2', 2) :   0.0 :  0.0 :   0.0
         ('E2', 'L2', 3) :   0.0 :  0.0 :   0.0
         ('E2', 'L2', 4) :   0.0 :  0.0 :   0.0
         ('E2', 'L2', 5) :   0.0 :  0.0 :   0.0
         ('E2', 'L2', 6) :   0.0 :  0.0 :   0.0
         ('E2', 'L2', 7) :   0.0 :  0.0 :   0.0
         ('E2', 'L2', 8) :   0.0 :  0.0 :   0.0
         ('E2', 'L2', 9) :   0.0 :  0.0 :   0.0
        ('E2', 'L2', 10) :   0.0 :  0.0 :   0.0
        ('E2', 'L2', 11) :   0.0 :  0.0 :   0.0
        ('E2', 'L2', 12) :   0.0 :  0.0 :   0.0
        ('E2', 'L2', 13) :   0.0 :  0.0 :   0.0
         ('E2', 'M2', 0) :   0.0 :  0.0 :   0.0
         ('E2', 'M2', 1) :   0.0 :  0.0 :   0.0
         ('E2', 'M2', 2) :   0.0 :  0.0 :   0.0
         ('E2', 'M2', 3) :   0.0 :  0.0 :   0.0
         ('E2', 'M2', 4) :   0.0 :  0.0 :   0.0
         ('E2', 'M2', 5) :   0.0 :  0.0 :   0.0
         ('E2', 'M2', 6) :   0.0 :  0.0 :   0.0
         ('E2', 'M2', 7) :   0.0 :  0.0 :   0.0
         ('E2', 'M2', 8) :   0.0 :  0.0 :   0.0
         ('E2', 'M2', 9) :   0.0 :  0.0 :   0.0
        ('E2', 'M2', 10) :   0.0 :  0.0 :   0.0
        ('E2', 'M2', 11) :   0.0 :  0.0 :   0.0
        ('E2', 'M2', 12) :   0.0 :  0.0 :   0.0
        ('E2', 'M2', 13) :   0.0 :  0.0 :   0.0
         ('E2', 'N2', 0) :   0.0 :  0.0 :   0.0
         ('E2', 'N2', 1) :   0.0 :  0.0 :   0.0
         ('E2', 'N2', 2) :   0.0 :  0.0 :   0.0
         ('E2', 'N2', 3) :   0.0 :  0.0 :   0.0
         ('E2', 'N2', 4) :   0.0 :  0.0 :   0.0
         ('E2', 'N2', 5) :   0.0 :  0.0 :   0.0
         ('E2', 'N2', 6) :   0.0 :  0.0 :   0.0
         ('E2', 'N2', 7) :   0.0 :  0.0 :   0.0
         ('E2', 'N2', 8) :   0.0 :  0.0 :   0.0
         ('E2', 'N2', 9) :   0.0 :  0.0 :   0.0
        ('E2', 'N2', 10) :   0.0 :  0.0 :   0.0
        ('E2', 'N2', 11) :   0.0 :  0.0 :   0.0
        ('E2', 'N2', 12) :   0.0 :  0.0 :   0.0
        ('E2', 'N2', 13) :   0.0 :  0.0 :   0.0
         ('L2', 'A2', 0) :   0.0 :  0.0 :   0.0
         ('L2', 'A2', 1) :   0.0 :  0.0 :   0.0
         ('L2', 'A2', 2) :   0.0 :  0.0 :   0.0
         ('L2', 'A2', 3) :   0.0 :  0.0 :   0.0
         ('L2', 'A2', 4) :   0.0 :  0.0 :   0.0
         ('L2', 'A2', 5) :   0.0 :  0.0 :   0.0
         ('L2', 'A2', 6) :   0.0 :  0.0 :   0.0
         ('L2', 'A2', 7) :   0.0 :  0.0 :   0.0
         ('L2', 'A2', 8) :   0.0 :  0.0 :   0.0
         ('L2', 'A2', 9) :   0.0 :  0.0 :   0.0
        ('L2', 'A2', 10) :   0.0 :  0.0 :   0.0
        ('L2', 'A2', 11) :   0.0 :  0.0 :   0.0
        ('L2', 'A2', 12) :   0.0 :  0.0 :   0.0
        ('L2', 'A2', 13) :   0.0 :  0.0 :   0.0
         ('L2', 'B2', 0) :   0.0 :  0.0 :   0.0
         ('L2', 'B2', 1) :   0.0 :  0.0 :   0.0
         ('L2', 'B2', 2) :   0.0 :  0.0 :   0.0
         ('L2', 'B2', 3) :   0.0 :  0.0 :   0.0
         ('L2', 'B2', 4) :   0.0 :  0.0 :   0.0
         ('L2', 'B2', 5) :   0.0 :  0.0 :   0.0
         ('L2', 'B2', 6) :   0.0 :  0.0 :   0.0
         ('L2', 'B2', 7) :   0.0 :  0.0 :   0.0
         ('L2', 'B2', 8) :   0.0 :  0.0 :   0.0
         ('L2', 'B2', 9) :   0.0 :  0.0 :   0.0
        ('L2', 'B2', 10) :   0.0 :  0.0 :   0.0
        ('L2', 'B2', 11) :   0.0 :  0.0 :   0.0
        ('L2', 'B2', 12) :   0.0 :  0.0 :   0.0
        ('L2', 'B2', 13) :   0.0 :  0.0 :   0.0
         ('L2', 'C2', 0) :   0.0 :  0.0 :   0.0
         ('L2', 'C2', 1) :   0.0 :  0.0 :   0.0
         ('L2', 'C2', 2) :   0.0 :  0.0 :   0.0
         ('L2', 'C2', 3) :   0.0 :  0.0 :   0.0
         ('L2', 'C2', 4) :   0.0 :  0.0 :   0.0
         ('L2', 'C2', 5) :   0.0 :  0.0 :   0.0
         ('L2', 'C2', 6) :   0.0 :  0.0 :   0.0
         ('L2', 'C2', 7) :   0.0 :  0.0 :   0.0
         ('L2', 'C2', 8) :   0.0 :  0.0 :   0.0
         ('L2', 'C2', 9) :   0.0 :  0.0 :   0.0
        ('L2', 'C2', 10) :   0.0 :  0.0 :   0.0
        ('L2', 'C2', 11) :   0.0 :  0.0 :   0.0
        ('L2', 'C2', 12) :   0.0 :  0.0 :   0.0
        ('L2', 'C2', 13) :   0.0 :  0.0 :   0.0
         ('L2', 'D2', 0) :   0.0 :  0.0 :   0.0
         ('L2', 'D2', 1) :   0.0 :  0.0 :   0.0
         ('L2', 'D2', 2) :   0.0 :  0.0 :   0.0
         ('L2', 'D2', 3) :   0.0 :  0.0 :   0.0
         ('L2', 'D2', 4) :   0.0 :  0.0 :   0.0
         ('L2', 'D2', 5) :   0.0 :  0.0 :   0.0
         ('L2', 'D2', 6) :   0.0 :  0.0 :   0.0
         ('L2', 'D2', 7) :   0.0 :  0.0 :   0.0
         ('L2', 'D2', 8) :   0.0 :  0.0 :   0.0
         ('L2', 'D2', 9) :   0.0 :  0.0 :   0.0
        ('L2', 'D2', 10) :   0.0 :  0.0 :   0.0
        ('L2', 'D2', 11) :   0.0 :  0.0 :   0.0
        ('L2', 'D2', 12) :   0.0 :  0.0 :   0.0
        ('L2', 'D2', 13) :   0.0 :  0.0 :   0.0
         ('L2', 'E2', 0) :   0.0 :  0.0 :   0.0
         ('L2', 'E2', 1) :   0.0 :  0.0 :   0.0
         ('L2', 'E2', 2) :   0.0 :  0.0 :   0.0
         ('L2', 'E2', 3) :   0.0 :  0.0 :   0.0
         ('L2', 'E2', 4) :   0.0 :  0.0 :   0.0
         ('L2', 'E2', 5) :   0.0 :  0.0 :   0.0
         ('L2', 'E2', 6) :   0.0 :  0.0 :   0.0
         ('L2', 'E2', 7) :   0.0 :  0.0 :   0.0
         ('L2', 'E2', 8) :   0.0 :  0.0 :   0.0
         ('L2', 'E2', 9) :   0.0 :  0.0 :   0.0
        ('L2', 'E2', 10) :   0.0 :  0.0 :   0.0
        ('L2', 'E2', 11) :   0.0 :  0.0 :   0.0
        ('L2', 'E2', 12) :   0.0 :  0.0 :   0.0
        ('L2', 'E2', 13) :   0.0 :  0.0 :   0.0
         ('L2', 'F2', 0) :   0.0 :  0.0 :   0.0
         ('L2', 'F2', 1) :   0.0 :  0.0 :   0.0
         ('L2', 'F2', 2) :   0.0 :  0.0 :   0.0
         ('L2', 'F2', 3) :   0.0 :  0.0 :   0.0
         ('L2', 'F2', 4) :   0.0 :  0.0 :   0.0
         ('L2', 'F2', 5) :   0.0 :  0.0 :   0.0
         ('L2', 'F2', 6) :   0.0 :  0.0 :   0.0
         ('L2', 'F2', 7) :   0.0 :  0.0 :   0.0
         ('L2', 'F2', 8) :   0.0 :  0.0 :   0.0
         ('L2', 'F2', 9) :   0.0 :  0.0 :   0.0
        ('L2', 'F2', 10) :   0.0 :  0.0 :   0.0
        ('L2', 'F2', 11) :   0.0 :  0.0 :   0.0
        ('L2', 'F2', 12) :   0.0 :  0.0 :   0.0
        ('L2', 'F2', 13) :   0.0 :  0.0 :   0.0
         ('L2', 'G2', 0) :   0.0 :  0.0 :   0.0
         ('L2', 'G2', 1) :   0.0 :  0.0 :   0.0
         ('L2', 'G2', 2) :   0.0 :  0.0 :   0.0
         ('L2', 'G2', 3) :   0.0 :  0.0 :   0.0
         ('L2', 'G2', 4) :   0.0 :  0.0 :   0.0
         ('L2', 'G2', 5) :   0.0 :  0.0 :   0.0
         ('L2', 'G2', 6) :   0.0 :  0.0 :   0.0
         ('L2', 'G2', 7) :   0.0 :  0.0 :   0.0
         ('L2', 'G2', 8) :   0.0 :  0.0 :   0.0
         ('L2', 'G2', 9) :   0.0 :  0.0 :   0.0
        ('L2', 'G2', 10) :   0.0 :  0.0 :   0.0
        ('L2', 'G2', 11) :   0.0 :  0.0 :   0.0
        ('L2', 'G2', 12) :   0.0 :  0.0 :   0.0
        ('L2', 'G2', 13) :   0.0 :  0.0 :   0.0
         ('L2', 'H2', 0) :   0.0 :  0.0 :   0.0
         ('L2', 'H2', 1) :   0.0 :  0.0 :   0.0
         ('L2', 'H2', 2) :   0.0 :  0.0 :   0.0
         ('L2', 'H2', 3) :   0.0 :  0.0 :   0.0
         ('L2', 'H2', 4) :   0.0 :  0.0 :   0.0
         ('L2', 'H2', 5) :   0.0 :  0.0 :   0.0
         ('L2', 'H2', 6) :   0.0 :  0.0 :   0.0
         ('L2', 'H2', 7) :   0.0 :  0.0 :   0.0
         ('L2', 'H2', 8) :   0.0 :  0.0 :   0.0
         ('L2', 'H2', 9) :   0.0 :  0.0 :   0.0
        ('L2', 'H2', 10) :   0.0 :  0.0 :   0.0
        ('L2', 'H2', 11) :   0.0 :  0.0 :   0.0
        ('L2', 'H2', 12) :   0.0 :  0.0 :   0.0
        ('L2', 'H2', 13) :   0.0 :  0.0 :   0.0
         ('L2', 'I2', 0) :   0.0 :  0.0 :   0.0
         ('L2', 'I2', 1) :   0.0 :  0.0 :   0.0
         ('L2', 'I2', 2) :   0.0 :  0.0 :   0.0
         ('L2', 'I2', 3) :   0.0 :  0.0 :   0.0
         ('L2', 'I2', 4) :   0.0 :  0.0 :   0.0
         ('L2', 'I2', 5) :   0.0 :  0.0 :   0.0
         ('L2', 'I2', 6) :   0.0 :  0.0 :   0.0
         ('L2', 'I2', 7) :   0.0 :  0.0 :   0.0
         ('L2', 'I2', 8) :   0.0 :  0.0 :   0.0
         ('L2', 'I2', 9) :   0.0 :  0.0 :   0.0
        ('L2', 'I2', 10) :   0.0 :  0.0 :   0.0
        ('L2', 'I2', 11) :   0.0 :  0.0 :   0.0
        ('L2', 'I2', 12) :   0.0 :  0.0 :   0.0
        ('L2', 'I2', 13) :   0.0 :  0.0 :   0.0
         ('L2', 'J2', 0) :   0.0 :  0.0 :   0.0
         ('L2', 'J2', 1) :   0.0 :  0.0 :   0.0
         ('L2', 'J2', 2) :   0.0 :  0.0 :   0.0
         ('L2', 'J2', 3) :   0.0 :  0.0 :   0.0
         ('L2', 'J2', 4) :   0.0 :  0.0 :   0.0
         ('L2', 'J2', 5) :   0.0 :  0.0 :   0.0
         ('L2', 'J2', 6) :   0.0 :  0.0 :   0.0
         ('L2', 'J2', 7) :   0.0 :  0.0 :   0.0
         ('L2', 'J2', 8) :   0.0 :  0.0 :   0.0
         ('L2', 'J2', 9) :   0.0 :  0.0 :   0.0
        ('L2', 'J2', 10) :   0.0 :  0.0 :   0.0
        ('L2', 'J2', 11) :   0.0 :  0.0 :   0.0
        ('L2', 'J2', 12) :   0.0 :  0.0 :   0.0
        ('L2', 'J2', 13) :   0.0 :  0.0 :   0.0
         ('L2', 'K2', 0) :   0.0 :  0.0 :   0.0
         ('L2', 'K2', 1) :   0.0 :  0.0 :   0.0
         ('L2', 'K2', 2) :   0.0 :  0.0 :   0.0
         ('L2', 'K2', 3) :   0.0 :  0.0 :   0.0
         ('L2', 'K2', 4) :   0.0 :  0.0 :   0.0
         ('L2', 'K2', 5) :   0.0 :  0.0 :   0.0
         ('L2', 'K2', 6) :   0.0 :  0.0 :   0.0
         ('L2', 'K2', 7) :   0.0 :  0.0 :   0.0
         ('L2', 'K2', 8) :   0.0 :  0.0 :   0.0
         ('L2', 'K2', 9) :   0.0 :  0.0 :   0.0
        ('L2', 'K2', 10) :   0.0 :  0.0 :   0.0
        ('L2', 'K2', 11) :   0.0 :  0.0 :   0.0
        ('L2', 'K2', 12) :   0.0 :  0.0 :   0.0
        ('L2', 'K2', 13) :   0.0 :  0.0 :   0.0
         ('L2', 'L2', 0) :   0.0 :  0.0 :   0.0
         ('L2', 'L2', 1) :   0.0 :  0.0 :   0.0
         ('L2', 'L2', 2) :   0.0 :  0.0 :   0.0
         ('L2', 'L2', 3) :   0.0 :  0.0 :   0.0
         ('L2', 'L2', 4) :   0.0 :  0.0 :   0.0
         ('L2', 'L2', 5) :   0.0 :  0.0 :   0.0
         ('L2', 'L2', 6) :   0.0 :  0.0 :   0.0
         ('L2', 'L2', 7) :   0.0 :  0.0 :   0.0
         ('L2', 'L2', 8) :   0.0 :  0.0 :   0.0
         ('L2', 'L2', 9) :   0.0 :  0.0 :   0.0
        ('L2', 'L2', 10) :   0.0 :  0.0 :   0.0
        ('L2', 'L2', 11) :   0.0 :  0.0 :   0.0
        ('L2', 'L2', 12) :   0.0 :  0.0 :   0.0
        ('L2', 'L2', 13) :   0.0 :  0.0 :   0.0
         ('L2', 'M2', 0) :   0.0 :  0.0 :   0.0
         ('L2', 'M2', 1) :   0.0 :  0.0 :   0.0
         ('L2', 'M2', 2) :   0.0 :  0.0 :   0.0
         ('L2', 'M2', 3) :   0.0 :  0.0 :   0.0
         ('L2', 'M2', 4) :   0.0 :  0.0 :   0.0
         ('L2', 'M2', 5) :   0.0 :  0.0 :   0.0
         ('L2', 'M2', 6) :   0.0 :  0.0 :   0.0
         ('L2', 'M2', 7) :   0.0 :  0.0 :   0.0
         ('L2', 'M2', 8) :   0.0 :  0.0 :   0.0
         ('L2', 'M2', 9) :   0.0 :  0.0 :   0.0
        ('L2', 'M2', 10) :   0.0 :  0.0 :   0.0
        ('L2', 'M2', 11) :   0.0 :  0.0 :   0.0
        ('L2', 'M2', 12) :   0.0 :  0.0 :   0.0
        ('L2', 'M2', 13) :   0.0 :  0.0 :   0.0
         ('L2', 'N2', 0) :   0.0 :  0.0 :   0.0
         ('L2', 'N2', 1) :   0.0 :  0.0 :   0.0
         ('L2', 'N2', 2) :   0.0 :  0.0 :   0.0
         ('L2', 'N2', 3) :   0.0 :  0.0 :   0.0
         ('L2', 'N2', 4) :   0.0 :  0.0 :   0.0
         ('L2', 'N2', 5) :   0.0 :  0.0 :   0.0
         ('L2', 'N2', 6) :   0.0 :  0.0 :   0.0
         ('L2', 'N2', 7) :   0.0 :  0.0 :   0.0
         ('L2', 'N2', 8) :   0.0 :  0.0 :   0.0
         ('L2', 'N2', 9) :   0.0 :  0.0 :   0.0
        ('L2', 'N2', 10) :   0.0 :  0.0 :   0.0
        ('L2', 'N2', 11) :   0.0 :  0.0 :   0.0
        ('L2', 'N2', 12) :   0.0 :  0.0 :   0.0
        ('L2', 'N2', 13) :   0.0 :  0.0 :   0.0
    constraint_shift_off_request : Size=392
        Key              : Lower : Body : Upper
         ('E2', 'A2', 0) :   0.0 :  0.0 :   0.0
         ('E2', 'A2', 1) :   0.0 :  0.0 :   0.0
         ('E2', 'A2', 2) :   0.0 :  0.0 :   0.0
         ('E2', 'A2', 3) :   0.0 :  0.0 :   0.0
         ('E2', 'A2', 4) :   0.0 :  0.0 :   0.0
         ('E2', 'A2', 5) :   0.0 :  0.0 :   0.0
         ('E2', 'A2', 6) :   0.0 :  0.0 :   0.0
         ('E2', 'A2', 7) :   0.0 :  0.0 :   0.0
         ('E2', 'A2', 8) :   0.0 :  0.0 :   0.0
         ('E2', 'A2', 9) :   0.0 :  0.0 :   0.0
        ('E2', 'A2', 10) :   0.0 :  0.0 :   0.0
        ('E2', 'A2', 11) :   0.0 :  0.0 :   0.0
        ('E2', 'A2', 12) :   0.0 :  0.0 :   0.0
        ('E2', 'A2', 13) :   0.0 :  0.0 :   0.0
         ('E2', 'B2', 0) :   0.0 :  0.0 :   0.0
         ('E2', 'B2', 1) :   0.0 :  0.0 :   0.0
         ('E2', 'B2', 2) :   0.0 :  0.0 :   0.0
         ('E2', 'B2', 3) :   0.0 :  0.0 :   0.0
         ('E2', 'B2', 4) :   0.0 :  0.0 :   0.0
         ('E2', 'B2', 5) :   0.0 :  0.0 :   0.0
         ('E2', 'B2', 6) :   0.0 :  0.0 :   0.0
         ('E2', 'B2', 7) :   0.0 :  0.0 :   0.0
         ('E2', 'B2', 8) :   0.0 :  0.0 :   0.0
         ('E2', 'B2', 9) :   0.0 :  0.0 :   0.0
        ('E2', 'B2', 10) :   0.0 :  0.0 :   0.0
        ('E2', 'B2', 11) :   0.0 :  0.0 :   0.0
        ('E2', 'B2', 12) :   0.0 :  0.0 :   0.0
        ('E2', 'B2', 13) :   0.0 :  0.0 :   0.0
         ('E2', 'C2', 0) :   0.0 :  0.0 :   0.0
         ('E2', 'C2', 1) :   0.0 :  0.0 :   0.0
         ('E2', 'C2', 2) :   0.0 :  0.0 :   0.0
         ('E2', 'C2', 3) :   0.0 :  0.0 :   0.0
         ('E2', 'C2', 4) :   0.0 :  0.0 :   0.0
         ('E2', 'C2', 5) :   0.0 :  0.0 :   0.0
         ('E2', 'C2', 6) :   0.0 :  0.0 :   0.0
         ('E2', 'C2', 7) :   0.0 :  0.0 :   0.0
         ('E2', 'C2', 8) :   0.0 :  0.0 :   0.0
         ('E2', 'C2', 9) :   0.0 :  0.0 :   0.0
        ('E2', 'C2', 10) :   0.0 :  0.0 :   0.0
        ('E2', 'C2', 11) :   0.0 :  0.0 :   0.0
        ('E2', 'C2', 12) :   0.0 :  0.0 :   0.0
        ('E2', 'C2', 13) :   0.0 :  0.0 :   0.0
         ('E2', 'D2', 0) :   0.0 :  0.0 :   0.0
         ('E2', 'D2', 1) :   0.0 :  0.0 :   0.0
         ('E2', 'D2', 2) :   0.0 :  0.0 :   0.0
         ('E2', 'D2', 3) :   0.0 :  0.0 :   0.0
         ('E2', 'D2', 4) :   0.0 :  0.0 :   0.0
         ('E2', 'D2', 5) :   0.0 :  0.0 :   0.0
         ('E2', 'D2', 6) :   0.0 :  0.0 :   0.0
         ('E2', 'D2', 7) :   0.0 :  0.0 :   0.0
         ('E2', 'D2', 8) :   0.0 :  0.0 :   0.0
         ('E2', 'D2', 9) :   0.0 :  0.0 :   0.0
        ('E2', 'D2', 10) :   0.0 :  0.0 :   0.0
        ('E2', 'D2', 11) :   0.0 :  0.0 :   0.0
        ('E2', 'D2', 12) :   0.0 :  0.0 :   0.0
        ('E2', 'D2', 13) :   0.0 :  0.0 :   0.0
         ('E2', 'E2', 0) :   0.0 :  0.0 :   0.0
         ('E2', 'E2', 1) :   0.0 :  0.0 :   0.0
         ('E2', 'E2', 2) :   0.0 :  0.0 :   0.0
         ('E2', 'E2', 3) :   0.0 :  0.0 :   0.0
         ('E2', 'E2', 4) :   0.0 :  0.0 :   0.0
         ('E2', 'E2', 5) :   0.0 :  0.0 :   0.0
         ('E2', 'E2', 6) :   0.0 :  0.0 :   0.0
         ('E2', 'E2', 7) :   0.0 :  0.0 :   0.0
         ('E2', 'E2', 8) :   0.0 :  0.0 :   0.0
         ('E2', 'E2', 9) :   0.0 :  0.0 :   0.0
        ('E2', 'E2', 10) :   0.0 :  0.0 :   0.0
        ('E2', 'E2', 11) :   0.0 :  0.0 :   0.0
        ('E2', 'E2', 12) :   0.0 :  0.0 :   0.0
        ('E2', 'E2', 13) :   0.0 :  0.0 :   0.0
         ('E2', 'F2', 0) :   0.0 :  0.0 :   0.0
         ('E2', 'F2', 1) :   0.0 :  0.0 :   0.0
         ('E2', 'F2', 2) :   0.0 :  0.0 :   0.0
         ('E2', 'F2', 3) :   0.0 :  0.0 :   0.0
         ('E2', 'F2', 4) :   0.0 :  0.0 :   0.0
         ('E2', 'F2', 5) :   0.0 :  0.0 :   0.0
         ('E2', 'F2', 6) :   0.0 :  0.0 :   0.0
         ('E2', 'F2', 7) :   0.0 :  0.0 :   0.0
         ('E2', 'F2', 8) :   0.0 :  0.0 :   0.0
         ('E2', 'F2', 9) :   0.0 :  0.0 :   0.0
        ('E2', 'F2', 10) :   0.0 :  0.0 :   0.0
        ('E2', 'F2', 11) :   0.0 :  0.0 :   0.0
        ('E2', 'F2', 12) :   0.0 :  0.0 :   0.0
        ('E2', 'F2', 13) :   0.0 :  0.0 :   0.0
         ('E2', 'G2', 0) :   0.0 :  0.0 :   0.0
         ('E2', 'G2', 1) :   0.0 :  0.0 :   0.0
         ('E2', 'G2', 2) :   0.0 :  0.0 :   0.0
         ('E2', 'G2', 3) :   0.0 :  0.0 :   0.0
         ('E2', 'G2', 4) :   0.0 :  0.0 :   0.0
         ('E2', 'G2', 5) :   0.0 :  0.0 :   0.0
         ('E2', 'G2', 6) :   0.0 :  0.0 :   0.0
         ('E2', 'G2', 7) :   0.0 :  0.0 :   0.0
         ('E2', 'G2', 8) :   0.0 :  0.0 :   0.0
         ('E2', 'G2', 9) :   0.0 :  0.0 :   0.0
        ('E2', 'G2', 10) :   0.0 :  0.0 :   0.0
        ('E2', 'G2', 11) :   0.0 :  0.0 :   0.0
        ('E2', 'G2', 12) :   0.0 :  0.0 :   0.0
        ('E2', 'G2', 13) :   0.0 :  0.0 :   0.0
         ('E2', 'H2', 0) :   0.0 :  0.0 :   0.0
         ('E2', 'H2', 1) :   0.0 :  0.0 :   0.0
         ('E2', 'H2', 2) :   0.0 :  0.0 :   0.0
         ('E2', 'H2', 3) :   0.0 :  0.0 :   0.0
         ('E2', 'H2', 4) :   0.0 :  0.0 :   0.0
         ('E2', 'H2', 5) :   0.0 :  0.0 :   0.0
         ('E2', 'H2', 6) :   0.0 :  0.0 :   0.0
         ('E2', 'H2', 7) :   0.0 :  0.0 :   0.0
         ('E2', 'H2', 8) :   0.0 :  0.0 :   0.0
         ('E2', 'H2', 9) :   0.0 :  0.0 :   0.0
        ('E2', 'H2', 10) :   0.0 :  0.0 :   0.0
        ('E2', 'H2', 11) :   0.0 :  0.0 :   0.0
        ('E2', 'H2', 12) :   0.0 :  0.0 :   0.0
        ('E2', 'H2', 13) :   0.0 :  0.0 :   0.0
         ('E2', 'I2', 0) :   0.0 :  0.0 :   0.0
         ('E2', 'I2', 1) :   0.0 :  0.0 :   0.0
         ('E2', 'I2', 2) :   0.0 :  0.0 :   0.0
         ('E2', 'I2', 3) :   0.0 :  0.0 :   0.0
         ('E2', 'I2', 4) :   0.0 :  0.0 :   0.0
         ('E2', 'I2', 5) :   0.0 :  0.0 :   0.0
         ('E2', 'I2', 6) :   0.0 :  0.0 :   0.0
         ('E2', 'I2', 7) :   0.0 :  0.0 :   0.0
         ('E2', 'I2', 8) :   0.0 :  0.0 :   0.0
         ('E2', 'I2', 9) :   0.0 :  0.0 :   0.0
        ('E2', 'I2', 10) :   0.0 :  0.0 :   0.0
        ('E2', 'I2', 11) :   0.0 :  0.0 :   0.0
        ('E2', 'I2', 12) :   0.0 :  0.0 :   0.0
        ('E2', 'I2', 13) :   0.0 :  0.0 :   0.0
         ('E2', 'J2', 0) :   0.0 :  0.0 :   0.0
         ('E2', 'J2', 1) :   0.0 :  0.0 :   0.0
         ('E2', 'J2', 2) :   0.0 :  0.0 :   0.0
         ('E2', 'J2', 3) :   0.0 :  0.0 :   0.0
         ('E2', 'J2', 4) :   0.0 :  0.0 :   0.0
         ('E2', 'J2', 5) :   0.0 :  0.0 :   0.0
         ('E2', 'J2', 6) :   0.0 :  0.0 :   0.0
         ('E2', 'J2', 7) :   0.0 :  0.0 :   0.0
         ('E2', 'J2', 8) :   0.0 :  0.0 :   0.0
         ('E2', 'J2', 9) :   0.0 :  0.0 :   0.0
        ('E2', 'J2', 10) :   0.0 :  0.0 :   0.0
        ('E2', 'J2', 11) :   0.0 :  0.0 :   0.0
        ('E2', 'J2', 12) :   0.0 :  0.0 :   0.0
        ('E2', 'J2', 13) :   0.0 :  0.0 :   0.0
         ('E2', 'K2', 0) :   0.0 :  0.0 :   0.0
         ('E2', 'K2', 1) :   0.0 :  0.0 :   0.0
         ('E2', 'K2', 2) :   0.0 :  0.0 :   0.0
         ('E2', 'K2', 3) :   0.0 :  0.0 :   0.0
         ('E2', 'K2', 4) :   0.0 :  0.0 :   0.0
         ('E2', 'K2', 5) :   0.0 :  0.0 :   0.0
         ('E2', 'K2', 6) :   0.0 :  0.0 :   0.0
         ('E2', 'K2', 7) :   0.0 :  0.0 :   0.0
         ('E2', 'K2', 8) :   0.0 :  0.0 :   0.0
         ('E2', 'K2', 9) :   0.0 :  0.0 :   0.0
        ('E2', 'K2', 10) :   0.0 :  0.0 :   0.0
        ('E2', 'K2', 11) :   0.0 :  0.0 :   0.0
        ('E2', 'K2', 12) :   0.0 :  0.0 :   0.0
        ('E2', 'K2', 13) :   0.0 :  0.0 :   0.0
         ('E2', 'L2', 0) :   0.0 :  0.0 :   0.0
         ('E2', 'L2', 1) :   0.0 :  0.0 :   0.0
         ('E2', 'L2', 2) :   0.0 :  0.0 :   0.0
         ('E2', 'L2', 3) :   0.0 :  0.0 :   0.0
         ('E2', 'L2', 4) :   0.0 :  0.0 :   0.0
         ('E2', 'L2', 5) :   0.0 :  0.0 :   0.0
         ('E2', 'L2', 6) :   0.0 :  0.0 :   0.0
         ('E2', 'L2', 7) :   0.0 :  0.0 :   0.0
         ('E2', 'L2', 8) :   0.0 :  0.0 :   0.0
         ('E2', 'L2', 9) :   0.0 :  0.0 :   0.0
        ('E2', 'L2', 10) :   0.0 :  0.0 :   0.0
        ('E2', 'L2', 11) :   0.0 :  0.0 :   0.0
        ('E2', 'L2', 12) :   0.0 :  0.0 :   0.0
        ('E2', 'L2', 13) :   0.0 :  0.0 :   0.0
         ('E2', 'M2', 0) :   0.0 :  0.0 :   0.0
         ('E2', 'M2', 1) :   0.0 :  0.0 :   0.0
         ('E2', 'M2', 2) :   0.0 :  0.0 :   0.0
         ('E2', 'M2', 3) :   0.0 :  0.0 :   0.0
         ('E2', 'M2', 4) :   0.0 :  0.0 :   0.0
         ('E2', 'M2', 5) :   0.0 :  0.0 :   0.0
         ('E2', 'M2', 6) :   0.0 :  0.0 :   0.0
         ('E2', 'M2', 7) :   0.0 :  0.0 :   0.0
         ('E2', 'M2', 8) :   0.0 :  0.0 :   0.0
         ('E2', 'M2', 9) :   0.0 :  0.0 :   0.0
        ('E2', 'M2', 10) :   0.0 :  0.0 :   0.0
        ('E2', 'M2', 11) :   0.0 :  0.0 :   0.0
        ('E2', 'M2', 12) :   0.0 :  0.0 :   0.0
        ('E2', 'M2', 13) :   0.0 :  0.0 :   0.0
         ('E2', 'N2', 0) :   0.0 :  0.0 :   0.0
         ('E2', 'N2', 1) :   0.0 :  0.0 :   0.0
         ('E2', 'N2', 2) :   0.0 :  0.0 :   0.0
         ('E2', 'N2', 3) :   0.0 :  0.0 :   0.0
         ('E2', 'N2', 4) :   0.0 :  0.0 :   0.0
         ('E2', 'N2', 5) :   0.0 :  0.0 :   0.0
         ('E2', 'N2', 6) :   0.0 :  0.0 :   0.0
         ('E2', 'N2', 7) :   0.0 :  0.0 :   0.0
         ('E2', 'N2', 8) :   0.0 :  0.0 :   0.0
         ('E2', 'N2', 9) :   0.0 :  0.0 :   0.0
        ('E2', 'N2', 10) :   0.0 :  0.0 :   0.0
        ('E2', 'N2', 11) :   0.0 :  0.0 :   0.0
        ('E2', 'N2', 12) :   0.0 :  0.0 :   0.0
        ('E2', 'N2', 13) :   0.0 :  0.0 :   0.0
         ('L2', 'A2', 0) :   0.0 :  0.0 :   0.0
         ('L2', 'A2', 1) :   0.0 :  0.0 :   0.0
         ('L2', 'A2', 2) :   0.0 :  0.0 :   0.0
         ('L2', 'A2', 3) :   0.0 :  0.0 :   0.0
         ('L2', 'A2', 4) :   0.0 :  0.0 :   0.0
         ('L2', 'A2', 5) :   0.0 :  0.0 :   0.0
         ('L2', 'A2', 6) :   0.0 :  0.0 :   0.0
         ('L2', 'A2', 7) :   0.0 :  0.0 :   0.0
         ('L2', 'A2', 8) :   0.0 :  0.0 :   0.0
         ('L2', 'A2', 9) :   0.0 :  0.0 :   0.0
        ('L2', 'A2', 10) :   0.0 :  0.0 :   0.0
        ('L2', 'A2', 11) :   0.0 :  0.0 :   0.0
        ('L2', 'A2', 12) :   0.0 :  0.0 :   0.0
        ('L2', 'A2', 13) :   0.0 :  0.0 :   0.0
         ('L2', 'B2', 0) :   0.0 :  0.0 :   0.0
         ('L2', 'B2', 1) :   0.0 :  0.0 :   0.0
         ('L2', 'B2', 2) :   0.0 :  0.0 :   0.0
         ('L2', 'B2', 3) :   0.0 :  0.0 :   0.0
         ('L2', 'B2', 4) :   0.0 :  0.0 :   0.0
         ('L2', 'B2', 5) :   0.0 :  0.0 :   0.0
         ('L2', 'B2', 6) :   0.0 :  0.0 :   0.0
         ('L2', 'B2', 7) :   0.0 :  0.0 :   0.0
         ('L2', 'B2', 8) :   0.0 :  0.0 :   0.0
         ('L2', 'B2', 9) :   0.0 :  0.0 :   0.0
        ('L2', 'B2', 10) :   0.0 :  0.0 :   0.0
        ('L2', 'B2', 11) :   0.0 :  0.0 :   0.0
        ('L2', 'B2', 12) :   0.0 :  0.0 :   0.0
        ('L2', 'B2', 13) :   0.0 :  0.0 :   0.0
         ('L2', 'C2', 0) :   0.0 :  0.0 :   0.0
         ('L2', 'C2', 1) :   0.0 :  0.0 :   0.0
         ('L2', 'C2', 2) :   0.0 :  0.0 :   0.0
         ('L2', 'C2', 3) :   0.0 :  0.0 :   0.0
         ('L2', 'C2', 4) :   0.0 :  0.0 :   0.0
         ('L2', 'C2', 5) :   0.0 :  0.0 :   0.0
         ('L2', 'C2', 6) :   0.0 :  0.0 :   0.0
         ('L2', 'C2', 7) :   0.0 :  0.0 :   0.0
         ('L2', 'C2', 8) :   0.0 :  0.0 :   0.0
         ('L2', 'C2', 9) :   0.0 :  0.0 :   0.0
        ('L2', 'C2', 10) :   0.0 :  0.0 :   0.0
        ('L2', 'C2', 11) :   0.0 :  0.0 :   0.0
        ('L2', 'C2', 12) :   0.0 :  0.0 :   0.0
        ('L2', 'C2', 13) :   0.0 :  0.0 :   0.0
         ('L2', 'D2', 0) :   0.0 :  0.0 :   0.0
         ('L2', 'D2', 1) :   0.0 :  0.0 :   0.0
         ('L2', 'D2', 2) :   0.0 :  0.0 :   0.0
         ('L2', 'D2', 3) :   0.0 :  0.0 :   0.0
         ('L2', 'D2', 4) :   0.0 :  0.0 :   0.0
         ('L2', 'D2', 5) :   0.0 :  0.0 :   0.0
         ('L2', 'D2', 6) :   0.0 :  0.0 :   0.0
         ('L2', 'D2', 7) :   0.0 :  0.0 :   0.0
         ('L2', 'D2', 8) :   0.0 :  0.0 :   0.0
         ('L2', 'D2', 9) :   0.0 :  0.0 :   0.0
        ('L2', 'D2', 10) :   0.0 :  0.0 :   0.0
        ('L2', 'D2', 11) :   0.0 :  0.0 :   0.0
        ('L2', 'D2', 12) :   0.0 :  0.0 :   0.0
        ('L2', 'D2', 13) :   0.0 :  0.0 :   0.0
         ('L2', 'E2', 0) :   0.0 :  0.0 :   0.0
         ('L2', 'E2', 1) :   0.0 :  0.0 :   0.0
         ('L2', 'E2', 2) :   0.0 :  0.0 :   0.0
         ('L2', 'E2', 3) :   0.0 :  0.0 :   0.0
         ('L2', 'E2', 4) :   0.0 :  0.0 :   0.0
         ('L2', 'E2', 5) :   0.0 :  0.0 :   0.0
         ('L2', 'E2', 6) :   0.0 :  0.0 :   0.0
         ('L2', 'E2', 7) :   0.0 :  0.0 :   0.0
         ('L2', 'E2', 8) :   0.0 :  0.0 :   0.0
         ('L2', 'E2', 9) :   0.0 :  0.0 :   0.0
        ('L2', 'E2', 10) :   0.0 :  0.0 :   0.0
        ('L2', 'E2', 11) :   0.0 :  0.0 :   0.0
        ('L2', 'E2', 12) :   0.0 :  0.0 :   0.0
        ('L2', 'E2', 13) :   0.0 :  0.0 :   0.0
         ('L2', 'F2', 0) :   0.0 :  0.0 :   0.0
         ('L2', 'F2', 1) :   0.0 :  0.0 :   0.0
         ('L2', 'F2', 2) :   0.0 :  0.0 :   0.0
         ('L2', 'F2', 3) :   0.0 :  0.0 :   0.0
         ('L2', 'F2', 4) :   0.0 :  0.0 :   0.0
         ('L2', 'F2', 5) :   0.0 :  0.0 :   0.0
         ('L2', 'F2', 6) :   0.0 :  0.0 :   0.0
         ('L2', 'F2', 7) :   0.0 :  0.0 :   0.0
         ('L2', 'F2', 8) :   0.0 :  0.0 :   0.0
         ('L2', 'F2', 9) :   0.0 :  0.0 :   0.0
        ('L2', 'F2', 10) :   0.0 :  0.0 :   0.0
        ('L2', 'F2', 11) :   0.0 :  0.0 :   0.0
        ('L2', 'F2', 12) :   0.0 :  0.0 :   0.0
        ('L2', 'F2', 13) :   0.0 :  0.0 :   0.0
         ('L2', 'G2', 0) :   0.0 :  0.0 :   0.0
         ('L2', 'G2', 1) :   0.0 :  0.0 :   0.0
         ('L2', 'G2', 2) :   0.0 :  0.0 :   0.0
         ('L2', 'G2', 3) :   0.0 :  0.0 :   0.0
         ('L2', 'G2', 4) :   0.0 :  0.0 :   0.0
         ('L2', 'G2', 5) :   0.0 :  0.0 :   0.0
         ('L2', 'G2', 6) :   0.0 :  0.0 :   0.0
         ('L2', 'G2', 7) :   0.0 :  0.0 :   0.0
         ('L2', 'G2', 8) :   0.0 :  0.0 :   0.0
         ('L2', 'G2', 9) :   0.0 :  0.0 :   0.0
        ('L2', 'G2', 10) :   0.0 :  0.0 :   0.0
        ('L2', 'G2', 11) :   0.0 :  0.0 :   0.0
        ('L2', 'G2', 12) :   0.0 :  0.0 :   0.0
        ('L2', 'G2', 13) :   0.0 :  0.0 :   0.0
         ('L2', 'H2', 0) :   0.0 :  0.0 :   0.0
         ('L2', 'H2', 1) :   0.0 :  0.0 :   0.0
         ('L2', 'H2', 2) :   0.0 :  0.0 :   0.0
         ('L2', 'H2', 3) :   0.0 :  0.0 :   0.0
         ('L2', 'H2', 4) :   0.0 :  0.0 :   0.0
         ('L2', 'H2', 5) :   0.0 :  0.0 :   0.0
         ('L2', 'H2', 6) :   0.0 :  0.0 :   0.0
         ('L2', 'H2', 7) :   0.0 :  0.0 :   0.0
         ('L2', 'H2', 8) :   0.0 :  0.0 :   0.0
         ('L2', 'H2', 9) :   0.0 :  0.0 :   0.0
        ('L2', 'H2', 10) :   0.0 :  0.0 :   0.0
        ('L2', 'H2', 11) :   0.0 :  0.0 :   0.0
        ('L2', 'H2', 12) :   0.0 :  0.0 :   0.0
        ('L2', 'H2', 13) :   0.0 :  0.0 :   0.0
         ('L2', 'I2', 0) :   0.0 :  0.0 :   0.0
         ('L2', 'I2', 1) :   0.0 :  0.0 :   0.0
         ('L2', 'I2', 2) :   0.0 :  0.0 :   0.0
         ('L2', 'I2', 3) :   0.0 :  0.0 :   0.0
         ('L2', 'I2', 4) :   0.0 :  0.0 :   0.0
         ('L2', 'I2', 5) :   0.0 :  0.0 :   0.0
         ('L2', 'I2', 6) :   0.0 :  0.0 :   0.0
         ('L2', 'I2', 7) :   0.0 :  0.0 :   0.0
         ('L2', 'I2', 8) :   0.0 :  0.0 :   0.0
         ('L2', 'I2', 9) :   0.0 :  0.0 :   0.0
        ('L2', 'I2', 10) :   0.0 :  0.0 :   0.0
        ('L2', 'I2', 11) :   0.0 :  0.0 :   0.0
        ('L2', 'I2', 12) :   0.0 :  0.0 :   0.0
        ('L2', 'I2', 13) :   0.0 :  0.0 :   0.0
         ('L2', 'J2', 0) :   0.0 :  0.0 :   0.0
         ('L2', 'J2', 1) :   0.0 :  0.0 :   0.0
         ('L2', 'J2', 2) :   0.0 :  0.0 :   0.0
         ('L2', 'J2', 3) :   0.0 :  0.0 :   0.0
         ('L2', 'J2', 4) :   0.0 :  0.0 :   0.0
         ('L2', 'J2', 5) :   0.0 :  0.0 :   0.0
         ('L2', 'J2', 6) :   0.0 :  0.0 :   0.0
         ('L2', 'J2', 7) :   0.0 :  0.0 :   0.0
         ('L2', 'J2', 8) :   0.0 :  0.0 :   0.0
         ('L2', 'J2', 9) :   0.0 :  0.0 :   0.0
        ('L2', 'J2', 10) :   0.0 :  0.0 :   0.0
        ('L2', 'J2', 11) :   0.0 :  0.0 :   0.0
        ('L2', 'J2', 12) :   0.0 :  0.0 :   0.0
        ('L2', 'J2', 13) :   0.0 :  0.0 :   0.0
         ('L2', 'K2', 0) :   0.0 :  0.0 :   0.0
         ('L2', 'K2', 1) :   0.0 :  0.0 :   0.0
         ('L2', 'K2', 2) :   0.0 :  0.0 :   0.0
         ('L2', 'K2', 3) :   0.0 :  0.0 :   0.0
         ('L2', 'K2', 4) :   0.0 :  0.0 :   0.0
         ('L2', 'K2', 5) :   0.0 :  0.0 :   0.0
         ('L2', 'K2', 6) :   0.0 :  0.0 :   0.0
         ('L2', 'K2', 7) :   0.0 :  0.0 :   0.0
         ('L2', 'K2', 8) :   0.0 :  0.0 :   0.0
         ('L2', 'K2', 9) :   0.0 :  0.0 :   0.0
        ('L2', 'K2', 10) :   0.0 :  0.0 :   0.0
        ('L2', 'K2', 11) :   0.0 :  0.0 :   0.0
        ('L2', 'K2', 12) :   0.0 :  0.0 :   0.0
        ('L2', 'K2', 13) :   0.0 :  0.0 :   0.0
         ('L2', 'L2', 0) :   0.0 :  0.0 :   0.0
         ('L2', 'L2', 1) :   0.0 :  0.0 :   0.0
         ('L2', 'L2', 2) :   0.0 :  0.0 :   0.0
         ('L2', 'L2', 3) :   0.0 :  0.0 :   0.0
         ('L2', 'L2', 4) :   0.0 :  0.0 :   0.0
         ('L2', 'L2', 5) :   0.0 :  0.0 :   0.0
         ('L2', 'L2', 6) :   0.0 :  0.0 :   0.0
         ('L2', 'L2', 7) :   0.0 :  0.0 :   0.0
         ('L2', 'L2', 8) :   0.0 :  0.0 :   0.0
         ('L2', 'L2', 9) :   0.0 :  0.0 :   0.0
        ('L2', 'L2', 10) :   0.0 :  0.0 :   0.0
        ('L2', 'L2', 11) :   0.0 :  0.0 :   0.0
        ('L2', 'L2', 12) :   0.0 :  0.0 :   0.0
        ('L2', 'L2', 13) :   0.0 :  0.0 :   0.0
         ('L2', 'M2', 0) :   0.0 :  0.0 :   0.0
         ('L2', 'M2', 1) :   0.0 :  0.0 :   0.0
         ('L2', 'M2', 2) :   0.0 :  0.0 :   0.0
         ('L2', 'M2', 3) :   0.0 :  0.0 :   0.0
         ('L2', 'M2', 4) :   0.0 :  0.0 :   0.0
         ('L2', 'M2', 5) :   0.0 :  0.0 :   0.0
         ('L2', 'M2', 6) :   0.0 :  0.0 :   0.0
         ('L2', 'M2', 7) :   0.0 :  0.0 :   0.0
         ('L2', 'M2', 8) :   0.0 :  0.0 :   0.0
         ('L2', 'M2', 9) :   0.0 :  0.0 :   0.0
        ('L2', 'M2', 10) :   0.0 :  0.0 :   0.0
        ('L2', 'M2', 11) :   0.0 :  0.0 :   0.0
        ('L2', 'M2', 12) :   0.0 :  0.0 :   0.0
        ('L2', 'M2', 13) :   0.0 :  0.0 :   0.0
         ('L2', 'N2', 0) :   0.0 :  0.0 :   0.0
         ('L2', 'N2', 1) :   0.0 :  0.0 :   0.0
         ('L2', 'N2', 2) :   0.0 :  0.0 :   0.0
         ('L2', 'N2', 3) :   0.0 :  0.0 :   0.0
         ('L2', 'N2', 4) :   0.0 :  0.0 :   0.0
         ('L2', 'N2', 5) :   0.0 :  0.0 :   0.0
         ('L2', 'N2', 6) :   0.0 :  0.0 :   0.0
         ('L2', 'N2', 7) :   0.0 :  0.0 :   0.0
         ('L2', 'N2', 8) :   0.0 :  0.0 :   0.0
         ('L2', 'N2', 9) :   0.0 :  0.0 :   0.0
        ('L2', 'N2', 10) :   0.0 :  0.0 :   0.0
        ('L2', 'N2', 11) :   0.0 :  0.0 :   0.0
        ('L2', 'N2', 12) :   0.0 :  0.0 :   0.0
        ('L2', 'N2', 13) :   0.0 :  0.0 :   0.0
    constraint_under_cover : Size=28
        Key        : Lower : Body : Upper
         ('E2', 0) :   4.0 :  4.0 :  None
         ('E2', 1) :   4.0 :  4.0 :  None
         ('E2', 2) :   3.0 :  3.0 :  None
         ('E2', 3) :   5.0 :  5.0 :  None
         ('E2', 4) :   3.0 :  3.0 :  None
         ('E2', 5) :   5.0 :  5.0 :  None
         ('E2', 6) :   5.0 :  5.0 :  None
         ('E2', 7) :   3.0 :  3.0 :  None
         ('E2', 8) :   4.0 :  4.0 :  None
         ('E2', 9) :   4.0 :  4.0 :  None
        ('E2', 10) :   4.0 :  4.0 :  None
        ('E2', 11) :   2.0 :  2.0 :  None
        ('E2', 12) :   4.0 :  4.0 :  None
        ('E2', 13) :   3.0 :  3.0 :  None
         ('L2', 0) :   4.0 :  4.0 :  None
         ('L2', 1) :   3.0 :  3.0 :  None
         ('L2', 2) :   6.0 :  6.0 :  None
         ('L2', 3) :   4.0 :  4.0 :  None
         ('L2', 4) :   4.0 :  4.0 :  None
         ('L2', 5) :   5.0 :  5.0 :  None
         ('L2', 6) :   5.0 :  5.0 :  None
         ('L2', 7) :   2.0 :  2.0 :  None
         ('L2', 8) :   4.0 :  4.0 :  None
         ('L2', 9) :   4.0 :  4.0 :  None
        ('L2', 10) :   3.0 :  3.0 :  None
        ('L2', 11) :   3.0 :  3.0 :  None
        ('L2', 12) :   3.0 :  3.0 :  None
        ('L2', 13) :   5.0 :  5.0 :  None
    constraint_penalty_under_cover : Size=28
        Key        : Lower : Body : Upper
         ('E2', 0) :   0.0 :  0.0 :   0.0
         ('E2', 1) :   0.0 :  0.0 :   0.0
         ('E2', 2) :   0.0 :  0.0 :   0.0
         ('E2', 3) :   0.0 :  0.0 :   0.0
         ('E2', 4) :   0.0 :  0.0 :   0.0
         ('E2', 5) :   0.0 :  0.0 :   0.0
         ('E2', 6) :   0.0 :  0.0 :   0.0
         ('E2', 7) :   0.0 :  0.0 :   0.0
         ('E2', 8) :   0.0 :  0.0 :   0.0
         ('E2', 9) :   0.0 :  0.0 :   0.0
        ('E2', 10) :   0.0 :  0.0 :   0.0
        ('E2', 11) :   0.0 :  0.0 :   0.0
        ('E2', 12) :   0.0 :  0.0 :   0.0
        ('E2', 13) :   0.0 :  0.0 :   0.0
         ('L2', 0) :   0.0 :  0.0 :   0.0
         ('L2', 1) :   0.0 :  0.0 :   0.0
         ('L2', 2) :   0.0 :  0.0 :   0.0
         ('L2', 3) :   0.0 :  0.0 :   0.0
         ('L2', 4) :   0.0 :  0.0 :   0.0
         ('L2', 5) :   0.0 :  0.0 :   0.0
         ('L2', 6) :   0.0 :  0.0 :   0.0
         ('L2', 7) :   0.0 :  0.0 :   0.0
         ('L2', 8) :   0.0 :  0.0 :   0.0
         ('L2', 9) :   0.0 :  0.0 :   0.0
        ('L2', 10) :   0.0 :  0.0 :   0.0
        ('L2', 11) :   0.0 :  0.0 :   0.0
        ('L2', 12) :   0.0 :  0.0 :   0.0
        ('L2', 13) :   0.0 :  0.0 :   0.0
    constraint_over_cover : Size=28
        Key        : Lower : Body : Upper
         ('E2', 0) :  None :  4.0 :   4.0
         ('E2', 1) :  None :  4.0 :   4.0
         ('E2', 2) :  None :  3.0 :   3.0
         ('E2', 3) :  None :  5.0 :   5.0
         ('E2', 4) :  None :  3.0 :   3.0
         ('E2', 5) :  None :  2.0 :   5.0
         ('E2', 6) :  None :  2.0 :   5.0
         ('E2', 7) :  None :  3.0 :   3.0
         ('E2', 8) :  None :  4.0 :   4.0
         ('E2', 9) :  None :  4.0 :   4.0
        ('E2', 10) :  None :  4.0 :   4.0
        ('E2', 11) :  None :  2.0 :   2.0
        ('E2', 12) :  None :  4.0 :   4.0
        ('E2', 13) :  None :  3.0 :   3.0
         ('L2', 0) :  None :  4.0 :   4.0
         ('L2', 1) :  None :  3.0 :   3.0
         ('L2', 2) :  None :  6.0 :   6.0
         ('L2', 3) :  None :  4.0 :   4.0
         ('L2', 4) :  None :  4.0 :   4.0
         ('L2', 5) :  None :  4.0 :   5.0
         ('L2', 6) :  None :  4.0 :   5.0
         ('L2', 7) :  None :  2.0 :   2.0
         ('L2', 8) :  None :  4.0 :   4.0
         ('L2', 9) :  None :  4.0 :   4.0
        ('L2', 10) :  None :  3.0 :   3.0
        ('L2', 11) :  None :  3.0 :   3.0
        ('L2', 12) :  None :  3.0 :   3.0
        ('L2', 13) :  None :  5.0 :   5.0
    constraint_penalty_over_cover : Size=28
        Key        : Lower : Body : Upper
         ('E2', 0) :   0.0 :  0.0 :   0.0
         ('E2', 1) :   0.0 :  0.0 :   0.0
         ('E2', 2) :   0.0 :  0.0 :   0.0
         ('E2', 3) :   0.0 :  0.0 :   0.0
         ('E2', 4) :   0.0 :  0.0 :   0.0
         ('E2', 5) :   0.0 :  0.0 :   0.0
         ('E2', 6) :   0.0 :  0.0 :   0.0
         ('E2', 7) :   0.0 :  0.0 :   0.0
         ('E2', 8) :   0.0 :  0.0 :   0.0
         ('E2', 9) :   0.0 :  0.0 :   0.0
        ('E2', 10) :   0.0 :  0.0 :   0.0
        ('E2', 11) :   0.0 :  0.0 :   0.0
        ('E2', 12) :   0.0 :  0.0 :   0.0
        ('E2', 13) :   0.0 :  0.0 :   0.0
         ('L2', 0) :   0.0 :  0.0 :   0.0
         ('L2', 1) :   0.0 :  0.0 :   0.0
         ('L2', 2) :   0.0 :  0.0 :   0.0
         ('L2', 3) :   0.0 :  0.0 :   0.0
         ('L2', 4) :   0.0 :  0.0 :   0.0
         ('L2', 5) :   0.0 :  0.0 :   0.0
         ('L2', 6) :   0.0 :  0.0 :   0.0
         ('L2', 7) :   0.0 :  0.0 :   0.0
         ('L2', 8) :   0.0 :  0.0 :   0.0
         ('L2', 9) :   0.0 :  0.0 :   0.0
        ('L2', 10) :   0.0 :  0.0 :   0.0
        ('L2', 11) :   0.0 :  0.0 :   0.0
        ('L2', 12) :   0.0 :  0.0 :   0.0
        ('L2', 13) :   0.0 :  0.0 :   0.0
