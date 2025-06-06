Model NurseSchedulingProblem

  Variables:
    IsAssign : Size=392, Index=SHIFTTYPES*NURSES*DAYS
        Key            : Lower : Value              : Upper : Fixed : Stale : Domain
         ('E', 'A', 0) :     0 :                1.0 :     1 : False : False : Binary
         ('E', 'A', 1) :     0 :                1.0 :     1 : False : False : Binary
         ('E', 'A', 2) :     0 :               -0.0 :     1 : False : False : Binary
         ('E', 'A', 3) :     0 :                0.0 :     1 : False : False : Binary
         ('E', 'A', 4) :     0 :               -0.0 :     1 : False : False : Binary
         ('E', 'A', 5) :     0 :                0.0 :     1 : False : False : Binary
         ('E', 'A', 6) :     0 :               -0.0 :     1 : False : False : Binary
         ('E', 'A', 7) :     0 :               -0.0 :     1 : False : False : Binary
         ('E', 'A', 8) :     0 :               -0.0 :     1 : False : False : Binary
         ('E', 'A', 9) :     0 :               -0.0 :     1 : False : False : Binary
        ('E', 'A', 10) :     0 :               -0.0 :     1 : False : False : Binary
        ('E', 'A', 11) :     0 :                0.0 :     1 : False : False : Binary
        ('E', 'A', 12) :     0 :                0.0 :     1 : False : False : Binary
        ('E', 'A', 13) :     0 :               -0.0 :     1 : False : False : Binary
         ('E', 'B', 0) :     0 :               -0.0 :     1 : False : False : Binary
         ('E', 'B', 1) :     0 :                0.0 :     1 : False : False : Binary
         ('E', 'B', 2) :     0 :                1.0 :     1 : False : False : Binary
         ('E', 'B', 3) :     0 :                1.0 :     1 : False : False : Binary
         ('E', 'B', 4) :     0 : 0.9999999999999956 :     1 : False : False : Binary
         ('E', 'B', 5) :     0 :                0.0 :     1 : False : False : Binary
         ('E', 'B', 6) :     0 :                0.0 :     1 : False : False : Binary
         ('E', 'B', 7) :     0 :                1.0 :     1 : False : False : Binary
         ('E', 'B', 8) :     0 :                1.0 :     1 : False : False : Binary
         ('E', 'B', 9) :     0 :                1.0 :     1 : False : False : Binary
        ('E', 'B', 10) :     0 :                0.0 :     1 : False : False : Binary
        ('E', 'B', 11) :     0 :                0.0 :     1 : False : False : Binary
        ('E', 'B', 12) :     0 :                1.0 :     1 : False : False : Binary
        ('E', 'B', 13) :     0 :                0.0 :     1 : False : False : Binary
         ('E', 'C', 0) :     0 :               -0.0 :     1 : False : False : Binary
         ('E', 'C', 1) :     0 :               -0.0 :     1 : False : False : Binary
         ('E', 'C', 2) :     0 :                0.0 :     1 : False : False : Binary
         ('E', 'C', 3) :     0 : 0.9999999999999912 :     1 : False : False : Binary
         ('E', 'C', 4) :     0 : 0.9999999999999983 :     1 : False : False : Binary
         ('E', 'C', 5) :     0 :                1.0 :     1 : False : False : Binary
         ('E', 'C', 6) :     0 :                1.0 :     1 : False : False : Binary
         ('E', 'C', 7) :     0 :                0.0 :     1 : False : False : Binary
         ('E', 'C', 8) :     0 :                0.0 :     1 : False : False : Binary
         ('E', 'C', 9) :     0 :                1.0 :     1 : False : False : Binary
        ('E', 'C', 10) :     0 :                1.0 :     1 : False : False : Binary
        ('E', 'C', 11) :     0 :                1.0 :     1 : False : False : Binary
        ('E', 'C', 12) :     0 :                0.0 :     1 : False : False : Binary
        ('E', 'C', 13) :     0 :               -0.0 :     1 : False : False : Binary
         ('E', 'D', 0) :     0 :                1.0 :     1 : False : False : Binary
         ('E', 'D', 1) :     0 :                1.0 :     1 : False : False : Binary
         ('E', 'D', 2) :     0 :                1.0 :     1 : False : False : Binary
         ('E', 'D', 3) :     0 :                1.0 :     1 : False : False : Binary
         ('E', 'D', 4) :     0 :                1.0 :     1 : False : False : Binary
         ('E', 'D', 5) :     0 :                0.0 :     1 : False : False : Binary
         ('E', 'D', 6) :     0 :                0.0 :     1 : False : False : Binary
         ('E', 'D', 7) :     0 :                0.0 :     1 : False : False : Binary
         ('E', 'D', 8) :     0 :                1.0 :     1 : False : False : Binary
         ('E', 'D', 9) :     0 :                1.0 :     1 : False : False : Binary
        ('E', 'D', 10) :     0 :                1.0 :     1 : False : False : Binary
        ('E', 'D', 11) :     0 :                0.0 :     1 : False : False : Binary
        ('E', 'D', 12) :     0 :                0.0 :     1 : False : False : Binary
        ('E', 'D', 13) :     0 :                1.0 :     1 : False : False : Binary
         ('E', 'E', 0) :     0 :                0.0 :     1 : False : False : Binary
         ('E', 'E', 1) :     0 :                0.0 :     1 : False : False : Binary
         ('E', 'E', 2) :     0 :                0.0 :     1 : False : False : Binary
         ('E', 'E', 3) :     0 :                0.0 :     1 : False : False : Binary
         ('E', 'E', 4) :     0 :                0.0 :     1 : False : False : Binary
         ('E', 'E', 5) :     0 :                0.0 :     1 : False : False : Binary
         ('E', 'E', 6) :     0 :                0.0 :     1 : False : False : Binary
         ('E', 'E', 7) :     0 :                0.0 :     1 : False : False : Binary
         ('E', 'E', 8) :     0 :                0.0 :     1 : False : False : Binary
         ('E', 'E', 9) :     0 :                0.0 :     1 : False : False : Binary
        ('E', 'E', 10) :     0 :                0.0 :     1 : False : False : Binary
        ('E', 'E', 11) :     0 :                0.0 :     1 : False : False : Binary
        ('E', 'E', 12) :     0 :                0.0 :     1 : False : False : Binary
        ('E', 'E', 13) :     0 :                0.0 :     1 : False : False : Binary
         ('E', 'F', 0) :     0 :               -0.0 :     1 : False : False : Binary
         ('E', 'F', 1) :     0 :               -0.0 :     1 : False : False : Binary
         ('E', 'F', 2) :     0 :               -0.0 :     1 : False : False : Binary
         ('E', 'F', 3) :     0 :               -0.0 :     1 : False : False : Binary
         ('E', 'F', 4) :     0 :                0.0 :     1 : False : False : Binary
         ('E', 'F', 5) :     0 :               -0.0 :     1 : False : False : Binary
         ('E', 'F', 6) :     0 :               -0.0 :     1 : False : False : Binary
         ('E', 'F', 7) :     0 :               -0.0 :     1 : False : False : Binary
         ('E', 'F', 8) :     0 :               -0.0 :     1 : False : False : Binary
         ('E', 'F', 9) :     0 :                1.0 :     1 : False : False : Binary
        ('E', 'F', 10) :     0 :               -0.0 :     1 : False : False : Binary
        ('E', 'F', 11) :     0 :                0.0 :     1 : False : False : Binary
        ('E', 'F', 12) :     0 :                0.0 :     1 : False : False : Binary
        ('E', 'F', 13) :     0 :                0.0 :     1 : False : False : Binary
         ('E', 'G', 0) :     0 :                1.0 :     1 : False : False : Binary
         ('E', 'G', 1) :     0 :                1.0 :     1 : False : False : Binary
         ('E', 'G', 2) :     0 :                1.0 :     1 : False : False : Binary
         ('E', 'G', 3) :     0 : 1.0000000000000089 :     1 : False : False : Binary
         ('E', 'G', 4) :     0 :               -0.0 :     1 : False : False : Binary
         ('E', 'G', 5) :     0 :               -0.0 :     1 : False : False : Binary
         ('E', 'G', 6) :     0 :               -0.0 :     1 : False : False : Binary
         ('E', 'G', 7) :     0 :               -0.0 :     1 : False : False : Binary
         ('E', 'G', 8) :     0 :               -0.0 :     1 : False : False : Binary
         ('E', 'G', 9) :     0 :                0.0 :     1 : False : False : Binary
        ('E', 'G', 10) :     0 :                0.0 :     1 : False : False : Binary
        ('E', 'G', 11) :     0 :                1.0 :     1 : False : False : Binary
        ('E', 'G', 12) :     0 :                1.0 :     1 : False : False : Binary
        ('E', 'G', 13) :     0 :                1.0 :     1 : False : False : Binary
         ('E', 'H', 0) :     0 :                1.0 :     1 : False : False : Binary
         ('E', 'H', 1) :     0 :                1.0 :     1 : False : False : Binary
         ('E', 'H', 2) :     0 :               -0.0 :     1 : False : False : Binary
         ('E', 'H', 3) :     0 :                0.0 :     1 : False : False : Binary
         ('E', 'H', 4) :     0 :                0.0 :     1 : False : False : Binary
         ('E', 'H', 5) :     0 :                1.0 :     1 : False : False : Binary
         ('E', 'H', 6) :     0 :                1.0 :     1 : False : False : Binary
         ('E', 'H', 7) :     0 :                1.0 :     1 : False : False : Binary
         ('E', 'H', 8) :     0 :                1.0 :     1 : False : False : Binary
         ('E', 'H', 9) :     0 :               -0.0 :     1 : False : False : Binary
        ('E', 'H', 10) :     0 :               -0.0 :     1 : False : False : Binary
        ('E', 'H', 11) :     0 :               -0.0 :     1 : False : False : Binary
        ('E', 'H', 12) :     0 :                0.0 :     1 : False : False : Binary
        ('E', 'H', 13) :     0 :               -0.0 :     1 : False : False : Binary
         ('E', 'I', 0) :     0 :                0.0 :     1 : False : False : Binary
         ('E', 'I', 1) :     0 :               -0.0 :     1 : False : False : Binary
         ('E', 'I', 2) :     0 :               -0.0 :     1 : False : False : Binary
         ('E', 'I', 3) :     0 :                0.0 :     1 : False : False : Binary
         ('E', 'I', 4) :     0 :                0.0 :     1 : False : False : Binary
         ('E', 'I', 5) :     0 :               -0.0 :     1 : False : False : Binary
         ('E', 'I', 6) :     0 :                0.0 :     1 : False : False : Binary
         ('E', 'I', 7) :     0 :                1.0 :     1 : False : False : Binary
         ('E', 'I', 8) :     0 :                0.0 :     1 : False : False : Binary
         ('E', 'I', 9) :     0 :                0.0 :     1 : False : False : Binary
        ('E', 'I', 10) :     0 :                0.0 :     1 : False : False : Binary
        ('E', 'I', 11) :     0 :                0.0 :     1 : False : False : Binary
        ('E', 'I', 12) :     0 :                1.0 :     1 : False : False : Binary
        ('E', 'I', 13) :     0 :               -0.0 :     1 : False : False : Binary
         ('E', 'J', 0) :     0 :                0.0 :     1 : False : False : Binary
         ('E', 'J', 1) :     0 :                0.0 :     1 : False : False : Binary
         ('E', 'J', 2) :     0 :                0.0 :     1 : False : False : Binary
         ('E', 'J', 3) :     0 :                0.0 :     1 : False : False : Binary
         ('E', 'J', 4) :     0 :                0.0 :     1 : False : False : Binary
         ('E', 'J', 5) :     0 :                0.0 :     1 : False : False : Binary
         ('E', 'J', 6) :     0 :               -0.0 :     1 : False : False : Binary
         ('E', 'J', 7) :     0 :               -0.0 :     1 : False : False : Binary
         ('E', 'J', 8) :     0 :                0.0 :     1 : False : False : Binary
         ('E', 'J', 9) :     0 :                0.0 :     1 : False : False : Binary
        ('E', 'J', 10) :     0 :                1.0 :     1 : False : False : Binary
        ('E', 'J', 11) :     0 :                0.0 :     1 : False : False : Binary
        ('E', 'J', 12) :     0 :                0.0 :     1 : False : False : Binary
        ('E', 'J', 13) :     0 :               -0.0 :     1 : False : False : Binary
         ('E', 'K', 0) :     0 :                0.0 :     1 : False : False : Binary
         ('E', 'K', 1) :     0 :                0.0 :     1 : False : False : Binary
         ('E', 'K', 2) :     0 :                0.0 :     1 : False : False : Binary
         ('E', 'K', 3) :     0 :                0.0 :     1 : False : False : Binary
         ('E', 'K', 4) :     0 :                0.0 :     1 : False : False : Binary
         ('E', 'K', 5) :     0 :                0.0 :     1 : False : False : Binary
         ('E', 'K', 6) :     0 :                0.0 :     1 : False : False : Binary
         ('E', 'K', 7) :     0 :                0.0 :     1 : False : False : Binary
         ('E', 'K', 8) :     0 :                0.0 :     1 : False : False : Binary
         ('E', 'K', 9) :     0 :                0.0 :     1 : False : False : Binary
        ('E', 'K', 10) :     0 :                0.0 :     1 : False : False : Binary
        ('E', 'K', 11) :     0 :                0.0 :     1 : False : False : Binary
        ('E', 'K', 12) :     0 :                0.0 :     1 : False : False : Binary
        ('E', 'K', 13) :     0 :                0.0 :     1 : False : False : Binary
         ('E', 'L', 0) :     0 :                0.0 :     1 : False : False : Binary
         ('E', 'L', 1) :     0 :                0.0 :     1 : False : False : Binary
         ('E', 'L', 2) :     0 :                0.0 :     1 : False : False : Binary
         ('E', 'L', 3) :     0 :                0.0 :     1 : False : False : Binary
         ('E', 'L', 4) :     0 :                0.0 :     1 : False : False : Binary
         ('E', 'L', 5) :     0 :                0.0 :     1 : False : False : Binary
         ('E', 'L', 6) :     0 :                0.0 :     1 : False : False : Binary
         ('E', 'L', 7) :     0 :                0.0 :     1 : False : False : Binary
         ('E', 'L', 8) :     0 :                0.0 :     1 : False : False : Binary
         ('E', 'L', 9) :     0 :                0.0 :     1 : False : False : Binary
        ('E', 'L', 10) :     0 :                0.0 :     1 : False : False : Binary
        ('E', 'L', 11) :     0 :                0.0 :     1 : False : False : Binary
        ('E', 'L', 12) :     0 :                0.0 :     1 : False : False : Binary
        ('E', 'L', 13) :     0 :                0.0 :     1 : False : False : Binary
         ('E', 'M', 0) :     0 :               -0.0 :     1 : False : False : Binary
         ('E', 'M', 1) :     0 :               -0.0 :     1 : False : False : Binary
         ('E', 'M', 2) :     0 :               -0.0 :     1 : False : False : Binary
         ('E', 'M', 3) :     0 :                1.0 :     1 : False : False : Binary
         ('E', 'M', 4) :     0 :               -0.0 :     1 : False : False : Binary
         ('E', 'M', 5) :     0 :               -0.0 :     1 : False : False : Binary
         ('E', 'M', 6) :     0 :                0.0 :     1 : False : False : Binary
         ('E', 'M', 7) :     0 :               -0.0 :     1 : False : False : Binary
         ('E', 'M', 8) :     0 :                0.0 :     1 : False : False : Binary
         ('E', 'M', 9) :     0 :               -0.0 :     1 : False : False : Binary
        ('E', 'M', 10) :     0 :               -0.0 :     1 : False : False : Binary
        ('E', 'M', 11) :     0 :               -0.0 :     1 : False : False : Binary
        ('E', 'M', 12) :     0 :                0.0 :     1 : False : False : Binary
        ('E', 'M', 13) :     0 :               -0.0 :     1 : False : False : Binary
         ('E', 'N', 0) :     0 :               -0.0 :     1 : False : False : Binary
         ('E', 'N', 1) :     0 :                0.0 :     1 : False : False : Binary
         ('E', 'N', 2) :     0 :                0.0 :     1 : False : False : Binary
         ('E', 'N', 3) :     0 :                0.0 :     1 : False : False : Binary
         ('E', 'N', 4) :     0 :               -0.0 :     1 : False : False : Binary
         ('E', 'N', 5) :     0 :               -0.0 :     1 : False : False : Binary
         ('E', 'N', 6) :     0 :                0.0 :     1 : False : False : Binary
         ('E', 'N', 7) :     0 :               -0.0 :     1 : False : False : Binary
         ('E', 'N', 8) :     0 :                1.0 :     1 : False : False : Binary
         ('E', 'N', 9) :     0 :               -0.0 :     1 : False : False : Binary
        ('E', 'N', 10) :     0 :                1.0 :     1 : False : False : Binary
        ('E', 'N', 11) :     0 :               -0.0 :     1 : False : False : Binary
        ('E', 'N', 12) :     0 :                1.0 :     1 : False : False : Binary
        ('E', 'N', 13) :     0 :                1.0 :     1 : False : False : Binary
         ('L', 'A', 0) :     0 :                0.0 :     1 : False : False : Binary
         ('L', 'A', 1) :     0 :                0.0 :     1 : False : False : Binary
         ('L', 'A', 2) :     0 :                1.0 :     1 : False : False : Binary
         ('L', 'A', 3) :     0 :                0.0 :     1 : False : False : Binary
         ('L', 'A', 4) :     0 :               -0.0 :     1 : False : False : Binary
         ('L', 'A', 5) :     0 :                1.0 :     1 : False : False : Binary
         ('L', 'A', 6) :     0 :                1.0 :     1 : False : False : Binary
         ('L', 'A', 7) :     0 :                1.0 :     1 : False : False : Binary
         ('L', 'A', 8) :     0 :                1.0 :     1 : False : False : Binary
         ('L', 'A', 9) :     0 :                1.0 :     1 : False : False : Binary
        ('L', 'A', 10) :     0 :                0.0 :     1 : False : False : Binary
        ('L', 'A', 11) :     0 :               -0.0 :     1 : False : False : Binary
        ('L', 'A', 12) :     0 :               -0.0 :     1 : False : False : Binary
        ('L', 'A', 13) :     0 :                0.0 :     1 : False : False : Binary
         ('L', 'B', 0) :     0 :                0.0 :     1 : False : False : Binary
         ('L', 'B', 1) :     0 :                0.0 :     1 : False : False : Binary
         ('L', 'B', 2) :     0 :               -0.0 :     1 : False : False : Binary
         ('L', 'B', 3) :     0 :                0.0 :     1 : False : False : Binary
         ('L', 'B', 4) :     0 :               -0.0 :     1 : False : False : Binary
         ('L', 'B', 5) :     0 :                0.0 :     1 : False : False : Binary
         ('L', 'B', 6) :     0 :               -0.0 :     1 : False : False : Binary
         ('L', 'B', 7) :     0 :               -0.0 :     1 : False : False : Binary
         ('L', 'B', 8) :     0 :               -0.0 :     1 : False : False : Binary
         ('L', 'B', 9) :     0 :               -0.0 :     1 : False : False : Binary
        ('L', 'B', 10) :     0 :               -0.0 :     1 : False : False : Binary
        ('L', 'B', 11) :     0 :               -0.0 :     1 : False : False : Binary
        ('L', 'B', 12) :     0 :                0.0 :     1 : False : False : Binary
        ('L', 'B', 13) :     0 : 1.0000000000000107 :     1 : False : False : Binary
         ('L', 'C', 0) :     0 :                1.0 :     1 : False : False : Binary
         ('L', 'C', 1) :     0 :                0.0 :     1 : False : False : Binary
         ('L', 'C', 2) :     0 :                0.0 :     1 : False : False : Binary
         ('L', 'C', 3) :     0 :               -0.0 :     1 : False : False : Binary
         ('L', 'C', 4) :     0 :               -0.0 :     1 : False : False : Binary
         ('L', 'C', 5) :     0 :               -0.0 :     1 : False : False : Binary
         ('L', 'C', 6) :     0 :                0.0 :     1 : False : False : Binary
         ('L', 'C', 7) :     0 :                0.0 :     1 : False : False : Binary
         ('L', 'C', 8) :     0 :               -0.0 :     1 : False : False : Binary
         ('L', 'C', 9) :     0 :               -0.0 :     1 : False : False : Binary
        ('L', 'C', 10) :     0 :               -0.0 :     1 : False : False : Binary
        ('L', 'C', 11) :     0 :               -0.0 :     1 : False : False : Binary
        ('L', 'C', 12) :     0 :               -0.0 :     1 : False : False : Binary
        ('L', 'C', 13) :     0 :                0.0 :     1 : False : False : Binary
         ('L', 'D', 0) :     0 :                0.0 :     1 : False : False : Binary
         ('L', 'D', 1) :     0 :                0.0 :     1 : False : False : Binary
         ('L', 'D', 2) :     0 :                0.0 :     1 : False : False : Binary
         ('L', 'D', 3) :     0 :                0.0 :     1 : False : False : Binary
         ('L', 'D', 4) :     0 :                0.0 :     1 : False : False : Binary
         ('L', 'D', 5) :     0 :                0.0 :     1 : False : False : Binary
         ('L', 'D', 6) :     0 :                0.0 :     1 : False : False : Binary
         ('L', 'D', 7) :     0 :                0.0 :     1 : False : False : Binary
         ('L', 'D', 8) :     0 :                0.0 :     1 : False : False : Binary
         ('L', 'D', 9) :     0 :                0.0 :     1 : False : False : Binary
        ('L', 'D', 10) :     0 :                0.0 :     1 : False : False : Binary
        ('L', 'D', 11) :     0 :                0.0 :     1 : False : False : Binary
        ('L', 'D', 12) :     0 :                0.0 :     1 : False : False : Binary
        ('L', 'D', 13) :     0 :                0.0 :     1 : False : False : Binary
         ('L', 'E', 0) :     0 :                1.0 :     1 : False : False : Binary
         ('L', 'E', 1) :     0 :                0.0 :     1 : False : False : Binary
         ('L', 'E', 2) :     0 :                0.0 :     1 : False : False : Binary
         ('L', 'E', 3) :     0 :                1.0 :     1 : False : False : Binary
         ('L', 'E', 4) :     0 :                1.0 :     1 : False : False : Binary
         ('L', 'E', 5) :     0 :                1.0 :     1 : False : False : Binary
         ('L', 'E', 6) :     0 :                1.0 :     1 : False : False : Binary
         ('L', 'E', 7) :     0 :                0.0 :     1 : False : False : Binary
         ('L', 'E', 8) :     0 :                0.0 :     1 : False : False : Binary
         ('L', 'E', 9) :     0 :                1.0 :     1 : False : False : Binary
        ('L', 'E', 10) :     0 :                1.0 :     1 : False : False : Binary
        ('L', 'E', 11) :     0 :                1.0 :     1 : False : False : Binary
        ('L', 'E', 12) :     0 :                0.0 :     1 : False : False : Binary
        ('L', 'E', 13) :     0 :                0.0 :     1 : False : False : Binary
         ('L', 'F', 0) :     0 :                0.0 :     1 : False : False : Binary
         ('L', 'F', 1) :     0 :                0.0 :     1 : False : False : Binary
         ('L', 'F', 2) :     0 :                1.0 :     1 : False : False : Binary
         ('L', 'F', 3) :     0 :                1.0 :     1 : False : False : Binary
         ('L', 'F', 4) :     0 :                1.0 :     1 : False : False : Binary
         ('L', 'F', 5) :     0 :                1.0 :     1 : False : False : Binary
         ('L', 'F', 6) :     0 :                1.0 :     1 : False : False : Binary
         ('L', 'F', 7) :     0 :                0.0 :     1 : False : False : Binary
         ('L', 'F', 8) :     0 :                0.0 :     1 : False : False : Binary
         ('L', 'F', 9) :     0 :                0.0 :     1 : False : False : Binary
        ('L', 'F', 10) :     0 :                1.0 :     1 : False : False : Binary
        ('L', 'F', 11) :     0 :                1.0 :     1 : False : False : Binary
        ('L', 'F', 12) :     0 :               -0.0 :     1 : False : False : Binary
        ('L', 'F', 13) :     0 :                0.0 :     1 : False : False : Binary
         ('L', 'G', 0) :     0 :                0.0 :     1 : False : False : Binary
         ('L', 'G', 1) :     0 :                0.0 :     1 : False : False : Binary
         ('L', 'G', 2) :     0 :                0.0 :     1 : False : False : Binary
         ('L', 'G', 3) :     0 :                0.0 :     1 : False : False : Binary
         ('L', 'G', 4) :     0 :                0.0 :     1 : False : False : Binary
         ('L', 'G', 5) :     0 :                0.0 :     1 : False : False : Binary
         ('L', 'G', 6) :     0 :                0.0 :     1 : False : False : Binary
         ('L', 'G', 7) :     0 :                1.0 :     1 : False : False : Binary
         ('L', 'G', 8) :     0 :                1.0 :     1 : False : False : Binary
         ('L', 'G', 9) :     0 :                0.0 :     1 : False : False : Binary
        ('L', 'G', 10) :     0 :               -0.0 :     1 : False : False : Binary
        ('L', 'G', 11) :     0 :               -0.0 :     1 : False : False : Binary
        ('L', 'G', 12) :     0 :               -0.0 :     1 : False : False : Binary
        ('L', 'G', 13) :     0 :                0.0 :     1 : False : False : Binary
         ('L', 'H', 0) :     0 :                0.0 :     1 : False : False : Binary
         ('L', 'H', 1) :     0 :                0.0 :     1 : False : False : Binary
         ('L', 'H', 2) :     0 :                1.0 :     1 : False : False : Binary
         ('L', 'H', 3) :     0 :                0.0 :     1 : False : False : Binary
         ('L', 'H', 4) :     0 :               -0.0 :     1 : False : False : Binary
         ('L', 'H', 5) :     0 :               -0.0 :     1 : False : False : Binary
         ('L', 'H', 6) :     0 :               -0.0 :     1 : False : False : Binary
         ('L', 'H', 7) :     0 :               -0.0 :     1 : False : False : Binary
         ('L', 'H', 8) :     0 :                0.0 :     1 : False : False : Binary
         ('L', 'H', 9) :     0 :                1.0 :     1 : False : False : Binary
        ('L', 'H', 10) :     0 :                0.0 :     1 : False : False : Binary
        ('L', 'H', 11) :     0 :               -0.0 :     1 : False : False : Binary
        ('L', 'H', 12) :     0 :               -0.0 :     1 : False : False : Binary
        ('L', 'H', 13) :     0 :                0.0 :     1 : False : False : Binary
         ('L', 'I', 0) :     0 :                0.0 :     1 : False : False : Binary
         ('L', 'I', 1) :     0 :                1.0 :     1 : False : False : Binary
         ('L', 'I', 2) :     0 :                1.0 :     1 : False : False : Binary
         ('L', 'I', 3) :     0 :                1.0 :     1 : False : False : Binary
         ('L', 'I', 4) :     0 :                1.0 :     1 : False : False : Binary
         ('L', 'I', 5) :     0 :               -0.0 :     1 : False : False : Binary
         ('L', 'I', 6) :     0 :                0.0 :     1 : False : False : Binary
         ('L', 'I', 7) :     0 :               -0.0 :     1 : False : False : Binary
         ('L', 'I', 8) :     0 :                1.0 :     1 : False : False : Binary
         ('L', 'I', 9) :     0 :                1.0 :     1 : False : False : Binary
        ('L', 'I', 10) :     0 :               -0.0 :     1 : False : False : Binary
        ('L', 'I', 11) :     0 :               -0.0 :     1 : False : False : Binary
        ('L', 'I', 12) :     0 :               -0.0 :     1 : False : False : Binary
        ('L', 'I', 13) :     0 :                1.0 :     1 : False : False : Binary
         ('L', 'J', 0) :     0 :                1.0 :     1 : False : False : Binary
         ('L', 'J', 1) :     0 :                1.0 :     1 : False : False : Binary
         ('L', 'J', 2) :     0 :                1.0 :     1 : False : False : Binary
         ('L', 'J', 3) :     0 : 0.9999999999999939 :     1 : False : False : Binary
         ('L', 'J', 4) :     0 :                1.0 :     1 : False : False : Binary
         ('L', 'J', 5) :     0 :                0.0 :     1 : False : False : Binary
         ('L', 'J', 6) :     0 :                0.0 :     1 : False : False : Binary
         ('L', 'J', 7) :     0 :               -0.0 :     1 : False : False : Binary
         ('L', 'J', 8) :     0 :                0.0 :     1 : False : False : Binary
         ('L', 'J', 9) :     0 :               -0.0 :     1 : False : False : Binary
        ('L', 'J', 10) :     0 :                0.0 :     1 : False : False : Binary
        ('L', 'J', 11) :     0 :                1.0 :     1 : False : False : Binary
        ('L', 'J', 12) :     0 :                1.0 :     1 : False : False : Binary
        ('L', 'J', 13) :     0 :                1.0 :     1 : False : False : Binary
         ('L', 'K', 0) :     0 :                0.0 :     1 : False : False : Binary
         ('L', 'K', 1) :     0 :               -0.0 :     1 : False : False : Binary
         ('L', 'K', 2) :     0 :                1.0 :     1 : False : False : Binary
         ('L', 'K', 3) :     0 :               -0.0 :     1 : False : False : Binary
         ('L', 'K', 4) :     0 :               -0.0 :     1 : False : False : Binary
         ('L', 'K', 5) :     0 :                0.0 :     1 : False : False : Binary
         ('L', 'K', 6) :     0 :                0.0 :     1 : False : False : Binary
         ('L', 'K', 7) :     0 :               -0.0 :     1 : False : False : Binary
         ('L', 'K', 8) :     0 :                1.0 :     1 : False : False : Binary
         ('L', 'K', 9) :     0 :               -0.0 :     1 : False : False : Binary
        ('L', 'K', 10) :     0 :               -0.0 :     1 : False : False : Binary
        ('L', 'K', 11) :     0 :               -0.0 :     1 : False : False : Binary
        ('L', 'K', 12) :     0 :                1.0 :     1 : False : False : Binary
        ('L', 'K', 13) :     0 :                1.0 :     1 : False : False : Binary
         ('L', 'L', 0) :     0 : 0.9999999999999982 :     1 : False : False : Binary
         ('L', 'L', 1) :     0 :               -0.0 :     1 : False : False : Binary
         ('L', 'L', 2) :     0 :                0.0 :     1 : False : False : Binary
         ('L', 'L', 3) :     0 :                0.0 :     1 : False : False : Binary
         ('L', 'L', 4) :     0 :               -0.0 :     1 : False : False : Binary
         ('L', 'L', 5) :     0 :                0.0 :     1 : False : False : Binary
         ('L', 'L', 6) :     0 :                0.0 :     1 : False : False : Binary
         ('L', 'L', 7) :     0 :                0.0 :     1 : False : False : Binary
         ('L', 'L', 8) :     0 :                0.0 :     1 : False : False : Binary
         ('L', 'L', 9) :     0 :                0.0 :     1 : False : False : Binary
        ('L', 'L', 10) :     0 :                1.0 :     1 : False : False : Binary
        ('L', 'L', 11) :     0 :                0.0 :     1 : False : False : Binary
        ('L', 'L', 12) :     0 :                1.0 :     1 : False : False : Binary
        ('L', 'L', 13) :     0 :                1.0 :     1 : False : False : Binary
         ('L', 'M', 0) :     0 :                0.0 :     1 : False : False : Binary
         ('L', 'M', 1) :     0 :                1.0 :     1 : False : False : Binary
         ('L', 'M', 2) :     0 :               -0.0 :     1 : False : False : Binary
         ('L', 'M', 3) :     0 :               -0.0 :     1 : False : False : Binary
         ('L', 'M', 4) :     0 :               -0.0 :     1 : False : False : Binary
         ('L', 'M', 5) :     0 :                1.0 :     1 : False : False : Binary
         ('L', 'M', 6) :     0 :                1.0 :     1 : False : False : Binary
         ('L', 'M', 7) :     0 :               -0.0 :     1 : False : False : Binary
         ('L', 'M', 8) :     0 :                0.0 :     1 : False : False : Binary
         ('L', 'M', 9) :     0 :               -0.0 :     1 : False : False : Binary
        ('L', 'M', 10) :     0 :               -0.0 :     1 : False : False : Binary
        ('L', 'M', 11) :     0 :               -0.0 :     1 : False : False : Binary
        ('L', 'M', 12) :     0 :               -0.0 :     1 : False : False : Binary
        ('L', 'M', 13) :     0 :                0.0 :     1 : False : False : Binary
         ('L', 'N', 0) :     0 :               -0.0 :     1 : False : False : Binary
         ('L', 'N', 1) :     0 :               -0.0 :     1 : False : False : Binary
         ('L', 'N', 2) :     0 :               -0.0 :     1 : False : False : Binary
         ('L', 'N', 3) :     0 :               -0.0 :     1 : False : False : Binary
         ('L', 'N', 4) :     0 :               -0.0 :     1 : False : False : Binary
         ('L', 'N', 5) :     0 :               -0.0 :     1 : False : False : Binary
         ('L', 'N', 6) :     0 :                0.0 :     1 : False : False : Binary
         ('L', 'N', 7) :     0 :               -0.0 :     1 : False : False : Binary
         ('L', 'N', 8) :     0 :               -0.0 :     1 : False : False : Binary
         ('L', 'N', 9) :     0 :               -0.0 :     1 : False : False : Binary
        ('L', 'N', 10) :     0 :               -0.0 :     1 : False : False : Binary
        ('L', 'N', 11) :     0 :               -0.0 :     1 : False : False : Binary
        ('L', 'N', 12) :     0 :               -0.0 :     1 : False : False : Binary
        ('L', 'N', 13) :     0 :                0.0 :     1 : False : False : Binary
    IsRest : Size=196, Index=NURSES*DAYS
        Key       : Lower : Value                  : Upper : Fixed : Stale : Domain
         ('A', 0) :     0 :                   -0.0 :     1 : False : False : Binary
         ('A', 1) :     0 :                   -0.0 :     1 : False : False : Binary
         ('A', 2) :     0 :                    0.0 :     1 : False : False : Binary
         ('A', 3) :     0 :                    1.0 :     1 : False : False : Binary
         ('A', 4) :     0 :                    1.0 :     1 : False : False : Binary
         ('A', 5) :     0 :                   -0.0 :     1 : False : False : Binary
         ('A', 6) :     0 :                    0.0 :     1 : False : False : Binary
         ('A', 7) :     0 :                    0.0 :     1 : False : False : Binary
         ('A', 8) :     0 :                   -0.0 :     1 : False : False : Binary
         ('A', 9) :     0 :                    0.0 :     1 : False : False : Binary
        ('A', 10) :     0 :                    1.0 :     1 : False : False : Binary
        ('A', 11) :     0 :                    1.0 :     1 : False : False : Binary
        ('A', 12) :     0 :                    1.0 :     1 : False : False : Binary
        ('A', 13) :     0 :                    1.0 :     1 : False : False : Binary
         ('B', 0) :     0 :                    1.0 :     1 : False : False : Binary
         ('B', 1) :     0 :                    1.0 :     1 : False : False : Binary
         ('B', 2) :     0 :                    0.0 :     1 : False : False : Binary
         ('B', 3) :     0 :                    0.0 :     1 : False : False : Binary
         ('B', 4) :     0 :                    0.0 :     1 : False : False : Binary
         ('B', 5) :     0 :                    1.0 :     1 : False : False : Binary
         ('B', 6) :     0 :                    1.0 :     1 : False : False : Binary
         ('B', 7) :     0 :                    0.0 :     1 : False : False : Binary
         ('B', 8) :     0 :                   -0.0 :     1 : False : False : Binary
         ('B', 9) :     0 :                    0.0 :     1 : False : False : Binary
        ('B', 10) :     0 :     0.9999999999999956 :     1 : False : False : Binary
        ('B', 11) :     0 :     0.9999999999999956 :     1 : False : False : Binary
        ('B', 12) :     0 :                    0.0 :     1 : False : False : Binary
        ('B', 13) :     0 :                    0.0 :     1 : False : False : Binary
         ('C', 0) :     0 :                   -0.0 :     1 : False : False : Binary
         ('C', 1) :     0 :                    1.0 :     1 : False : False : Binary
         ('C', 2) :     0 :                    1.0 :     1 : False : False : Binary
         ('C', 3) :     0 :                    0.0 :     1 : False : False : Binary
         ('C', 4) :     0 :                    0.0 :     1 : False : False : Binary
         ('C', 5) :     0 :                   -0.0 :     1 : False : False : Binary
         ('C', 6) :     0 :                    0.0 :     1 : False : False : Binary
         ('C', 7) :     0 :                    1.0 :     1 : False : False : Binary
         ('C', 8) :     0 :                    1.0 :     1 : False : False : Binary
         ('C', 9) :     0 :                    0.0 :     1 : False : False : Binary
        ('C', 10) :     0 :                    0.0 :     1 : False : False : Binary
        ('C', 11) :     0 :                    0.0 :     1 : False : False : Binary
        ('C', 12) :     0 :                    1.0 :     1 : False : False : Binary
        ('C', 13) :     0 :                    1.0 :     1 : False : False : Binary
         ('D', 0) :     0 :                    0.0 :     1 : False : False : Binary
         ('D', 1) :     0 :                   -0.0 :     1 : False : False : Binary
         ('D', 2) :     0 :                   -0.0 :     1 : False : False : Binary
         ('D', 3) :     0 :                    0.0 :     1 : False : False : Binary
         ('D', 4) :     0 :                    0.0 :     1 : False : False : Binary
         ('D', 5) :     0 :                    1.0 :     1 : False : False : Binary
         ('D', 6) :     0 :                    1.0 :     1 : False : False : Binary
         ('D', 7) :     0 :                    1.0 :     1 : False : False : Binary
         ('D', 8) :     0 :                    0.0 :     1 : False : False : Binary
         ('D', 9) :     0 :                   -0.0 :     1 : False : False : Binary
        ('D', 10) :     0 :                   -0.0 :     1 : False : False : Binary
        ('D', 11) :     0 :                    1.0 :     1 : False : False : Binary
        ('D', 12) :     0 :                    1.0 :     1 : False : False : Binary
        ('D', 13) :     0 :                    0.0 :     1 : False : False : Binary
         ('E', 0) :     0 :                    0.0 :     1 : False : False : Binary
         ('E', 1) :     0 :                    1.0 :     1 : False : False : Binary
         ('E', 2) :     0 :                    1.0 :     1 : False : False : Binary
         ('E', 3) :     0 :                   -0.0 :     1 : False : False : Binary
         ('E', 4) :     0 :                   -0.0 :     1 : False : False : Binary
         ('E', 5) :     0 :                    0.0 :     1 : False : False : Binary
         ('E', 6) :     0 :                    0.0 :     1 : False : False : Binary
         ('E', 7) :     0 :                    1.0 :     1 : False : False : Binary
         ('E', 8) :     0 :                    1.0 :     1 : False : False : Binary
         ('E', 9) :     0 :                    0.0 :     1 : False : False : Binary
        ('E', 10) :     0 :                    0.0 :     1 : False : False : Binary
        ('E', 11) :     0 :                   -0.0 :     1 : False : False : Binary
        ('E', 12) :     0 :                    1.0 :     1 : False : False : Binary
        ('E', 13) :     0 :                    1.0 :     1 : False : False : Binary
         ('F', 0) :     0 :                    1.0 :     1 : False : False : Binary
         ('F', 1) :     0 :                    1.0 :     1 : False : False : Binary
         ('F', 2) :     0 :                    0.0 :     1 : False : False : Binary
         ('F', 3) :     0 :                    0.0 :     1 : False : False : Binary
         ('F', 4) :     0 :                   -0.0 :     1 : False : False : Binary
         ('F', 5) :     0 :                   -0.0 :     1 : False : False : Binary
         ('F', 6) :     0 :                   -0.0 :     1 : False : False : Binary
         ('F', 7) :     0 :                    1.0 :     1 : False : False : Binary
         ('F', 8) :     0 :                    1.0 :     1 : False : False : Binary
         ('F', 9) :     0 :                   -0.0 :     1 : False : False : Binary
        ('F', 10) :     0 :                    0.0 :     1 : False : False : Binary
        ('F', 11) :     0 :                    0.0 :     1 : False : False : Binary
        ('F', 12) :     0 :                    1.0 :     1 : False : False : Binary
        ('F', 13) :     0 :                    1.0 :     1 : False : False : Binary
         ('G', 0) :     0 :                   -0.0 :     1 : False : False : Binary
         ('G', 1) :     0 :                   -0.0 :     1 : False : False : Binary
         ('G', 2) :     0 :                   -0.0 :     1 : False : False : Binary
         ('G', 3) :     0 :                    0.0 :     1 : False : False : Binary
         ('G', 4) :     0 :                    1.0 :     1 : False : False : Binary
         ('G', 5) :     0 :                    1.0 :     1 : False : False : Binary
         ('G', 6) :     0 :                    1.0 :     1 : False : False : Binary
         ('G', 7) :     0 :                    0.0 :     1 : False : False : Binary
         ('G', 8) :     0 :                    0.0 :     1 : False : False : Binary
         ('G', 9) :     0 :                    1.0 :     1 : False : False : Binary
        ('G', 10) :     0 :                    1.0 :     1 : False : False : Binary
        ('G', 11) :     0 :                    0.0 :     1 : False : False : Binary
        ('G', 12) :     0 :                    0.0 :     1 : False : False : Binary
        ('G', 13) :     0 :                    0.0 :     1 : False : False : Binary
         ('H', 0) :     0 :                   -0.0 :     1 : False : False : Binary
         ('H', 1) :     0 :                   -0.0 :     1 : False : False : Binary
         ('H', 2) :     0 :                    0.0 :     1 : False : False : Binary
         ('H', 3) :     0 :                    1.0 :     1 : False : False : Binary
         ('H', 4) :     0 :                    1.0 :     1 : False : False : Binary
         ('H', 5) :     0 :                    0.0 :     1 : False : False : Binary
         ('H', 6) :     0 :                    0.0 :     1 : False : False : Binary
         ('H', 7) :     0 :                    0.0 :     1 : False : False : Binary
         ('H', 8) :     0 :                   -0.0 :     1 : False : False : Binary
         ('H', 9) :     0 :                    0.0 :     1 : False : False : Binary
        ('H', 10) :     0 :                    1.0 :     1 : False : False : Binary
        ('H', 11) :     0 :                    1.0 :     1 : False : False : Binary
        ('H', 12) :     0 :                    1.0 :     1 : False : False : Binary
        ('H', 13) :     0 :                    1.0 :     1 : False : False : Binary
         ('I', 0) :     0 :                    1.0 :     1 : False : False : Binary
         ('I', 1) :     0 :                    0.0 :     1 : False : False : Binary
         ('I', 2) :     0 :                   -0.0 :     1 : False : False : Binary
         ('I', 3) :     0 :                    0.0 :     1 : False : False : Binary
         ('I', 4) :     0 :                    0.0 :     1 : False : False : Binary
         ('I', 5) :     0 :                    1.0 :     1 : False : False : Binary
         ('I', 6) :     0 :                    1.0 :     1 : False : False : Binary
         ('I', 7) :     0 :                    0.0 :     1 : False : False : Binary
         ('I', 8) :     0 :                   -0.0 :     1 : False : False : Binary
         ('I', 9) :     0 :                   -0.0 :     1 : False : False : Binary
        ('I', 10) :     0 :                    1.0 :     1 : False : False : Binary
        ('I', 11) :     0 :                    1.0 :     1 : False : False : Binary
        ('I', 12) :     0 :                    0.0 :     1 : False : False : Binary
        ('I', 13) :     0 :                    0.0 :     1 : False : False : Binary
         ('J', 0) :     0 :                   -0.0 :     1 : False : False : Binary
         ('J', 1) :     0 :                   -0.0 :     1 : False : False : Binary
         ('J', 2) :     0 :                    0.0 :     1 : False : False : Binary
         ('J', 3) :     0 :                   -0.0 :     1 : False : False : Binary
         ('J', 4) :     0 :                    0.0 :     1 : False : False : Binary
         ('J', 5) :     0 :                    1.0 :     1 : False : False : Binary
         ('J', 6) :     0 :                    1.0 :     1 : False : False : Binary
         ('J', 7) :     0 :                    1.0 :     1 : False : False : Binary
         ('J', 8) :     0 :                    1.0 :     1 : False : False : Binary
         ('J', 9) :     0 :                    1.0 :     1 : False : False : Binary
        ('J', 10) :     0 :                   -0.0 :     1 : False : False : Binary
        ('J', 11) :     0 :                   -0.0 :     1 : False : False : Binary
        ('J', 12) :     0 :                    0.0 :     1 : False : False : Binary
        ('J', 13) :     0 :                    0.0 :     1 : False : False : Binary
         ('K', 0) :     0 :                    1.0 :     1 : False : False : Binary
         ('K', 1) :     0 :                    1.0 :     1 : False : False : Binary
         ('K', 2) :     0 :                    0.0 :     1 : False : False : Binary
         ('K', 3) :     0 :                    1.0 :     1 : False : False : Binary
         ('K', 4) :     0 :                    1.0 :     1 : False : False : Binary
         ('K', 5) :     0 :                    1.0 :     1 : False : False : Binary
         ('K', 6) :     0 :                    1.0 :     1 : False : False : Binary
         ('K', 7) :     0 :                    1.0 :     1 : False : False : Binary
         ('K', 8) :     0 :                    0.0 :     1 : False : False : Binary
         ('K', 9) :     0 :                    1.0 :     1 : False : False : Binary
        ('K', 10) :     0 :                    1.0 :     1 : False : False : Binary
        ('K', 11) :     0 :                    1.0 :     1 : False : False : Binary
        ('K', 12) :     0 :                    0.0 :     1 : False : False : Binary
        ('K', 13) :     0 :                    0.0 :     1 : False : False : Binary
         ('L', 0) :     0 : 1.7763568394002505e-15 :     1 : False : False : Binary
         ('L', 1) :     0 :                    1.0 :     1 : False : False : Binary
         ('L', 2) :     0 :                    1.0 :     1 : False : False : Binary
         ('L', 3) :     0 :                    1.0 :     1 : False : False : Binary
         ('L', 4) :     0 :                    1.0 :     1 : False : False : Binary
         ('L', 5) :     0 :                    1.0 :     1 : False : False : Binary
         ('L', 6) :     0 :                    1.0 :     1 : False : False : Binary
         ('L', 7) :     0 :                    1.0 :     1 : False : False : Binary
         ('L', 8) :     0 :                    1.0 :     1 : False : False : Binary
         ('L', 9) :     0 :                    1.0 :     1 : False : False : Binary
        ('L', 10) :     0 :                   -0.0 :     1 : False : False : Binary
        ('L', 11) :     0 :                    1.0 :     1 : False : False : Binary
        ('L', 12) :     0 :                    0.0 :     1 : False : False : Binary
        ('L', 13) :     0 :                    0.0 :     1 : False : False : Binary
         ('M', 0) :     0 :                    1.0 :     1 : False : False : Binary
         ('M', 1) :     0 :                    0.0 :     1 : False : False : Binary
         ('M', 2) :     0 :                    1.0 :     1 : False : False : Binary
         ('M', 3) :     0 :                   -0.0 :     1 : False : False : Binary
         ('M', 4) :     0 :                    1.0 :     1 : False : False : Binary
         ('M', 5) :     0 :                    0.0 :     1 : False : False : Binary
         ('M', 6) :     0 :                   -0.0 :     1 : False : False : Binary
         ('M', 7) :     0 :                    1.0 :     1 : False : False : Binary
         ('M', 8) :     0 :                    1.0 :     1 : False : False : Binary
         ('M', 9) :     0 :                    1.0 :     1 : False : False : Binary
        ('M', 10) :     0 :                    1.0 :     1 : False : False : Binary
        ('M', 11) :     0 :                    1.0 :     1 : False : False : Binary
        ('M', 12) :     0 :                    1.0 :     1 : False : False : Binary
        ('M', 13) :     0 :                    1.0 :     1 : False : False : Binary
         ('N', 0) :     0 :                    1.0 :     1 : False : False : Binary
         ('N', 1) :     0 :                    1.0 :     1 : False : False : Binary
         ('N', 2) :     0 :                    1.0 :     1 : False : False : Binary
         ('N', 3) :     0 :                    1.0 :     1 : False : False : Binary
         ('N', 4) :     0 :                    1.0 :     1 : False : False : Binary
         ('N', 5) :     0 :                    1.0 :     1 : False : False : Binary
         ('N', 6) :     0 :                    1.0 :     1 : False : False : Binary
         ('N', 7) :     0 :                    1.0 :     1 : False : False : Binary
         ('N', 8) :     0 :                   -0.0 :     1 : False : False : Binary
         ('N', 9) :     0 :                    1.0 :     1 : False : False : Binary
        ('N', 10) :     0 :                    0.0 :     1 : False : False : Binary
        ('N', 11) :     0 :                    1.0 :     1 : False : False : Binary
        ('N', 12) :     0 :                   -0.0 :     1 : False : False : Binary
        ('N', 13) :     0 :                    0.0 :     1 : False : False : Binary
    IsEndOfWorkBlock : Size=196, Index=NURSES*DAYS
        Key       : Lower : Value                 : Upper : Fixed : Stale : Domain
         ('A', 0) :     0 :                   1.0 :     1 : False : False : Binary
         ('A', 1) :     0 :                   1.0 :     1 : False : False : Binary
         ('A', 2) :     0 :                   1.0 :     1 : False : False : Binary
         ('A', 3) :     0 :                   1.0 :     1 : False : False : Binary
         ('A', 4) :     0 :                   0.0 :     1 : False : False : Binary
         ('A', 5) :     0 :                   0.0 :     1 : False : False : Binary
         ('A', 6) :     0 :                   1.0 :     1 : False : False : Binary
         ('A', 7) :     0 :                   1.0 :     1 : False : False : Binary
         ('A', 8) :     0 :                   1.0 :     1 : False : False : Binary
         ('A', 9) :     0 :                   1.0 :     1 : False : False : Binary
        ('A', 10) :     0 :                   1.0 :     1 : False : False : Binary
        ('A', 11) :     0 :                   0.0 :     1 : False : False : Binary
        ('A', 12) :     0 :                   0.0 :     1 : False : False : Binary
        ('A', 13) :     0 :                   0.0 :     1 : False : False : Binary
         ('B', 0) :     0 :                   1.0 :     1 : False : False : Binary
         ('B', 1) :     0 :                   0.0 :     1 : False : False : Binary
         ('B', 2) :     0 :                   0.0 :     1 : False : False : Binary
         ('B', 3) :     0 :                   1.0 :     1 : False : False : Binary
         ('B', 4) :     0 :                   1.0 :     1 : False : False : Binary
         ('B', 5) :     0 :                   1.0 :     1 : False : False : Binary
         ('B', 6) :     0 :                   0.0 :     1 : False : False : Binary
         ('B', 7) :     0 :                   0.0 :     1 : False : False : Binary
         ('B', 8) :     0 :                   1.0 :     1 : False : False : Binary
         ('B', 9) :     0 :                   1.0 :     1 : False : False : Binary
        ('B', 10) :     0 :                   1.0 :     1 : False : False : Binary
        ('B', 11) :     0 : 4.440892098500626e-15 :     1 : False : False : Binary
        ('B', 12) :     0 : 4.440892098500626e-15 :     1 : False : False : Binary
        ('B', 13) :     0 :                   0.0 :     1 : False : False : Binary
         ('C', 0) :     0 :                   1.0 :     1 : False : False : Binary
         ('C', 1) :     0 :                   1.0 :     1 : False : False : Binary
         ('C', 2) :     0 :                   0.0 :     1 : False : False : Binary
         ('C', 3) :     0 :                   0.0 :     1 : False : False : Binary
         ('C', 4) :     0 :                   1.0 :     1 : False : False : Binary
         ('C', 5) :     0 :                   1.0 :     1 : False : False : Binary
         ('C', 6) :     0 :                   1.0 :     1 : False : False : Binary
         ('C', 7) :     0 :                   1.0 :     1 : False : False : Binary
         ('C', 8) :     0 :                   0.0 :     1 : False : False : Binary
         ('C', 9) :     0 :                   0.0 :     1 : False : False : Binary
        ('C', 10) :     0 :                   1.0 :     1 : False : False : Binary
        ('C', 11) :     0 :                   1.0 :     1 : False : False : Binary
        ('C', 12) :     0 :                   1.0 :     1 : False : False : Binary
        ('C', 13) :     0 :                   0.0 :     1 : False : False : Binary
         ('D', 0) :     0 :                   1.0 :     1 : False : False : Binary
         ('D', 1) :     0 :                   1.0 :     1 : False : False : Binary
         ('D', 2) :     0 :                   1.0 :     1 : False : False : Binary
         ('D', 3) :     0 :                   1.0 :     1 : False : False : Binary
         ('D', 4) :     0 :                   1.0 :     1 : False : False : Binary
         ('D', 5) :     0 :                   1.0 :     1 : False : False : Binary
         ('D', 6) :     0 :                   0.0 :     1 : False : False : Binary
         ('D', 7) :     0 :                   0.0 :     1 : False : False : Binary
         ('D', 8) :     0 :                   0.0 :     1 : False : False : Binary
         ('D', 9) :     0 :                   1.0 :     1 : False : False : Binary
        ('D', 10) :     0 :                   1.0 :     1 : False : False : Binary
        ('D', 11) :     0 :                   1.0 :     1 : False : False : Binary
        ('D', 12) :     0 :                   0.0 :     1 : False : False : Binary
        ('D', 13) :     0 :                   0.0 :     1 : False : False : Binary
         ('E', 0) :     0 :                   1.0 :     1 : False : False : Binary
         ('E', 1) :     0 :                   1.0 :     1 : False : False : Binary
         ('E', 2) :     0 :                   0.0 :     1 : False : False : Binary
         ('E', 3) :     0 :                   0.0 :     1 : False : False : Binary
         ('E', 4) :     0 :                   1.0 :     1 : False : False : Binary
         ('E', 5) :     0 :                   1.0 :     1 : False : False : Binary
         ('E', 6) :     0 :                   1.0 :     1 : False : False : Binary
         ('E', 7) :     0 :                   1.0 :     1 : False : False : Binary
         ('E', 8) :     0 :                   0.0 :     1 : False : False : Binary
         ('E', 9) :     0 :                   0.0 :     1 : False : False : Binary
        ('E', 10) :     0 :                   1.0 :     1 : False : False : Binary
        ('E', 11) :     0 :                   1.0 :     1 : False : False : Binary
        ('E', 12) :     0 :                   1.0 :     1 : False : False : Binary
        ('E', 13) :     0 :                   0.0 :     1 : False : False : Binary
         ('F', 0) :     0 :                   1.0 :     1 : False : False : Binary
         ('F', 1) :     0 :                   0.0 :     1 : False : False : Binary
         ('F', 2) :     0 :                   0.0 :     1 : False : False : Binary
         ('F', 3) :     0 :                   1.0 :     1 : False : False : Binary
         ('F', 4) :     0 :                   1.0 :     1 : False : False : Binary
         ('F', 5) :     0 :                   1.0 :     1 : False : False : Binary
         ('F', 6) :     0 :                   1.0 :     1 : False : False : Binary
         ('F', 7) :     0 :                   1.0 :     1 : False : False : Binary
         ('F', 8) :     0 :                   0.0 :     1 : False : False : Binary
         ('F', 9) :     0 :                   0.0 :     1 : False : False : Binary
        ('F', 10) :     0 :                   1.0 :     1 : False : False : Binary
        ('F', 11) :     0 :                   1.0 :     1 : False : False : Binary
        ('F', 12) :     0 :                   1.0 :     1 : False : False : Binary
        ('F', 13) :     0 :                   0.0 :     1 : False : False : Binary
         ('G', 0) :     0 :                   1.0 :     1 : False : False : Binary
         ('G', 1) :     0 :                   1.0 :     1 : False : False : Binary
         ('G', 2) :     0 :                   1.0 :     1 : False : False : Binary
         ('G', 3) :     0 :                   1.0 :     1 : False : False : Binary
         ('G', 4) :     0 :                   1.0 :     1 : False : False : Binary
         ('G', 5) :     0 :                   0.0 :     1 : False : False : Binary
         ('G', 6) :     0 :                   0.0 :     1 : False : False : Binary
         ('G', 7) :     0 :                   0.0 :     1 : False : False : Binary
         ('G', 8) :     0 :                   1.0 :     1 : False : False : Binary
         ('G', 9) :     0 :                   1.0 :     1 : False : False : Binary
        ('G', 10) :     0 :                   0.0 :     1 : False : False : Binary
        ('G', 11) :     0 :                   0.0 :     1 : False : False : Binary
        ('G', 12) :     0 :                   1.0 :     1 : False : False : Binary
        ('G', 13) :     0 :                   0.0 :     1 : False : False : Binary
         ('H', 0) :     0 :                   1.0 :     1 : False : False : Binary
         ('H', 1) :     0 :                   1.0 :     1 : False : False : Binary
         ('H', 2) :     0 :                   1.0 :     1 : False : False : Binary
         ('H', 3) :     0 :                   1.0 :     1 : False : False : Binary
         ('H', 4) :     0 :                   0.0 :     1 : False : False : Binary
         ('H', 5) :     0 :                   0.0 :     1 : False : False : Binary
         ('H', 6) :     0 :                   1.0 :     1 : False : False : Binary
         ('H', 7) :     0 :                   1.0 :     1 : False : False : Binary
         ('H', 8) :     0 :                   1.0 :     1 : False : False : Binary
         ('H', 9) :     0 :                   1.0 :     1 : False : False : Binary
        ('H', 10) :     0 :                   1.0 :     1 : False : False : Binary
        ('H', 11) :     0 :                   0.0 :     1 : False : False : Binary
        ('H', 12) :     0 :                   0.0 :     1 : False : False : Binary
        ('H', 13) :     0 :                   0.0 :     1 : False : False : Binary
         ('I', 0) :     0 :                   1.0 :     1 : False : False : Binary
         ('I', 1) :     0 :                   0.0 :     1 : False : False : Binary
         ('I', 2) :     0 :                   1.0 :     1 : False : False : Binary
         ('I', 3) :     0 :                   1.0 :     1 : False : False : Binary
         ('I', 4) :     0 :                   1.0 :     1 : False : False : Binary
         ('I', 5) :     0 :                   1.0 :     1 : False : False : Binary
         ('I', 6) :     0 :                   0.0 :     1 : False : False : Binary
         ('I', 7) :     0 :                   0.0 :     1 : False : False : Binary
         ('I', 8) :     0 :                   1.0 :     1 : False : False : Binary
         ('I', 9) :     0 :                   1.0 :     1 : False : False : Binary
        ('I', 10) :     0 :                   1.0 :     1 : False : False : Binary
        ('I', 11) :     0 :                   0.0 :     1 : False : False : Binary
        ('I', 12) :     0 :                   0.0 :     1 : False : False : Binary
        ('I', 13) :     0 :                   0.0 :     1 : False : False : Binary
         ('J', 0) :     0 :                   1.0 :     1 : False : False : Binary
         ('J', 1) :     0 :                   1.0 :     1 : False : False : Binary
         ('J', 2) :     0 :                   1.0 :     1 : False : False : Binary
         ('J', 3) :     0 :                   1.0 :     1 : False : False : Binary
         ('J', 4) :     0 :                   1.0 :     1 : False : False : Binary
         ('J', 5) :     0 :                   1.0 :     1 : False : False : Binary
         ('J', 6) :     0 :                   0.0 :     1 : False : False : Binary
         ('J', 7) :     0 :                   0.0 :     1 : False : False : Binary
         ('J', 8) :     0 :                   0.0 :     1 : False : False : Binary
         ('J', 9) :     0 :                   0.0 :     1 : False : False : Binary
        ('J', 10) :     0 :                   0.0 :     1 : False : False : Binary
        ('J', 11) :     0 :                   1.0 :     1 : False : False : Binary
        ('J', 12) :     0 :                   1.0 :     1 : False : False : Binary
        ('J', 13) :     0 :                   0.0 :     1 : False : False : Binary
         ('K', 0) :     0 :                  None :     1 : False :  True : Binary
         ('K', 1) :     0 :                  None :     1 : False :  True : Binary
         ('K', 2) :     0 :                  None :     1 : False :  True : Binary
         ('K', 3) :     0 :                  None :     1 : False :  True : Binary
         ('K', 4) :     0 :                  None :     1 : False :  True : Binary
         ('K', 5) :     0 :                  None :     1 : False :  True : Binary
         ('K', 6) :     0 :                  None :     1 : False :  True : Binary
         ('K', 7) :     0 :                  None :     1 : False :  True : Binary
         ('K', 8) :     0 :                  None :     1 : False :  True : Binary
         ('K', 9) :     0 :                  None :     1 : False :  True : Binary
        ('K', 10) :     0 :                  None :     1 : False :  True : Binary
        ('K', 11) :     0 :                  None :     1 : False :  True : Binary
        ('K', 12) :     0 :                  None :     1 : False :  True : Binary
        ('K', 13) :     0 :                  None :     1 : False :  True : Binary
         ('L', 0) :     0 :                  None :     1 : False :  True : Binary
         ('L', 1) :     0 :                  None :     1 : False :  True : Binary
         ('L', 2) :     0 :                  None :     1 : False :  True : Binary
         ('L', 3) :     0 :                  None :     1 : False :  True : Binary
         ('L', 4) :     0 :                  None :     1 : False :  True : Binary
         ('L', 5) :     0 :                  None :     1 : False :  True : Binary
         ('L', 6) :     0 :                  None :     1 : False :  True : Binary
         ('L', 7) :     0 :                  None :     1 : False :  True : Binary
         ('L', 8) :     0 :                  None :     1 : False :  True : Binary
         ('L', 9) :     0 :                  None :     1 : False :  True : Binary
        ('L', 10) :     0 :                  None :     1 : False :  True : Binary
        ('L', 11) :     0 :                  None :     1 : False :  True : Binary
        ('L', 12) :     0 :                  None :     1 : False :  True : Binary
        ('L', 13) :     0 :                  None :     1 : False :  True : Binary
         ('M', 0) :     0 :                  None :     1 : False :  True : Binary
         ('M', 1) :     0 :                  None :     1 : False :  True : Binary
         ('M', 2) :     0 :                  None :     1 : False :  True : Binary
         ('M', 3) :     0 :                  None :     1 : False :  True : Binary
         ('M', 4) :     0 :                  None :     1 : False :  True : Binary
         ('M', 5) :     0 :                  None :     1 : False :  True : Binary
         ('M', 6) :     0 :                  None :     1 : False :  True : Binary
         ('M', 7) :     0 :                  None :     1 : False :  True : Binary
         ('M', 8) :     0 :                  None :     1 : False :  True : Binary
         ('M', 9) :     0 :                  None :     1 : False :  True : Binary
        ('M', 10) :     0 :                  None :     1 : False :  True : Binary
        ('M', 11) :     0 :                  None :     1 : False :  True : Binary
        ('M', 12) :     0 :                  None :     1 : False :  True : Binary
        ('M', 13) :     0 :                  None :     1 : False :  True : Binary
         ('N', 0) :     0 :                  None :     1 : False :  True : Binary
         ('N', 1) :     0 :                  None :     1 : False :  True : Binary
         ('N', 2) :     0 :                  None :     1 : False :  True : Binary
         ('N', 3) :     0 :                  None :     1 : False :  True : Binary
         ('N', 4) :     0 :                  None :     1 : False :  True : Binary
         ('N', 5) :     0 :                  None :     1 : False :  True : Binary
         ('N', 6) :     0 :                  None :     1 : False :  True : Binary
         ('N', 7) :     0 :                  None :     1 : False :  True : Binary
         ('N', 8) :     0 :                  None :     1 : False :  True : Binary
         ('N', 9) :     0 :                  None :     1 : False :  True : Binary
        ('N', 10) :     0 :                  None :     1 : False :  True : Binary
        ('N', 11) :     0 :                  None :     1 : False :  True : Binary
        ('N', 12) :     0 :                  None :     1 : False :  True : Binary
        ('N', 13) :     0 :                  None :     1 : False :  True : Binary
    IsEndOfRestBlock : Size=196, Index=NURSES*DAYS
        Key       : Lower : Value              : Upper : Fixed : Stale : Domain
         ('A', 0) :     0 :                1.0 :     1 : False : False : Binary
         ('A', 1) :     0 :                0.0 :     1 : False : False : Binary
         ('A', 2) :     0 :                0.0 :     1 : False : False : Binary
         ('A', 3) :     0 :                0.0 :     1 : False : False : Binary
         ('A', 4) :     0 :                1.0 :     1 : False : False : Binary
         ('A', 5) :     0 :                1.0 :     1 : False : False : Binary
         ('A', 6) :     0 :                0.0 :     1 : False : False : Binary
         ('A', 7) :     0 :                0.0 :     1 : False : False : Binary
         ('A', 8) :     0 :                0.0 :     1 : False : False : Binary
         ('A', 9) :     0 :                0.0 :     1 : False : False : Binary
        ('A', 10) :     0 :                0.0 :     1 : False : False : Binary
        ('A', 11) :     0 :                1.0 :     1 : False : False : Binary
        ('A', 12) :     0 :                1.0 :     1 : False : False : Binary
        ('A', 13) :     0 :                0.0 :     1 : False : False : Binary
         ('B', 0) :     0 :                1.0 :     1 : False : False : Binary
         ('B', 1) :     0 :                1.0 :     1 : False : False : Binary
         ('B', 2) :     0 :                1.0 :     1 : False : False : Binary
         ('B', 3) :     0 :                0.0 :     1 : False : False : Binary
         ('B', 4) :     0 :                0.0 :     1 : False : False : Binary
         ('B', 5) :     0 :                0.0 :     1 : False : False : Binary
         ('B', 6) :     0 :                1.0 :     1 : False : False : Binary
         ('B', 7) :     0 :                1.0 :     1 : False : False : Binary
         ('B', 8) :     0 :                0.0 :     1 : False : False : Binary
         ('B', 9) :     0 :                0.0 :     1 : False : False : Binary
        ('B', 10) :     0 :                0.0 :     1 : False : False : Binary
        ('B', 11) :     0 : 0.9999999999999956 :     1 : False : False : Binary
        ('B', 12) :     0 : 0.9999999999999956 :     1 : False : False : Binary
        ('B', 13) :     0 :                0.0 :     1 : False : False : Binary
         ('C', 0) :     0 :                1.0 :     1 : False : False : Binary
         ('C', 1) :     0 :                0.0 :     1 : False : False : Binary
         ('C', 2) :     0 :                1.0 :     1 : False : False : Binary
         ('C', 3) :     0 :                1.0 :     1 : False : False : Binary
         ('C', 4) :     0 :                0.0 :     1 : False : False : Binary
         ('C', 5) :     0 :                0.0 :     1 : False : False : Binary
         ('C', 6) :     0 :                0.0 :     1 : False : False : Binary
         ('C', 7) :     0 :                0.0 :     1 : False : False : Binary
         ('C', 8) :     0 :                1.0 :     1 : False : False : Binary
         ('C', 9) :     0 :                1.0 :     1 : False : False : Binary
        ('C', 10) :     0 :                0.0 :     1 : False : False : Binary
        ('C', 11) :     0 :                0.0 :     1 : False : False : Binary
        ('C', 12) :     0 :                0.0 :     1 : False : False : Binary
        ('C', 13) :     0 :                0.0 :     1 : False : False : Binary
         ('D', 0) :     0 :                1.0 :     1 : False : False : Binary
         ('D', 1) :     0 :                0.0 :     1 : False : False : Binary
         ('D', 2) :     0 :                0.0 :     1 : False : False : Binary
         ('D', 3) :     0 :                0.0 :     1 : False : False : Binary
         ('D', 4) :     0 :                0.0 :     1 : False : False : Binary
         ('D', 5) :     0 :                0.0 :     1 : False : False : Binary
         ('D', 6) :     0 :                1.0 :     1 : False : False : Binary
         ('D', 7) :     0 :                1.0 :     1 : False : False : Binary
         ('D', 8) :     0 :                1.0 :     1 : False : False : Binary
         ('D', 9) :     0 :                0.0 :     1 : False : False : Binary
        ('D', 10) :     0 :                0.0 :     1 : False : False : Binary
        ('D', 11) :     0 :                0.0 :     1 : False : False : Binary
        ('D', 12) :     0 :                1.0 :     1 : False : False : Binary
        ('D', 13) :     0 :                0.0 :     1 : False : False : Binary
         ('E', 0) :     0 :                1.0 :     1 : False : False : Binary
         ('E', 1) :     0 :                0.0 :     1 : False : False : Binary
         ('E', 2) :     0 :                1.0 :     1 : False : False : Binary
         ('E', 3) :     0 :                1.0 :     1 : False : False : Binary
         ('E', 4) :     0 :                0.0 :     1 : False : False : Binary
         ('E', 5) :     0 :                0.0 :     1 : False : False : Binary
         ('E', 6) :     0 :                0.0 :     1 : False : False : Binary
         ('E', 7) :     0 :                0.0 :     1 : False : False : Binary
         ('E', 8) :     0 :                1.0 :     1 : False : False : Binary
         ('E', 9) :     0 :                1.0 :     1 : False : False : Binary
        ('E', 10) :     0 :                0.0 :     1 : False : False : Binary
        ('E', 11) :     0 :                0.0 :     1 : False : False : Binary
        ('E', 12) :     0 :                0.0 :     1 : False : False : Binary
        ('E', 13) :     0 :                0.0 :     1 : False : False : Binary
         ('F', 0) :     0 :                1.0 :     1 : False : False : Binary
         ('F', 1) :     0 :                1.0 :     1 : False : False : Binary
         ('F', 2) :     0 :                1.0 :     1 : False : False : Binary
         ('F', 3) :     0 :                0.0 :     1 : False : False : Binary
         ('F', 4) :     0 :                0.0 :     1 : False : False : Binary
         ('F', 5) :     0 :                0.0 :     1 : False : False : Binary
         ('F', 6) :     0 :                0.0 :     1 : False : False : Binary
         ('F', 7) :     0 :                0.0 :     1 : False : False : Binary
         ('F', 8) :     0 :                1.0 :     1 : False : False : Binary
         ('F', 9) :     0 :                1.0 :     1 : False : False : Binary
        ('F', 10) :     0 :                0.0 :     1 : False : False : Binary
        ('F', 11) :     0 :                0.0 :     1 : False : False : Binary
        ('F', 12) :     0 :                0.0 :     1 : False : False : Binary
        ('F', 13) :     0 :                0.0 :     1 : False : False : Binary
         ('G', 0) :     0 :                1.0 :     1 : False : False : Binary
         ('G', 1) :     0 :                0.0 :     1 : False : False : Binary
         ('G', 2) :     0 :                0.0 :     1 : False : False : Binary
         ('G', 3) :     0 :                0.0 :     1 : False : False : Binary
         ('G', 4) :     0 :                0.0 :     1 : False : False : Binary
         ('G', 5) :     0 :                1.0 :     1 : False : False : Binary
         ('G', 6) :     0 :                1.0 :     1 : False : False : Binary
         ('G', 7) :     0 :                1.0 :     1 : False : False : Binary
         ('G', 8) :     0 :                0.0 :     1 : False : False : Binary
         ('G', 9) :     0 :                0.0 :     1 : False : False : Binary
        ('G', 10) :     0 :                1.0 :     1 : False : False : Binary
        ('G', 11) :     0 :                1.0 :     1 : False : False : Binary
        ('G', 12) :     0 :                0.0 :     1 : False : False : Binary
        ('G', 13) :     0 :                0.0 :     1 : False : False : Binary
         ('H', 0) :     0 :                1.0 :     1 : False : False : Binary
         ('H', 1) :     0 :                0.0 :     1 : False : False : Binary
         ('H', 2) :     0 :                0.0 :     1 : False : False : Binary
         ('H', 3) :     0 :                0.0 :     1 : False : False : Binary
         ('H', 4) :     0 :                1.0 :     1 : False : False : Binary
         ('H', 5) :     0 :                1.0 :     1 : False : False : Binary
         ('H', 6) :     0 :                0.0 :     1 : False : False : Binary
         ('H', 7) :     0 :                0.0 :     1 : False : False : Binary
         ('H', 8) :     0 :                0.0 :     1 : False : False : Binary
         ('H', 9) :     0 :                0.0 :     1 : False : False : Binary
        ('H', 10) :     0 :                0.0 :     1 : False : False : Binary
        ('H', 11) :     0 :                1.0 :     1 : False : False : Binary
        ('H', 12) :     0 :                1.0 :     1 : False : False : Binary
        ('H', 13) :     0 :                0.0 :     1 : False : False : Binary
         ('I', 0) :     0 :                1.0 :     1 : False : False : Binary
         ('I', 1) :     0 :                1.0 :     1 : False : False : Binary
         ('I', 2) :     0 :                0.0 :     1 : False : False : Binary
         ('I', 3) :     0 :                0.0 :     1 : False : False : Binary
         ('I', 4) :     0 :                0.0 :     1 : False : False : Binary
         ('I', 5) :     0 :                0.0 :     1 : False : False : Binary
         ('I', 6) :     0 :                1.0 :     1 : False : False : Binary
         ('I', 7) :     0 :                1.0 :     1 : False : False : Binary
         ('I', 8) :     0 :                0.0 :     1 : False : False : Binary
         ('I', 9) :     0 :                0.0 :     1 : False : False : Binary
        ('I', 10) :     0 :                0.0 :     1 : False : False : Binary
        ('I', 11) :     0 :                1.0 :     1 : False : False : Binary
        ('I', 12) :     0 :                1.0 :     1 : False : False : Binary
        ('I', 13) :     0 :                0.0 :     1 : False : False : Binary
         ('J', 0) :     0 :                1.0 :     1 : False : False : Binary
         ('J', 1) :     0 :                0.0 :     1 : False : False : Binary
         ('J', 2) :     0 :                0.0 :     1 : False : False : Binary
         ('J', 3) :     0 :                0.0 :     1 : False : False : Binary
         ('J', 4) :     0 :                0.0 :     1 : False : False : Binary
         ('J', 5) :     0 :                0.0 :     1 : False : False : Binary
         ('J', 6) :     0 :                1.0 :     1 : False : False : Binary
         ('J', 7) :     0 :                1.0 :     1 : False : False : Binary
         ('J', 8) :     0 :                1.0 :     1 : False : False : Binary
         ('J', 9) :     0 :                1.0 :     1 : False : False : Binary
        ('J', 10) :     0 :                1.0 :     1 : False : False : Binary
        ('J', 11) :     0 :                0.0 :     1 : False : False : Binary
        ('J', 12) :     0 :                0.0 :     1 : False : False : Binary
        ('J', 13) :     0 :                0.0 :     1 : False : False : Binary
         ('K', 0) :     0 :               None :     1 : False :  True : Binary
         ('K', 1) :     0 :               None :     1 : False :  True : Binary
         ('K', 2) :     0 :               None :     1 : False :  True : Binary
         ('K', 3) :     0 :               None :     1 : False :  True : Binary
         ('K', 4) :     0 :               None :     1 : False :  True : Binary
         ('K', 5) :     0 :               None :     1 : False :  True : Binary
         ('K', 6) :     0 :               None :     1 : False :  True : Binary
         ('K', 7) :     0 :               None :     1 : False :  True : Binary
         ('K', 8) :     0 :               None :     1 : False :  True : Binary
         ('K', 9) :     0 :               None :     1 : False :  True : Binary
        ('K', 10) :     0 :               None :     1 : False :  True : Binary
        ('K', 11) :     0 :               None :     1 : False :  True : Binary
        ('K', 12) :     0 :               None :     1 : False :  True : Binary
        ('K', 13) :     0 :               None :     1 : False :  True : Binary
         ('L', 0) :     0 :               None :     1 : False :  True : Binary
         ('L', 1) :     0 :               None :     1 : False :  True : Binary
         ('L', 2) :     0 :               None :     1 : False :  True : Binary
         ('L', 3) :     0 :               None :     1 : False :  True : Binary
         ('L', 4) :     0 :               None :     1 : False :  True : Binary
         ('L', 5) :     0 :               None :     1 : False :  True : Binary
         ('L', 6) :     0 :               None :     1 : False :  True : Binary
         ('L', 7) :     0 :               None :     1 : False :  True : Binary
         ('L', 8) :     0 :               None :     1 : False :  True : Binary
         ('L', 9) :     0 :               None :     1 : False :  True : Binary
        ('L', 10) :     0 :               None :     1 : False :  True : Binary
        ('L', 11) :     0 :               None :     1 : False :  True : Binary
        ('L', 12) :     0 :               None :     1 : False :  True : Binary
        ('L', 13) :     0 :               None :     1 : False :  True : Binary
         ('M', 0) :     0 :               None :     1 : False :  True : Binary
         ('M', 1) :     0 :               None :     1 : False :  True : Binary
         ('M', 2) :     0 :               None :     1 : False :  True : Binary
         ('M', 3) :     0 :               None :     1 : False :  True : Binary
         ('M', 4) :     0 :               None :     1 : False :  True : Binary
         ('M', 5) :     0 :               None :     1 : False :  True : Binary
         ('M', 6) :     0 :               None :     1 : False :  True : Binary
         ('M', 7) :     0 :               None :     1 : False :  True : Binary
         ('M', 8) :     0 :               None :     1 : False :  True : Binary
         ('M', 9) :     0 :               None :     1 : False :  True : Binary
        ('M', 10) :     0 :               None :     1 : False :  True : Binary
        ('M', 11) :     0 :               None :     1 : False :  True : Binary
        ('M', 12) :     0 :               None :     1 : False :  True : Binary
        ('M', 13) :     0 :               None :     1 : False :  True : Binary
         ('N', 0) :     0 :               None :     1 : False :  True : Binary
         ('N', 1) :     0 :               None :     1 : False :  True : Binary
         ('N', 2) :     0 :               None :     1 : False :  True : Binary
         ('N', 3) :     0 :               None :     1 : False :  True : Binary
         ('N', 4) :     0 :               None :     1 : False :  True : Binary
         ('N', 5) :     0 :               None :     1 : False :  True : Binary
         ('N', 6) :     0 :               None :     1 : False :  True : Binary
         ('N', 7) :     0 :               None :     1 : False :  True : Binary
         ('N', 8) :     0 :               None :     1 : False :  True : Binary
         ('N', 9) :     0 :               None :     1 : False :  True : Binary
        ('N', 10) :     0 :               None :     1 : False :  True : Binary
        ('N', 11) :     0 :               None :     1 : False :  True : Binary
        ('N', 12) :     0 :               None :     1 : False :  True : Binary
        ('N', 13) :     0 :               None :     1 : False :  True : Binary
    HasWeekendWork : Size=28, Index=NURSES*WEEKS
        Key      : Lower : Value : Upper : Fixed : Stale : Domain
        ('A', 0) :     0 :   1.0 :     1 : False : False : Binary
        ('A', 1) :     0 :   0.0 :     1 : False : False : Binary
        ('B', 0) :     0 :   0.0 :     1 : False : False : Binary
        ('B', 1) :     0 :   1.0 :     1 : False : False : Binary
        ('C', 0) :     0 :   1.0 :     1 : False : False : Binary
        ('C', 1) :     0 :   0.0 :     1 : False : False : Binary
        ('D', 0) :     0 :   0.0 :     1 : False : False : Binary
        ('D', 1) :     0 :   1.0 :     1 : False : False : Binary
        ('E', 0) :     0 :   1.0 :     1 : False : False : Binary
        ('E', 1) :     0 :   0.0 :     1 : False : False : Binary
        ('F', 0) :     0 :   1.0 :     1 : False : False : Binary
        ('F', 1) :     0 :   0.0 :     1 : False : False : Binary
        ('G', 0) :     0 :   0.0 :     1 : False : False : Binary
        ('G', 1) :     0 :   1.0 :     1 : False : False : Binary
        ('H', 0) :     0 :   1.0 :     1 : False : False : Binary
        ('H', 1) :     0 :   0.0 :     1 : False : False : Binary
        ('I', 0) :     0 :   0.0 :     1 : False : False : Binary
        ('I', 1) :     0 :   1.0 :     1 : False : False : Binary
        ('J', 0) :     0 :   0.0 :     1 : False : False : Binary
        ('J', 1) :     0 :   1.0 :     1 : False : False : Binary
        ('K', 0) :     0 :   0.0 :     1 : False : False : Binary
        ('K', 1) :     0 :   1.0 :     1 : False : False : Binary
        ('L', 0) :     0 :   0.0 :     1 : False : False : Binary
        ('L', 1) :     0 :   1.0 :     1 : False : False : Binary
        ('M', 0) :     0 :   1.0 :     1 : False : False : Binary
        ('M', 1) :     0 :   0.0 :     1 : False : False : Binary
        ('N', 0) :     0 :   0.0 :     1 : False : False : Binary
        ('N', 1) :     0 :   1.0 :     1 : False : False : Binary
    PenaltyShiftOnReq : Size=392, Index=SHIFTTYPES*NURSES*DAYS
        Key            : Lower : Value : Upper : Fixed : Stale : Domain
         ('E', 'A', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'A', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'A', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'A', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'A', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'A', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'A', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'A', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'A', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'A', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E', 'A', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E', 'A', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E', 'A', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E', 'A', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'B', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'B', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'B', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'B', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'B', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'B', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'B', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'B', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'B', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'B', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E', 'B', 10) :     0 :   1.0 :  None : False : False : NonNegativeReals
        ('E', 'B', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E', 'B', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E', 'B', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'C', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'C', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'C', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'C', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'C', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'C', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'C', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'C', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'C', 8) :     0 :   1.0 :  None : False : False : NonNegativeReals
         ('E', 'C', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E', 'C', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E', 'C', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E', 'C', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E', 'C', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'D', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'D', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'D', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'D', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'D', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'D', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'D', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'D', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'D', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'D', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E', 'D', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E', 'D', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E', 'D', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E', 'D', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'E', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'E', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'E', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'E', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'E', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'E', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'E', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'E', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'E', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'E', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E', 'E', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E', 'E', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E', 'E', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E', 'E', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'F', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'F', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'F', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'F', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'F', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'F', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'F', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'F', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'F', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'F', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E', 'F', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E', 'F', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E', 'F', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E', 'F', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'G', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'G', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'G', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'G', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'G', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'G', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'G', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'G', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'G', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'G', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E', 'G', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E', 'G', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E', 'G', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E', 'G', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'H', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'H', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'H', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'H', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'H', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'H', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'H', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'H', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'H', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'H', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E', 'H', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E', 'H', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E', 'H', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E', 'H', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'I', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'I', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'I', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'I', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'I', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'I', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'I', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'I', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'I', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'I', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E', 'I', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E', 'I', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E', 'I', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E', 'I', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'J', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'J', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'J', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'J', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'J', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'J', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'J', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'J', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'J', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'J', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E', 'J', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E', 'J', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E', 'J', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E', 'J', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'K', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'K', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'K', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'K', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'K', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'K', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'K', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'K', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'K', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'K', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E', 'K', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E', 'K', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E', 'K', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E', 'K', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'L', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'L', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'L', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'L', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'L', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'L', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'L', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'L', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'L', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'L', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E', 'L', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E', 'L', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E', 'L', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E', 'L', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'M', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'M', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'M', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'M', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'M', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'M', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'M', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'M', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'M', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'M', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E', 'M', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E', 'M', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E', 'M', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E', 'M', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'N', 0) :     0 :   2.0 :  None : False : False : NonNegativeReals
         ('E', 'N', 1) :     0 :   2.0 :  None : False : False : NonNegativeReals
         ('E', 'N', 2) :     0 :   2.0 :  None : False : False : NonNegativeReals
         ('E', 'N', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'N', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'N', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'N', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'N', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'N', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 'N', 9) :     0 :   3.0 :  None : False : False : NonNegativeReals
        ('E', 'N', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E', 'N', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E', 'N', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E', 'N', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'A', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'A', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'A', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'A', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'A', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'A', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'A', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'A', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'A', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'A', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L', 'A', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L', 'A', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L', 'A', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L', 'A', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'B', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'B', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'B', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'B', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'B', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'B', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'B', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'B', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'B', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'B', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L', 'B', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L', 'B', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L', 'B', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L', 'B', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'C', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'C', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'C', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'C', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'C', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'C', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'C', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'C', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'C', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'C', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L', 'C', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L', 'C', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L', 'C', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L', 'C', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'D', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'D', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'D', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'D', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'D', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'D', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'D', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'D', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'D', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'D', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L', 'D', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L', 'D', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L', 'D', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L', 'D', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'E', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'E', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'E', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'E', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'E', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'E', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'E', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'E', 7) :     0 :   1.0 :  None : False : False : NonNegativeReals
         ('L', 'E', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'E', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L', 'E', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L', 'E', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L', 'E', 12) :     0 :   2.0 :  None : False : False : NonNegativeReals
        ('L', 'E', 13) :     0 :   2.0 :  None : False : False : NonNegativeReals
         ('L', 'F', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'F', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'F', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'F', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'F', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'F', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'F', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'F', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'F', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'F', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L', 'F', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L', 'F', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L', 'F', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L', 'F', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'G', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'G', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'G', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'G', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'G', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'G', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'G', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'G', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'G', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'G', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L', 'G', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L', 'G', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L', 'G', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L', 'G', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'H', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'H', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'H', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'H', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'H', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'H', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'H', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'H', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'H', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'H', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L', 'H', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L', 'H', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L', 'H', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L', 'H', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'I', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'I', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'I', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'I', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'I', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'I', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'I', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'I', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'I', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'I', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L', 'I', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L', 'I', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L', 'I', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L', 'I', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'J', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'J', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'J', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'J', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'J', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'J', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'J', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'J', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'J', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'J', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L', 'J', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L', 'J', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L', 'J', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L', 'J', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'K', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'K', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'K', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'K', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'K', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'K', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'K', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'K', 7) :     0 :   1.0 :  None : False : False : NonNegativeReals
         ('L', 'K', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'K', 9) :     0 :   1.0 :  None : False : False : NonNegativeReals
        ('L', 'K', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L', 'K', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L', 'K', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L', 'K', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'L', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'L', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'L', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'L', 3) :     0 :   1.0 :  None : False : False : NonNegativeReals
         ('L', 'L', 4) :     0 :   1.0 :  None : False : False : NonNegativeReals
         ('L', 'L', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'L', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'L', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'L', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'L', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L', 'L', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L', 'L', 11) :     0 :   3.0 :  None : False : False : NonNegativeReals
        ('L', 'L', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L', 'L', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'M', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'M', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'M', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'M', 3) :     0 :   1.0 :  None : False : False : NonNegativeReals
         ('L', 'M', 4) :     0 :   1.0 :  None : False : False : NonNegativeReals
         ('L', 'M', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'M', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'M', 7) :     0 :   1.0 :  None : False : False : NonNegativeReals
         ('L', 'M', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'M', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L', 'M', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L', 'M', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L', 'M', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L', 'M', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'N', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'N', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'N', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'N', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'N', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'N', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'N', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'N', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'N', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 'N', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L', 'N', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L', 'N', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L', 'N', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L', 'N', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
    PenaltyShiftOffReq : Size=392, Index=SHIFTTYPES*NURSES*DAYS
        Key            : Lower : Value              : Upper : Fixed : Stale : Domain
         ('E', 'A', 0) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'A', 1) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'A', 2) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'A', 3) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'A', 4) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'A', 5) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'A', 6) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'A', 7) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'A', 8) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'A', 9) :     0 :                0.0 :  None : False : False : NonNegativeReals
        ('E', 'A', 10) :     0 :                0.0 :  None : False : False : NonNegativeReals
        ('E', 'A', 11) :     0 :                0.0 :  None : False : False : NonNegativeReals
        ('E', 'A', 12) :     0 :                0.0 :  None : False : False : NonNegativeReals
        ('E', 'A', 13) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'B', 0) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'B', 1) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'B', 2) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'B', 3) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'B', 4) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'B', 5) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'B', 6) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'B', 7) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'B', 8) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'B', 9) :     0 :                0.0 :  None : False : False : NonNegativeReals
        ('E', 'B', 10) :     0 :                0.0 :  None : False : False : NonNegativeReals
        ('E', 'B', 11) :     0 :                0.0 :  None : False : False : NonNegativeReals
        ('E', 'B', 12) :     0 :                0.0 :  None : False : False : NonNegativeReals
        ('E', 'B', 13) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'C', 0) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'C', 1) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'C', 2) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'C', 3) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'C', 4) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'C', 5) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'C', 6) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'C', 7) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'C', 8) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'C', 9) :     0 :                0.0 :  None : False : False : NonNegativeReals
        ('E', 'C', 10) :     0 :                0.0 :  None : False : False : NonNegativeReals
        ('E', 'C', 11) :     0 :                0.0 :  None : False : False : NonNegativeReals
        ('E', 'C', 12) :     0 :                0.0 :  None : False : False : NonNegativeReals
        ('E', 'C', 13) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'D', 0) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'D', 1) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'D', 2) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'D', 3) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'D', 4) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'D', 5) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'D', 6) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'D', 7) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'D', 8) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'D', 9) :     0 :                0.0 :  None : False : False : NonNegativeReals
        ('E', 'D', 10) :     0 :                0.0 :  None : False : False : NonNegativeReals
        ('E', 'D', 11) :     0 :                0.0 :  None : False : False : NonNegativeReals
        ('E', 'D', 12) :     0 :                0.0 :  None : False : False : NonNegativeReals
        ('E', 'D', 13) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'E', 0) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'E', 1) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'E', 2) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'E', 3) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'E', 4) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'E', 5) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'E', 6) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'E', 7) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'E', 8) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'E', 9) :     0 :                0.0 :  None : False : False : NonNegativeReals
        ('E', 'E', 10) :     0 :                0.0 :  None : False : False : NonNegativeReals
        ('E', 'E', 11) :     0 :                0.0 :  None : False : False : NonNegativeReals
        ('E', 'E', 12) :     0 :                0.0 :  None : False : False : NonNegativeReals
        ('E', 'E', 13) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'F', 0) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'F', 1) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'F', 2) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'F', 3) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'F', 4) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'F', 5) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'F', 6) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'F', 7) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'F', 8) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'F', 9) :     0 :                0.0 :  None : False : False : NonNegativeReals
        ('E', 'F', 10) :     0 :                0.0 :  None : False : False : NonNegativeReals
        ('E', 'F', 11) :     0 :                0.0 :  None : False : False : NonNegativeReals
        ('E', 'F', 12) :     0 :                0.0 :  None : False : False : NonNegativeReals
        ('E', 'F', 13) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'G', 0) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'G', 1) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'G', 2) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'G', 3) :     0 : 2.0000000000000178 :  None : False : False : NonNegativeReals
         ('E', 'G', 4) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'G', 5) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'G', 6) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'G', 7) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'G', 8) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'G', 9) :     0 :                0.0 :  None : False : False : NonNegativeReals
        ('E', 'G', 10) :     0 :                0.0 :  None : False : False : NonNegativeReals
        ('E', 'G', 11) :     0 :                0.0 :  None : False : False : NonNegativeReals
        ('E', 'G', 12) :     0 :                0.0 :  None : False : False : NonNegativeReals
        ('E', 'G', 13) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'H', 0) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'H', 1) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'H', 2) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'H', 3) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'H', 4) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'H', 5) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'H', 6) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'H', 7) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'H', 8) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'H', 9) :     0 :                0.0 :  None : False : False : NonNegativeReals
        ('E', 'H', 10) :     0 :                0.0 :  None : False : False : NonNegativeReals
        ('E', 'H', 11) :     0 :                0.0 :  None : False : False : NonNegativeReals
        ('E', 'H', 12) :     0 :                0.0 :  None : False : False : NonNegativeReals
        ('E', 'H', 13) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'I', 0) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'I', 1) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'I', 2) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'I', 3) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'I', 4) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'I', 5) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'I', 6) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'I', 7) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'I', 8) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'I', 9) :     0 :                0.0 :  None : False : False : NonNegativeReals
        ('E', 'I', 10) :     0 :                0.0 :  None : False : False : NonNegativeReals
        ('E', 'I', 11) :     0 :                0.0 :  None : False : False : NonNegativeReals
        ('E', 'I', 12) :     0 :                0.0 :  None : False : False : NonNegativeReals
        ('E', 'I', 13) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'J', 0) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'J', 1) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'J', 2) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'J', 3) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'J', 4) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'J', 5) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'J', 6) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'J', 7) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'J', 8) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'J', 9) :     0 :                0.0 :  None : False : False : NonNegativeReals
        ('E', 'J', 10) :     0 :                0.0 :  None : False : False : NonNegativeReals
        ('E', 'J', 11) :     0 :                0.0 :  None : False : False : NonNegativeReals
        ('E', 'J', 12) :     0 :                0.0 :  None : False : False : NonNegativeReals
        ('E', 'J', 13) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'K', 0) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'K', 1) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'K', 2) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'K', 3) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'K', 4) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'K', 5) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'K', 6) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'K', 7) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'K', 8) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'K', 9) :     0 :                0.0 :  None : False : False : NonNegativeReals
        ('E', 'K', 10) :     0 :                0.0 :  None : False : False : NonNegativeReals
        ('E', 'K', 11) :     0 :                0.0 :  None : False : False : NonNegativeReals
        ('E', 'K', 12) :     0 :                0.0 :  None : False : False : NonNegativeReals
        ('E', 'K', 13) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'L', 0) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'L', 1) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'L', 2) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'L', 3) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'L', 4) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'L', 5) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'L', 6) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'L', 7) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'L', 8) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'L', 9) :     0 :                0.0 :  None : False : False : NonNegativeReals
        ('E', 'L', 10) :     0 :                0.0 :  None : False : False : NonNegativeReals
        ('E', 'L', 11) :     0 :                0.0 :  None : False : False : NonNegativeReals
        ('E', 'L', 12) :     0 :                0.0 :  None : False : False : NonNegativeReals
        ('E', 'L', 13) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'M', 0) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'M', 1) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'M', 2) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'M', 3) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'M', 4) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'M', 5) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'M', 6) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'M', 7) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'M', 8) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'M', 9) :     0 :                0.0 :  None : False : False : NonNegativeReals
        ('E', 'M', 10) :     0 :                0.0 :  None : False : False : NonNegativeReals
        ('E', 'M', 11) :     0 :                0.0 :  None : False : False : NonNegativeReals
        ('E', 'M', 12) :     0 :                0.0 :  None : False : False : NonNegativeReals
        ('E', 'M', 13) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'N', 0) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'N', 1) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'N', 2) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'N', 3) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'N', 4) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'N', 5) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'N', 6) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'N', 7) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'N', 8) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('E', 'N', 9) :     0 :                0.0 :  None : False : False : NonNegativeReals
        ('E', 'N', 10) :     0 :                0.0 :  None : False : False : NonNegativeReals
        ('E', 'N', 11) :     0 :                0.0 :  None : False : False : NonNegativeReals
        ('E', 'N', 12) :     0 :                0.0 :  None : False : False : NonNegativeReals
        ('E', 'N', 13) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'A', 0) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'A', 1) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'A', 2) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'A', 3) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'A', 4) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'A', 5) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'A', 6) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'A', 7) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'A', 8) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'A', 9) :     0 :                0.0 :  None : False : False : NonNegativeReals
        ('L', 'A', 10) :     0 :                0.0 :  None : False : False : NonNegativeReals
        ('L', 'A', 11) :     0 :                0.0 :  None : False : False : NonNegativeReals
        ('L', 'A', 12) :     0 :                0.0 :  None : False : False : NonNegativeReals
        ('L', 'A', 13) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'B', 0) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'B', 1) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'B', 2) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'B', 3) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'B', 4) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'B', 5) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'B', 6) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'B', 7) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'B', 8) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'B', 9) :     0 :                0.0 :  None : False : False : NonNegativeReals
        ('L', 'B', 10) :     0 :                0.0 :  None : False : False : NonNegativeReals
        ('L', 'B', 11) :     0 :                0.0 :  None : False : False : NonNegativeReals
        ('L', 'B', 12) :     0 :                0.0 :  None : False : False : NonNegativeReals
        ('L', 'B', 13) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'C', 0) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'C', 1) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'C', 2) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'C', 3) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'C', 4) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'C', 5) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'C', 6) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'C', 7) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'C', 8) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'C', 9) :     0 :                0.0 :  None : False : False : NonNegativeReals
        ('L', 'C', 10) :     0 :                0.0 :  None : False : False : NonNegativeReals
        ('L', 'C', 11) :     0 :                0.0 :  None : False : False : NonNegativeReals
        ('L', 'C', 12) :     0 :                0.0 :  None : False : False : NonNegativeReals
        ('L', 'C', 13) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'D', 0) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'D', 1) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'D', 2) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'D', 3) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'D', 4) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'D', 5) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'D', 6) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'D', 7) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'D', 8) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'D', 9) :     0 :                0.0 :  None : False : False : NonNegativeReals
        ('L', 'D', 10) :     0 :                0.0 :  None : False : False : NonNegativeReals
        ('L', 'D', 11) :     0 :                0.0 :  None : False : False : NonNegativeReals
        ('L', 'D', 12) :     0 :                0.0 :  None : False : False : NonNegativeReals
        ('L', 'D', 13) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'E', 0) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'E', 1) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'E', 2) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'E', 3) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'E', 4) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'E', 5) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'E', 6) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'E', 7) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'E', 8) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'E', 9) :     0 :                0.0 :  None : False : False : NonNegativeReals
        ('L', 'E', 10) :     0 :                0.0 :  None : False : False : NonNegativeReals
        ('L', 'E', 11) :     0 :                0.0 :  None : False : False : NonNegativeReals
        ('L', 'E', 12) :     0 :                0.0 :  None : False : False : NonNegativeReals
        ('L', 'E', 13) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'F', 0) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'F', 1) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'F', 2) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'F', 3) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'F', 4) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'F', 5) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'F', 6) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'F', 7) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'F', 8) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'F', 9) :     0 :                0.0 :  None : False : False : NonNegativeReals
        ('L', 'F', 10) :     0 :                0.0 :  None : False : False : NonNegativeReals
        ('L', 'F', 11) :     0 :                0.0 :  None : False : False : NonNegativeReals
        ('L', 'F', 12) :     0 :                0.0 :  None : False : False : NonNegativeReals
        ('L', 'F', 13) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'G', 0) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'G', 1) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'G', 2) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'G', 3) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'G', 4) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'G', 5) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'G', 6) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'G', 7) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'G', 8) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'G', 9) :     0 :                0.0 :  None : False : False : NonNegativeReals
        ('L', 'G', 10) :     0 :                0.0 :  None : False : False : NonNegativeReals
        ('L', 'G', 11) :     0 :                0.0 :  None : False : False : NonNegativeReals
        ('L', 'G', 12) :     0 :                0.0 :  None : False : False : NonNegativeReals
        ('L', 'G', 13) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'H', 0) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'H', 1) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'H', 2) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'H', 3) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'H', 4) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'H', 5) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'H', 6) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'H', 7) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'H', 8) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'H', 9) :     0 :                0.0 :  None : False : False : NonNegativeReals
        ('L', 'H', 10) :     0 :                0.0 :  None : False : False : NonNegativeReals
        ('L', 'H', 11) :     0 :                0.0 :  None : False : False : NonNegativeReals
        ('L', 'H', 12) :     0 :                0.0 :  None : False : False : NonNegativeReals
        ('L', 'H', 13) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'I', 0) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'I', 1) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'I', 2) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'I', 3) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'I', 4) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'I', 5) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'I', 6) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'I', 7) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'I', 8) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'I', 9) :     0 :                0.0 :  None : False : False : NonNegativeReals
        ('L', 'I', 10) :     0 :                0.0 :  None : False : False : NonNegativeReals
        ('L', 'I', 11) :     0 :                0.0 :  None : False : False : NonNegativeReals
        ('L', 'I', 12) :     0 :                0.0 :  None : False : False : NonNegativeReals
        ('L', 'I', 13) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'J', 0) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'J', 1) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'J', 2) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'J', 3) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'J', 4) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'J', 5) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'J', 6) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'J', 7) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'J', 8) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'J', 9) :     0 :                0.0 :  None : False : False : NonNegativeReals
        ('L', 'J', 10) :     0 :                0.0 :  None : False : False : NonNegativeReals
        ('L', 'J', 11) :     0 :                0.0 :  None : False : False : NonNegativeReals
        ('L', 'J', 12) :     0 :                0.0 :  None : False : False : NonNegativeReals
        ('L', 'J', 13) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'K', 0) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'K', 1) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'K', 2) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'K', 3) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'K', 4) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'K', 5) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'K', 6) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'K', 7) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'K', 8) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'K', 9) :     0 :                0.0 :  None : False : False : NonNegativeReals
        ('L', 'K', 10) :     0 :                0.0 :  None : False : False : NonNegativeReals
        ('L', 'K', 11) :     0 :                0.0 :  None : False : False : NonNegativeReals
        ('L', 'K', 12) :     0 :                0.0 :  None : False : False : NonNegativeReals
        ('L', 'K', 13) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'L', 0) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'L', 1) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'L', 2) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'L', 3) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'L', 4) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'L', 5) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'L', 6) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'L', 7) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'L', 8) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'L', 9) :     0 :                0.0 :  None : False : False : NonNegativeReals
        ('L', 'L', 10) :     0 :                0.0 :  None : False : False : NonNegativeReals
        ('L', 'L', 11) :     0 :                0.0 :  None : False : False : NonNegativeReals
        ('L', 'L', 12) :     0 :                0.0 :  None : False : False : NonNegativeReals
        ('L', 'L', 13) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'M', 0) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'M', 1) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'M', 2) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'M', 3) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'M', 4) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'M', 5) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'M', 6) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'M', 7) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'M', 8) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'M', 9) :     0 :                0.0 :  None : False : False : NonNegativeReals
        ('L', 'M', 10) :     0 :                0.0 :  None : False : False : NonNegativeReals
        ('L', 'M', 11) :     0 :                0.0 :  None : False : False : NonNegativeReals
        ('L', 'M', 12) :     0 :                0.0 :  None : False : False : NonNegativeReals
        ('L', 'M', 13) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'N', 0) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'N', 1) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'N', 2) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'N', 3) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'N', 4) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'N', 5) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'N', 6) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'N', 7) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'N', 8) :     0 :                0.0 :  None : False : False : NonNegativeReals
         ('L', 'N', 9) :     0 :                0.0 :  None : False : False : NonNegativeReals
        ('L', 'N', 10) :     0 :                0.0 :  None : False : False : NonNegativeReals
        ('L', 'N', 11) :     0 :                0.0 :  None : False : False : NonNegativeReals
        ('L', 'N', 12) :     0 :                0.0 :  None : False : False : NonNegativeReals
        ('L', 'N', 13) :     0 :                0.0 :  None : False : False : NonNegativeReals
    UnderCover : Size=28, Index=SHIFTTYPES*DAYS
        Key       : Lower : Value                   : Upper : Fixed : Stale : Domain
         ('E', 0) :     0 :                    -0.0 :  None : False : False : NonNegativeReals
         ('E', 1) :     0 :                    -0.0 :  None : False : False : NonNegativeReals
         ('E', 2) :     0 :                    -0.0 :  None : False : False : NonNegativeReals
         ('E', 3) :     0 :                    -0.0 :  None : False : False : NonNegativeReals
         ('E', 4) :     0 :                    -0.0 :  None : False : False : NonNegativeReals
         ('E', 5) :     0 :                     3.0 :  None : False : False : NonNegativeReals
         ('E', 6) :     0 :                     3.0 :  None : False : False : NonNegativeReals
         ('E', 7) :     0 :                    -0.0 :  None : False : False : NonNegativeReals
         ('E', 8) :     0 :                    -0.0 :  None : False : False : NonNegativeReals
         ('E', 9) :     0 :                    -0.0 :  None : False : False : NonNegativeReals
        ('E', 10) :     0 :                    -0.0 :  None : False : False : NonNegativeReals
        ('E', 11) :     0 :                    -0.0 :  None : False : False : NonNegativeReals
        ('E', 12) :     0 :                    -0.0 :  None : False : False : NonNegativeReals
        ('E', 13) :     0 :                    -0.0 :  None : False : False : NonNegativeReals
         ('L', 0) :     0 :                    -0.0 :  None : False : False : NonNegativeReals
         ('L', 1) :     0 :                    -0.0 :  None : False : False : NonNegativeReals
         ('L', 2) :     0 :                    -0.0 :  None : False : False : NonNegativeReals
         ('L', 3) :     0 :                    -0.0 :  None : False : False : NonNegativeReals
         ('L', 4) :     0 :                    -0.0 :  None : False : False : NonNegativeReals
         ('L', 5) :     0 :                     1.0 :  None : False : False : NonNegativeReals
         ('L', 6) :     0 :                     1.0 :  None : False : False : NonNegativeReals
         ('L', 7) :     0 :                    -0.0 :  None : False : False : NonNegativeReals
         ('L', 8) :     0 :                    -0.0 :  None : False : False : NonNegativeReals
         ('L', 9) :     0 :                    -0.0 :  None : False : False : NonNegativeReals
        ('L', 10) :     0 :                    -0.0 :  None : False : False : NonNegativeReals
        ('L', 11) :     0 :                    -0.0 :  None : False : False : NonNegativeReals
        ('L', 12) :     0 :                    -0.0 :  None : False : False : NonNegativeReals
        ('L', 13) :     0 : -1.0658141036401503e-14 :  None : False : False : NonNegativeReals
    OverCover : Size=28, Index=SHIFTTYPES*DAYS
        Key       : Lower : Value : Upper : Fixed : Stale : Domain
         ('E', 0) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('E', 1) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('E', 2) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('E', 3) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('E', 4) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('E', 5) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('E', 6) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('E', 7) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('E', 8) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('E', 9) :     0 :  -0.0 :  None : False : False : NonNegativeReals
        ('E', 10) :     0 :  -0.0 :  None : False : False : NonNegativeReals
        ('E', 11) :     0 :  -0.0 :  None : False : False : NonNegativeReals
        ('E', 12) :     0 :  -0.0 :  None : False : False : NonNegativeReals
        ('E', 13) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('L', 0) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('L', 1) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('L', 2) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('L', 3) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('L', 4) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('L', 5) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('L', 6) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('L', 7) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('L', 8) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('L', 9) :     0 :  -0.0 :  None : False : False : NonNegativeReals
        ('L', 10) :     0 :  -0.0 :  None : False : False : NonNegativeReals
        ('L', 11) :     0 :  -0.0 :  None : False : False : NonNegativeReals
        ('L', 12) :     0 :  -0.0 :  None : False : False : NonNegativeReals
        ('L', 13) :     0 :  -0.0 :  None : False : False : NonNegativeReals
    PenaltyUnder : Size=28, Index=SHIFTTYPES*DAYS
        Key       : Lower : Value                   : Upper : Fixed : Stale : Domain
         ('E', 0) :     0 :                     0.0 :  None : False : False : NonNegativeReals
         ('E', 1) :     0 :                     0.0 :  None : False : False : NonNegativeReals
         ('E', 2) :     0 :                     0.0 :  None : False : False : NonNegativeReals
         ('E', 3) :     0 :                     0.0 :  None : False : False : NonNegativeReals
         ('E', 4) :     0 :                     0.0 :  None : False : False : NonNegativeReals
         ('E', 5) :     0 :                   300.0 :  None : False : False : NonNegativeReals
         ('E', 6) :     0 :                   300.0 :  None : False : False : NonNegativeReals
         ('E', 7) :     0 :                     0.0 :  None : False : False : NonNegativeReals
         ('E', 8) :     0 :                     0.0 :  None : False : False : NonNegativeReals
         ('E', 9) :     0 :                     0.0 :  None : False : False : NonNegativeReals
        ('E', 10) :     0 :                     0.0 :  None : False : False : NonNegativeReals
        ('E', 11) :     0 :                     0.0 :  None : False : False : NonNegativeReals
        ('E', 12) :     0 :                     0.0 :  None : False : False : NonNegativeReals
        ('E', 13) :     0 :                     0.0 :  None : False : False : NonNegativeReals
         ('L', 0) :     0 :                     0.0 :  None : False : False : NonNegativeReals
         ('L', 1) :     0 :                     0.0 :  None : False : False : NonNegativeReals
         ('L', 2) :     0 :                     0.0 :  None : False : False : NonNegativeReals
         ('L', 3) :     0 :                     0.0 :  None : False : False : NonNegativeReals
         ('L', 4) :     0 :                     0.0 :  None : False : False : NonNegativeReals
         ('L', 5) :     0 :                   100.0 :  None : False : False : NonNegativeReals
         ('L', 6) :     0 :                   100.0 :  None : False : False : NonNegativeReals
         ('L', 7) :     0 :                     0.0 :  None : False : False : NonNegativeReals
         ('L', 8) :     0 :                     0.0 :  None : False : False : NonNegativeReals
         ('L', 9) :     0 :                     0.0 :  None : False : False : NonNegativeReals
        ('L', 10) :     0 :                     0.0 :  None : False : False : NonNegativeReals
        ('L', 11) :     0 :                     0.0 :  None : False : False : NonNegativeReals
        ('L', 12) :     0 :                     0.0 :  None : False : False : NonNegativeReals
        ('L', 13) :     0 : -1.0658141036401503e-12 :  None : False : False : NonNegativeReals
    PenaltyOver : Size=28, Index=SHIFTTYPES*DAYS
        Key       : Lower : Value : Upper : Fixed : Stale : Domain
         ('E', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('E', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('E', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('L', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('L', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
    MinTotalMinsUnder : Size=14, Index=NURSES
        Key : Lower : Value : Upper : Fixed : Stale : Domain
          A :     0 :  -0.0 :  None : False : False : NonNegativeReals
          B :     0 :  -0.0 :  None : False : False : NonNegativeReals
          C :     0 :  -0.0 :  None : False : False : NonNegativeReals
          D :     0 :  -0.0 :  None : False : False : NonNegativeReals
          E :     0 :  -0.0 :  None : False : False : NonNegativeReals
          F :     0 :  -0.0 :  None : False : False : NonNegativeReals
          G :     0 :  -0.0 :  None : False : False : NonNegativeReals
          H :     0 :  -0.0 :  None : False : False : NonNegativeReals
          I :     0 :  -0.0 :  None : False : False : NonNegativeReals
          J :     0 :  -0.0 :  None : False : False : NonNegativeReals
          K :     0 :  -0.0 :  None : False : False : NonNegativeReals
          L :     0 :  -0.0 :  None : False : False : NonNegativeReals
          M :     0 :  -0.0 :  None : False : False : NonNegativeReals
          N :     0 :  -0.0 :  None : False : False : NonNegativeReals

  Objectives:
    objective : Size=1, Index=None, Active=True
        Key  : Active : Value
        None :   True : 827.999999999999

  Constraints:
    constraint_one_shift_one_day : Size=196
        Key       : Lower : Body               : Upper
         ('A', 0) :   1.0 :                1.0 :   1.0
         ('A', 1) :   1.0 :                1.0 :   1.0
         ('A', 2) :   1.0 :                1.0 :   1.0
         ('A', 3) :   1.0 :                1.0 :   1.0
         ('A', 4) :   1.0 :                1.0 :   1.0
         ('A', 5) :   1.0 :                1.0 :   1.0
         ('A', 6) :   1.0 :                1.0 :   1.0
         ('A', 7) :   1.0 :                1.0 :   1.0
         ('A', 8) :   1.0 :                1.0 :   1.0
         ('A', 9) :   1.0 :                1.0 :   1.0
        ('A', 10) :   1.0 :                1.0 :   1.0
        ('A', 11) :   1.0 :                1.0 :   1.0
        ('A', 12) :   1.0 :                1.0 :   1.0
        ('A', 13) :   1.0 :                1.0 :   1.0
         ('B', 0) :   1.0 :                1.0 :   1.0
         ('B', 1) :   1.0 :                1.0 :   1.0
         ('B', 2) :   1.0 :                1.0 :   1.0
         ('B', 3) :   1.0 :                1.0 :   1.0
         ('B', 4) :   1.0 : 0.9999999999999956 :   1.0
         ('B', 5) :   1.0 :                1.0 :   1.0
         ('B', 6) :   1.0 :                1.0 :   1.0
         ('B', 7) :   1.0 :                1.0 :   1.0
         ('B', 8) :   1.0 :                1.0 :   1.0
         ('B', 9) :   1.0 :                1.0 :   1.0
        ('B', 10) :   1.0 : 0.9999999999999956 :   1.0
        ('B', 11) :   1.0 : 0.9999999999999956 :   1.0
        ('B', 12) :   1.0 :                1.0 :   1.0
        ('B', 13) :   1.0 : 1.0000000000000107 :   1.0
         ('C', 0) :   1.0 :                1.0 :   1.0
         ('C', 1) :   1.0 :                1.0 :   1.0
         ('C', 2) :   1.0 :                1.0 :   1.0
         ('C', 3) :   1.0 : 0.9999999999999912 :   1.0
         ('C', 4) :   1.0 : 0.9999999999999983 :   1.0
         ('C', 5) :   1.0 :                1.0 :   1.0
         ('C', 6) :   1.0 :                1.0 :   1.0
         ('C', 7) :   1.0 :                1.0 :   1.0
         ('C', 8) :   1.0 :                1.0 :   1.0
         ('C', 9) :   1.0 :                1.0 :   1.0
        ('C', 10) :   1.0 :                1.0 :   1.0
        ('C', 11) :   1.0 :                1.0 :   1.0
        ('C', 12) :   1.0 :                1.0 :   1.0
        ('C', 13) :   1.0 :                1.0 :   1.0
         ('D', 0) :   1.0 :                1.0 :   1.0
         ('D', 1) :   1.0 :                1.0 :   1.0
         ('D', 2) :   1.0 :                1.0 :   1.0
         ('D', 3) :   1.0 :                1.0 :   1.0
         ('D', 4) :   1.0 :                1.0 :   1.0
         ('D', 5) :   1.0 :                1.0 :   1.0
         ('D', 6) :   1.0 :                1.0 :   1.0
         ('D', 7) :   1.0 :                1.0 :   1.0
         ('D', 8) :   1.0 :                1.0 :   1.0
         ('D', 9) :   1.0 :                1.0 :   1.0
        ('D', 10) :   1.0 :                1.0 :   1.0
        ('D', 11) :   1.0 :                1.0 :   1.0
        ('D', 12) :   1.0 :                1.0 :   1.0
        ('D', 13) :   1.0 :                1.0 :   1.0
         ('E', 0) :   1.0 :                1.0 :   1.0
         ('E', 1) :   1.0 :                1.0 :   1.0
         ('E', 2) :   1.0 :                1.0 :   1.0
         ('E', 3) :   1.0 :                1.0 :   1.0
         ('E', 4) :   1.0 :                1.0 :   1.0
         ('E', 5) :   1.0 :                1.0 :   1.0
         ('E', 6) :   1.0 :                1.0 :   1.0
         ('E', 7) :   1.0 :                1.0 :   1.0
         ('E', 8) :   1.0 :                1.0 :   1.0
         ('E', 9) :   1.0 :                1.0 :   1.0
        ('E', 10) :   1.0 :                1.0 :   1.0
        ('E', 11) :   1.0 :                1.0 :   1.0
        ('E', 12) :   1.0 :                1.0 :   1.0
        ('E', 13) :   1.0 :                1.0 :   1.0
         ('F', 0) :   1.0 :                1.0 :   1.0
         ('F', 1) :   1.0 :                1.0 :   1.0
         ('F', 2) :   1.0 :                1.0 :   1.0
         ('F', 3) :   1.0 :                1.0 :   1.0
         ('F', 4) :   1.0 :                1.0 :   1.0
         ('F', 5) :   1.0 :                1.0 :   1.0
         ('F', 6) :   1.0 :                1.0 :   1.0
         ('F', 7) :   1.0 :                1.0 :   1.0
         ('F', 8) :   1.0 :                1.0 :   1.0
         ('F', 9) :   1.0 :                1.0 :   1.0
        ('F', 10) :   1.0 :                1.0 :   1.0
        ('F', 11) :   1.0 :                1.0 :   1.0
        ('F', 12) :   1.0 :                1.0 :   1.0
        ('F', 13) :   1.0 :                1.0 :   1.0
         ('G', 0) :   1.0 :                1.0 :   1.0
         ('G', 1) :   1.0 :                1.0 :   1.0
         ('G', 2) :   1.0 :                1.0 :   1.0
         ('G', 3) :   1.0 : 1.0000000000000089 :   1.0
         ('G', 4) :   1.0 :                1.0 :   1.0
         ('G', 5) :   1.0 :                1.0 :   1.0
         ('G', 6) :   1.0 :                1.0 :   1.0
         ('G', 7) :   1.0 :                1.0 :   1.0
         ('G', 8) :   1.0 :                1.0 :   1.0
         ('G', 9) :   1.0 :                1.0 :   1.0
        ('G', 10) :   1.0 :                1.0 :   1.0
        ('G', 11) :   1.0 :                1.0 :   1.0
        ('G', 12) :   1.0 :                1.0 :   1.0
        ('G', 13) :   1.0 :                1.0 :   1.0
         ('H', 0) :   1.0 :                1.0 :   1.0
         ('H', 1) :   1.0 :                1.0 :   1.0
         ('H', 2) :   1.0 :                1.0 :   1.0
         ('H', 3) :   1.0 :                1.0 :   1.0
         ('H', 4) :   1.0 :                1.0 :   1.0
         ('H', 5) :   1.0 :                1.0 :   1.0
         ('H', 6) :   1.0 :                1.0 :   1.0
         ('H', 7) :   1.0 :                1.0 :   1.0
         ('H', 8) :   1.0 :                1.0 :   1.0
         ('H', 9) :   1.0 :                1.0 :   1.0
        ('H', 10) :   1.0 :                1.0 :   1.0
        ('H', 11) :   1.0 :                1.0 :   1.0
        ('H', 12) :   1.0 :                1.0 :   1.0
        ('H', 13) :   1.0 :                1.0 :   1.0
         ('I', 0) :   1.0 :                1.0 :   1.0
         ('I', 1) :   1.0 :                1.0 :   1.0
         ('I', 2) :   1.0 :                1.0 :   1.0
         ('I', 3) :   1.0 :                1.0 :   1.0
         ('I', 4) :   1.0 :                1.0 :   1.0
         ('I', 5) :   1.0 :                1.0 :   1.0
         ('I', 6) :   1.0 :                1.0 :   1.0
         ('I', 7) :   1.0 :                1.0 :   1.0
         ('I', 8) :   1.0 :                1.0 :   1.0
         ('I', 9) :   1.0 :                1.0 :   1.0
        ('I', 10) :   1.0 :                1.0 :   1.0
        ('I', 11) :   1.0 :                1.0 :   1.0
        ('I', 12) :   1.0 :                1.0 :   1.0
        ('I', 13) :   1.0 :                1.0 :   1.0
         ('J', 0) :   1.0 :                1.0 :   1.0
         ('J', 1) :   1.0 :                1.0 :   1.0
         ('J', 2) :   1.0 :                1.0 :   1.0
         ('J', 3) :   1.0 : 0.9999999999999939 :   1.0
         ('J', 4) :   1.0 :                1.0 :   1.0
         ('J', 5) :   1.0 :                1.0 :   1.0
         ('J', 6) :   1.0 :                1.0 :   1.0
         ('J', 7) :   1.0 :                1.0 :   1.0
         ('J', 8) :   1.0 :                1.0 :   1.0
         ('J', 9) :   1.0 :                1.0 :   1.0
        ('J', 10) :   1.0 :                1.0 :   1.0
        ('J', 11) :   1.0 :                1.0 :   1.0
        ('J', 12) :   1.0 :                1.0 :   1.0
        ('J', 13) :   1.0 :                1.0 :   1.0
         ('K', 0) :   1.0 :                1.0 :   1.0
         ('K', 1) :   1.0 :                1.0 :   1.0
         ('K', 2) :   1.0 :                1.0 :   1.0
         ('K', 3) :   1.0 :                1.0 :   1.0
         ('K', 4) :   1.0 :                1.0 :   1.0
         ('K', 5) :   1.0 :                1.0 :   1.0
         ('K', 6) :   1.0 :                1.0 :   1.0
         ('K', 7) :   1.0 :                1.0 :   1.0
         ('K', 8) :   1.0 :                1.0 :   1.0
         ('K', 9) :   1.0 :                1.0 :   1.0
        ('K', 10) :   1.0 :                1.0 :   1.0
        ('K', 11) :   1.0 :                1.0 :   1.0
        ('K', 12) :   1.0 :                1.0 :   1.0
        ('K', 13) :   1.0 :                1.0 :   1.0
         ('L', 0) :   1.0 :                1.0 :   1.0
         ('L', 1) :   1.0 :                1.0 :   1.0
         ('L', 2) :   1.0 :                1.0 :   1.0
         ('L', 3) :   1.0 :                1.0 :   1.0
         ('L', 4) :   1.0 :                1.0 :   1.0
         ('L', 5) :   1.0 :                1.0 :   1.0
         ('L', 6) :   1.0 :                1.0 :   1.0
         ('L', 7) :   1.0 :                1.0 :   1.0
         ('L', 8) :   1.0 :                1.0 :   1.0
         ('L', 9) :   1.0 :                1.0 :   1.0
        ('L', 10) :   1.0 :                1.0 :   1.0
        ('L', 11) :   1.0 :                1.0 :   1.0
        ('L', 12) :   1.0 :                1.0 :   1.0
        ('L', 13) :   1.0 :                1.0 :   1.0
         ('M', 0) :   1.0 :                1.0 :   1.0
         ('M', 1) :   1.0 :                1.0 :   1.0
         ('M', 2) :   1.0 :                1.0 :   1.0
         ('M', 3) :   1.0 :                1.0 :   1.0
         ('M', 4) :   1.0 :                1.0 :   1.0
         ('M', 5) :   1.0 :                1.0 :   1.0
         ('M', 6) :   1.0 :                1.0 :   1.0
         ('M', 7) :   1.0 :                1.0 :   1.0
         ('M', 8) :   1.0 :                1.0 :   1.0
         ('M', 9) :   1.0 :                1.0 :   1.0
        ('M', 10) :   1.0 :                1.0 :   1.0
        ('M', 11) :   1.0 :                1.0 :   1.0
        ('M', 12) :   1.0 :                1.0 :   1.0
        ('M', 13) :   1.0 :                1.0 :   1.0
         ('N', 0) :   1.0 :                1.0 :   1.0
         ('N', 1) :   1.0 :                1.0 :   1.0
         ('N', 2) :   1.0 :                1.0 :   1.0
         ('N', 3) :   1.0 :                1.0 :   1.0
         ('N', 4) :   1.0 :                1.0 :   1.0
         ('N', 5) :   1.0 :                1.0 :   1.0
         ('N', 6) :   1.0 :                1.0 :   1.0
         ('N', 7) :   1.0 :                1.0 :   1.0
         ('N', 8) :   1.0 :                1.0 :   1.0
         ('N', 9) :   1.0 :                1.0 :   1.0
        ('N', 10) :   1.0 :                1.0 :   1.0
        ('N', 11) :   1.0 :                1.0 :   1.0
        ('N', 12) :   1.0 :                1.0 :   1.0
        ('N', 13) :   1.0 :                1.0 :   1.0
    constraint_shift_rotation_ub : Size=0
        Key : Lower : Body : Upper
    constraint_shift_rotation : Size=364
        Key            : Lower : Body               : Upper
         ('E', 'A', 0) :  None :                1.0 :   1.0
         ('E', 'A', 1) :  None :                1.0 :   1.0
         ('E', 'A', 2) :  None :               -0.0 :   1.0
         ('E', 'A', 3) :  None :                0.0 :   1.0
         ('E', 'A', 4) :  None :               -0.0 :   1.0
         ('E', 'A', 5) :  None :                0.0 :   1.0
         ('E', 'A', 6) :  None :               -0.0 :   1.0
         ('E', 'A', 7) :  None :               -0.0 :   1.0
         ('E', 'A', 8) :  None :               -0.0 :   1.0
         ('E', 'A', 9) :  None :               -0.0 :   1.0
        ('E', 'A', 10) :  None :               -0.0 :   1.0
        ('E', 'A', 11) :  None :                0.0 :   1.0
        ('E', 'A', 12) :  None :                0.0 :   1.0
         ('E', 'B', 0) :  None :               -0.0 :   1.0
         ('E', 'B', 1) :  None :                0.0 :   1.0
         ('E', 'B', 2) :  None :                1.0 :   1.0
         ('E', 'B', 3) :  None :                1.0 :   1.0
         ('E', 'B', 4) :  None : 0.9999999999999956 :   1.0
         ('E', 'B', 5) :  None :                0.0 :   1.0
         ('E', 'B', 6) :  None :                0.0 :   1.0
         ('E', 'B', 7) :  None :                1.0 :   1.0
         ('E', 'B', 8) :  None :                1.0 :   1.0
         ('E', 'B', 9) :  None :                1.0 :   1.0
        ('E', 'B', 10) :  None :                0.0 :   1.0
        ('E', 'B', 11) :  None :                0.0 :   1.0
        ('E', 'B', 12) :  None :                1.0 :   1.0
         ('E', 'C', 0) :  None :               -0.0 :   1.0
         ('E', 'C', 1) :  None :               -0.0 :   1.0
         ('E', 'C', 2) :  None :                0.0 :   1.0
         ('E', 'C', 3) :  None : 0.9999999999999912 :   1.0
         ('E', 'C', 4) :  None : 0.9999999999999983 :   1.0
         ('E', 'C', 5) :  None :                1.0 :   1.0
         ('E', 'C', 6) :  None :                1.0 :   1.0
         ('E', 'C', 7) :  None :                0.0 :   1.0
         ('E', 'C', 8) :  None :                0.0 :   1.0
         ('E', 'C', 9) :  None :                1.0 :   1.0
        ('E', 'C', 10) :  None :                1.0 :   1.0
        ('E', 'C', 11) :  None :                1.0 :   1.0
        ('E', 'C', 12) :  None :                0.0 :   1.0
         ('E', 'D', 0) :  None :                1.0 :   1.0
         ('E', 'D', 1) :  None :                1.0 :   1.0
         ('E', 'D', 2) :  None :                1.0 :   1.0
         ('E', 'D', 3) :  None :                1.0 :   1.0
         ('E', 'D', 4) :  None :                1.0 :   1.0
         ('E', 'D', 5) :  None :                0.0 :   1.0
         ('E', 'D', 6) :  None :                0.0 :   1.0
         ('E', 'D', 7) :  None :                0.0 :   1.0
         ('E', 'D', 8) :  None :                1.0 :   1.0
         ('E', 'D', 9) :  None :                1.0 :   1.0
        ('E', 'D', 10) :  None :                1.0 :   1.0
        ('E', 'D', 11) :  None :                0.0 :   1.0
        ('E', 'D', 12) :  None :                0.0 :   1.0
         ('E', 'E', 0) :  None :                0.0 :   1.0
         ('E', 'E', 1) :  None :                0.0 :   1.0
         ('E', 'E', 2) :  None :                0.0 :   1.0
         ('E', 'E', 3) :  None :                0.0 :   1.0
         ('E', 'E', 4) :  None :                0.0 :   1.0
         ('E', 'E', 5) :  None :                0.0 :   1.0
         ('E', 'E', 6) :  None :                0.0 :   1.0
         ('E', 'E', 7) :  None :                0.0 :   1.0
         ('E', 'E', 8) :  None :                0.0 :   1.0
         ('E', 'E', 9) :  None :                0.0 :   1.0
        ('E', 'E', 10) :  None :                0.0 :   1.0
        ('E', 'E', 11) :  None :                0.0 :   1.0
        ('E', 'E', 12) :  None :                0.0 :   1.0
         ('E', 'F', 0) :  None :               -0.0 :   1.0
         ('E', 'F', 1) :  None :               -0.0 :   1.0
         ('E', 'F', 2) :  None :               -0.0 :   1.0
         ('E', 'F', 3) :  None :               -0.0 :   1.0
         ('E', 'F', 4) :  None :                0.0 :   1.0
         ('E', 'F', 5) :  None :               -0.0 :   1.0
         ('E', 'F', 6) :  None :               -0.0 :   1.0
         ('E', 'F', 7) :  None :               -0.0 :   1.0
         ('E', 'F', 8) :  None :               -0.0 :   1.0
         ('E', 'F', 9) :  None :                1.0 :   1.0
        ('E', 'F', 10) :  None :               -0.0 :   1.0
        ('E', 'F', 11) :  None :                0.0 :   1.0
        ('E', 'F', 12) :  None :                0.0 :   1.0
         ('E', 'G', 0) :  None :                1.0 :   1.0
         ('E', 'G', 1) :  None :                1.0 :   1.0
         ('E', 'G', 2) :  None :                1.0 :   1.0
         ('E', 'G', 3) :  None : 1.0000000000000089 :   1.0
         ('E', 'G', 4) :  None :               -0.0 :   1.0
         ('E', 'G', 5) :  None :               -0.0 :   1.0
         ('E', 'G', 6) :  None :               -0.0 :   1.0
         ('E', 'G', 7) :  None :               -0.0 :   1.0
         ('E', 'G', 8) :  None :               -0.0 :   1.0
         ('E', 'G', 9) :  None :                0.0 :   1.0
        ('E', 'G', 10) :  None :                0.0 :   1.0
        ('E', 'G', 11) :  None :                1.0 :   1.0
        ('E', 'G', 12) :  None :                1.0 :   1.0
         ('E', 'H', 0) :  None :                1.0 :   1.0
         ('E', 'H', 1) :  None :                1.0 :   1.0
         ('E', 'H', 2) :  None :               -0.0 :   1.0
         ('E', 'H', 3) :  None :                0.0 :   1.0
         ('E', 'H', 4) :  None :                0.0 :   1.0
         ('E', 'H', 5) :  None :                1.0 :   1.0
         ('E', 'H', 6) :  None :                1.0 :   1.0
         ('E', 'H', 7) :  None :                1.0 :   1.0
         ('E', 'H', 8) :  None :                1.0 :   1.0
         ('E', 'H', 9) :  None :               -0.0 :   1.0
        ('E', 'H', 10) :  None :               -0.0 :   1.0
        ('E', 'H', 11) :  None :               -0.0 :   1.0
        ('E', 'H', 12) :  None :                0.0 :   1.0
         ('E', 'I', 0) :  None :                0.0 :   1.0
         ('E', 'I', 1) :  None :               -0.0 :   1.0
         ('E', 'I', 2) :  None :               -0.0 :   1.0
         ('E', 'I', 3) :  None :                0.0 :   1.0
         ('E', 'I', 4) :  None :                0.0 :   1.0
         ('E', 'I', 5) :  None :               -0.0 :   1.0
         ('E', 'I', 6) :  None :                0.0 :   1.0
         ('E', 'I', 7) :  None :                1.0 :   1.0
         ('E', 'I', 8) :  None :                0.0 :   1.0
         ('E', 'I', 9) :  None :                0.0 :   1.0
        ('E', 'I', 10) :  None :                0.0 :   1.0
        ('E', 'I', 11) :  None :                0.0 :   1.0
        ('E', 'I', 12) :  None :                1.0 :   1.0
         ('E', 'J', 0) :  None :                0.0 :   1.0
         ('E', 'J', 1) :  None :                0.0 :   1.0
         ('E', 'J', 2) :  None :                0.0 :   1.0
         ('E', 'J', 3) :  None :                0.0 :   1.0
         ('E', 'J', 4) :  None :                0.0 :   1.0
         ('E', 'J', 5) :  None :                0.0 :   1.0
         ('E', 'J', 6) :  None :               -0.0 :   1.0
         ('E', 'J', 7) :  None :               -0.0 :   1.0
         ('E', 'J', 8) :  None :                0.0 :   1.0
         ('E', 'J', 9) :  None :                0.0 :   1.0
        ('E', 'J', 10) :  None :                1.0 :   1.0
        ('E', 'J', 11) :  None :                0.0 :   1.0
        ('E', 'J', 12) :  None :                0.0 :   1.0
         ('E', 'K', 0) :  None :                0.0 :   1.0
         ('E', 'K', 1) :  None :                0.0 :   1.0
         ('E', 'K', 2) :  None :                0.0 :   1.0
         ('E', 'K', 3) :  None :                0.0 :   1.0
         ('E', 'K', 4) :  None :                0.0 :   1.0
         ('E', 'K', 5) :  None :                0.0 :   1.0
         ('E', 'K', 6) :  None :                0.0 :   1.0
         ('E', 'K', 7) :  None :                0.0 :   1.0
         ('E', 'K', 8) :  None :                0.0 :   1.0
         ('E', 'K', 9) :  None :                0.0 :   1.0
        ('E', 'K', 10) :  None :                0.0 :   1.0
        ('E', 'K', 11) :  None :                0.0 :   1.0
        ('E', 'K', 12) :  None :                0.0 :   1.0
         ('E', 'L', 0) :  None :                0.0 :   1.0
         ('E', 'L', 1) :  None :                0.0 :   1.0
         ('E', 'L', 2) :  None :                0.0 :   1.0
         ('E', 'L', 3) :  None :                0.0 :   1.0
         ('E', 'L', 4) :  None :                0.0 :   1.0
         ('E', 'L', 5) :  None :                0.0 :   1.0
         ('E', 'L', 6) :  None :                0.0 :   1.0
         ('E', 'L', 7) :  None :                0.0 :   1.0
         ('E', 'L', 8) :  None :                0.0 :   1.0
         ('E', 'L', 9) :  None :                0.0 :   1.0
        ('E', 'L', 10) :  None :                0.0 :   1.0
        ('E', 'L', 11) :  None :                0.0 :   1.0
        ('E', 'L', 12) :  None :                0.0 :   1.0
         ('E', 'M', 0) :  None :               -0.0 :   1.0
         ('E', 'M', 1) :  None :               -0.0 :   1.0
         ('E', 'M', 2) :  None :               -0.0 :   1.0
         ('E', 'M', 3) :  None :                1.0 :   1.0
         ('E', 'M', 4) :  None :               -0.0 :   1.0
         ('E', 'M', 5) :  None :               -0.0 :   1.0
         ('E', 'M', 6) :  None :                0.0 :   1.0
         ('E', 'M', 7) :  None :               -0.0 :   1.0
         ('E', 'M', 8) :  None :                0.0 :   1.0
         ('E', 'M', 9) :  None :               -0.0 :   1.0
        ('E', 'M', 10) :  None :               -0.0 :   1.0
        ('E', 'M', 11) :  None :               -0.0 :   1.0
        ('E', 'M', 12) :  None :                0.0 :   1.0
         ('E', 'N', 0) :  None :               -0.0 :   1.0
         ('E', 'N', 1) :  None :                0.0 :   1.0
         ('E', 'N', 2) :  None :                0.0 :   1.0
         ('E', 'N', 3) :  None :                0.0 :   1.0
         ('E', 'N', 4) :  None :               -0.0 :   1.0
         ('E', 'N', 5) :  None :               -0.0 :   1.0
         ('E', 'N', 6) :  None :                0.0 :   1.0
         ('E', 'N', 7) :  None :               -0.0 :   1.0
         ('E', 'N', 8) :  None :                1.0 :   1.0
         ('E', 'N', 9) :  None :               -0.0 :   1.0
        ('E', 'N', 10) :  None :                1.0 :   1.0
        ('E', 'N', 11) :  None :               -0.0 :   1.0
        ('E', 'N', 12) :  None :                1.0 :   1.0
         ('L', 'A', 0) :  None :                1.0 :   1.0
         ('L', 'A', 1) :  None :                0.0 :   1.0
         ('L', 'A', 2) :  None :                1.0 :   1.0
         ('L', 'A', 3) :  None :                0.0 :   1.0
         ('L', 'A', 4) :  None :                0.0 :   1.0
         ('L', 'A', 5) :  None :                1.0 :   1.0
         ('L', 'A', 6) :  None :                1.0 :   1.0
         ('L', 'A', 7) :  None :                1.0 :   1.0
         ('L', 'A', 8) :  None :                1.0 :   1.0
         ('L', 'A', 9) :  None :                1.0 :   1.0
        ('L', 'A', 10) :  None :                0.0 :   1.0
        ('L', 'A', 11) :  None :                0.0 :   1.0
        ('L', 'A', 12) :  None :                0.0 :   1.0
         ('L', 'B', 0) :  None :                0.0 :   1.0
         ('L', 'B', 1) :  None :                1.0 :   1.0
         ('L', 'B', 2) :  None :                1.0 :   1.0
         ('L', 'B', 3) :  None : 0.9999999999999956 :   1.0
         ('L', 'B', 4) :  None :                0.0 :   1.0
         ('L', 'B', 5) :  None :                0.0 :   1.0
         ('L', 'B', 6) :  None :                1.0 :   1.0
         ('L', 'B', 7) :  None :                1.0 :   1.0
         ('L', 'B', 8) :  None :                1.0 :   1.0
         ('L', 'B', 9) :  None :                0.0 :   1.0
        ('L', 'B', 10) :  None :                0.0 :   1.0
        ('L', 'B', 11) :  None :                1.0 :   1.0
        ('L', 'B', 12) :  None :                0.0 :   1.0
         ('L', 'C', 0) :  None :                1.0 :   1.0
         ('L', 'C', 1) :  None :                0.0 :   1.0
         ('L', 'C', 2) :  None : 0.9999999999999912 :   1.0
         ('L', 'C', 3) :  None : 0.9999999999999983 :   1.0
         ('L', 'C', 4) :  None :                1.0 :   1.0
         ('L', 'C', 5) :  None :                1.0 :   1.0
         ('L', 'C', 6) :  None :                0.0 :   1.0
         ('L', 'C', 7) :  None :                0.0 :   1.0
         ('L', 'C', 8) :  None :                1.0 :   1.0
         ('L', 'C', 9) :  None :                1.0 :   1.0
        ('L', 'C', 10) :  None :                1.0 :   1.0
        ('L', 'C', 11) :  None :                0.0 :   1.0
        ('L', 'C', 12) :  None :                0.0 :   1.0
         ('L', 'D', 0) :  None :                1.0 :   1.0
         ('L', 'D', 1) :  None :                1.0 :   1.0
         ('L', 'D', 2) :  None :                1.0 :   1.0
         ('L', 'D', 3) :  None :                1.0 :   1.0
         ('L', 'D', 4) :  None :                0.0 :   1.0
         ('L', 'D', 5) :  None :                0.0 :   1.0
         ('L', 'D', 6) :  None :                0.0 :   1.0
         ('L', 'D', 7) :  None :                1.0 :   1.0
         ('L', 'D', 8) :  None :                1.0 :   1.0
         ('L', 'D', 9) :  None :                1.0 :   1.0
        ('L', 'D', 10) :  None :                0.0 :   1.0
        ('L', 'D', 11) :  None :                0.0 :   1.0
        ('L', 'D', 12) :  None :                1.0 :   1.0
         ('L', 'E', 0) :  None :                1.0 :   1.0
         ('L', 'E', 1) :  None :                0.0 :   1.0
         ('L', 'E', 2) :  None :                0.0 :   1.0
         ('L', 'E', 3) :  None :                1.0 :   1.0
         ('L', 'E', 4) :  None :                1.0 :   1.0
         ('L', 'E', 5) :  None :                1.0 :   1.0
         ('L', 'E', 6) :  None :                1.0 :   1.0
         ('L', 'E', 7) :  None :                0.0 :   1.0
         ('L', 'E', 8) :  None :                0.0 :   1.0
         ('L', 'E', 9) :  None :                1.0 :   1.0
        ('L', 'E', 10) :  None :                1.0 :   1.0
        ('L', 'E', 11) :  None :                1.0 :   1.0
        ('L', 'E', 12) :  None :                0.0 :   1.0
         ('L', 'F', 0) :  None :                0.0 :   1.0
         ('L', 'F', 1) :  None :                0.0 :   1.0
         ('L', 'F', 2) :  None :                1.0 :   1.0
         ('L', 'F', 3) :  None :                1.0 :   1.0
         ('L', 'F', 4) :  None :                1.0 :   1.0
         ('L', 'F', 5) :  None :                1.0 :   1.0
         ('L', 'F', 6) :  None :                1.0 :   1.0
         ('L', 'F', 7) :  None :                0.0 :   1.0
         ('L', 'F', 8) :  None :                1.0 :   1.0
         ('L', 'F', 9) :  None :                0.0 :   1.0
        ('L', 'F', 10) :  None :                1.0 :   1.0
        ('L', 'F', 11) :  None :                1.0 :   1.0
        ('L', 'F', 12) :  None :                0.0 :   1.0
         ('L', 'G', 0) :  None :                1.0 :   1.0
         ('L', 'G', 1) :  None :                1.0 :   1.0
         ('L', 'G', 2) :  None : 1.0000000000000089 :   1.0
         ('L', 'G', 3) :  None :                0.0 :   1.0
         ('L', 'G', 4) :  None :                0.0 :   1.0
         ('L', 'G', 5) :  None :                0.0 :   1.0
         ('L', 'G', 6) :  None :                0.0 :   1.0
         ('L', 'G', 7) :  None :                1.0 :   1.0
         ('L', 'G', 8) :  None :                1.0 :   1.0
         ('L', 'G', 9) :  None :                0.0 :   1.0
        ('L', 'G', 10) :  None :                1.0 :   1.0
        ('L', 'G', 11) :  None :                1.0 :   1.0
        ('L', 'G', 12) :  None :                1.0 :   1.0
         ('L', 'H', 0) :  None :                1.0 :   1.0
         ('L', 'H', 1) :  None :                0.0 :   1.0
         ('L', 'H', 2) :  None :                1.0 :   1.0
         ('L', 'H', 3) :  None :                0.0 :   1.0
         ('L', 'H', 4) :  None :                1.0 :   1.0
         ('L', 'H', 5) :  None :                1.0 :   1.0
         ('L', 'H', 6) :  None :                1.0 :   1.0
         ('L', 'H', 7) :  None :                1.0 :   1.0
         ('L', 'H', 8) :  None :                0.0 :   1.0
         ('L', 'H', 9) :  None :                1.0 :   1.0
        ('L', 'H', 10) :  None :                0.0 :   1.0
        ('L', 'H', 11) :  None :                0.0 :   1.0
        ('L', 'H', 12) :  None :                0.0 :   1.0
         ('L', 'I', 0) :  None :                0.0 :   1.0
         ('L', 'I', 1) :  None :                1.0 :   1.0
         ('L', 'I', 2) :  None :                1.0 :   1.0
         ('L', 'I', 3) :  None :                1.0 :   1.0
         ('L', 'I', 4) :  None :                1.0 :   1.0
         ('L', 'I', 5) :  None :                0.0 :   1.0
         ('L', 'I', 6) :  None :                1.0 :   1.0
         ('L', 'I', 7) :  None :                0.0 :   1.0
         ('L', 'I', 8) :  None :                1.0 :   1.0
         ('L', 'I', 9) :  None :                1.0 :   1.0
        ('L', 'I', 10) :  None :                0.0 :   1.0
        ('L', 'I', 11) :  None :                1.0 :   1.0
        ('L', 'I', 12) :  None :                0.0 :   1.0
         ('L', 'J', 0) :  None :                1.0 :   1.0
         ('L', 'J', 1) :  None :                1.0 :   1.0
         ('L', 'J', 2) :  None :                1.0 :   1.0
         ('L', 'J', 3) :  None : 0.9999999999999939 :   1.0
         ('L', 'J', 4) :  None :                1.0 :   1.0
         ('L', 'J', 5) :  None :                0.0 :   1.0
         ('L', 'J', 6) :  None :                0.0 :   1.0
         ('L', 'J', 7) :  None :                0.0 :   1.0
         ('L', 'J', 8) :  None :                0.0 :   1.0
         ('L', 'J', 9) :  None :                1.0 :   1.0
        ('L', 'J', 10) :  None :                0.0 :   1.0
        ('L', 'J', 11) :  None :                1.0 :   1.0
        ('L', 'J', 12) :  None :                1.0 :   1.0
         ('L', 'K', 0) :  None :                0.0 :   1.0
         ('L', 'K', 1) :  None :                0.0 :   1.0
         ('L', 'K', 2) :  None :                1.0 :   1.0
         ('L', 'K', 3) :  None :                0.0 :   1.0
         ('L', 'K', 4) :  None :                0.0 :   1.0
         ('L', 'K', 5) :  None :                0.0 :   1.0
         ('L', 'K', 6) :  None :                0.0 :   1.0
         ('L', 'K', 7) :  None :                0.0 :   1.0
         ('L', 'K', 8) :  None :                1.0 :   1.0
         ('L', 'K', 9) :  None :                0.0 :   1.0
        ('L', 'K', 10) :  None :                0.0 :   1.0
        ('L', 'K', 11) :  None :                0.0 :   1.0
        ('L', 'K', 12) :  None :                1.0 :   1.0
         ('L', 'L', 0) :  None : 0.9999999999999982 :   1.0
         ('L', 'L', 1) :  None :                0.0 :   1.0
         ('L', 'L', 2) :  None :                0.0 :   1.0
         ('L', 'L', 3) :  None :                0.0 :   1.0
         ('L', 'L', 4) :  None :                0.0 :   1.0
         ('L', 'L', 5) :  None :                0.0 :   1.0
         ('L', 'L', 6) :  None :                0.0 :   1.0
         ('L', 'L', 7) :  None :                0.0 :   1.0
         ('L', 'L', 8) :  None :                0.0 :   1.0
         ('L', 'L', 9) :  None :                0.0 :   1.0
        ('L', 'L', 10) :  None :                1.0 :   1.0
        ('L', 'L', 11) :  None :                0.0 :   1.0
        ('L', 'L', 12) :  None :                1.0 :   1.0
         ('L', 'M', 0) :  None :                0.0 :   1.0
         ('L', 'M', 1) :  None :                1.0 :   1.0
         ('L', 'M', 2) :  None :                1.0 :   1.0
         ('L', 'M', 3) :  None :                0.0 :   1.0
         ('L', 'M', 4) :  None :                0.0 :   1.0
         ('L', 'M', 5) :  None :                1.0 :   1.0
         ('L', 'M', 6) :  None :                1.0 :   1.0
         ('L', 'M', 7) :  None :                0.0 :   1.0
         ('L', 'M', 8) :  None :                0.0 :   1.0
         ('L', 'M', 9) :  None :                0.0 :   1.0
        ('L', 'M', 10) :  None :                0.0 :   1.0
        ('L', 'M', 11) :  None :                0.0 :   1.0
        ('L', 'M', 12) :  None :                0.0 :   1.0
         ('L', 'N', 0) :  None :                0.0 :   1.0
         ('L', 'N', 1) :  None :                0.0 :   1.0
         ('L', 'N', 2) :  None :                0.0 :   1.0
         ('L', 'N', 3) :  None :                0.0 :   1.0
         ('L', 'N', 4) :  None :                0.0 :   1.0
         ('L', 'N', 5) :  None :                0.0 :   1.0
         ('L', 'N', 6) :  None :                0.0 :   1.0
         ('L', 'N', 7) :  None :                1.0 :   1.0
         ('L', 'N', 8) :  None :                0.0 :   1.0
         ('L', 'N', 9) :  None :                1.0 :   1.0
        ('L', 'N', 10) :  None :                0.0 :   1.0
        ('L', 'N', 11) :  None :                1.0 :   1.0
        ('L', 'N', 12) :  None :                1.0 :   1.0
    constraint_max_nr_shifts : Size=28
        Key        : Lower : Body               : Upper
        ('A', 'E') :  None :                2.0 :  14.0
        ('A', 'L') :  None :                6.0 :  14.0
        ('B', 'E') :  None :  6.999999999999996 :  14.0
        ('B', 'L') :  None : 1.0000000000000107 :  14.0
        ('C', 'E') :  None :  6.999999999999989 :  14.0
        ('C', 'L') :  None :                1.0 :  14.0
        ('D', 'E') :  None :                9.0 :  14.0
        ('D', 'L') :  None :                0.0 :   0.0
        ('E', 'E') :  None :                0.0 :   0.0
        ('E', 'L') :  None :                8.0 :  14.0
        ('F', 'E') :  None :                1.0 :  14.0
        ('F', 'L') :  None :                7.0 :  14.0
        ('G', 'E') :  None :  7.000000000000009 :  14.0
        ('G', 'L') :  None :                2.0 :  14.0
        ('H', 'E') :  None :                6.0 :  14.0
        ('H', 'L') :  None :                2.0 :  14.0
        ('I', 'E') :  None :                2.0 :  14.0
        ('I', 'L') :  None :                7.0 :  14.0
        ('J', 'E') :  None :                1.0 :  14.0
        ('J', 'L') :  None :  7.999999999999994 :  14.0
        ('K', 'E') :  None :                0.0 :   0.0
        ('K', 'L') :  None :                4.0 :  14.0
        ('L', 'E') :  None :                0.0 :   0.0
        ('L', 'L') :  None : 3.9999999999999982 :  14.0
        ('M', 'E') :  None :                1.0 :  14.0
        ('M', 'L') :  None :                3.0 :  14.0
        ('N', 'E') :  None :                4.0 :  14.0
        ('N', 'L') :  None :                0.0 :  14.0
    constraint_max_total_minutes : Size=14
        Key : Lower : Body               : Upper
          A :  None :             3840.0 : 4320.0
          B :  None : 3840.0000000000027 : 4320.0
          C :  None :  3839.999999999995 : 4320.0
          D :  None :             4320.0 : 4320.0
          E :  None :             3840.0 : 4320.0
          F :  None :             3840.0 : 4320.0
          G :  None :  4320.000000000005 : 4320.0
          H :  None :             3840.0 : 4320.0
          I :  None :             4320.0 : 4320.0
          J :  None :  4319.999999999997 : 4320.0
          K :  None :             1920.0 : 2160.0
          L :  None :  1919.999999999999 : 2160.0
          M :  None :             1920.0 : 2160.0
          N :  None :             1920.0 : 2160.0
    constraint_min_total_minutes : Size=14
        Key : Lower  : Body               : Upper
          A : 3360.0 :             3840.0 :  None
          B : 3360.0 : 3840.0000000000027 :  None
          C : 3360.0 :  3839.999999999995 :  None
          D : 3360.0 :             4320.0 :  None
          E : 3360.0 :             3840.0 :  None
          F : 3360.0 :             3840.0 :  None
          G : 3360.0 :  4320.000000000005 :  None
          H : 3360.0 :             3840.0 :  None
          I : 3360.0 :             4320.0 :  None
          J : 3360.0 :  4319.999999999997 :  None
          K : 1200.0 :             1920.0 :  None
          L : 1200.0 :  1919.999999999999 :  None
          M : 1200.0 :             1920.0 :  None
          N : 1200.0 :             1920.0 :  None
    constraint_max_cons_shifts_backward : Size=126
        Key       : Lower : Body               : Upper
         ('A', 5) :   1.0 :                2.0 :  None
         ('A', 6) :   1.0 :                2.0 :  None
         ('A', 7) :   1.0 :                2.0 :  None
         ('A', 8) :   1.0 :                2.0 :  None
         ('A', 9) :   1.0 :                1.0 :  None
        ('A', 10) :   1.0 :                1.0 :  None
        ('A', 11) :   1.0 :                2.0 :  None
        ('A', 12) :   1.0 :                3.0 :  None
        ('A', 13) :   1.0 :                4.0 :  None
         ('B', 5) :   1.0 :                3.0 :  None
         ('B', 6) :   1.0 :                3.0 :  None
         ('B', 7) :   1.0 :                2.0 :  None
         ('B', 8) :   1.0 :                2.0 :  None
         ('B', 9) :   1.0 :                2.0 :  None
        ('B', 10) :   1.0 : 2.9999999999999956 :  None
        ('B', 11) :   1.0 :  2.999999999999991 :  None
        ('B', 12) :   1.0 : 1.9999999999999911 :  None
        ('B', 13) :   1.0 : 1.9999999999999911 :  None
         ('C', 5) :   1.0 :                2.0 :  None
         ('C', 6) :   1.0 :                2.0 :  None
         ('C', 7) :   1.0 :                2.0 :  None
         ('C', 8) :   1.0 :                2.0 :  None
         ('C', 9) :   1.0 :                2.0 :  None
        ('C', 10) :   1.0 :                2.0 :  None
        ('C', 11) :   1.0 :                2.0 :  None
        ('C', 12) :   1.0 :                3.0 :  None
        ('C', 13) :   1.0 :                3.0 :  None
         ('D', 5) :   1.0 :                1.0 :  None
         ('D', 6) :   1.0 :                2.0 :  None
         ('D', 7) :   1.0 :                3.0 :  None
         ('D', 8) :   1.0 :                3.0 :  None
         ('D', 9) :   1.0 :                3.0 :  None
        ('D', 10) :   1.0 :                3.0 :  None
        ('D', 11) :   1.0 :                3.0 :  None
        ('D', 12) :   1.0 :                3.0 :  None
        ('D', 13) :   1.0 :                2.0 :  None
         ('E', 5) :   1.0 :                2.0 :  None
         ('E', 6) :   1.0 :                2.0 :  None
         ('E', 7) :   1.0 :                2.0 :  None
         ('E', 8) :   1.0 :                2.0 :  None
         ('E', 9) :   1.0 :                2.0 :  None
        ('E', 10) :   1.0 :                2.0 :  None
        ('E', 11) :   1.0 :                2.0 :  None
        ('E', 12) :   1.0 :                3.0 :  None
        ('E', 13) :   1.0 :                3.0 :  None
         ('F', 5) :   1.0 :                2.0 :  None
         ('F', 6) :   1.0 :                1.0 :  None
         ('F', 7) :   1.0 :                1.0 :  None
         ('F', 8) :   1.0 :                2.0 :  None
         ('F', 9) :   1.0 :                2.0 :  None
        ('F', 10) :   1.0 :                2.0 :  None
        ('F', 11) :   1.0 :                2.0 :  None
        ('F', 12) :   1.0 :                3.0 :  None
        ('F', 13) :   1.0 :                3.0 :  None
         ('G', 5) :   1.0 :                2.0 :  None
         ('G', 6) :   1.0 :                3.0 :  None
         ('G', 7) :   1.0 :                3.0 :  None
         ('G', 8) :   1.0 :                3.0 :  None
         ('G', 9) :   1.0 :                4.0 :  None
        ('G', 10) :   1.0 :                4.0 :  None
        ('G', 11) :   1.0 :                3.0 :  None
        ('G', 12) :   1.0 :                2.0 :  None
        ('G', 13) :   1.0 :                2.0 :  None
         ('H', 5) :   1.0 :                2.0 :  None
         ('H', 6) :   1.0 :                2.0 :  None
         ('H', 7) :   1.0 :                2.0 :  None
         ('H', 8) :   1.0 :                2.0 :  None
         ('H', 9) :   1.0 :                1.0 :  None
        ('H', 10) :   1.0 :                1.0 :  None
        ('H', 11) :   1.0 :                2.0 :  None
        ('H', 12) :   1.0 :                3.0 :  None
        ('H', 13) :   1.0 :                4.0 :  None
         ('I', 5) :   1.0 :                2.0 :  None
         ('I', 6) :   1.0 :                2.0 :  None
         ('I', 7) :   1.0 :                2.0 :  None
         ('I', 8) :   1.0 :                2.0 :  None
         ('I', 9) :   1.0 :                2.0 :  None
        ('I', 10) :   1.0 :                3.0 :  None
        ('I', 11) :   1.0 :                3.0 :  None
        ('I', 12) :   1.0 :                2.0 :  None
        ('I', 13) :   1.0 :                2.0 :  None
         ('J', 5) :   1.0 :                1.0 :  None
         ('J', 6) :   1.0 :                2.0 :  None
         ('J', 7) :   1.0 :                3.0 :  None
         ('J', 8) :   1.0 :                4.0 :  None
         ('J', 9) :   1.0 :                5.0 :  None
        ('J', 10) :   1.0 :                5.0 :  None
        ('J', 11) :   1.0 :                4.0 :  None
        ('J', 12) :   1.0 :                3.0 :  None
        ('J', 13) :   1.0 :                2.0 :  None
         ('K', 5) :   1.0 :                5.0 :  None
         ('K', 6) :   1.0 :                5.0 :  None
         ('K', 7) :   1.0 :                5.0 :  None
         ('K', 8) :   1.0 :                5.0 :  None
         ('K', 9) :   1.0 :                5.0 :  None
        ('K', 10) :   1.0 :                5.0 :  None
        ('K', 11) :   1.0 :                5.0 :  None
        ('K', 12) :   1.0 :                4.0 :  None
        ('K', 13) :   1.0 :                3.0 :  None
         ('L', 5) :   1.0 :  5.000000000000002 :  None
         ('L', 6) :   1.0 :                6.0 :  None
         ('L', 7) :   1.0 :                6.0 :  None
         ('L', 8) :   1.0 :                6.0 :  None
         ('L', 9) :   1.0 :                6.0 :  None
        ('L', 10) :   1.0 :                5.0 :  None
        ('L', 11) :   1.0 :                5.0 :  None
        ('L', 12) :   1.0 :                4.0 :  None
        ('L', 13) :   1.0 :                3.0 :  None
         ('M', 5) :   1.0 :                3.0 :  None
         ('M', 6) :   1.0 :                2.0 :  None
         ('M', 7) :   1.0 :                3.0 :  None
         ('M', 8) :   1.0 :                3.0 :  None
         ('M', 9) :   1.0 :                4.0 :  None
        ('M', 10) :   1.0 :                4.0 :  None
        ('M', 11) :   1.0 :                5.0 :  None
        ('M', 12) :   1.0 :                6.0 :  None
        ('M', 13) :   1.0 :                6.0 :  None
         ('N', 5) :   1.0 :                6.0 :  None
         ('N', 6) :   1.0 :                6.0 :  None
         ('N', 7) :   1.0 :                6.0 :  None
         ('N', 8) :   1.0 :                5.0 :  None
         ('N', 9) :   1.0 :                5.0 :  None
        ('N', 10) :   1.0 :                4.0 :  None
        ('N', 11) :   1.0 :                4.0 :  None
        ('N', 12) :   1.0 :                3.0 :  None
        ('N', 13) :   1.0 :                2.0 :  None
    constraint_max_cons_shifts_forward : Size=0
        Key : Lower : Body : Upper
    constraint_max_cons_shifts_in_between : Size=0
        Key : Lower : Body : Upper
    constraint_is_end_of_work_block : Size=140
        Key       : Lower : Body                   : Upper
         ('A', 0) :  None :                   -1.0 :   0.0
         ('A', 1) :  None :                   -1.0 :   0.0
         ('A', 2) :  None :                    0.0 :   0.0
         ('A', 3) :  None :                   -1.0 :   0.0
         ('A', 4) :  None :                   -1.0 :   0.0
         ('A', 5) :  None :                    0.0 :   0.0
         ('A', 6) :  None :                   -1.0 :   0.0
         ('A', 7) :  None :                   -1.0 :   0.0
         ('A', 8) :  None :                   -1.0 :   0.0
         ('A', 9) :  None :                    0.0 :   0.0
        ('A', 10) :  None :                   -1.0 :   0.0
        ('A', 11) :  None :                    0.0 :   0.0
        ('A', 12) :  None :                    0.0 :   0.0
        ('A', 13) :   0.0 :                    0.0 :   0.0
         ('B', 0) :  None :                   -1.0 :   0.0
         ('B', 1) :  None :                   -1.0 :   0.0
         ('B', 2) :  None :                    0.0 :   0.0
         ('B', 3) :  None :                   -1.0 :   0.0
         ('B', 4) :  None :                    0.0 :   0.0
         ('B', 5) :  None :                   -1.0 :   0.0
         ('B', 6) :  None :                   -1.0 :   0.0
         ('B', 7) :  None :                    0.0 :   0.0
         ('B', 8) :  None :                   -1.0 :   0.0
         ('B', 9) :  None : -4.440892098500626e-15 :   0.0
        ('B', 10) :  None :                   -1.0 :   0.0
        ('B', 11) :  None :                   -1.0 :   0.0
        ('B', 12) :  None : -4.440892098500626e-15 :   0.0
        ('B', 13) :   0.0 :                    0.0 :   0.0
         ('C', 0) :  None :                    0.0 :   0.0
         ('C', 1) :  None :                   -1.0 :   0.0
         ('C', 2) :  None :                   -1.0 :   0.0
         ('C', 3) :  None :                    0.0 :   0.0
         ('C', 4) :  None :                   -1.0 :   0.0
         ('C', 5) :  None :                   -1.0 :   0.0
         ('C', 6) :  None :                    0.0 :   0.0
         ('C', 7) :  None :                   -1.0 :   0.0
         ('C', 8) :  None :                   -1.0 :   0.0
         ('C', 9) :  None :                    0.0 :   0.0
        ('C', 10) :  None :                   -1.0 :   0.0
        ('C', 11) :  None :                    0.0 :   0.0
        ('C', 12) :  None :                   -1.0 :   0.0
        ('C', 13) :   0.0 :                    0.0 :   0.0
         ('D', 0) :  None :                   -1.0 :   0.0
         ('D', 1) :  None :                   -1.0 :   0.0
         ('D', 2) :  None :                   -1.0 :   0.0
         ('D', 3) :  None :                   -1.0 :   0.0
         ('D', 4) :  None :                    0.0 :   0.0
         ('D', 5) :  None :                   -1.0 :   0.0
         ('D', 6) :  None :                    0.0 :   0.0
         ('D', 7) :  None :                   -1.0 :   0.0
         ('D', 8) :  None :                    0.0 :   0.0
         ('D', 9) :  None :                   -1.0 :   0.0
        ('D', 10) :  None :                    0.0 :   0.0
        ('D', 11) :  None :                   -1.0 :   0.0
        ('D', 12) :  None :                   -1.0 :   0.0
        ('D', 13) :   0.0 :                    0.0 :   0.0
         ('E', 0) :  None :                    0.0 :   0.0
         ('E', 1) :  None :                   -1.0 :   0.0
         ('E', 2) :  None :                   -1.0 :   0.0
         ('E', 3) :  None :                    0.0 :   0.0
         ('E', 4) :  None :                   -1.0 :   0.0
         ('E', 5) :  None :                   -1.0 :   0.0
         ('E', 6) :  None :                    0.0 :   0.0
         ('E', 7) :  None :                   -1.0 :   0.0
         ('E', 8) :  None :                   -1.0 :   0.0
         ('E', 9) :  None :                    0.0 :   0.0
        ('E', 10) :  None :                   -1.0 :   0.0
        ('E', 11) :  None :                    0.0 :   0.0
        ('E', 12) :  None :                   -1.0 :   0.0
        ('E', 13) :   0.0 :                    0.0 :   0.0
         ('F', 0) :  None :                   -1.0 :   0.0
         ('F', 1) :  None :                   -1.0 :   0.0
         ('F', 2) :  None :                    0.0 :   0.0
         ('F', 3) :  None :                   -1.0 :   0.0
         ('F', 4) :  None :                   -1.0 :   0.0
         ('F', 5) :  None :                   -1.0 :   0.0
         ('F', 6) :  None :                    0.0 :   0.0
         ('F', 7) :  None :                   -1.0 :   0.0
         ('F', 8) :  None :                   -1.0 :   0.0
         ('F', 9) :  None :                    0.0 :   0.0
        ('F', 10) :  None :                   -1.0 :   0.0
        ('F', 11) :  None :                    0.0 :   0.0
        ('F', 12) :  None :                   -1.0 :   0.0
        ('F', 13) :   0.0 :                    0.0 :   0.0
         ('G', 0) :  None :                   -1.0 :   0.0
         ('G', 1) :  None :                   -1.0 :   0.0
         ('G', 2) :  None :                   -1.0 :   0.0
         ('G', 3) :  None :                    0.0 :   0.0
         ('G', 4) :  None :                   -1.0 :   0.0
         ('G', 5) :  None :                    0.0 :   0.0
         ('G', 6) :  None :                   -1.0 :   0.0
         ('G', 7) :  None :                    0.0 :   0.0
         ('G', 8) :  None :                    0.0 :   0.0
         ('G', 9) :  None :                   -1.0 :   0.0
        ('G', 10) :  None :                   -1.0 :   0.0
        ('G', 11) :  None :                    0.0 :   0.0
        ('G', 12) :  None :                   -1.0 :   0.0
        ('G', 13) :   0.0 :                    0.0 :   0.0
         ('H', 0) :  None :                   -1.0 :   0.0
         ('H', 1) :  None :                   -1.0 :   0.0
         ('H', 2) :  None :                    0.0 :   0.0
         ('H', 3) :  None :                   -1.0 :   0.0
         ('H', 4) :  None :                   -1.0 :   0.0
         ('H', 5) :  None :                    0.0 :   0.0
         ('H', 6) :  None :                   -1.0 :   0.0
         ('H', 7) :  None :                   -1.0 :   0.0
         ('H', 8) :  None :                   -1.0 :   0.0
         ('H', 9) :  None :                    0.0 :   0.0
        ('H', 10) :  None :                   -1.0 :   0.0
        ('H', 11) :  None :                    0.0 :   0.0
        ('H', 12) :  None :                    0.0 :   0.0
        ('H', 13) :   0.0 :                    0.0 :   0.0
         ('I', 0) :  None :                   -2.0 :   0.0
         ('I', 1) :  None :                    0.0 :   0.0
         ('I', 2) :  None :                   -1.0 :   0.0
         ('I', 3) :  None :                   -1.0 :   0.0
         ('I', 4) :  None :                    0.0 :   0.0
         ('I', 5) :  None :                   -1.0 :   0.0
         ('I', 6) :  None :                   -1.0 :   0.0
         ('I', 7) :  None :                    0.0 :   0.0
         ('I', 8) :  None :                   -1.0 :   0.0
         ('I', 9) :  None :                    0.0 :   0.0
        ('I', 10) :  None :                   -1.0 :   0.0
        ('I', 11) :  None :                   -1.0 :   0.0
        ('I', 12) :  None :                    0.0 :   0.0
        ('I', 13) :   0.0 :                    0.0 :   0.0
         ('J', 0) :  None :                   -1.0 :   0.0
         ('J', 1) :  None :                   -1.0 :   0.0
         ('J', 2) :  None :                   -1.0 :   0.0
         ('J', 3) :  None :                   -1.0 :   0.0
         ('J', 4) :  None :                    0.0 :   0.0
         ('J', 5) :  None :                   -1.0 :   0.0
         ('J', 6) :  None :                    0.0 :   0.0
         ('J', 7) :  None :                    0.0 :   0.0
         ('J', 8) :  None :                    0.0 :   0.0
         ('J', 9) :  None :                   -1.0 :   0.0
        ('J', 10) :  None :                    0.0 :   0.0
        ('J', 11) :  None :                   -1.0 :   0.0
        ('J', 12) :  None :                   -1.0 :   0.0
        ('J', 13) :   0.0 :                    0.0 :   0.0
    constraint_min_cons_shift_inscope : Size=140
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
        ('A', 13) :  None :  1.0 :   1.0
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
        ('E', 13) :  None :  1.0 :   1.0
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
        ('F', 13) :  None :  1.0 :   1.0
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
         ('I', 0) :  None :  0.0 :   0.0
         ('I', 1) :  None :  1.0 :   1.0
         ('I', 2) :  None :  1.0 :   1.0
         ('I', 3) :  None :  1.0 :   1.0
         ('I', 4) :  None :  1.0 :   1.0
         ('I', 5) :  None :  1.0 :   1.0
         ('I', 6) :  None :  1.0 :   1.0
         ('I', 7) :  None :  1.0 :   1.0
         ('I', 8) :  None :  1.0 :   1.0
         ('I', 9) :  None :  1.0 :   1.0
        ('I', 10) :  None :  1.0 :   1.0
        ('I', 11) :  None :  1.0 :   1.0
        ('I', 12) :  None :  1.0 :   1.0
        ('I', 13) :  None :  0.0 :   1.0
         ('J', 0) :  None :  0.0 :   0.0
         ('J', 1) :  None :  1.0 :   1.0
         ('J', 2) :  None :  1.0 :   1.0
         ('J', 3) :  None :  1.0 :   1.0
         ('J', 4) :  None :  1.0 :   1.0
         ('J', 5) :  None :  1.0 :   1.0
         ('J', 6) :  None :  1.0 :   1.0
         ('J', 7) :  None :  1.0 :   1.0
         ('J', 8) :  None :  1.0 :   1.0
         ('J', 9) :  None :  1.0 :   1.0
        ('J', 10) :  None :  1.0 :   1.0
        ('J', 11) :  None :  1.0 :   1.0
        ('J', 12) :  None :  1.0 :   1.0
        ('J', 13) :  None :  0.0 :   1.0
    constraint_min_cons_shift_backward : Size=0
        Key : Lower : Body : Upper
    constraint_min_cons_shift_forward : Size=0
        Key : Lower : Body : Upper
    constraint_is_end_of_rest_block : Size=140
        Key       : Lower : Body                : Upper
         ('A', 0) :  None :                -1.0 :   0.0
         ('A', 1) :  None :                 0.0 :   0.0
         ('A', 2) :  None :                -1.0 :   0.0
         ('A', 3) :  None :                 0.0 :   0.0
         ('A', 4) :  None :                 0.0 :   0.0
         ('A', 5) :  None :                -1.0 :   0.0
         ('A', 6) :  None :                 0.0 :   0.0
         ('A', 7) :  None :                 0.0 :   0.0
         ('A', 8) :  None :                 0.0 :   0.0
         ('A', 9) :  None :                -1.0 :   0.0
        ('A', 10) :  None :                 0.0 :   0.0
        ('A', 11) :  None :                -1.0 :   0.0
        ('A', 12) :  None :                -1.0 :   0.0
        ('A', 13) :   0.0 :                 0.0 :   0.0
         ('B', 0) :  None :                -1.0 :   0.0
         ('B', 1) :  None :                 0.0 :   0.0
         ('B', 2) :  None :                -1.0 :   0.0
         ('B', 3) :  None :                 0.0 :   0.0
         ('B', 4) :  None :                -1.0 :   0.0
         ('B', 5) :  None :                 0.0 :   0.0
         ('B', 6) :  None :                 0.0 :   0.0
         ('B', 7) :  None :                -1.0 :   0.0
         ('B', 8) :  None :                 0.0 :   0.0
         ('B', 9) :  None : -0.9999999999999956 :   0.0
        ('B', 10) :  None :                 0.0 :   0.0
        ('B', 11) :  None :                 0.0 :   0.0
        ('B', 12) :  None : -0.9999999999999956 :   0.0
        ('B', 13) :   0.0 :                 0.0 :   0.0
         ('C', 0) :  None :                -2.0 :   0.0
         ('C', 1) :  None :                 0.0 :   0.0
         ('C', 2) :  None :                 0.0 :   0.0
         ('C', 3) :  None :                -1.0 :   0.0
         ('C', 4) :  None :                 0.0 :   0.0
         ('C', 5) :  None :                 0.0 :   0.0
         ('C', 6) :  None :                -1.0 :   0.0
         ('C', 7) :  None :                 0.0 :   0.0
         ('C', 8) :  None :                 0.0 :   0.0
         ('C', 9) :  None :                -1.0 :   0.0
        ('C', 10) :  None :                 0.0 :   0.0
        ('C', 11) :  None :                -1.0 :   0.0
        ('C', 12) :  None :                 0.0 :   0.0
        ('C', 13) :   0.0 :                 0.0 :   0.0
         ('D', 0) :  None :                -1.0 :   0.0
         ('D', 1) :  None :                 0.0 :   0.0
         ('D', 2) :  None :                 0.0 :   0.0
         ('D', 3) :  None :                 0.0 :   0.0
         ('D', 4) :  None :                -1.0 :   0.0
         ('D', 5) :  None :                 0.0 :   0.0
         ('D', 6) :  None :                -1.0 :   0.0
         ('D', 7) :  None :                 0.0 :   0.0
         ('D', 8) :  None :                -1.0 :   0.0
         ('D', 9) :  None :                 0.0 :   0.0
        ('D', 10) :  None :                -1.0 :   0.0
        ('D', 11) :  None :                 0.0 :   0.0
        ('D', 12) :  None :                 0.0 :   0.0
        ('D', 13) :   0.0 :                 0.0 :   0.0
         ('E', 0) :  None :                -2.0 :   0.0
         ('E', 1) :  None :                 0.0 :   0.0
         ('E', 2) :  None :                 0.0 :   0.0
         ('E', 3) :  None :                -1.0 :   0.0
         ('E', 4) :  None :                 0.0 :   0.0
         ('E', 5) :  None :                 0.0 :   0.0
         ('E', 6) :  None :                -1.0 :   0.0
         ('E', 7) :  None :                 0.0 :   0.0
         ('E', 8) :  None :                 0.0 :   0.0
         ('E', 9) :  None :                -1.0 :   0.0
        ('E', 10) :  None :                 0.0 :   0.0
        ('E', 11) :  None :                -1.0 :   0.0
        ('E', 12) :  None :                 0.0 :   0.0
        ('E', 13) :   0.0 :                 0.0 :   0.0
         ('F', 0) :  None :                -1.0 :   0.0
         ('F', 1) :  None :                 0.0 :   0.0
         ('F', 2) :  None :                -1.0 :   0.0
         ('F', 3) :  None :                 0.0 :   0.0
         ('F', 4) :  None :                 0.0 :   0.0
         ('F', 5) :  None :                 0.0 :   0.0
         ('F', 6) :  None :                -1.0 :   0.0
         ('F', 7) :  None :                 0.0 :   0.0
         ('F', 8) :  None :                 0.0 :   0.0
         ('F', 9) :  None :                -1.0 :   0.0
        ('F', 10) :  None :                 0.0 :   0.0
        ('F', 11) :  None :                -1.0 :   0.0
        ('F', 12) :  None :                 0.0 :   0.0
        ('F', 13) :   0.0 :                 0.0 :   0.0
         ('G', 0) :  None :                -1.0 :   0.0
         ('G', 1) :  None :                 0.0 :   0.0
         ('G', 2) :  None :                 0.0 :   0.0
         ('G', 3) :  None :                -1.0 :   0.0
         ('G', 4) :  None :                 0.0 :   0.0
         ('G', 5) :  None :                -1.0 :   0.0
         ('G', 6) :  None :                 0.0 :   0.0
         ('G', 7) :  None :                -1.0 :   0.0
         ('G', 8) :  None :                -1.0 :   0.0
         ('G', 9) :  None :                 0.0 :   0.0
        ('G', 10) :  None :                 0.0 :   0.0
        ('G', 11) :  None :                -1.0 :   0.0
        ('G', 12) :  None :                 0.0 :   0.0
        ('G', 13) :   0.0 :                 0.0 :   0.0
         ('H', 0) :  None :                -1.0 :   0.0
         ('H', 1) :  None :                 0.0 :   0.0
         ('H', 2) :  None :                -1.0 :   0.0
         ('H', 3) :  None :                 0.0 :   0.0
         ('H', 4) :  None :                 0.0 :   0.0
         ('H', 5) :  None :                -1.0 :   0.0
         ('H', 6) :  None :                 0.0 :   0.0
         ('H', 7) :  None :                 0.0 :   0.0
         ('H', 8) :  None :                 0.0 :   0.0
         ('H', 9) :  None :                -1.0 :   0.0
        ('H', 10) :  None :                 0.0 :   0.0
        ('H', 11) :  None :                -1.0 :   0.0
        ('H', 12) :  None :                -1.0 :   0.0
        ('H', 13) :   0.0 :                 0.0 :   0.0
         ('I', 0) :  None :                 0.0 :   0.0
         ('I', 1) :  None :                -1.0 :   0.0
         ('I', 2) :  None :                 0.0 :   0.0
         ('I', 3) :  None :                 0.0 :   0.0
         ('I', 4) :  None :                -1.0 :   0.0
         ('I', 5) :  None :                 0.0 :   0.0
         ('I', 6) :  None :                 0.0 :   0.0
         ('I', 7) :  None :                -1.0 :   0.0
         ('I', 8) :  None :                 0.0 :   0.0
         ('I', 9) :  None :                -1.0 :   0.0
        ('I', 10) :  None :                 0.0 :   0.0
        ('I', 11) :  None :                 0.0 :   0.0
        ('I', 12) :  None :                -1.0 :   0.0
        ('I', 13) :   0.0 :                 0.0 :   0.0
         ('J', 0) :  None :                -1.0 :   0.0
         ('J', 1) :  None :                 0.0 :   0.0
         ('J', 2) :  None :                 0.0 :   0.0
         ('J', 3) :  None :                 0.0 :   0.0
         ('J', 4) :  None :                -1.0 :   0.0
         ('J', 5) :  None :                 0.0 :   0.0
         ('J', 6) :  None :                -1.0 :   0.0
         ('J', 7) :  None :                -1.0 :   0.0
         ('J', 8) :  None :                -1.0 :   0.0
         ('J', 9) :  None :                 0.0 :   0.0
        ('J', 10) :  None :                -1.0 :   0.0
        ('J', 11) :  None :                 0.0 :   0.0
        ('J', 12) :  None :                 0.0 :   0.0
        ('J', 13) :   0.0 :                 0.0 :   0.0
    constraint_min_cons_days_off_inscope : Size=140
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
        ('A', 13) :  None : -1.0 :   0.0
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
        ('E', 13) :  None : -1.0 :   0.0
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
        ('F', 13) :  None : -1.0 :   0.0
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
         ('I', 0) :  None :  0.0 :   0.0
         ('I', 1) :  None :  0.0 :   0.0
         ('I', 2) :  None :  0.0 :   0.0
         ('I', 3) :  None :  0.0 :   0.0
         ('I', 4) :  None :  0.0 :   0.0
         ('I', 5) :  None :  0.0 :   0.0
         ('I', 6) :  None :  0.0 :   0.0
         ('I', 7) :  None :  0.0 :   0.0
         ('I', 8) :  None :  0.0 :   0.0
         ('I', 9) :  None :  0.0 :   0.0
        ('I', 10) :  None :  0.0 :   0.0
        ('I', 11) :  None :  0.0 :   0.0
        ('I', 12) :  None :  0.0 :   0.0
        ('I', 13) :  None :  0.0 :   0.0
         ('J', 0) :  None :  0.0 :   0.0
         ('J', 1) :  None :  0.0 :   0.0
         ('J', 2) :  None :  0.0 :   0.0
         ('J', 3) :  None :  0.0 :   0.0
         ('J', 4) :  None :  0.0 :   0.0
         ('J', 5) :  None :  0.0 :   0.0
         ('J', 6) :  None :  0.0 :   0.0
         ('J', 7) :  None :  0.0 :   0.0
         ('J', 8) :  None :  0.0 :   0.0
         ('J', 9) :  None :  0.0 :   0.0
        ('J', 10) :  None :  0.0 :   0.0
        ('J', 11) :  None :  0.0 :   0.0
        ('J', 12) :  None :  0.0 :   0.0
        ('J', 13) :  None :  0.0 :   0.0
    constraint_min_cons_days_off_backward : Size=0
        Key : Lower : Body : Upper
    constraint_min_cons_days_off_forward : Size=0
        Key : Lower : Body : Upper
    constraint_has_weekend_work_lb : Size=0
        Key : Lower : Body : Upper
    constraint_has_weekend_work : Size=56
        Key       : Lower : Body : Upper
         ('A', 5) :  None :  0.0 :   0.0
         ('A', 6) :  None :  0.0 :   0.0
        ('A', 12) :  None :  0.0 :   0.0
        ('A', 13) :  None :  0.0 :   0.0
         ('B', 5) :  None :  0.0 :   0.0
         ('B', 6) :  None :  0.0 :   0.0
        ('B', 12) :  None :  0.0 :   0.0
        ('B', 13) :  None :  0.0 :   0.0
         ('C', 5) :  None :  0.0 :   0.0
         ('C', 6) :  None :  0.0 :   0.0
        ('C', 12) :  None :  0.0 :   0.0
        ('C', 13) :  None :  0.0 :   0.0
         ('D', 5) :  None :  0.0 :   0.0
         ('D', 6) :  None :  0.0 :   0.0
        ('D', 12) :  None : -1.0 :   0.0
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
         ('H', 6) :  None :  0.0 :   0.0
        ('H', 12) :  None :  0.0 :   0.0
        ('H', 13) :  None :  0.0 :   0.0
         ('I', 5) :  None :  0.0 :   0.0
         ('I', 6) :  None :  0.0 :   0.0
        ('I', 12) :  None :  0.0 :   0.0
        ('I', 13) :  None :  0.0 :   0.0
         ('J', 5) :  None :  0.0 :   0.0
         ('J', 6) :  None :  0.0 :   0.0
        ('J', 12) :  None :  0.0 :   0.0
        ('J', 13) :  None :  0.0 :   0.0
         ('K', 5) :  None :  0.0 :   0.0
         ('K', 6) :  None :  0.0 :   0.0
        ('K', 12) :  None :  0.0 :   0.0
        ('K', 13) :  None :  0.0 :   0.0
         ('L', 5) :  None :  0.0 :   0.0
         ('L', 6) :  None :  0.0 :   0.0
        ('L', 12) :  None :  0.0 :   0.0
        ('L', 13) :  None :  0.0 :   0.0
         ('M', 5) :  None :  0.0 :   0.0
         ('M', 6) :  None :  0.0 :   0.0
        ('M', 12) :  None :  0.0 :   0.0
        ('M', 13) :  None :  0.0 :   0.0
         ('N', 5) :  None :  0.0 :   0.0
         ('N', 6) :  None :  0.0 :   0.0
        ('N', 12) :  None :  0.0 :   0.0
        ('N', 13) :  None :  0.0 :   0.0
    constraint_max_nr_weekend : Size=14
        Key : Lower : Body : Upper
          A :  None :  1.0 :   1.0
          B :  None :  1.0 :   1.0
          C :  None :  1.0 :   1.0
          D :  None :  1.0 :   1.0
          E :  None :  1.0 :   1.0
          F :  None :  1.0 :   1.0
          G :  None :  1.0 :   1.0
          H :  None :  1.0 :   1.0
          I :  None :  1.0 :   1.0
          J :  None :  1.0 :   1.0
          K :  None :  1.0 :   1.0
          L :  None :  1.0 :   1.0
          M :  None :  1.0 :   1.0
          N :  None :  1.0 :   1.0
    constraint_days_off : Size=14
        Key       : Lower : Body : Upper
         ('A', 3) :   1.0 :  1.0 :   1.0
         ('B', 1) :   1.0 :  1.0 :   1.0
         ('C', 2) :   1.0 :  1.0 :   1.0
        ('D', 12) :   1.0 :  1.0 :   1.0
         ('E', 1) :   1.0 :  1.0 :   1.0
        ('F', 13) :   1.0 :  1.0 :   1.0
         ('G', 9) :   1.0 :  1.0 :   1.0
         ('H', 3) :   1.0 :  1.0 :   1.0
         ('I', 0) :   1.0 :  1.0 :   1.0
         ('J', 8) :   1.0 :  1.0 :   1.0
         ('K', 5) :   1.0 :  1.0 :   1.0
         ('L', 2) :   1.0 :  1.0 :   1.0
         ('M', 8) :   1.0 :  1.0 :   1.0
         ('N', 6) :   1.0 :  1.0 :   1.0
    constraint_shift_on_request : Size=392
        Key            : Lower : Body : Upper
         ('E', 'A', 0) :   0.0 :  0.0 :   0.0
         ('E', 'A', 1) :   0.0 :  0.0 :   0.0
         ('E', 'A', 2) :   0.0 :  0.0 :   0.0
         ('E', 'A', 3) :   0.0 :  0.0 :   0.0
         ('E', 'A', 4) :   0.0 :  0.0 :   0.0
         ('E', 'A', 5) :   0.0 :  0.0 :   0.0
         ('E', 'A', 6) :   0.0 :  0.0 :   0.0
         ('E', 'A', 7) :   0.0 :  0.0 :   0.0
         ('E', 'A', 8) :   0.0 :  0.0 :   0.0
         ('E', 'A', 9) :   0.0 :  0.0 :   0.0
        ('E', 'A', 10) :   0.0 :  0.0 :   0.0
        ('E', 'A', 11) :   0.0 :  0.0 :   0.0
        ('E', 'A', 12) :   0.0 :  0.0 :   0.0
        ('E', 'A', 13) :   0.0 :  0.0 :   0.0
         ('E', 'B', 0) :   0.0 :  0.0 :   0.0
         ('E', 'B', 1) :   0.0 :  0.0 :   0.0
         ('E', 'B', 2) :   0.0 :  0.0 :   0.0
         ('E', 'B', 3) :   0.0 :  0.0 :   0.0
         ('E', 'B', 4) :   0.0 :  0.0 :   0.0
         ('E', 'B', 5) :   0.0 :  0.0 :   0.0
         ('E', 'B', 6) :   0.0 :  0.0 :   0.0
         ('E', 'B', 7) :   0.0 :  0.0 :   0.0
         ('E', 'B', 8) :   0.0 :  0.0 :   0.0
         ('E', 'B', 9) :   0.0 :  0.0 :   0.0
        ('E', 'B', 10) :   0.0 :  0.0 :   0.0
        ('E', 'B', 11) :   0.0 :  0.0 :   0.0
        ('E', 'B', 12) :   0.0 :  0.0 :   0.0
        ('E', 'B', 13) :   0.0 :  0.0 :   0.0
         ('E', 'C', 0) :   0.0 :  0.0 :   0.0
         ('E', 'C', 1) :   0.0 :  0.0 :   0.0
         ('E', 'C', 2) :   0.0 :  0.0 :   0.0
         ('E', 'C', 3) :   0.0 :  0.0 :   0.0
         ('E', 'C', 4) :   0.0 :  0.0 :   0.0
         ('E', 'C', 5) :   0.0 :  0.0 :   0.0
         ('E', 'C', 6) :   0.0 :  0.0 :   0.0
         ('E', 'C', 7) :   0.0 :  0.0 :   0.0
         ('E', 'C', 8) :   0.0 :  0.0 :   0.0
         ('E', 'C', 9) :   0.0 :  0.0 :   0.0
        ('E', 'C', 10) :   0.0 :  0.0 :   0.0
        ('E', 'C', 11) :   0.0 :  0.0 :   0.0
        ('E', 'C', 12) :   0.0 :  0.0 :   0.0
        ('E', 'C', 13) :   0.0 :  0.0 :   0.0
         ('E', 'D', 0) :   0.0 :  0.0 :   0.0
         ('E', 'D', 1) :   0.0 :  0.0 :   0.0
         ('E', 'D', 2) :   0.0 :  0.0 :   0.0
         ('E', 'D', 3) :   0.0 :  0.0 :   0.0
         ('E', 'D', 4) :   0.0 :  0.0 :   0.0
         ('E', 'D', 5) :   0.0 :  0.0 :   0.0
         ('E', 'D', 6) :   0.0 :  0.0 :   0.0
         ('E', 'D', 7) :   0.0 :  0.0 :   0.0
         ('E', 'D', 8) :   0.0 :  0.0 :   0.0
         ('E', 'D', 9) :   0.0 :  0.0 :   0.0
        ('E', 'D', 10) :   0.0 :  0.0 :   0.0
        ('E', 'D', 11) :   0.0 :  0.0 :   0.0
        ('E', 'D', 12) :   0.0 :  0.0 :   0.0
        ('E', 'D', 13) :   0.0 :  0.0 :   0.0
         ('E', 'E', 0) :   0.0 :  0.0 :   0.0
         ('E', 'E', 1) :   0.0 :  0.0 :   0.0
         ('E', 'E', 2) :   0.0 :  0.0 :   0.0
         ('E', 'E', 3) :   0.0 :  0.0 :   0.0
         ('E', 'E', 4) :   0.0 :  0.0 :   0.0
         ('E', 'E', 5) :   0.0 :  0.0 :   0.0
         ('E', 'E', 6) :   0.0 :  0.0 :   0.0
         ('E', 'E', 7) :   0.0 :  0.0 :   0.0
         ('E', 'E', 8) :   0.0 :  0.0 :   0.0
         ('E', 'E', 9) :   0.0 :  0.0 :   0.0
        ('E', 'E', 10) :   0.0 :  0.0 :   0.0
        ('E', 'E', 11) :   0.0 :  0.0 :   0.0
        ('E', 'E', 12) :   0.0 :  0.0 :   0.0
        ('E', 'E', 13) :   0.0 :  0.0 :   0.0
         ('E', 'F', 0) :   0.0 :  0.0 :   0.0
         ('E', 'F', 1) :   0.0 :  0.0 :   0.0
         ('E', 'F', 2) :   0.0 :  0.0 :   0.0
         ('E', 'F', 3) :   0.0 :  0.0 :   0.0
         ('E', 'F', 4) :   0.0 :  0.0 :   0.0
         ('E', 'F', 5) :   0.0 :  0.0 :   0.0
         ('E', 'F', 6) :   0.0 :  0.0 :   0.0
         ('E', 'F', 7) :   0.0 :  0.0 :   0.0
         ('E', 'F', 8) :   0.0 :  0.0 :   0.0
         ('E', 'F', 9) :   0.0 :  0.0 :   0.0
        ('E', 'F', 10) :   0.0 :  0.0 :   0.0
        ('E', 'F', 11) :   0.0 :  0.0 :   0.0
        ('E', 'F', 12) :   0.0 :  0.0 :   0.0
        ('E', 'F', 13) :   0.0 :  0.0 :   0.0
         ('E', 'G', 0) :   0.0 :  0.0 :   0.0
         ('E', 'G', 1) :   0.0 :  0.0 :   0.0
         ('E', 'G', 2) :   0.0 :  0.0 :   0.0
         ('E', 'G', 3) :   0.0 :  0.0 :   0.0
         ('E', 'G', 4) :   0.0 :  0.0 :   0.0
         ('E', 'G', 5) :   0.0 :  0.0 :   0.0
         ('E', 'G', 6) :   0.0 :  0.0 :   0.0
         ('E', 'G', 7) :   0.0 :  0.0 :   0.0
         ('E', 'G', 8) :   0.0 :  0.0 :   0.0
         ('E', 'G', 9) :   0.0 :  0.0 :   0.0
        ('E', 'G', 10) :   0.0 :  0.0 :   0.0
        ('E', 'G', 11) :   0.0 :  0.0 :   0.0
        ('E', 'G', 12) :   0.0 :  0.0 :   0.0
        ('E', 'G', 13) :   0.0 :  0.0 :   0.0
         ('E', 'H', 0) :   0.0 :  0.0 :   0.0
         ('E', 'H', 1) :   0.0 :  0.0 :   0.0
         ('E', 'H', 2) :   0.0 :  0.0 :   0.0
         ('E', 'H', 3) :   0.0 :  0.0 :   0.0
         ('E', 'H', 4) :   0.0 :  0.0 :   0.0
         ('E', 'H', 5) :   0.0 :  0.0 :   0.0
         ('E', 'H', 6) :   0.0 :  0.0 :   0.0
         ('E', 'H', 7) :   0.0 :  0.0 :   0.0
         ('E', 'H', 8) :   0.0 :  0.0 :   0.0
         ('E', 'H', 9) :   0.0 :  0.0 :   0.0
        ('E', 'H', 10) :   0.0 :  0.0 :   0.0
        ('E', 'H', 11) :   0.0 :  0.0 :   0.0
        ('E', 'H', 12) :   0.0 :  0.0 :   0.0
        ('E', 'H', 13) :   0.0 :  0.0 :   0.0
         ('E', 'I', 0) :   0.0 :  0.0 :   0.0
         ('E', 'I', 1) :   0.0 :  0.0 :   0.0
         ('E', 'I', 2) :   0.0 :  0.0 :   0.0
         ('E', 'I', 3) :   0.0 :  0.0 :   0.0
         ('E', 'I', 4) :   0.0 :  0.0 :   0.0
         ('E', 'I', 5) :   0.0 :  0.0 :   0.0
         ('E', 'I', 6) :   0.0 :  0.0 :   0.0
         ('E', 'I', 7) :   0.0 :  0.0 :   0.0
         ('E', 'I', 8) :   0.0 :  0.0 :   0.0
         ('E', 'I', 9) :   0.0 :  0.0 :   0.0
        ('E', 'I', 10) :   0.0 :  0.0 :   0.0
        ('E', 'I', 11) :   0.0 :  0.0 :   0.0
        ('E', 'I', 12) :   0.0 :  0.0 :   0.0
        ('E', 'I', 13) :   0.0 :  0.0 :   0.0
         ('E', 'J', 0) :   0.0 :  0.0 :   0.0
         ('E', 'J', 1) :   0.0 :  0.0 :   0.0
         ('E', 'J', 2) :   0.0 :  0.0 :   0.0
         ('E', 'J', 3) :   0.0 :  0.0 :   0.0
         ('E', 'J', 4) :   0.0 :  0.0 :   0.0
         ('E', 'J', 5) :   0.0 :  0.0 :   0.0
         ('E', 'J', 6) :   0.0 :  0.0 :   0.0
         ('E', 'J', 7) :   0.0 :  0.0 :   0.0
         ('E', 'J', 8) :   0.0 :  0.0 :   0.0
         ('E', 'J', 9) :   0.0 :  0.0 :   0.0
        ('E', 'J', 10) :   0.0 :  0.0 :   0.0
        ('E', 'J', 11) :   0.0 :  0.0 :   0.0
        ('E', 'J', 12) :   0.0 :  0.0 :   0.0
        ('E', 'J', 13) :   0.0 :  0.0 :   0.0
         ('E', 'K', 0) :   0.0 :  0.0 :   0.0
         ('E', 'K', 1) :   0.0 :  0.0 :   0.0
         ('E', 'K', 2) :   0.0 :  0.0 :   0.0
         ('E', 'K', 3) :   0.0 :  0.0 :   0.0
         ('E', 'K', 4) :   0.0 :  0.0 :   0.0
         ('E', 'K', 5) :   0.0 :  0.0 :   0.0
         ('E', 'K', 6) :   0.0 :  0.0 :   0.0
         ('E', 'K', 7) :   0.0 :  0.0 :   0.0
         ('E', 'K', 8) :   0.0 :  0.0 :   0.0
         ('E', 'K', 9) :   0.0 :  0.0 :   0.0
        ('E', 'K', 10) :   0.0 :  0.0 :   0.0
        ('E', 'K', 11) :   0.0 :  0.0 :   0.0
        ('E', 'K', 12) :   0.0 :  0.0 :   0.0
        ('E', 'K', 13) :   0.0 :  0.0 :   0.0
         ('E', 'L', 0) :   0.0 :  0.0 :   0.0
         ('E', 'L', 1) :   0.0 :  0.0 :   0.0
         ('E', 'L', 2) :   0.0 :  0.0 :   0.0
         ('E', 'L', 3) :   0.0 :  0.0 :   0.0
         ('E', 'L', 4) :   0.0 :  0.0 :   0.0
         ('E', 'L', 5) :   0.0 :  0.0 :   0.0
         ('E', 'L', 6) :   0.0 :  0.0 :   0.0
         ('E', 'L', 7) :   0.0 :  0.0 :   0.0
         ('E', 'L', 8) :   0.0 :  0.0 :   0.0
         ('E', 'L', 9) :   0.0 :  0.0 :   0.0
        ('E', 'L', 10) :   0.0 :  0.0 :   0.0
        ('E', 'L', 11) :   0.0 :  0.0 :   0.0
        ('E', 'L', 12) :   0.0 :  0.0 :   0.0
        ('E', 'L', 13) :   0.0 :  0.0 :   0.0
         ('E', 'M', 0) :   0.0 :  0.0 :   0.0
         ('E', 'M', 1) :   0.0 :  0.0 :   0.0
         ('E', 'M', 2) :   0.0 :  0.0 :   0.0
         ('E', 'M', 3) :   0.0 :  0.0 :   0.0
         ('E', 'M', 4) :   0.0 :  0.0 :   0.0
         ('E', 'M', 5) :   0.0 :  0.0 :   0.0
         ('E', 'M', 6) :   0.0 :  0.0 :   0.0
         ('E', 'M', 7) :   0.0 :  0.0 :   0.0
         ('E', 'M', 8) :   0.0 :  0.0 :   0.0
         ('E', 'M', 9) :   0.0 :  0.0 :   0.0
        ('E', 'M', 10) :   0.0 :  0.0 :   0.0
        ('E', 'M', 11) :   0.0 :  0.0 :   0.0
        ('E', 'M', 12) :   0.0 :  0.0 :   0.0
        ('E', 'M', 13) :   0.0 :  0.0 :   0.0
         ('E', 'N', 0) :   0.0 :  0.0 :   0.0
         ('E', 'N', 1) :   0.0 :  0.0 :   0.0
         ('E', 'N', 2) :   0.0 :  0.0 :   0.0
         ('E', 'N', 3) :   0.0 :  0.0 :   0.0
         ('E', 'N', 4) :   0.0 :  0.0 :   0.0
         ('E', 'N', 5) :   0.0 :  0.0 :   0.0
         ('E', 'N', 6) :   0.0 :  0.0 :   0.0
         ('E', 'N', 7) :   0.0 :  0.0 :   0.0
         ('E', 'N', 8) :   0.0 :  0.0 :   0.0
         ('E', 'N', 9) :   0.0 :  0.0 :   0.0
        ('E', 'N', 10) :   0.0 :  0.0 :   0.0
        ('E', 'N', 11) :   0.0 :  0.0 :   0.0
        ('E', 'N', 12) :   0.0 :  0.0 :   0.0
        ('E', 'N', 13) :   0.0 :  0.0 :   0.0
         ('L', 'A', 0) :   0.0 :  0.0 :   0.0
         ('L', 'A', 1) :   0.0 :  0.0 :   0.0
         ('L', 'A', 2) :   0.0 :  0.0 :   0.0
         ('L', 'A', 3) :   0.0 :  0.0 :   0.0
         ('L', 'A', 4) :   0.0 :  0.0 :   0.0
         ('L', 'A', 5) :   0.0 :  0.0 :   0.0
         ('L', 'A', 6) :   0.0 :  0.0 :   0.0
         ('L', 'A', 7) :   0.0 :  0.0 :   0.0
         ('L', 'A', 8) :   0.0 :  0.0 :   0.0
         ('L', 'A', 9) :   0.0 :  0.0 :   0.0
        ('L', 'A', 10) :   0.0 :  0.0 :   0.0
        ('L', 'A', 11) :   0.0 :  0.0 :   0.0
        ('L', 'A', 12) :   0.0 :  0.0 :   0.0
        ('L', 'A', 13) :   0.0 :  0.0 :   0.0
         ('L', 'B', 0) :   0.0 :  0.0 :   0.0
         ('L', 'B', 1) :   0.0 :  0.0 :   0.0
         ('L', 'B', 2) :   0.0 :  0.0 :   0.0
         ('L', 'B', 3) :   0.0 :  0.0 :   0.0
         ('L', 'B', 4) :   0.0 :  0.0 :   0.0
         ('L', 'B', 5) :   0.0 :  0.0 :   0.0
         ('L', 'B', 6) :   0.0 :  0.0 :   0.0
         ('L', 'B', 7) :   0.0 :  0.0 :   0.0
         ('L', 'B', 8) :   0.0 :  0.0 :   0.0
         ('L', 'B', 9) :   0.0 :  0.0 :   0.0
        ('L', 'B', 10) :   0.0 :  0.0 :   0.0
        ('L', 'B', 11) :   0.0 :  0.0 :   0.0
        ('L', 'B', 12) :   0.0 :  0.0 :   0.0
        ('L', 'B', 13) :   0.0 :  0.0 :   0.0
         ('L', 'C', 0) :   0.0 :  0.0 :   0.0
         ('L', 'C', 1) :   0.0 :  0.0 :   0.0
         ('L', 'C', 2) :   0.0 :  0.0 :   0.0
         ('L', 'C', 3) :   0.0 :  0.0 :   0.0
         ('L', 'C', 4) :   0.0 :  0.0 :   0.0
         ('L', 'C', 5) :   0.0 :  0.0 :   0.0
         ('L', 'C', 6) :   0.0 :  0.0 :   0.0
         ('L', 'C', 7) :   0.0 :  0.0 :   0.0
         ('L', 'C', 8) :   0.0 :  0.0 :   0.0
         ('L', 'C', 9) :   0.0 :  0.0 :   0.0
        ('L', 'C', 10) :   0.0 :  0.0 :   0.0
        ('L', 'C', 11) :   0.0 :  0.0 :   0.0
        ('L', 'C', 12) :   0.0 :  0.0 :   0.0
        ('L', 'C', 13) :   0.0 :  0.0 :   0.0
         ('L', 'D', 0) :   0.0 :  0.0 :   0.0
         ('L', 'D', 1) :   0.0 :  0.0 :   0.0
         ('L', 'D', 2) :   0.0 :  0.0 :   0.0
         ('L', 'D', 3) :   0.0 :  0.0 :   0.0
         ('L', 'D', 4) :   0.0 :  0.0 :   0.0
         ('L', 'D', 5) :   0.0 :  0.0 :   0.0
         ('L', 'D', 6) :   0.0 :  0.0 :   0.0
         ('L', 'D', 7) :   0.0 :  0.0 :   0.0
         ('L', 'D', 8) :   0.0 :  0.0 :   0.0
         ('L', 'D', 9) :   0.0 :  0.0 :   0.0
        ('L', 'D', 10) :   0.0 :  0.0 :   0.0
        ('L', 'D', 11) :   0.0 :  0.0 :   0.0
        ('L', 'D', 12) :   0.0 :  0.0 :   0.0
        ('L', 'D', 13) :   0.0 :  0.0 :   0.0
         ('L', 'E', 0) :   0.0 :  0.0 :   0.0
         ('L', 'E', 1) :   0.0 :  0.0 :   0.0
         ('L', 'E', 2) :   0.0 :  0.0 :   0.0
         ('L', 'E', 3) :   0.0 :  0.0 :   0.0
         ('L', 'E', 4) :   0.0 :  0.0 :   0.0
         ('L', 'E', 5) :   0.0 :  0.0 :   0.0
         ('L', 'E', 6) :   0.0 :  0.0 :   0.0
         ('L', 'E', 7) :   0.0 :  0.0 :   0.0
         ('L', 'E', 8) :   0.0 :  0.0 :   0.0
         ('L', 'E', 9) :   0.0 :  0.0 :   0.0
        ('L', 'E', 10) :   0.0 :  0.0 :   0.0
        ('L', 'E', 11) :   0.0 :  0.0 :   0.0
        ('L', 'E', 12) :   0.0 :  0.0 :   0.0
        ('L', 'E', 13) :   0.0 :  0.0 :   0.0
         ('L', 'F', 0) :   0.0 :  0.0 :   0.0
         ('L', 'F', 1) :   0.0 :  0.0 :   0.0
         ('L', 'F', 2) :   0.0 :  0.0 :   0.0
         ('L', 'F', 3) :   0.0 :  0.0 :   0.0
         ('L', 'F', 4) :   0.0 :  0.0 :   0.0
         ('L', 'F', 5) :   0.0 :  0.0 :   0.0
         ('L', 'F', 6) :   0.0 :  0.0 :   0.0
         ('L', 'F', 7) :   0.0 :  0.0 :   0.0
         ('L', 'F', 8) :   0.0 :  0.0 :   0.0
         ('L', 'F', 9) :   0.0 :  0.0 :   0.0
        ('L', 'F', 10) :   0.0 :  0.0 :   0.0
        ('L', 'F', 11) :   0.0 :  0.0 :   0.0
        ('L', 'F', 12) :   0.0 :  0.0 :   0.0
        ('L', 'F', 13) :   0.0 :  0.0 :   0.0
         ('L', 'G', 0) :   0.0 :  0.0 :   0.0
         ('L', 'G', 1) :   0.0 :  0.0 :   0.0
         ('L', 'G', 2) :   0.0 :  0.0 :   0.0
         ('L', 'G', 3) :   0.0 :  0.0 :   0.0
         ('L', 'G', 4) :   0.0 :  0.0 :   0.0
         ('L', 'G', 5) :   0.0 :  0.0 :   0.0
         ('L', 'G', 6) :   0.0 :  0.0 :   0.0
         ('L', 'G', 7) :   0.0 :  0.0 :   0.0
         ('L', 'G', 8) :   0.0 :  0.0 :   0.0
         ('L', 'G', 9) :   0.0 :  0.0 :   0.0
        ('L', 'G', 10) :   0.0 :  0.0 :   0.0
        ('L', 'G', 11) :   0.0 :  0.0 :   0.0
        ('L', 'G', 12) :   0.0 :  0.0 :   0.0
        ('L', 'G', 13) :   0.0 :  0.0 :   0.0
         ('L', 'H', 0) :   0.0 :  0.0 :   0.0
         ('L', 'H', 1) :   0.0 :  0.0 :   0.0
         ('L', 'H', 2) :   0.0 :  0.0 :   0.0
         ('L', 'H', 3) :   0.0 :  0.0 :   0.0
         ('L', 'H', 4) :   0.0 :  0.0 :   0.0
         ('L', 'H', 5) :   0.0 :  0.0 :   0.0
         ('L', 'H', 6) :   0.0 :  0.0 :   0.0
         ('L', 'H', 7) :   0.0 :  0.0 :   0.0
         ('L', 'H', 8) :   0.0 :  0.0 :   0.0
         ('L', 'H', 9) :   0.0 :  0.0 :   0.0
        ('L', 'H', 10) :   0.0 :  0.0 :   0.0
        ('L', 'H', 11) :   0.0 :  0.0 :   0.0
        ('L', 'H', 12) :   0.0 :  0.0 :   0.0
        ('L', 'H', 13) :   0.0 :  0.0 :   0.0
         ('L', 'I', 0) :   0.0 :  0.0 :   0.0
         ('L', 'I', 1) :   0.0 :  0.0 :   0.0
         ('L', 'I', 2) :   0.0 :  0.0 :   0.0
         ('L', 'I', 3) :   0.0 :  0.0 :   0.0
         ('L', 'I', 4) :   0.0 :  0.0 :   0.0
         ('L', 'I', 5) :   0.0 :  0.0 :   0.0
         ('L', 'I', 6) :   0.0 :  0.0 :   0.0
         ('L', 'I', 7) :   0.0 :  0.0 :   0.0
         ('L', 'I', 8) :   0.0 :  0.0 :   0.0
         ('L', 'I', 9) :   0.0 :  0.0 :   0.0
        ('L', 'I', 10) :   0.0 :  0.0 :   0.0
        ('L', 'I', 11) :   0.0 :  0.0 :   0.0
        ('L', 'I', 12) :   0.0 :  0.0 :   0.0
        ('L', 'I', 13) :   0.0 :  0.0 :   0.0
         ('L', 'J', 0) :   0.0 :  0.0 :   0.0
         ('L', 'J', 1) :   0.0 :  0.0 :   0.0
         ('L', 'J', 2) :   0.0 :  0.0 :   0.0
         ('L', 'J', 3) :   0.0 :  0.0 :   0.0
         ('L', 'J', 4) :   0.0 :  0.0 :   0.0
         ('L', 'J', 5) :   0.0 :  0.0 :   0.0
         ('L', 'J', 6) :   0.0 :  0.0 :   0.0
         ('L', 'J', 7) :   0.0 :  0.0 :   0.0
         ('L', 'J', 8) :   0.0 :  0.0 :   0.0
         ('L', 'J', 9) :   0.0 :  0.0 :   0.0
        ('L', 'J', 10) :   0.0 :  0.0 :   0.0
        ('L', 'J', 11) :   0.0 :  0.0 :   0.0
        ('L', 'J', 12) :   0.0 :  0.0 :   0.0
        ('L', 'J', 13) :   0.0 :  0.0 :   0.0
         ('L', 'K', 0) :   0.0 :  0.0 :   0.0
         ('L', 'K', 1) :   0.0 :  0.0 :   0.0
         ('L', 'K', 2) :   0.0 :  0.0 :   0.0
         ('L', 'K', 3) :   0.0 :  0.0 :   0.0
         ('L', 'K', 4) :   0.0 :  0.0 :   0.0
         ('L', 'K', 5) :   0.0 :  0.0 :   0.0
         ('L', 'K', 6) :   0.0 :  0.0 :   0.0
         ('L', 'K', 7) :   0.0 :  0.0 :   0.0
         ('L', 'K', 8) :   0.0 :  0.0 :   0.0
         ('L', 'K', 9) :   0.0 :  0.0 :   0.0
        ('L', 'K', 10) :   0.0 :  0.0 :   0.0
        ('L', 'K', 11) :   0.0 :  0.0 :   0.0
        ('L', 'K', 12) :   0.0 :  0.0 :   0.0
        ('L', 'K', 13) :   0.0 :  0.0 :   0.0
         ('L', 'L', 0) :   0.0 :  0.0 :   0.0
         ('L', 'L', 1) :   0.0 :  0.0 :   0.0
         ('L', 'L', 2) :   0.0 :  0.0 :   0.0
         ('L', 'L', 3) :   0.0 :  0.0 :   0.0
         ('L', 'L', 4) :   0.0 :  0.0 :   0.0
         ('L', 'L', 5) :   0.0 :  0.0 :   0.0
         ('L', 'L', 6) :   0.0 :  0.0 :   0.0
         ('L', 'L', 7) :   0.0 :  0.0 :   0.0
         ('L', 'L', 8) :   0.0 :  0.0 :   0.0
         ('L', 'L', 9) :   0.0 :  0.0 :   0.0
        ('L', 'L', 10) :   0.0 :  0.0 :   0.0
        ('L', 'L', 11) :   0.0 :  0.0 :   0.0
        ('L', 'L', 12) :   0.0 :  0.0 :   0.0
        ('L', 'L', 13) :   0.0 :  0.0 :   0.0
         ('L', 'M', 0) :   0.0 :  0.0 :   0.0
         ('L', 'M', 1) :   0.0 :  0.0 :   0.0
         ('L', 'M', 2) :   0.0 :  0.0 :   0.0
         ('L', 'M', 3) :   0.0 :  0.0 :   0.0
         ('L', 'M', 4) :   0.0 :  0.0 :   0.0
         ('L', 'M', 5) :   0.0 :  0.0 :   0.0
         ('L', 'M', 6) :   0.0 :  0.0 :   0.0
         ('L', 'M', 7) :   0.0 :  0.0 :   0.0
         ('L', 'M', 8) :   0.0 :  0.0 :   0.0
         ('L', 'M', 9) :   0.0 :  0.0 :   0.0
        ('L', 'M', 10) :   0.0 :  0.0 :   0.0
        ('L', 'M', 11) :   0.0 :  0.0 :   0.0
        ('L', 'M', 12) :   0.0 :  0.0 :   0.0
        ('L', 'M', 13) :   0.0 :  0.0 :   0.0
         ('L', 'N', 0) :   0.0 :  0.0 :   0.0
         ('L', 'N', 1) :   0.0 :  0.0 :   0.0
         ('L', 'N', 2) :   0.0 :  0.0 :   0.0
         ('L', 'N', 3) :   0.0 :  0.0 :   0.0
         ('L', 'N', 4) :   0.0 :  0.0 :   0.0
         ('L', 'N', 5) :   0.0 :  0.0 :   0.0
         ('L', 'N', 6) :   0.0 :  0.0 :   0.0
         ('L', 'N', 7) :   0.0 :  0.0 :   0.0
         ('L', 'N', 8) :   0.0 :  0.0 :   0.0
         ('L', 'N', 9) :   0.0 :  0.0 :   0.0
        ('L', 'N', 10) :   0.0 :  0.0 :   0.0
        ('L', 'N', 11) :   0.0 :  0.0 :   0.0
        ('L', 'N', 12) :   0.0 :  0.0 :   0.0
        ('L', 'N', 13) :   0.0 :  0.0 :   0.0
    constraint_shift_off_request : Size=392
        Key            : Lower : Body : Upper
         ('E', 'A', 0) :   0.0 :  0.0 :   0.0
         ('E', 'A', 1) :   0.0 :  0.0 :   0.0
         ('E', 'A', 2) :   0.0 :  0.0 :   0.0
         ('E', 'A', 3) :   0.0 :  0.0 :   0.0
         ('E', 'A', 4) :   0.0 :  0.0 :   0.0
         ('E', 'A', 5) :   0.0 :  0.0 :   0.0
         ('E', 'A', 6) :   0.0 :  0.0 :   0.0
         ('E', 'A', 7) :   0.0 :  0.0 :   0.0
         ('E', 'A', 8) :   0.0 :  0.0 :   0.0
         ('E', 'A', 9) :   0.0 :  0.0 :   0.0
        ('E', 'A', 10) :   0.0 :  0.0 :   0.0
        ('E', 'A', 11) :   0.0 :  0.0 :   0.0
        ('E', 'A', 12) :   0.0 :  0.0 :   0.0
        ('E', 'A', 13) :   0.0 :  0.0 :   0.0
         ('E', 'B', 0) :   0.0 :  0.0 :   0.0
         ('E', 'B', 1) :   0.0 :  0.0 :   0.0
         ('E', 'B', 2) :   0.0 :  0.0 :   0.0
         ('E', 'B', 3) :   0.0 :  0.0 :   0.0
         ('E', 'B', 4) :   0.0 :  0.0 :   0.0
         ('E', 'B', 5) :   0.0 :  0.0 :   0.0
         ('E', 'B', 6) :   0.0 :  0.0 :   0.0
         ('E', 'B', 7) :   0.0 :  0.0 :   0.0
         ('E', 'B', 8) :   0.0 :  0.0 :   0.0
         ('E', 'B', 9) :   0.0 :  0.0 :   0.0
        ('E', 'B', 10) :   0.0 :  0.0 :   0.0
        ('E', 'B', 11) :   0.0 :  0.0 :   0.0
        ('E', 'B', 12) :   0.0 :  0.0 :   0.0
        ('E', 'B', 13) :   0.0 :  0.0 :   0.0
         ('E', 'C', 0) :   0.0 :  0.0 :   0.0
         ('E', 'C', 1) :   0.0 :  0.0 :   0.0
         ('E', 'C', 2) :   0.0 :  0.0 :   0.0
         ('E', 'C', 3) :   0.0 :  0.0 :   0.0
         ('E', 'C', 4) :   0.0 :  0.0 :   0.0
         ('E', 'C', 5) :   0.0 :  0.0 :   0.0
         ('E', 'C', 6) :   0.0 :  0.0 :   0.0
         ('E', 'C', 7) :   0.0 :  0.0 :   0.0
         ('E', 'C', 8) :   0.0 :  0.0 :   0.0
         ('E', 'C', 9) :   0.0 :  0.0 :   0.0
        ('E', 'C', 10) :   0.0 :  0.0 :   0.0
        ('E', 'C', 11) :   0.0 :  0.0 :   0.0
        ('E', 'C', 12) :   0.0 :  0.0 :   0.0
        ('E', 'C', 13) :   0.0 :  0.0 :   0.0
         ('E', 'D', 0) :   0.0 :  0.0 :   0.0
         ('E', 'D', 1) :   0.0 :  0.0 :   0.0
         ('E', 'D', 2) :   0.0 :  0.0 :   0.0
         ('E', 'D', 3) :   0.0 :  0.0 :   0.0
         ('E', 'D', 4) :   0.0 :  0.0 :   0.0
         ('E', 'D', 5) :   0.0 :  0.0 :   0.0
         ('E', 'D', 6) :   0.0 :  0.0 :   0.0
         ('E', 'D', 7) :   0.0 :  0.0 :   0.0
         ('E', 'D', 8) :   0.0 :  0.0 :   0.0
         ('E', 'D', 9) :   0.0 :  0.0 :   0.0
        ('E', 'D', 10) :   0.0 :  0.0 :   0.0
        ('E', 'D', 11) :   0.0 :  0.0 :   0.0
        ('E', 'D', 12) :   0.0 :  0.0 :   0.0
        ('E', 'D', 13) :   0.0 :  0.0 :   0.0
         ('E', 'E', 0) :   0.0 :  0.0 :   0.0
         ('E', 'E', 1) :   0.0 :  0.0 :   0.0
         ('E', 'E', 2) :   0.0 :  0.0 :   0.0
         ('E', 'E', 3) :   0.0 :  0.0 :   0.0
         ('E', 'E', 4) :   0.0 :  0.0 :   0.0
         ('E', 'E', 5) :   0.0 :  0.0 :   0.0
         ('E', 'E', 6) :   0.0 :  0.0 :   0.0
         ('E', 'E', 7) :   0.0 :  0.0 :   0.0
         ('E', 'E', 8) :   0.0 :  0.0 :   0.0
         ('E', 'E', 9) :   0.0 :  0.0 :   0.0
        ('E', 'E', 10) :   0.0 :  0.0 :   0.0
        ('E', 'E', 11) :   0.0 :  0.0 :   0.0
        ('E', 'E', 12) :   0.0 :  0.0 :   0.0
        ('E', 'E', 13) :   0.0 :  0.0 :   0.0
         ('E', 'F', 0) :   0.0 :  0.0 :   0.0
         ('E', 'F', 1) :   0.0 :  0.0 :   0.0
         ('E', 'F', 2) :   0.0 :  0.0 :   0.0
         ('E', 'F', 3) :   0.0 :  0.0 :   0.0
         ('E', 'F', 4) :   0.0 :  0.0 :   0.0
         ('E', 'F', 5) :   0.0 :  0.0 :   0.0
         ('E', 'F', 6) :   0.0 :  0.0 :   0.0
         ('E', 'F', 7) :   0.0 :  0.0 :   0.0
         ('E', 'F', 8) :   0.0 :  0.0 :   0.0
         ('E', 'F', 9) :   0.0 :  0.0 :   0.0
        ('E', 'F', 10) :   0.0 :  0.0 :   0.0
        ('E', 'F', 11) :   0.0 :  0.0 :   0.0
        ('E', 'F', 12) :   0.0 :  0.0 :   0.0
        ('E', 'F', 13) :   0.0 :  0.0 :   0.0
         ('E', 'G', 0) :   0.0 :  0.0 :   0.0
         ('E', 'G', 1) :   0.0 :  0.0 :   0.0
         ('E', 'G', 2) :   0.0 :  0.0 :   0.0
         ('E', 'G', 3) :   0.0 :  0.0 :   0.0
         ('E', 'G', 4) :   0.0 :  0.0 :   0.0
         ('E', 'G', 5) :   0.0 :  0.0 :   0.0
         ('E', 'G', 6) :   0.0 :  0.0 :   0.0
         ('E', 'G', 7) :   0.0 :  0.0 :   0.0
         ('E', 'G', 8) :   0.0 :  0.0 :   0.0
         ('E', 'G', 9) :   0.0 :  0.0 :   0.0
        ('E', 'G', 10) :   0.0 :  0.0 :   0.0
        ('E', 'G', 11) :   0.0 :  0.0 :   0.0
        ('E', 'G', 12) :   0.0 :  0.0 :   0.0
        ('E', 'G', 13) :   0.0 :  0.0 :   0.0
         ('E', 'H', 0) :   0.0 :  0.0 :   0.0
         ('E', 'H', 1) :   0.0 :  0.0 :   0.0
         ('E', 'H', 2) :   0.0 :  0.0 :   0.0
         ('E', 'H', 3) :   0.0 :  0.0 :   0.0
         ('E', 'H', 4) :   0.0 :  0.0 :   0.0
         ('E', 'H', 5) :   0.0 :  0.0 :   0.0
         ('E', 'H', 6) :   0.0 :  0.0 :   0.0
         ('E', 'H', 7) :   0.0 :  0.0 :   0.0
         ('E', 'H', 8) :   0.0 :  0.0 :   0.0
         ('E', 'H', 9) :   0.0 :  0.0 :   0.0
        ('E', 'H', 10) :   0.0 :  0.0 :   0.0
        ('E', 'H', 11) :   0.0 :  0.0 :   0.0
        ('E', 'H', 12) :   0.0 :  0.0 :   0.0
        ('E', 'H', 13) :   0.0 :  0.0 :   0.0
         ('E', 'I', 0) :   0.0 :  0.0 :   0.0
         ('E', 'I', 1) :   0.0 :  0.0 :   0.0
         ('E', 'I', 2) :   0.0 :  0.0 :   0.0
         ('E', 'I', 3) :   0.0 :  0.0 :   0.0
         ('E', 'I', 4) :   0.0 :  0.0 :   0.0
         ('E', 'I', 5) :   0.0 :  0.0 :   0.0
         ('E', 'I', 6) :   0.0 :  0.0 :   0.0
         ('E', 'I', 7) :   0.0 :  0.0 :   0.0
         ('E', 'I', 8) :   0.0 :  0.0 :   0.0
         ('E', 'I', 9) :   0.0 :  0.0 :   0.0
        ('E', 'I', 10) :   0.0 :  0.0 :   0.0
        ('E', 'I', 11) :   0.0 :  0.0 :   0.0
        ('E', 'I', 12) :   0.0 :  0.0 :   0.0
        ('E', 'I', 13) :   0.0 :  0.0 :   0.0
         ('E', 'J', 0) :   0.0 :  0.0 :   0.0
         ('E', 'J', 1) :   0.0 :  0.0 :   0.0
         ('E', 'J', 2) :   0.0 :  0.0 :   0.0
         ('E', 'J', 3) :   0.0 :  0.0 :   0.0
         ('E', 'J', 4) :   0.0 :  0.0 :   0.0
         ('E', 'J', 5) :   0.0 :  0.0 :   0.0
         ('E', 'J', 6) :   0.0 :  0.0 :   0.0
         ('E', 'J', 7) :   0.0 :  0.0 :   0.0
         ('E', 'J', 8) :   0.0 :  0.0 :   0.0
         ('E', 'J', 9) :   0.0 :  0.0 :   0.0
        ('E', 'J', 10) :   0.0 :  0.0 :   0.0
        ('E', 'J', 11) :   0.0 :  0.0 :   0.0
        ('E', 'J', 12) :   0.0 :  0.0 :   0.0
        ('E', 'J', 13) :   0.0 :  0.0 :   0.0
         ('E', 'K', 0) :   0.0 :  0.0 :   0.0
         ('E', 'K', 1) :   0.0 :  0.0 :   0.0
         ('E', 'K', 2) :   0.0 :  0.0 :   0.0
         ('E', 'K', 3) :   0.0 :  0.0 :   0.0
         ('E', 'K', 4) :   0.0 :  0.0 :   0.0
         ('E', 'K', 5) :   0.0 :  0.0 :   0.0
         ('E', 'K', 6) :   0.0 :  0.0 :   0.0
         ('E', 'K', 7) :   0.0 :  0.0 :   0.0
         ('E', 'K', 8) :   0.0 :  0.0 :   0.0
         ('E', 'K', 9) :   0.0 :  0.0 :   0.0
        ('E', 'K', 10) :   0.0 :  0.0 :   0.0
        ('E', 'K', 11) :   0.0 :  0.0 :   0.0
        ('E', 'K', 12) :   0.0 :  0.0 :   0.0
        ('E', 'K', 13) :   0.0 :  0.0 :   0.0
         ('E', 'L', 0) :   0.0 :  0.0 :   0.0
         ('E', 'L', 1) :   0.0 :  0.0 :   0.0
         ('E', 'L', 2) :   0.0 :  0.0 :   0.0
         ('E', 'L', 3) :   0.0 :  0.0 :   0.0
         ('E', 'L', 4) :   0.0 :  0.0 :   0.0
         ('E', 'L', 5) :   0.0 :  0.0 :   0.0
         ('E', 'L', 6) :   0.0 :  0.0 :   0.0
         ('E', 'L', 7) :   0.0 :  0.0 :   0.0
         ('E', 'L', 8) :   0.0 :  0.0 :   0.0
         ('E', 'L', 9) :   0.0 :  0.0 :   0.0
        ('E', 'L', 10) :   0.0 :  0.0 :   0.0
        ('E', 'L', 11) :   0.0 :  0.0 :   0.0
        ('E', 'L', 12) :   0.0 :  0.0 :   0.0
        ('E', 'L', 13) :   0.0 :  0.0 :   0.0
         ('E', 'M', 0) :   0.0 :  0.0 :   0.0
         ('E', 'M', 1) :   0.0 :  0.0 :   0.0
         ('E', 'M', 2) :   0.0 :  0.0 :   0.0
         ('E', 'M', 3) :   0.0 :  0.0 :   0.0
         ('E', 'M', 4) :   0.0 :  0.0 :   0.0
         ('E', 'M', 5) :   0.0 :  0.0 :   0.0
         ('E', 'M', 6) :   0.0 :  0.0 :   0.0
         ('E', 'M', 7) :   0.0 :  0.0 :   0.0
         ('E', 'M', 8) :   0.0 :  0.0 :   0.0
         ('E', 'M', 9) :   0.0 :  0.0 :   0.0
        ('E', 'M', 10) :   0.0 :  0.0 :   0.0
        ('E', 'M', 11) :   0.0 :  0.0 :   0.0
        ('E', 'M', 12) :   0.0 :  0.0 :   0.0
        ('E', 'M', 13) :   0.0 :  0.0 :   0.0
         ('E', 'N', 0) :   0.0 :  0.0 :   0.0
         ('E', 'N', 1) :   0.0 :  0.0 :   0.0
         ('E', 'N', 2) :   0.0 :  0.0 :   0.0
         ('E', 'N', 3) :   0.0 :  0.0 :   0.0
         ('E', 'N', 4) :   0.0 :  0.0 :   0.0
         ('E', 'N', 5) :   0.0 :  0.0 :   0.0
         ('E', 'N', 6) :   0.0 :  0.0 :   0.0
         ('E', 'N', 7) :   0.0 :  0.0 :   0.0
         ('E', 'N', 8) :   0.0 :  0.0 :   0.0
         ('E', 'N', 9) :   0.0 :  0.0 :   0.0
        ('E', 'N', 10) :   0.0 :  0.0 :   0.0
        ('E', 'N', 11) :   0.0 :  0.0 :   0.0
        ('E', 'N', 12) :   0.0 :  0.0 :   0.0
        ('E', 'N', 13) :   0.0 :  0.0 :   0.0
         ('L', 'A', 0) :   0.0 :  0.0 :   0.0
         ('L', 'A', 1) :   0.0 :  0.0 :   0.0
         ('L', 'A', 2) :   0.0 :  0.0 :   0.0
         ('L', 'A', 3) :   0.0 :  0.0 :   0.0
         ('L', 'A', 4) :   0.0 :  0.0 :   0.0
         ('L', 'A', 5) :   0.0 :  0.0 :   0.0
         ('L', 'A', 6) :   0.0 :  0.0 :   0.0
         ('L', 'A', 7) :   0.0 :  0.0 :   0.0
         ('L', 'A', 8) :   0.0 :  0.0 :   0.0
         ('L', 'A', 9) :   0.0 :  0.0 :   0.0
        ('L', 'A', 10) :   0.0 :  0.0 :   0.0
        ('L', 'A', 11) :   0.0 :  0.0 :   0.0
        ('L', 'A', 12) :   0.0 :  0.0 :   0.0
        ('L', 'A', 13) :   0.0 :  0.0 :   0.0
         ('L', 'B', 0) :   0.0 :  0.0 :   0.0
         ('L', 'B', 1) :   0.0 :  0.0 :   0.0
         ('L', 'B', 2) :   0.0 :  0.0 :   0.0
         ('L', 'B', 3) :   0.0 :  0.0 :   0.0
         ('L', 'B', 4) :   0.0 :  0.0 :   0.0
         ('L', 'B', 5) :   0.0 :  0.0 :   0.0
         ('L', 'B', 6) :   0.0 :  0.0 :   0.0
         ('L', 'B', 7) :   0.0 :  0.0 :   0.0
         ('L', 'B', 8) :   0.0 :  0.0 :   0.0
         ('L', 'B', 9) :   0.0 :  0.0 :   0.0
        ('L', 'B', 10) :   0.0 :  0.0 :   0.0
        ('L', 'B', 11) :   0.0 :  0.0 :   0.0
        ('L', 'B', 12) :   0.0 :  0.0 :   0.0
        ('L', 'B', 13) :   0.0 :  0.0 :   0.0
         ('L', 'C', 0) :   0.0 :  0.0 :   0.0
         ('L', 'C', 1) :   0.0 :  0.0 :   0.0
         ('L', 'C', 2) :   0.0 :  0.0 :   0.0
         ('L', 'C', 3) :   0.0 :  0.0 :   0.0
         ('L', 'C', 4) :   0.0 :  0.0 :   0.0
         ('L', 'C', 5) :   0.0 :  0.0 :   0.0
         ('L', 'C', 6) :   0.0 :  0.0 :   0.0
         ('L', 'C', 7) :   0.0 :  0.0 :   0.0
         ('L', 'C', 8) :   0.0 :  0.0 :   0.0
         ('L', 'C', 9) :   0.0 :  0.0 :   0.0
        ('L', 'C', 10) :   0.0 :  0.0 :   0.0
        ('L', 'C', 11) :   0.0 :  0.0 :   0.0
        ('L', 'C', 12) :   0.0 :  0.0 :   0.0
        ('L', 'C', 13) :   0.0 :  0.0 :   0.0
         ('L', 'D', 0) :   0.0 :  0.0 :   0.0
         ('L', 'D', 1) :   0.0 :  0.0 :   0.0
         ('L', 'D', 2) :   0.0 :  0.0 :   0.0
         ('L', 'D', 3) :   0.0 :  0.0 :   0.0
         ('L', 'D', 4) :   0.0 :  0.0 :   0.0
         ('L', 'D', 5) :   0.0 :  0.0 :   0.0
         ('L', 'D', 6) :   0.0 :  0.0 :   0.0
         ('L', 'D', 7) :   0.0 :  0.0 :   0.0
         ('L', 'D', 8) :   0.0 :  0.0 :   0.0
         ('L', 'D', 9) :   0.0 :  0.0 :   0.0
        ('L', 'D', 10) :   0.0 :  0.0 :   0.0
        ('L', 'D', 11) :   0.0 :  0.0 :   0.0
        ('L', 'D', 12) :   0.0 :  0.0 :   0.0
        ('L', 'D', 13) :   0.0 :  0.0 :   0.0
         ('L', 'E', 0) :   0.0 :  0.0 :   0.0
         ('L', 'E', 1) :   0.0 :  0.0 :   0.0
         ('L', 'E', 2) :   0.0 :  0.0 :   0.0
         ('L', 'E', 3) :   0.0 :  0.0 :   0.0
         ('L', 'E', 4) :   0.0 :  0.0 :   0.0
         ('L', 'E', 5) :   0.0 :  0.0 :   0.0
         ('L', 'E', 6) :   0.0 :  0.0 :   0.0
         ('L', 'E', 7) :   0.0 :  0.0 :   0.0
         ('L', 'E', 8) :   0.0 :  0.0 :   0.0
         ('L', 'E', 9) :   0.0 :  0.0 :   0.0
        ('L', 'E', 10) :   0.0 :  0.0 :   0.0
        ('L', 'E', 11) :   0.0 :  0.0 :   0.0
        ('L', 'E', 12) :   0.0 :  0.0 :   0.0
        ('L', 'E', 13) :   0.0 :  0.0 :   0.0
         ('L', 'F', 0) :   0.0 :  0.0 :   0.0
         ('L', 'F', 1) :   0.0 :  0.0 :   0.0
         ('L', 'F', 2) :   0.0 :  0.0 :   0.0
         ('L', 'F', 3) :   0.0 :  0.0 :   0.0
         ('L', 'F', 4) :   0.0 :  0.0 :   0.0
         ('L', 'F', 5) :   0.0 :  0.0 :   0.0
         ('L', 'F', 6) :   0.0 :  0.0 :   0.0
         ('L', 'F', 7) :   0.0 :  0.0 :   0.0
         ('L', 'F', 8) :   0.0 :  0.0 :   0.0
         ('L', 'F', 9) :   0.0 :  0.0 :   0.0
        ('L', 'F', 10) :   0.0 :  0.0 :   0.0
        ('L', 'F', 11) :   0.0 :  0.0 :   0.0
        ('L', 'F', 12) :   0.0 :  0.0 :   0.0
        ('L', 'F', 13) :   0.0 :  0.0 :   0.0
         ('L', 'G', 0) :   0.0 :  0.0 :   0.0
         ('L', 'G', 1) :   0.0 :  0.0 :   0.0
         ('L', 'G', 2) :   0.0 :  0.0 :   0.0
         ('L', 'G', 3) :   0.0 :  0.0 :   0.0
         ('L', 'G', 4) :   0.0 :  0.0 :   0.0
         ('L', 'G', 5) :   0.0 :  0.0 :   0.0
         ('L', 'G', 6) :   0.0 :  0.0 :   0.0
         ('L', 'G', 7) :   0.0 :  0.0 :   0.0
         ('L', 'G', 8) :   0.0 :  0.0 :   0.0
         ('L', 'G', 9) :   0.0 :  0.0 :   0.0
        ('L', 'G', 10) :   0.0 :  0.0 :   0.0
        ('L', 'G', 11) :   0.0 :  0.0 :   0.0
        ('L', 'G', 12) :   0.0 :  0.0 :   0.0
        ('L', 'G', 13) :   0.0 :  0.0 :   0.0
         ('L', 'H', 0) :   0.0 :  0.0 :   0.0
         ('L', 'H', 1) :   0.0 :  0.0 :   0.0
         ('L', 'H', 2) :   0.0 :  0.0 :   0.0
         ('L', 'H', 3) :   0.0 :  0.0 :   0.0
         ('L', 'H', 4) :   0.0 :  0.0 :   0.0
         ('L', 'H', 5) :   0.0 :  0.0 :   0.0
         ('L', 'H', 6) :   0.0 :  0.0 :   0.0
         ('L', 'H', 7) :   0.0 :  0.0 :   0.0
         ('L', 'H', 8) :   0.0 :  0.0 :   0.0
         ('L', 'H', 9) :   0.0 :  0.0 :   0.0
        ('L', 'H', 10) :   0.0 :  0.0 :   0.0
        ('L', 'H', 11) :   0.0 :  0.0 :   0.0
        ('L', 'H', 12) :   0.0 :  0.0 :   0.0
        ('L', 'H', 13) :   0.0 :  0.0 :   0.0
         ('L', 'I', 0) :   0.0 :  0.0 :   0.0
         ('L', 'I', 1) :   0.0 :  0.0 :   0.0
         ('L', 'I', 2) :   0.0 :  0.0 :   0.0
         ('L', 'I', 3) :   0.0 :  0.0 :   0.0
         ('L', 'I', 4) :   0.0 :  0.0 :   0.0
         ('L', 'I', 5) :   0.0 :  0.0 :   0.0
         ('L', 'I', 6) :   0.0 :  0.0 :   0.0
         ('L', 'I', 7) :   0.0 :  0.0 :   0.0
         ('L', 'I', 8) :   0.0 :  0.0 :   0.0
         ('L', 'I', 9) :   0.0 :  0.0 :   0.0
        ('L', 'I', 10) :   0.0 :  0.0 :   0.0
        ('L', 'I', 11) :   0.0 :  0.0 :   0.0
        ('L', 'I', 12) :   0.0 :  0.0 :   0.0
        ('L', 'I', 13) :   0.0 :  0.0 :   0.0
         ('L', 'J', 0) :   0.0 :  0.0 :   0.0
         ('L', 'J', 1) :   0.0 :  0.0 :   0.0
         ('L', 'J', 2) :   0.0 :  0.0 :   0.0
         ('L', 'J', 3) :   0.0 :  0.0 :   0.0
         ('L', 'J', 4) :   0.0 :  0.0 :   0.0
         ('L', 'J', 5) :   0.0 :  0.0 :   0.0
         ('L', 'J', 6) :   0.0 :  0.0 :   0.0
         ('L', 'J', 7) :   0.0 :  0.0 :   0.0
         ('L', 'J', 8) :   0.0 :  0.0 :   0.0
         ('L', 'J', 9) :   0.0 :  0.0 :   0.0
        ('L', 'J', 10) :   0.0 :  0.0 :   0.0
        ('L', 'J', 11) :   0.0 :  0.0 :   0.0
        ('L', 'J', 12) :   0.0 :  0.0 :   0.0
        ('L', 'J', 13) :   0.0 :  0.0 :   0.0
         ('L', 'K', 0) :   0.0 :  0.0 :   0.0
         ('L', 'K', 1) :   0.0 :  0.0 :   0.0
         ('L', 'K', 2) :   0.0 :  0.0 :   0.0
         ('L', 'K', 3) :   0.0 :  0.0 :   0.0
         ('L', 'K', 4) :   0.0 :  0.0 :   0.0
         ('L', 'K', 5) :   0.0 :  0.0 :   0.0
         ('L', 'K', 6) :   0.0 :  0.0 :   0.0
         ('L', 'K', 7) :   0.0 :  0.0 :   0.0
         ('L', 'K', 8) :   0.0 :  0.0 :   0.0
         ('L', 'K', 9) :   0.0 :  0.0 :   0.0
        ('L', 'K', 10) :   0.0 :  0.0 :   0.0
        ('L', 'K', 11) :   0.0 :  0.0 :   0.0
        ('L', 'K', 12) :   0.0 :  0.0 :   0.0
        ('L', 'K', 13) :   0.0 :  0.0 :   0.0
         ('L', 'L', 0) :   0.0 :  0.0 :   0.0
         ('L', 'L', 1) :   0.0 :  0.0 :   0.0
         ('L', 'L', 2) :   0.0 :  0.0 :   0.0
         ('L', 'L', 3) :   0.0 :  0.0 :   0.0
         ('L', 'L', 4) :   0.0 :  0.0 :   0.0
         ('L', 'L', 5) :   0.0 :  0.0 :   0.0
         ('L', 'L', 6) :   0.0 :  0.0 :   0.0
         ('L', 'L', 7) :   0.0 :  0.0 :   0.0
         ('L', 'L', 8) :   0.0 :  0.0 :   0.0
         ('L', 'L', 9) :   0.0 :  0.0 :   0.0
        ('L', 'L', 10) :   0.0 :  0.0 :   0.0
        ('L', 'L', 11) :   0.0 :  0.0 :   0.0
        ('L', 'L', 12) :   0.0 :  0.0 :   0.0
        ('L', 'L', 13) :   0.0 :  0.0 :   0.0
         ('L', 'M', 0) :   0.0 :  0.0 :   0.0
         ('L', 'M', 1) :   0.0 :  0.0 :   0.0
         ('L', 'M', 2) :   0.0 :  0.0 :   0.0
         ('L', 'M', 3) :   0.0 :  0.0 :   0.0
         ('L', 'M', 4) :   0.0 :  0.0 :   0.0
         ('L', 'M', 5) :   0.0 :  0.0 :   0.0
         ('L', 'M', 6) :   0.0 :  0.0 :   0.0
         ('L', 'M', 7) :   0.0 :  0.0 :   0.0
         ('L', 'M', 8) :   0.0 :  0.0 :   0.0
         ('L', 'M', 9) :   0.0 :  0.0 :   0.0
        ('L', 'M', 10) :   0.0 :  0.0 :   0.0
        ('L', 'M', 11) :   0.0 :  0.0 :   0.0
        ('L', 'M', 12) :   0.0 :  0.0 :   0.0
        ('L', 'M', 13) :   0.0 :  0.0 :   0.0
         ('L', 'N', 0) :   0.0 :  0.0 :   0.0
         ('L', 'N', 1) :   0.0 :  0.0 :   0.0
         ('L', 'N', 2) :   0.0 :  0.0 :   0.0
         ('L', 'N', 3) :   0.0 :  0.0 :   0.0
         ('L', 'N', 4) :   0.0 :  0.0 :   0.0
         ('L', 'N', 5) :   0.0 :  0.0 :   0.0
         ('L', 'N', 6) :   0.0 :  0.0 :   0.0
         ('L', 'N', 7) :   0.0 :  0.0 :   0.0
         ('L', 'N', 8) :   0.0 :  0.0 :   0.0
         ('L', 'N', 9) :   0.0 :  0.0 :   0.0
        ('L', 'N', 10) :   0.0 :  0.0 :   0.0
        ('L', 'N', 11) :   0.0 :  0.0 :   0.0
        ('L', 'N', 12) :   0.0 :  0.0 :   0.0
        ('L', 'N', 13) :   0.0 :  0.0 :   0.0
    constraint_under_cover : Size=28
        Key       : Lower : Body               : Upper
         ('E', 0) :   4.0 :                4.0 :  None
         ('E', 1) :   4.0 :                4.0 :  None
         ('E', 2) :   3.0 :                3.0 :  None
         ('E', 3) :   5.0 :                5.0 :  None
         ('E', 4) :   3.0 :  2.999999999999994 :  None
         ('E', 5) :   5.0 :                5.0 :  None
         ('E', 6) :   5.0 :                5.0 :  None
         ('E', 7) :   3.0 :                3.0 :  None
         ('E', 8) :   4.0 :                4.0 :  None
         ('E', 9) :   4.0 :                4.0 :  None
        ('E', 10) :   4.0 :                4.0 :  None
        ('E', 11) :   2.0 :                2.0 :  None
        ('E', 12) :   4.0 :                4.0 :  None
        ('E', 13) :   3.0 :                3.0 :  None
         ('L', 0) :   4.0 : 3.9999999999999982 :  None
         ('L', 1) :   3.0 :                3.0 :  None
         ('L', 2) :   6.0 :                6.0 :  None
         ('L', 3) :   4.0 :  3.999999999999994 :  None
         ('L', 4) :   4.0 :                4.0 :  None
         ('L', 5) :   5.0 :                5.0 :  None
         ('L', 6) :   5.0 :                5.0 :  None
         ('L', 7) :   2.0 :                2.0 :  None
         ('L', 8) :   4.0 :                4.0 :  None
         ('L', 9) :   4.0 :                4.0 :  None
        ('L', 10) :   3.0 :                3.0 :  None
        ('L', 11) :   3.0 :                3.0 :  None
        ('L', 12) :   3.0 :                3.0 :  None
        ('L', 13) :   5.0 :                5.0 :  None
    constraint_penalty_under_cover : Size=28
        Key       : Lower : Body : Upper
         ('E', 0) :   0.0 :  0.0 :   0.0
         ('E', 1) :   0.0 :  0.0 :   0.0
         ('E', 2) :   0.0 :  0.0 :   0.0
         ('E', 3) :   0.0 :  0.0 :   0.0
         ('E', 4) :   0.0 :  0.0 :   0.0
         ('E', 5) :   0.0 :  0.0 :   0.0
         ('E', 6) :   0.0 :  0.0 :   0.0
         ('E', 7) :   0.0 :  0.0 :   0.0
         ('E', 8) :   0.0 :  0.0 :   0.0
         ('E', 9) :   0.0 :  0.0 :   0.0
        ('E', 10) :   0.0 :  0.0 :   0.0
        ('E', 11) :   0.0 :  0.0 :   0.0
        ('E', 12) :   0.0 :  0.0 :   0.0
        ('E', 13) :   0.0 :  0.0 :   0.0
         ('L', 0) :   0.0 :  0.0 :   0.0
         ('L', 1) :   0.0 :  0.0 :   0.0
         ('L', 2) :   0.0 :  0.0 :   0.0
         ('L', 3) :   0.0 :  0.0 :   0.0
         ('L', 4) :   0.0 :  0.0 :   0.0
         ('L', 5) :   0.0 :  0.0 :   0.0
         ('L', 6) :   0.0 :  0.0 :   0.0
         ('L', 7) :   0.0 :  0.0 :   0.0
         ('L', 8) :   0.0 :  0.0 :   0.0
         ('L', 9) :   0.0 :  0.0 :   0.0
        ('L', 10) :   0.0 :  0.0 :   0.0
        ('L', 11) :   0.0 :  0.0 :   0.0
        ('L', 12) :   0.0 :  0.0 :   0.0
        ('L', 13) :   0.0 :  0.0 :   0.0
    constraint_over_cover : Size=28
        Key       : Lower : Body               : Upper
         ('E', 0) :  None :                4.0 :   4.0
         ('E', 1) :  None :                4.0 :   4.0
         ('E', 2) :  None :                3.0 :   3.0
         ('E', 3) :  None :                5.0 :   5.0
         ('E', 4) :  None :  2.999999999999994 :   3.0
         ('E', 5) :  None :                2.0 :   5.0
         ('E', 6) :  None :                2.0 :   5.0
         ('E', 7) :  None :                3.0 :   3.0
         ('E', 8) :  None :                4.0 :   4.0
         ('E', 9) :  None :                4.0 :   4.0
        ('E', 10) :  None :                4.0 :   4.0
        ('E', 11) :  None :                2.0 :   2.0
        ('E', 12) :  None :                4.0 :   4.0
        ('E', 13) :  None :                3.0 :   3.0
         ('L', 0) :  None : 3.9999999999999982 :   4.0
         ('L', 1) :  None :                3.0 :   3.0
         ('L', 2) :  None :                6.0 :   6.0
         ('L', 3) :  None :  3.999999999999994 :   4.0
         ('L', 4) :  None :                4.0 :   4.0
         ('L', 5) :  None :                4.0 :   5.0
         ('L', 6) :  None :                4.0 :   5.0
         ('L', 7) :  None :                2.0 :   2.0
         ('L', 8) :  None :                4.0 :   4.0
         ('L', 9) :  None :                4.0 :   4.0
        ('L', 10) :  None :                3.0 :   3.0
        ('L', 11) :  None :                3.0 :   3.0
        ('L', 12) :  None :                3.0 :   3.0
        ('L', 13) :  None :  5.000000000000011 :   5.0
    constraint_penalty_over_cover : Size=28
        Key       : Lower : Body : Upper
         ('E', 0) :   0.0 :  0.0 :   0.0
         ('E', 1) :   0.0 :  0.0 :   0.0
         ('E', 2) :   0.0 :  0.0 :   0.0
         ('E', 3) :   0.0 :  0.0 :   0.0
         ('E', 4) :   0.0 :  0.0 :   0.0
         ('E', 5) :   0.0 :  0.0 :   0.0
         ('E', 6) :   0.0 :  0.0 :   0.0
         ('E', 7) :   0.0 :  0.0 :   0.0
         ('E', 8) :   0.0 :  0.0 :   0.0
         ('E', 9) :   0.0 :  0.0 :   0.0
        ('E', 10) :   0.0 :  0.0 :   0.0
        ('E', 11) :   0.0 :  0.0 :   0.0
        ('E', 12) :   0.0 :  0.0 :   0.0
        ('E', 13) :   0.0 :  0.0 :   0.0
         ('L', 0) :   0.0 :  0.0 :   0.0
         ('L', 1) :   0.0 :  0.0 :   0.0
         ('L', 2) :   0.0 :  0.0 :   0.0
         ('L', 3) :   0.0 :  0.0 :   0.0
         ('L', 4) :   0.0 :  0.0 :   0.0
         ('L', 5) :   0.0 :  0.0 :   0.0
         ('L', 6) :   0.0 :  0.0 :   0.0
         ('L', 7) :   0.0 :  0.0 :   0.0
         ('L', 8) :   0.0 :  0.0 :   0.0
         ('L', 9) :   0.0 :  0.0 :   0.0
        ('L', 10) :   0.0 :  0.0 :   0.0
        ('L', 11) :   0.0 :  0.0 :   0.0
        ('L', 12) :   0.0 :  0.0 :   0.0
        ('L', 13) :   0.0 :  0.0 :   0.0
