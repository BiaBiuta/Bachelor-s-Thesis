Model NurseSchedulingProblem

  Variables:
    IsAssign : Size=112, Index=SHIFTTYPES*NURSES*DAYS
        Key                    : Lower : Value : Upper : Fixed : Stale : Domain
            ('D1', 'Alina', 0) :     0 :   1.0 :     1 : False : False : Binary
            ('D1', 'Alina', 1) :     0 :   1.0 :     1 : False : False : Binary
            ('D1', 'Alina', 2) :     0 :   1.0 :     1 : False : False : Binary
            ('D1', 'Alina', 3) :     0 :   0.0 :     1 : False : False : Binary
            ('D1', 'Alina', 4) :     0 :   0.0 :     1 : False : False : Binary
            ('D1', 'Alina', 5) :     0 :   1.0 :     1 : False : False : Binary
            ('D1', 'Alina', 6) :     0 :   1.0 :     1 : False : False : Binary
            ('D1', 'Alina', 7) :     0 :   1.0 :     1 : False : False : Binary
            ('D1', 'Alina', 8) :     0 :   1.0 :     1 : False : False : Binary
            ('D1', 'Alina', 9) :     0 :   1.0 :     1 : False : False : Binary
           ('D1', 'Alina', 10) :     0 :   0.0 :     1 : False : False : Binary
           ('D1', 'Alina', 11) :     0 :   0.0 :     1 : False : False : Binary
           ('D1', 'Alina', 12) :     0 :   0.0 :     1 : False : False : Binary
           ('D1', 'Alina', 13) :     0 :   0.0 :     1 : False : False : Binary
              ('D1', 'Bob', 0) :     0 :   1.0 :     1 : False : False : Binary
              ('D1', 'Bob', 1) :     0 :   1.0 :     1 : False : False : Binary
              ('D1', 'Bob', 2) :     0 :   1.0 :     1 : False : False : Binary
              ('D1', 'Bob', 3) :     0 :   1.0 :     1 : False : False : Binary
              ('D1', 'Bob', 4) :     0 :   1.0 :     1 : False : False : Binary
              ('D1', 'Bob', 5) :     0 :   0.0 :     1 : False : False : Binary
              ('D1', 'Bob', 6) :     0 :   0.0 :     1 : False : False : Binary
              ('D1', 'Bob', 7) :     0 :   1.0 :     1 : False : False : Binary
              ('D1', 'Bob', 8) :     0 :   1.0 :     1 : False : False : Binary
              ('D1', 'Bob', 9) :     0 :   0.0 :     1 : False : False : Binary
             ('D1', 'Bob', 10) :     0 :   0.0 :     1 : False : False : Binary
             ('D1', 'Bob', 11) :     0 :   0.0 :     1 : False : False : Binary
             ('D1', 'Bob', 12) :     0 :   1.0 :     1 : False : False : Binary
             ('D1', 'Bob', 13) :     0 :   1.0 :     1 : False : False : Binary
          ('D1', 'Catalin', 0) :     0 :   1.0 :     1 : False : False : Binary
          ('D1', 'Catalin', 1) :     0 :   1.0 :     1 : False : False : Binary
          ('D1', 'Catalin', 2) :     0 :   0.0 :     1 : False : False : Binary
          ('D1', 'Catalin', 3) :     0 :   0.0 :     1 : False : False : Binary
          ('D1', 'Catalin', 4) :     0 :   1.0 :     1 : False : False : Binary
          ('D1', 'Catalin', 5) :     0 :   1.0 :     1 : False : False : Binary
          ('D1', 'Catalin', 6) :     0 :   1.0 :     1 : False : False : Binary
          ('D1', 'Catalin', 7) :     0 :   0.0 :     1 : False : False : Binary
          ('D1', 'Catalin', 8) :     0 :   0.0 :     1 : False : False : Binary
          ('D1', 'Catalin', 9) :     0 :   1.0 :     1 : False : False : Binary
         ('D1', 'Catalin', 10) :     0 :   1.0 :     1 : False : False : Binary
         ('D1', 'Catalin', 11) :     0 :   1.0 :     1 : False : False : Binary
         ('D1', 'Catalin', 12) :     0 :   0.0 :     1 : False : False : Binary
         ('D1', 'Catalin', 13) :     0 :  -0.0 :     1 : False : False : Binary
           ('D1', 'Daniel', 0) :     0 :   1.0 :     1 : False : False : Binary
           ('D1', 'Daniel', 1) :     0 :   1.0 :     1 : False : False : Binary
           ('D1', 'Daniel', 2) :     0 :   0.0 :     1 : False : False : Binary
           ('D1', 'Daniel', 3) :     0 :   0.0 :     1 : False : False : Binary
           ('D1', 'Daniel', 4) :     0 :   0.0 :     1 : False : False : Binary
           ('D1', 'Daniel', 5) :     0 :   1.0 :     1 : False : False : Binary
           ('D1', 'Daniel', 6) :     0 :   1.0 :     1 : False : False : Binary
           ('D1', 'Daniel', 7) :     0 :   1.0 :     1 : False : False : Binary
           ('D1', 'Daniel', 8) :     0 :   1.0 :     1 : False : False : Binary
           ('D1', 'Daniel', 9) :     0 :   1.0 :     1 : False : False : Binary
          ('D1', 'Daniel', 10) :     0 :   0.0 :     1 : False : False : Binary
          ('D1', 'Daniel', 11) :     0 :   0.0 :     1 : False : False : Binary
          ('D1', 'Daniel', 12) :     0 :   0.0 :     1 : False : False : Binary
          ('D1', 'Daniel', 13) :     0 :   0.0 :     1 : False : False : Binary
            ('D1', 'Elena', 0) :     0 :   0.0 :     1 : False : False : Binary
            ('D1', 'Elena', 1) :     0 :   1.0 :     1 : False : False : Binary
            ('D1', 'Elena', 2) :     0 :   1.0 :     1 : False : False : Binary
            ('D1', 'Elena', 3) :     0 :   1.0 :     1 : False : False : Binary
            ('D1', 'Elena', 4) :     0 :   1.0 :     1 : False : False : Binary
            ('D1', 'Elena', 5) :     0 :   0.0 :     1 : False : False : Binary
            ('D1', 'Elena', 6) :     0 :   0.0 :     1 : False : False : Binary
            ('D1', 'Elena', 7) :     0 :   1.0 :     1 : False : False : Binary
            ('D1', 'Elena', 8) :     0 :   1.0 :     1 : False : False : Binary
            ('D1', 'Elena', 9) :     0 :   0.0 :     1 : False : False : Binary
           ('D1', 'Elena', 10) :     0 :   0.0 :     1 : False : False : Binary
           ('D1', 'Elena', 11) :     0 :   1.0 :     1 : False : False : Binary
           ('D1', 'Elena', 12) :     0 :   1.0 :     1 : False : False : Binary
           ('D1', 'Elena', 13) :     0 :   1.0 :     1 : False : False : Binary
            ('D1', 'Filip', 0) :     0 :   1.0 :     1 : False : False : Binary
            ('D1', 'Filip', 1) :     0 :   1.0 :     1 : False : False : Binary
            ('D1', 'Filip', 2) :     0 :   1.0 :     1 : False : False : Binary
            ('D1', 'Filip', 3) :     0 :   0.0 :     1 : False : False : Binary
            ('D1', 'Filip', 4) :     0 :   0.0 :     1 : False : False : Binary
            ('D1', 'Filip', 5) :     0 :   0.0 :     1 : False : False : Binary
            ('D1', 'Filip', 6) :     0 :   0.0 :     1 : False : False : Binary
            ('D1', 'Filip', 7) :     0 :   1.0 :     1 : False : False : Binary
            ('D1', 'Filip', 8) :     0 :   1.0 :     1 : False : False : Binary
            ('D1', 'Filip', 9) :     0 :   0.0 :     1 : False : False : Binary
           ('D1', 'Filip', 10) :     0 :   0.0 :     1 : False : False : Binary
           ('D1', 'Filip', 11) :     0 :   1.0 :     1 : False : False : Binary
           ('D1', 'Filip', 12) :     0 :   1.0 :     1 : False : False : Binary
           ('D1', 'Filip', 13) :     0 :   1.0 :     1 : False : False : Binary
         ('D1', 'Gheorghe', 0) :     0 :   0.0 :     1 : False : False : Binary
         ('D1', 'Gheorghe', 1) :     0 :   0.0 :     1 : False : False : Binary
         ('D1', 'Gheorghe', 2) :     0 :   1.0 :     1 : False : False : Binary
         ('D1', 'Gheorghe', 3) :     0 :   1.0 :     1 : False : False : Binary
         ('D1', 'Gheorghe', 4) :     0 :   1.0 :     1 : False : False : Binary
         ('D1', 'Gheorghe', 5) :     0 :   0.0 :     1 : False : False : Binary
         ('D1', 'Gheorghe', 6) :     0 :   0.0 :     1 : False : False : Binary
         ('D1', 'Gheorghe', 7) :     0 :   1.0 :     1 : False : False : Binary
         ('D1', 'Gheorghe', 8) :     0 :   1.0 :     1 : False : False : Binary
         ('D1', 'Gheorghe', 9) :     0 :   0.0 :     1 : False : False : Binary
        ('D1', 'Gheorghe', 10) :     0 :   0.0 :     1 : False : False : Binary
        ('D1', 'Gheorghe', 11) :     0 :   1.0 :     1 : False : False : Binary
        ('D1', 'Gheorghe', 12) :     0 :   1.0 :     1 : False : False : Binary
        ('D1', 'Gheorghe', 13) :     0 :   1.0 :     1 : False : False : Binary
          ('D1', 'Horatiu', 0) :     0 :   0.0 :     1 : False : False : Binary
          ('D1', 'Horatiu', 1) :     0 :   1.0 :     1 : False : False : Binary
          ('D1', 'Horatiu', 2) :     0 :   1.0 :     1 : False : False : Binary
          ('D1', 'Horatiu', 3) :     0 :   1.0 :     1 : False : False : Binary
          ('D1', 'Horatiu', 4) :     0 :   1.0 :     1 : False : False : Binary
          ('D1', 'Horatiu', 5) :     0 :   0.0 :     1 : False : False : Binary
          ('D1', 'Horatiu', 6) :     0 :   0.0 :     1 : False : False : Binary
          ('D1', 'Horatiu', 7) :     0 :   0.0 :     1 : False : False : Binary
          ('D1', 'Horatiu', 8) :     0 :   1.0 :     1 : False : False : Binary
          ('D1', 'Horatiu', 9) :     0 :   1.0 :     1 : False : False : Binary
         ('D1', 'Horatiu', 10) :     0 :   1.0 :     1 : False : False : Binary
         ('D1', 'Horatiu', 11) :     0 :   1.0 :     1 : False : False : Binary
         ('D1', 'Horatiu', 12) :     0 :   1.0 :     1 : False : False : Binary
         ('D1', 'Horatiu', 13) :     0 :   0.0 :     1 : False : False : Binary
    IsRest : Size=112, Index=NURSES*DAYS
        Key              : Lower : Value : Upper : Fixed : Stale : Domain
            ('Alina', 0) :     0 :   0.0 :     1 : False : False : Binary
            ('Alina', 1) :     0 :  -0.0 :     1 : False : False : Binary
            ('Alina', 2) :     0 :  -0.0 :     1 : False : False : Binary
            ('Alina', 3) :     0 :   1.0 :     1 : False : False : Binary
            ('Alina', 4) :     0 :   1.0 :     1 : False : False : Binary
            ('Alina', 5) :     0 :   0.0 :     1 : False : False : Binary
            ('Alina', 6) :     0 :   0.0 :     1 : False : False : Binary
            ('Alina', 7) :     0 :   0.0 :     1 : False : False : Binary
            ('Alina', 8) :     0 :  -0.0 :     1 : False : False : Binary
            ('Alina', 9) :     0 :   0.0 :     1 : False : False : Binary
           ('Alina', 10) :     0 :   1.0 :     1 : False : False : Binary
           ('Alina', 11) :     0 :   1.0 :     1 : False : False : Binary
           ('Alina', 12) :     0 :   1.0 :     1 : False : False : Binary
           ('Alina', 13) :     0 :   1.0 :     1 : False : False : Binary
              ('Bob', 0) :     0 :   0.0 :     1 : False : False : Binary
              ('Bob', 1) :     0 :  -0.0 :     1 : False : False : Binary
              ('Bob', 2) :     0 :   0.0 :     1 : False : False : Binary
              ('Bob', 3) :     0 :   0.0 :     1 : False : False : Binary
              ('Bob', 4) :     0 :  -0.0 :     1 : False : False : Binary
              ('Bob', 5) :     0 :   1.0 :     1 : False : False : Binary
              ('Bob', 6) :     0 :   1.0 :     1 : False : False : Binary
              ('Bob', 7) :     0 :  -0.0 :     1 : False : False : Binary
              ('Bob', 8) :     0 :  -0.0 :     1 : False : False : Binary
              ('Bob', 9) :     0 :   1.0 :     1 : False : False : Binary
             ('Bob', 10) :     0 :   1.0 :     1 : False : False : Binary
             ('Bob', 11) :     0 :   1.0 :     1 : False : False : Binary
             ('Bob', 12) :     0 :   0.0 :     1 : False : False : Binary
             ('Bob', 13) :     0 :   0.0 :     1 : False : False : Binary
          ('Catalin', 0) :     0 :   0.0 :     1 : False : False : Binary
          ('Catalin', 1) :     0 :  -0.0 :     1 : False : False : Binary
          ('Catalin', 2) :     0 :   1.0 :     1 : False : False : Binary
          ('Catalin', 3) :     0 :   1.0 :     1 : False : False : Binary
          ('Catalin', 4) :     0 :   0.0 :     1 : False : False : Binary
          ('Catalin', 5) :     0 :   0.0 :     1 : False : False : Binary
          ('Catalin', 6) :     0 :   0.0 :     1 : False : False : Binary
          ('Catalin', 7) :     0 :   1.0 :     1 : False : False : Binary
          ('Catalin', 8) :     0 :   1.0 :     1 : False : False : Binary
          ('Catalin', 9) :     0 :   0.0 :     1 : False : False : Binary
         ('Catalin', 10) :     0 :  -0.0 :     1 : False : False : Binary
         ('Catalin', 11) :     0 :  -0.0 :     1 : False : False : Binary
         ('Catalin', 12) :     0 :   1.0 :     1 : False : False : Binary
         ('Catalin', 13) :     0 :   1.0 :     1 : False : False : Binary
           ('Daniel', 0) :     0 :   0.0 :     1 : False : False : Binary
           ('Daniel', 1) :     0 :   0.0 :     1 : False : False : Binary
           ('Daniel', 2) :     0 :   1.0 :     1 : False : False : Binary
           ('Daniel', 3) :     0 :   1.0 :     1 : False : False : Binary
           ('Daniel', 4) :     0 :   1.0 :     1 : False : False : Binary
           ('Daniel', 5) :     0 :   0.0 :     1 : False : False : Binary
           ('Daniel', 6) :     0 :   0.0 :     1 : False : False : Binary
           ('Daniel', 7) :     0 :   0.0 :     1 : False : False : Binary
           ('Daniel', 8) :     0 :  -0.0 :     1 : False : False : Binary
           ('Daniel', 9) :     0 :  -0.0 :     1 : False : False : Binary
          ('Daniel', 10) :     0 :   1.0 :     1 : False : False : Binary
          ('Daniel', 11) :     0 :   1.0 :     1 : False : False : Binary
          ('Daniel', 12) :     0 :   1.0 :     1 : False : False : Binary
          ('Daniel', 13) :     0 :   1.0 :     1 : False : False : Binary
            ('Elena', 0) :     0 :   1.0 :     1 : False : False : Binary
            ('Elena', 1) :     0 :  -0.0 :     1 : False : False : Binary
            ('Elena', 2) :     0 :  -0.0 :     1 : False : False : Binary
            ('Elena', 3) :     0 :   0.0 :     1 : False : False : Binary
            ('Elena', 4) :     0 :   0.0 :     1 : False : False : Binary
            ('Elena', 5) :     0 :   1.0 :     1 : False : False : Binary
            ('Elena', 6) :     0 :   1.0 :     1 : False : False : Binary
            ('Elena', 7) :     0 :  -0.0 :     1 : False : False : Binary
            ('Elena', 8) :     0 :  -0.0 :     1 : False : False : Binary
            ('Elena', 9) :     0 :   1.0 :     1 : False : False : Binary
           ('Elena', 10) :     0 :   1.0 :     1 : False : False : Binary
           ('Elena', 11) :     0 :  -0.0 :     1 : False : False : Binary
           ('Elena', 12) :     0 :   0.0 :     1 : False : False : Binary
           ('Elena', 13) :     0 :   0.0 :     1 : False : False : Binary
            ('Filip', 0) :     0 :   0.0 :     1 : False : False : Binary
            ('Filip', 1) :     0 :  -0.0 :     1 : False : False : Binary
            ('Filip', 2) :     0 :  -0.0 :     1 : False : False : Binary
            ('Filip', 3) :     0 :   1.0 :     1 : False : False : Binary
            ('Filip', 4) :     0 :   1.0 :     1 : False : False : Binary
            ('Filip', 5) :     0 :   1.0 :     1 : False : False : Binary
            ('Filip', 6) :     0 :   1.0 :     1 : False : False : Binary
            ('Filip', 7) :     0 :   0.0 :     1 : False : False : Binary
            ('Filip', 8) :     0 :  -0.0 :     1 : False : False : Binary
            ('Filip', 9) :     0 :   1.0 :     1 : False : False : Binary
           ('Filip', 10) :     0 :   1.0 :     1 : False : False : Binary
           ('Filip', 11) :     0 :  -0.0 :     1 : False : False : Binary
           ('Filip', 12) :     0 :  -0.0 :     1 : False : False : Binary
           ('Filip', 13) :     0 :   0.0 :     1 : False : False : Binary
         ('Gheorghe', 0) :     0 :   1.0 :     1 : False : False : Binary
         ('Gheorghe', 1) :     0 :   1.0 :     1 : False : False : Binary
         ('Gheorghe', 2) :     0 :   0.0 :     1 : False : False : Binary
         ('Gheorghe', 3) :     0 :   0.0 :     1 : False : False : Binary
         ('Gheorghe', 4) :     0 :   0.0 :     1 : False : False : Binary
         ('Gheorghe', 5) :     0 :   1.0 :     1 : False : False : Binary
         ('Gheorghe', 6) :     0 :   1.0 :     1 : False : False : Binary
         ('Gheorghe', 7) :     0 :  -0.0 :     1 : False : False : Binary
         ('Gheorghe', 8) :     0 :  -0.0 :     1 : False : False : Binary
         ('Gheorghe', 9) :     0 :   1.0 :     1 : False : False : Binary
        ('Gheorghe', 10) :     0 :   1.0 :     1 : False : False : Binary
        ('Gheorghe', 11) :     0 :   0.0 :     1 : False : False : Binary
        ('Gheorghe', 12) :     0 :   0.0 :     1 : False : False : Binary
        ('Gheorghe', 13) :     0 :   0.0 :     1 : False : False : Binary
          ('Horatiu', 0) :     0 :   1.0 :     1 : False : False : Binary
          ('Horatiu', 1) :     0 :  -0.0 :     1 : False : False : Binary
          ('Horatiu', 2) :     0 :  -0.0 :     1 : False : False : Binary
          ('Horatiu', 3) :     0 :   0.0 :     1 : False : False : Binary
          ('Horatiu', 4) :     0 :   0.0 :     1 : False : False : Binary
          ('Horatiu', 5) :     0 :   1.0 :     1 : False : False : Binary
          ('Horatiu', 6) :     0 :   1.0 :     1 : False : False : Binary
          ('Horatiu', 7) :     0 :   1.0 :     1 : False : False : Binary
          ('Horatiu', 8) :     0 :  -0.0 :     1 : False : False : Binary
          ('Horatiu', 9) :     0 :   0.0 :     1 : False : False : Binary
         ('Horatiu', 10) :     0 :  -0.0 :     1 : False : False : Binary
         ('Horatiu', 11) :     0 :  -0.0 :     1 : False : False : Binary
         ('Horatiu', 12) :     0 :   0.0 :     1 : False : False : Binary
         ('Horatiu', 13) :     0 :   1.0 :     1 : False : False : Binary
    IsEndOfWorkBlock : Size=112, Index=NURSES*DAYS
        Key              : Lower : Value : Upper : Fixed : Stale : Domain
            ('Alina', 0) :     0 :   1.0 :     1 : False : False : Binary
            ('Alina', 1) :     0 :   1.0 :     1 : False : False : Binary
            ('Alina', 2) :     0 :   1.0 :     1 : False : False : Binary
            ('Alina', 3) :     0 :   1.0 :     1 : False : False : Binary
            ('Alina', 4) :     0 :   0.0 :     1 : False : False : Binary
            ('Alina', 5) :     0 :   0.0 :     1 : False : False : Binary
            ('Alina', 6) :     0 :   1.0 :     1 : False : False : Binary
            ('Alina', 7) :     0 :   1.0 :     1 : False : False : Binary
            ('Alina', 8) :     0 :   1.0 :     1 : False : False : Binary
            ('Alina', 9) :     0 :   1.0 :     1 : False : False : Binary
           ('Alina', 10) :     0 :   1.0 :     1 : False : False : Binary
           ('Alina', 11) :     0 :   0.0 :     1 : False : False : Binary
           ('Alina', 12) :     0 :   0.0 :     1 : False : False : Binary
           ('Alina', 13) :     0 :   0.0 :     1 : False : False : Binary
              ('Bob', 0) :     0 :   1.0 :     1 : False : False : Binary
              ('Bob', 1) :     0 :   1.0 :     1 : False : False : Binary
              ('Bob', 2) :     0 :   1.0 :     1 : False : False : Binary
              ('Bob', 3) :     0 :   1.0 :     1 : False : False : Binary
              ('Bob', 4) :     0 :   1.0 :     1 : False : False : Binary
              ('Bob', 5) :     0 :   1.0 :     1 : False : False : Binary
              ('Bob', 6) :     0 :   0.0 :     1 : False : False : Binary
              ('Bob', 7) :     0 :   0.0 :     1 : False : False : Binary
              ('Bob', 8) :     0 :   1.0 :     1 : False : False : Binary
              ('Bob', 9) :     0 :   1.0 :     1 : False : False : Binary
             ('Bob', 10) :     0 :   0.0 :     1 : False : False : Binary
             ('Bob', 11) :     0 :   0.0 :     1 : False : False : Binary
             ('Bob', 12) :     0 :   0.0 :     1 : False : False : Binary
             ('Bob', 13) :     0 :   0.0 :     1 : False : False : Binary
          ('Catalin', 0) :     0 :   1.0 :     1 : False : False : Binary
          ('Catalin', 1) :     0 :   1.0 :     1 : False : False : Binary
          ('Catalin', 2) :     0 :   1.0 :     1 : False : False : Binary
          ('Catalin', 3) :     0 :   0.0 :     1 : False : False : Binary
          ('Catalin', 4) :     0 :   0.0 :     1 : False : False : Binary
          ('Catalin', 5) :     0 :   1.0 :     1 : False : False : Binary
          ('Catalin', 6) :     0 :   1.0 :     1 : False : False : Binary
          ('Catalin', 7) :     0 :   1.0 :     1 : False : False : Binary
          ('Catalin', 8) :     0 :   0.0 :     1 : False : False : Binary
          ('Catalin', 9) :     0 :   0.0 :     1 : False : False : Binary
         ('Catalin', 10) :     0 :   1.0 :     1 : False : False : Binary
         ('Catalin', 11) :     0 :   1.0 :     1 : False : False : Binary
         ('Catalin', 12) :     0 :   1.0 :     1 : False : False : Binary
         ('Catalin', 13) :     0 :   0.0 :     1 : False : False : Binary
           ('Daniel', 0) :     0 :   1.0 :     1 : False : False : Binary
           ('Daniel', 1) :     0 :   1.0 :     1 : False : False : Binary
           ('Daniel', 2) :     0 :   1.0 :     1 : False : False : Binary
           ('Daniel', 3) :     0 :   0.0 :     1 : False : False : Binary
           ('Daniel', 4) :     0 :   0.0 :     1 : False : False : Binary
           ('Daniel', 5) :     0 :   0.0 :     1 : False : False : Binary
           ('Daniel', 6) :     0 :   1.0 :     1 : False : False : Binary
           ('Daniel', 7) :     0 :   1.0 :     1 : False : False : Binary
           ('Daniel', 8) :     0 :   1.0 :     1 : False : False : Binary
           ('Daniel', 9) :     0 :   1.0 :     1 : False : False : Binary
          ('Daniel', 10) :     0 :   1.0 :     1 : False : False : Binary
          ('Daniel', 11) :     0 :   0.0 :     1 : False : False : Binary
          ('Daniel', 12) :     0 :   0.0 :     1 : False : False : Binary
          ('Daniel', 13) :     0 :   0.0 :     1 : False : False : Binary
            ('Elena', 0) :     0 :   1.0 :     1 : False : False : Binary
            ('Elena', 1) :     0 :   0.0 :     1 : False : False : Binary
            ('Elena', 2) :     0 :   1.0 :     1 : False : False : Binary
            ('Elena', 3) :     0 :   1.0 :     1 : False : False : Binary
            ('Elena', 4) :     0 :   1.0 :     1 : False : False : Binary
            ('Elena', 5) :     0 :   1.0 :     1 : False : False : Binary
            ('Elena', 6) :     0 :   0.0 :     1 : False : False : Binary
            ('Elena', 7) :     0 :   0.0 :     1 : False : False : Binary
            ('Elena', 8) :     0 :   1.0 :     1 : False : False : Binary
            ('Elena', 9) :     0 :   1.0 :     1 : False : False : Binary
           ('Elena', 10) :     0 :   0.0 :     1 : False : False : Binary
           ('Elena', 11) :     0 :   0.0 :     1 : False : False : Binary
           ('Elena', 12) :     0 :   1.0 :     1 : False : False : Binary
           ('Elena', 13) :     0 :   0.0 :     1 : False : False : Binary
            ('Filip', 0) :     0 :   1.0 :     1 : False : False : Binary
            ('Filip', 1) :     0 :   1.0 :     1 : False : False : Binary
            ('Filip', 2) :     0 :   1.0 :     1 : False : False : Binary
            ('Filip', 3) :     0 :   1.0 :     1 : False : False : Binary
            ('Filip', 4) :     0 :   0.0 :     1 : False : False : Binary
            ('Filip', 5) :     0 :   0.0 :     1 : False : False : Binary
            ('Filip', 6) :     0 :   0.0 :     1 : False : False : Binary
            ('Filip', 7) :     0 :   0.0 :     1 : False : False : Binary
            ('Filip', 8) :     0 :   1.0 :     1 : False : False : Binary
            ('Filip', 9) :     0 :   1.0 :     1 : False : False : Binary
           ('Filip', 10) :     0 :   0.0 :     1 : False : False : Binary
           ('Filip', 11) :     0 :   0.0 :     1 : False : False : Binary
           ('Filip', 12) :     0 :   1.0 :     1 : False : False : Binary
           ('Filip', 13) :     0 :   0.0 :     1 : False : False : Binary
         ('Gheorghe', 0) :     0 :   1.0 :     1 : False : False : Binary
         ('Gheorghe', 1) :     0 :   0.0 :     1 : False : False : Binary
         ('Gheorghe', 2) :     0 :   0.0 :     1 : False : False : Binary
         ('Gheorghe', 3) :     0 :   1.0 :     1 : False : False : Binary
         ('Gheorghe', 4) :     0 :   1.0 :     1 : False : False : Binary
         ('Gheorghe', 5) :     0 :   1.0 :     1 : False : False : Binary
         ('Gheorghe', 6) :     0 :   0.0 :     1 : False : False : Binary
         ('Gheorghe', 7) :     0 :   0.0 :     1 : False : False : Binary
         ('Gheorghe', 8) :     0 :   1.0 :     1 : False : False : Binary
         ('Gheorghe', 9) :     0 :   1.0 :     1 : False : False : Binary
        ('Gheorghe', 10) :     0 :   0.0 :     1 : False : False : Binary
        ('Gheorghe', 11) :     0 :   0.0 :     1 : False : False : Binary
        ('Gheorghe', 12) :     0 :   1.0 :     1 : False : False : Binary
        ('Gheorghe', 13) :     0 :   0.0 :     1 : False : False : Binary
          ('Horatiu', 0) :     0 :   1.0 :     1 : False : False : Binary
          ('Horatiu', 1) :     0 :   0.0 :     1 : False : False : Binary
          ('Horatiu', 2) :     0 :   1.0 :     1 : False : False : Binary
          ('Horatiu', 3) :     0 :   1.0 :     1 : False : False : Binary
          ('Horatiu', 4) :     0 :   1.0 :     1 : False : False : Binary
          ('Horatiu', 5) :     0 :   1.0 :     1 : False : False : Binary
          ('Horatiu', 6) :     0 :   0.0 :     1 : False : False : Binary
          ('Horatiu', 7) :     0 :   0.0 :     1 : False : False : Binary
          ('Horatiu', 8) :     0 :   0.0 :     1 : False : False : Binary
          ('Horatiu', 9) :     0 :   1.0 :     1 : False : False : Binary
         ('Horatiu', 10) :     0 :   1.0 :     1 : False : False : Binary
         ('Horatiu', 11) :     0 :   1.0 :     1 : False : False : Binary
         ('Horatiu', 12) :     0 :   1.0 :     1 : False : False : Binary
         ('Horatiu', 13) :     0 :   0.0 :     1 : False : False : Binary
    IsEndOfRestBlock : Size=112, Index=NURSES*DAYS
        Key              : Lower : Value : Upper : Fixed : Stale : Domain
            ('Alina', 0) :     0 :   1.0 :     1 : False : False : Binary
            ('Alina', 1) :     0 :   0.0 :     1 : False : False : Binary
            ('Alina', 2) :     0 :   0.0 :     1 : False : False : Binary
            ('Alina', 3) :     0 :   0.0 :     1 : False : False : Binary
            ('Alina', 4) :     0 :   1.0 :     1 : False : False : Binary
            ('Alina', 5) :     0 :   1.0 :     1 : False : False : Binary
            ('Alina', 6) :     0 :   0.0 :     1 : False : False : Binary
            ('Alina', 7) :     0 :   0.0 :     1 : False : False : Binary
            ('Alina', 8) :     0 :   0.0 :     1 : False : False : Binary
            ('Alina', 9) :     0 :   0.0 :     1 : False : False : Binary
           ('Alina', 10) :     0 :   0.0 :     1 : False : False : Binary
           ('Alina', 11) :     0 :   1.0 :     1 : False : False : Binary
           ('Alina', 12) :     0 :   1.0 :     1 : False : False : Binary
           ('Alina', 13) :     0 :   0.0 :     1 : False : False : Binary
              ('Bob', 0) :     0 :   1.0 :     1 : False : False : Binary
              ('Bob', 1) :     0 :   0.0 :     1 : False : False : Binary
              ('Bob', 2) :     0 :   0.0 :     1 : False : False : Binary
              ('Bob', 3) :     0 :   0.0 :     1 : False : False : Binary
              ('Bob', 4) :     0 :   0.0 :     1 : False : False : Binary
              ('Bob', 5) :     0 :   0.0 :     1 : False : False : Binary
              ('Bob', 6) :     0 :   1.0 :     1 : False : False : Binary
              ('Bob', 7) :     0 :   1.0 :     1 : False : False : Binary
              ('Bob', 8) :     0 :   0.0 :     1 : False : False : Binary
              ('Bob', 9) :     0 :   0.0 :     1 : False : False : Binary
             ('Bob', 10) :     0 :   1.0 :     1 : False : False : Binary
             ('Bob', 11) :     0 :   1.0 :     1 : False : False : Binary
             ('Bob', 12) :     0 :   1.0 :     1 : False : False : Binary
             ('Bob', 13) :     0 :   0.0 :     1 : False : False : Binary
          ('Catalin', 0) :     0 :   1.0 :     1 : False : False : Binary
          ('Catalin', 1) :     0 :   0.0 :     1 : False : False : Binary
          ('Catalin', 2) :     0 :   0.0 :     1 : False : False : Binary
          ('Catalin', 3) :     0 :   1.0 :     1 : False : False : Binary
          ('Catalin', 4) :     0 :   1.0 :     1 : False : False : Binary
          ('Catalin', 5) :     0 :   0.0 :     1 : False : False : Binary
          ('Catalin', 6) :     0 :   0.0 :     1 : False : False : Binary
          ('Catalin', 7) :     0 :   0.0 :     1 : False : False : Binary
          ('Catalin', 8) :     0 :   1.0 :     1 : False : False : Binary
          ('Catalin', 9) :     0 :   1.0 :     1 : False : False : Binary
         ('Catalin', 10) :     0 :   0.0 :     1 : False : False : Binary
         ('Catalin', 11) :     0 :   0.0 :     1 : False : False : Binary
         ('Catalin', 12) :     0 :   0.0 :     1 : False : False : Binary
         ('Catalin', 13) :     0 :   0.0 :     1 : False : False : Binary
           ('Daniel', 0) :     0 :   1.0 :     1 : False : False : Binary
           ('Daniel', 1) :     0 :   0.0 :     1 : False : False : Binary
           ('Daniel', 2) :     0 :   0.0 :     1 : False : False : Binary
           ('Daniel', 3) :     0 :   1.0 :     1 : False : False : Binary
           ('Daniel', 4) :     0 :   1.0 :     1 : False : False : Binary
           ('Daniel', 5) :     0 :   1.0 :     1 : False : False : Binary
           ('Daniel', 6) :     0 :   0.0 :     1 : False : False : Binary
           ('Daniel', 7) :     0 :   0.0 :     1 : False : False : Binary
           ('Daniel', 8) :     0 :   0.0 :     1 : False : False : Binary
           ('Daniel', 9) :     0 :   0.0 :     1 : False : False : Binary
          ('Daniel', 10) :     0 :   0.0 :     1 : False : False : Binary
          ('Daniel', 11) :     0 :   1.0 :     1 : False : False : Binary
          ('Daniel', 12) :     0 :   1.0 :     1 : False : False : Binary
          ('Daniel', 13) :     0 :   0.0 :     1 : False : False : Binary
            ('Elena', 0) :     0 :   1.0 :     1 : False : False : Binary
            ('Elena', 1) :     0 :   1.0 :     1 : False : False : Binary
            ('Elena', 2) :     0 :   0.0 :     1 : False : False : Binary
            ('Elena', 3) :     0 :   0.0 :     1 : False : False : Binary
            ('Elena', 4) :     0 :   0.0 :     1 : False : False : Binary
            ('Elena', 5) :     0 :   0.0 :     1 : False : False : Binary
            ('Elena', 6) :     0 :   1.0 :     1 : False : False : Binary
            ('Elena', 7) :     0 :   1.0 :     1 : False : False : Binary
            ('Elena', 8) :     0 :   0.0 :     1 : False : False : Binary
            ('Elena', 9) :     0 :   0.0 :     1 : False : False : Binary
           ('Elena', 10) :     0 :   1.0 :     1 : False : False : Binary
           ('Elena', 11) :     0 :   1.0 :     1 : False : False : Binary
           ('Elena', 12) :     0 :   0.0 :     1 : False : False : Binary
           ('Elena', 13) :     0 :   0.0 :     1 : False : False : Binary
            ('Filip', 0) :     0 :   1.0 :     1 : False : False : Binary
            ('Filip', 1) :     0 :   0.0 :     1 : False : False : Binary
            ('Filip', 2) :     0 :   0.0 :     1 : False : False : Binary
            ('Filip', 3) :     0 :   0.0 :     1 : False : False : Binary
            ('Filip', 4) :     0 :   1.0 :     1 : False : False : Binary
            ('Filip', 5) :     0 :   1.0 :     1 : False : False : Binary
            ('Filip', 6) :     0 :   1.0 :     1 : False : False : Binary
            ('Filip', 7) :     0 :   1.0 :     1 : False : False : Binary
            ('Filip', 8) :     0 :   0.0 :     1 : False : False : Binary
            ('Filip', 9) :     0 :   0.0 :     1 : False : False : Binary
           ('Filip', 10) :     0 :   1.0 :     1 : False : False : Binary
           ('Filip', 11) :     0 :   1.0 :     1 : False : False : Binary
           ('Filip', 12) :     0 :   0.0 :     1 : False : False : Binary
           ('Filip', 13) :     0 :   0.0 :     1 : False : False : Binary
         ('Gheorghe', 0) :     0 :   1.0 :     1 : False : False : Binary
         ('Gheorghe', 1) :     0 :   1.0 :     1 : False : False : Binary
         ('Gheorghe', 2) :     0 :   1.0 :     1 : False : False : Binary
         ('Gheorghe', 3) :     0 :   0.0 :     1 : False : False : Binary
         ('Gheorghe', 4) :     0 :   0.0 :     1 : False : False : Binary
         ('Gheorghe', 5) :     0 :   0.0 :     1 : False : False : Binary
         ('Gheorghe', 6) :     0 :   1.0 :     1 : False : False : Binary
         ('Gheorghe', 7) :     0 :   1.0 :     1 : False : False : Binary
         ('Gheorghe', 8) :     0 :   0.0 :     1 : False : False : Binary
         ('Gheorghe', 9) :     0 :   0.0 :     1 : False : False : Binary
        ('Gheorghe', 10) :     0 :   1.0 :     1 : False : False : Binary
        ('Gheorghe', 11) :     0 :   1.0 :     1 : False : False : Binary
        ('Gheorghe', 12) :     0 :   0.0 :     1 : False : False : Binary
        ('Gheorghe', 13) :     0 :   0.0 :     1 : False : False : Binary
          ('Horatiu', 0) :     0 :   1.0 :     1 : False : False : Binary
          ('Horatiu', 1) :     0 :   1.0 :     1 : False : False : Binary
          ('Horatiu', 2) :     0 :   0.0 :     1 : False : False : Binary
          ('Horatiu', 3) :     0 :   0.0 :     1 : False : False : Binary
          ('Horatiu', 4) :     0 :   0.0 :     1 : False : False : Binary
          ('Horatiu', 5) :     0 :   0.0 :     1 : False : False : Binary
          ('Horatiu', 6) :     0 :   1.0 :     1 : False : False : Binary
          ('Horatiu', 7) :     0 :   1.0 :     1 : False : False : Binary
          ('Horatiu', 8) :     0 :   1.0 :     1 : False : False : Binary
          ('Horatiu', 9) :     0 :   0.0 :     1 : False : False : Binary
         ('Horatiu', 10) :     0 :   0.0 :     1 : False : False : Binary
         ('Horatiu', 11) :     0 :   0.0 :     1 : False : False : Binary
         ('Horatiu', 12) :     0 :   0.0 :     1 : False : False : Binary
         ('Horatiu', 13) :     0 :   0.0 :     1 : False : False : Binary
    HasWeekendWork : Size=16, Index=NURSES*WEEKS
        Key             : Lower : Value : Upper : Fixed : Stale : Domain
           ('Alina', 0) :     0 :   1.0 :     1 : False : False : Binary
           ('Alina', 1) :     0 :   0.0 :     1 : False : False : Binary
             ('Bob', 0) :     0 :   0.0 :     1 : False : False : Binary
             ('Bob', 1) :     0 :   1.0 :     1 : False : False : Binary
         ('Catalin', 0) :     0 :   1.0 :     1 : False : False : Binary
         ('Catalin', 1) :     0 :   0.0 :     1 : False : False : Binary
          ('Daniel', 0) :     0 :   1.0 :     1 : False : False : Binary
          ('Daniel', 1) :     0 :   0.0 :     1 : False : False : Binary
           ('Elena', 0) :     0 :   0.0 :     1 : False : False : Binary
           ('Elena', 1) :     0 :   1.0 :     1 : False : False : Binary
           ('Filip', 0) :     0 :   0.0 :     1 : False : False : Binary
           ('Filip', 1) :     0 :   1.0 :     1 : False : False : Binary
        ('Gheorghe', 0) :     0 :   0.0 :     1 : False : False : Binary
        ('Gheorghe', 1) :     0 :   1.0 :     1 : False : False : Binary
         ('Horatiu', 0) :     0 :   0.0 :     1 : False : False : Binary
         ('Horatiu', 1) :     0 :   1.0 :     1 : False : False : Binary
    PenaltyShiftOnReq : Size=112, Index=SHIFTTYPES*NURSES*DAYS
        Key                    : Lower : Value : Upper : Fixed : Stale : Domain
            ('D1', 'Alina', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
            ('D1', 'Alina', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
            ('D1', 'Alina', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
            ('D1', 'Alina', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
            ('D1', 'Alina', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
            ('D1', 'Alina', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
            ('D1', 'Alina', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
            ('D1', 'Alina', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
            ('D1', 'Alina', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
            ('D1', 'Alina', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
           ('D1', 'Alina', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
           ('D1', 'Alina', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
           ('D1', 'Alina', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
           ('D1', 'Alina', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
              ('D1', 'Bob', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
              ('D1', 'Bob', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
              ('D1', 'Bob', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
              ('D1', 'Bob', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
              ('D1', 'Bob', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
              ('D1', 'Bob', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
              ('D1', 'Bob', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
              ('D1', 'Bob', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
              ('D1', 'Bob', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
              ('D1', 'Bob', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
             ('D1', 'Bob', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
             ('D1', 'Bob', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
             ('D1', 'Bob', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
             ('D1', 'Bob', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
          ('D1', 'Catalin', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
          ('D1', 'Catalin', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
          ('D1', 'Catalin', 2) :     0 :   1.0 :  None : False : False : NonNegativeReals
          ('D1', 'Catalin', 3) :     0 :   1.0 :  None : False : False : NonNegativeReals
          ('D1', 'Catalin', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
          ('D1', 'Catalin', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
          ('D1', 'Catalin', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
          ('D1', 'Catalin', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
          ('D1', 'Catalin', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
          ('D1', 'Catalin', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'Catalin', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'Catalin', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'Catalin', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'Catalin', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
           ('D1', 'Daniel', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
           ('D1', 'Daniel', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
           ('D1', 'Daniel', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
           ('D1', 'Daniel', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
           ('D1', 'Daniel', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
           ('D1', 'Daniel', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
           ('D1', 'Daniel', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
           ('D1', 'Daniel', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
           ('D1', 'Daniel', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
           ('D1', 'Daniel', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
          ('D1', 'Daniel', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
          ('D1', 'Daniel', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
          ('D1', 'Daniel', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
          ('D1', 'Daniel', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
            ('D1', 'Elena', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
            ('D1', 'Elena', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
            ('D1', 'Elena', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
            ('D1', 'Elena', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
            ('D1', 'Elena', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
            ('D1', 'Elena', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
            ('D1', 'Elena', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
            ('D1', 'Elena', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
            ('D1', 'Elena', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
            ('D1', 'Elena', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
           ('D1', 'Elena', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
           ('D1', 'Elena', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
           ('D1', 'Elena', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
           ('D1', 'Elena', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
            ('D1', 'Filip', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
            ('D1', 'Filip', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
            ('D1', 'Filip', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
            ('D1', 'Filip', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
            ('D1', 'Filip', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
            ('D1', 'Filip', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
            ('D1', 'Filip', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
            ('D1', 'Filip', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
            ('D1', 'Filip', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
            ('D1', 'Filip', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
           ('D1', 'Filip', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
           ('D1', 'Filip', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
           ('D1', 'Filip', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
           ('D1', 'Filip', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'Gheorghe', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'Gheorghe', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'Gheorghe', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'Gheorghe', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'Gheorghe', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'Gheorghe', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'Gheorghe', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'Gheorghe', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'Gheorghe', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'Gheorghe', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D1', 'Gheorghe', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D1', 'Gheorghe', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D1', 'Gheorghe', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D1', 'Gheorghe', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
          ('D1', 'Horatiu', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
          ('D1', 'Horatiu', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
          ('D1', 'Horatiu', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
          ('D1', 'Horatiu', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
          ('D1', 'Horatiu', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
          ('D1', 'Horatiu', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
          ('D1', 'Horatiu', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
          ('D1', 'Horatiu', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
          ('D1', 'Horatiu', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
          ('D1', 'Horatiu', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'Horatiu', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'Horatiu', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'Horatiu', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'Horatiu', 13) :     0 :   1.0 :  None : False : False : NonNegativeReals
    PenaltyShiftOffReq : Size=112, Index=SHIFTTYPES*NURSES*DAYS
        Key                    : Lower : Value : Upper : Fixed : Stale : Domain
            ('D1', 'Alina', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
            ('D1', 'Alina', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
            ('D1', 'Alina', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
            ('D1', 'Alina', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
            ('D1', 'Alina', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
            ('D1', 'Alina', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
            ('D1', 'Alina', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
            ('D1', 'Alina', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
            ('D1', 'Alina', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
            ('D1', 'Alina', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
           ('D1', 'Alina', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
           ('D1', 'Alina', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
           ('D1', 'Alina', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
           ('D1', 'Alina', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
              ('D1', 'Bob', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
              ('D1', 'Bob', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
              ('D1', 'Bob', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
              ('D1', 'Bob', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
              ('D1', 'Bob', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
              ('D1', 'Bob', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
              ('D1', 'Bob', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
              ('D1', 'Bob', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
              ('D1', 'Bob', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
              ('D1', 'Bob', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
             ('D1', 'Bob', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
             ('D1', 'Bob', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
             ('D1', 'Bob', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
             ('D1', 'Bob', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
          ('D1', 'Catalin', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
          ('D1', 'Catalin', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
          ('D1', 'Catalin', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
          ('D1', 'Catalin', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
          ('D1', 'Catalin', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
          ('D1', 'Catalin', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
          ('D1', 'Catalin', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
          ('D1', 'Catalin', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
          ('D1', 'Catalin', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
          ('D1', 'Catalin', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'Catalin', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'Catalin', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'Catalin', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'Catalin', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
           ('D1', 'Daniel', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
           ('D1', 'Daniel', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
           ('D1', 'Daniel', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
           ('D1', 'Daniel', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
           ('D1', 'Daniel', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
           ('D1', 'Daniel', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
           ('D1', 'Daniel', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
           ('D1', 'Daniel', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
           ('D1', 'Daniel', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
           ('D1', 'Daniel', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
          ('D1', 'Daniel', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
          ('D1', 'Daniel', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
          ('D1', 'Daniel', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
          ('D1', 'Daniel', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
            ('D1', 'Elena', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
            ('D1', 'Elena', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
            ('D1', 'Elena', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
            ('D1', 'Elena', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
            ('D1', 'Elena', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
            ('D1', 'Elena', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
            ('D1', 'Elena', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
            ('D1', 'Elena', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
            ('D1', 'Elena', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
            ('D1', 'Elena', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
           ('D1', 'Elena', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
           ('D1', 'Elena', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
           ('D1', 'Elena', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
           ('D1', 'Elena', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
            ('D1', 'Filip', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
            ('D1', 'Filip', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
            ('D1', 'Filip', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
            ('D1', 'Filip', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
            ('D1', 'Filip', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
            ('D1', 'Filip', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
            ('D1', 'Filip', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
            ('D1', 'Filip', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
            ('D1', 'Filip', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
            ('D1', 'Filip', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
           ('D1', 'Filip', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
           ('D1', 'Filip', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
           ('D1', 'Filip', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
           ('D1', 'Filip', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'Gheorghe', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'Gheorghe', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'Gheorghe', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'Gheorghe', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'Gheorghe', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'Gheorghe', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'Gheorghe', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'Gheorghe', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'Gheorghe', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'Gheorghe', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D1', 'Gheorghe', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D1', 'Gheorghe', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D1', 'Gheorghe', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D1', 'Gheorghe', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
          ('D1', 'Horatiu', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
          ('D1', 'Horatiu', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
          ('D1', 'Horatiu', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
          ('D1', 'Horatiu', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
          ('D1', 'Horatiu', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
          ('D1', 'Horatiu', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
          ('D1', 'Horatiu', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
          ('D1', 'Horatiu', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
          ('D1', 'Horatiu', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
          ('D1', 'Horatiu', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'Horatiu', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'Horatiu', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'Horatiu', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 'Horatiu', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
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
         ('D1', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 9) :     0 :  -0.0 :  None : False : False : NonNegativeReals
        ('D1', 10) :     0 :  -0.0 :  None : False : False : NonNegativeReals
        ('D1', 11) :     0 :  -0.0 :  None : False : False : NonNegativeReals
        ('D1', 12) :     0 :   1.0 :  None : False : False : NonNegativeReals
        ('D1', 13) :     0 :  -0.0 :  None : False : False : NonNegativeReals
    OverCover : Size=14, Index=SHIFTTYPES*DAYS
        Key        : Lower : Value : Upper : Fixed : Stale : Domain
         ('D1', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 2) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('D1', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 7) :     0 :  -0.0 :  None : False : False : NonNegativeReals
         ('D1', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D1', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D1', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D1', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D1', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
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
         ('D1', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D1', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D1', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D1', 12) :     0 : 100.0 :  None : False : False : NonNegativeReals
        ('D1', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
    PenaltyOver : Size=14, Index=SHIFTTYPES*DAYS
        Key        : Lower : Value : Upper : Fixed : Stale : Domain
         ('D1', 0) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 1) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 2) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 3) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 4) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 5) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 6) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 7) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 8) :     0 :   0.0 :  None : False : False : NonNegativeReals
         ('D1', 9) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D1', 10) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D1', 11) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D1', 12) :     0 :   0.0 :  None : False : False : NonNegativeReals
        ('D1', 13) :     0 :   0.0 :  None : False : False : NonNegativeReals
    MinTotalMinsUnder : Size=8, Index=NURSES
        Key      : Lower : Value : Upper : Fixed : Stale : Domain
           Alina :     0 :  -0.0 :  None : False : False : NonNegativeReals
             Bob :     0 :  -0.0 :  None : False : False : NonNegativeReals
         Catalin :     0 :  -0.0 :  None : False : False : NonNegativeReals
          Daniel :     0 :  -0.0 :  None : False : False : NonNegativeReals
           Elena :     0 :  -0.0 :  None : False : False : NonNegativeReals
           Filip :     0 :  -0.0 :  None : False : False : NonNegativeReals
        Gheorghe :     0 :  -0.0 :  None : False : False : NonNegativeReals
         Horatiu :     0 :  -0.0 :  None : False : False : NonNegativeReals

  Objectives:
    objective : Size=1, Index=None, Active=True
        Key  : Active : Value
        None :   True : 503.0

  Constraints:
    constraint_one_shift_one_day : Size=112
        Key              : Lower : Body : Upper
            ('Alina', 0) :   1.0 :  1.0 :   1.0
            ('Alina', 1) :   1.0 :  1.0 :   1.0
            ('Alina', 2) :   1.0 :  1.0 :   1.0
            ('Alina', 3) :   1.0 :  1.0 :   1.0
            ('Alina', 4) :   1.0 :  1.0 :   1.0
            ('Alina', 5) :   1.0 :  1.0 :   1.0
            ('Alina', 6) :   1.0 :  1.0 :   1.0
            ('Alina', 7) :   1.0 :  1.0 :   1.0
            ('Alina', 8) :   1.0 :  1.0 :   1.0
            ('Alina', 9) :   1.0 :  1.0 :   1.0
           ('Alina', 10) :   1.0 :  1.0 :   1.0
           ('Alina', 11) :   1.0 :  1.0 :   1.0
           ('Alina', 12) :   1.0 :  1.0 :   1.0
           ('Alina', 13) :   1.0 :  1.0 :   1.0
              ('Bob', 0) :   1.0 :  1.0 :   1.0
              ('Bob', 1) :   1.0 :  1.0 :   1.0
              ('Bob', 2) :   1.0 :  1.0 :   1.0
              ('Bob', 3) :   1.0 :  1.0 :   1.0
              ('Bob', 4) :   1.0 :  1.0 :   1.0
              ('Bob', 5) :   1.0 :  1.0 :   1.0
              ('Bob', 6) :   1.0 :  1.0 :   1.0
              ('Bob', 7) :   1.0 :  1.0 :   1.0
              ('Bob', 8) :   1.0 :  1.0 :   1.0
              ('Bob', 9) :   1.0 :  1.0 :   1.0
             ('Bob', 10) :   1.0 :  1.0 :   1.0
             ('Bob', 11) :   1.0 :  1.0 :   1.0
             ('Bob', 12) :   1.0 :  1.0 :   1.0
             ('Bob', 13) :   1.0 :  1.0 :   1.0
          ('Catalin', 0) :   1.0 :  1.0 :   1.0
          ('Catalin', 1) :   1.0 :  1.0 :   1.0
          ('Catalin', 2) :   1.0 :  1.0 :   1.0
          ('Catalin', 3) :   1.0 :  1.0 :   1.0
          ('Catalin', 4) :   1.0 :  1.0 :   1.0
          ('Catalin', 5) :   1.0 :  1.0 :   1.0
          ('Catalin', 6) :   1.0 :  1.0 :   1.0
          ('Catalin', 7) :   1.0 :  1.0 :   1.0
          ('Catalin', 8) :   1.0 :  1.0 :   1.0
          ('Catalin', 9) :   1.0 :  1.0 :   1.0
         ('Catalin', 10) :   1.0 :  1.0 :   1.0
         ('Catalin', 11) :   1.0 :  1.0 :   1.0
         ('Catalin', 12) :   1.0 :  1.0 :   1.0
         ('Catalin', 13) :   1.0 :  1.0 :   1.0
           ('Daniel', 0) :   1.0 :  1.0 :   1.0
           ('Daniel', 1) :   1.0 :  1.0 :   1.0
           ('Daniel', 2) :   1.0 :  1.0 :   1.0
           ('Daniel', 3) :   1.0 :  1.0 :   1.0
           ('Daniel', 4) :   1.0 :  1.0 :   1.0
           ('Daniel', 5) :   1.0 :  1.0 :   1.0
           ('Daniel', 6) :   1.0 :  1.0 :   1.0
           ('Daniel', 7) :   1.0 :  1.0 :   1.0
           ('Daniel', 8) :   1.0 :  1.0 :   1.0
           ('Daniel', 9) :   1.0 :  1.0 :   1.0
          ('Daniel', 10) :   1.0 :  1.0 :   1.0
          ('Daniel', 11) :   1.0 :  1.0 :   1.0
          ('Daniel', 12) :   1.0 :  1.0 :   1.0
          ('Daniel', 13) :   1.0 :  1.0 :   1.0
            ('Elena', 0) :   1.0 :  1.0 :   1.0
            ('Elena', 1) :   1.0 :  1.0 :   1.0
            ('Elena', 2) :   1.0 :  1.0 :   1.0
            ('Elena', 3) :   1.0 :  1.0 :   1.0
            ('Elena', 4) :   1.0 :  1.0 :   1.0
            ('Elena', 5) :   1.0 :  1.0 :   1.0
            ('Elena', 6) :   1.0 :  1.0 :   1.0
            ('Elena', 7) :   1.0 :  1.0 :   1.0
            ('Elena', 8) :   1.0 :  1.0 :   1.0
            ('Elena', 9) :   1.0 :  1.0 :   1.0
           ('Elena', 10) :   1.0 :  1.0 :   1.0
           ('Elena', 11) :   1.0 :  1.0 :   1.0
           ('Elena', 12) :   1.0 :  1.0 :   1.0
           ('Elena', 13) :   1.0 :  1.0 :   1.0
            ('Filip', 0) :   1.0 :  1.0 :   1.0
            ('Filip', 1) :   1.0 :  1.0 :   1.0
            ('Filip', 2) :   1.0 :  1.0 :   1.0
            ('Filip', 3) :   1.0 :  1.0 :   1.0
            ('Filip', 4) :   1.0 :  1.0 :   1.0
            ('Filip', 5) :   1.0 :  1.0 :   1.0
            ('Filip', 6) :   1.0 :  1.0 :   1.0
            ('Filip', 7) :   1.0 :  1.0 :   1.0
            ('Filip', 8) :   1.0 :  1.0 :   1.0
            ('Filip', 9) :   1.0 :  1.0 :   1.0
           ('Filip', 10) :   1.0 :  1.0 :   1.0
           ('Filip', 11) :   1.0 :  1.0 :   1.0
           ('Filip', 12) :   1.0 :  1.0 :   1.0
           ('Filip', 13) :   1.0 :  1.0 :   1.0
         ('Gheorghe', 0) :   1.0 :  1.0 :   1.0
         ('Gheorghe', 1) :   1.0 :  1.0 :   1.0
         ('Gheorghe', 2) :   1.0 :  1.0 :   1.0
         ('Gheorghe', 3) :   1.0 :  1.0 :   1.0
         ('Gheorghe', 4) :   1.0 :  1.0 :   1.0
         ('Gheorghe', 5) :   1.0 :  1.0 :   1.0
         ('Gheorghe', 6) :   1.0 :  1.0 :   1.0
         ('Gheorghe', 7) :   1.0 :  1.0 :   1.0
         ('Gheorghe', 8) :   1.0 :  1.0 :   1.0
         ('Gheorghe', 9) :   1.0 :  1.0 :   1.0
        ('Gheorghe', 10) :   1.0 :  1.0 :   1.0
        ('Gheorghe', 11) :   1.0 :  1.0 :   1.0
        ('Gheorghe', 12) :   1.0 :  1.0 :   1.0
        ('Gheorghe', 13) :   1.0 :  1.0 :   1.0
          ('Horatiu', 0) :   1.0 :  1.0 :   1.0
          ('Horatiu', 1) :   1.0 :  1.0 :   1.0
          ('Horatiu', 2) :   1.0 :  1.0 :   1.0
          ('Horatiu', 3) :   1.0 :  1.0 :   1.0
          ('Horatiu', 4) :   1.0 :  1.0 :   1.0
          ('Horatiu', 5) :   1.0 :  1.0 :   1.0
          ('Horatiu', 6) :   1.0 :  1.0 :   1.0
          ('Horatiu', 7) :   1.0 :  1.0 :   1.0
          ('Horatiu', 8) :   1.0 :  1.0 :   1.0
          ('Horatiu', 9) :   1.0 :  1.0 :   1.0
         ('Horatiu', 10) :   1.0 :  1.0 :   1.0
         ('Horatiu', 11) :   1.0 :  1.0 :   1.0
         ('Horatiu', 12) :   1.0 :  1.0 :   1.0
         ('Horatiu', 13) :   1.0 :  1.0 :   1.0
    constraint_shift_rotation_ub : Size=0
        Key : Lower : Body : Upper
    constraint_shift_rotation : Size=104
        Key                    : Lower : Body : Upper
            ('D1', 'Alina', 0) :  None :  1.0 :   1.0
            ('D1', 'Alina', 1) :  None :  1.0 :   1.0
            ('D1', 'Alina', 2) :  None :  1.0 :   1.0
            ('D1', 'Alina', 3) :  None :  0.0 :   1.0
            ('D1', 'Alina', 4) :  None :  0.0 :   1.0
            ('D1', 'Alina', 5) :  None :  1.0 :   1.0
            ('D1', 'Alina', 6) :  None :  1.0 :   1.0
            ('D1', 'Alina', 7) :  None :  1.0 :   1.0
            ('D1', 'Alina', 8) :  None :  1.0 :   1.0
            ('D1', 'Alina', 9) :  None :  1.0 :   1.0
           ('D1', 'Alina', 10) :  None :  0.0 :   1.0
           ('D1', 'Alina', 11) :  None :  0.0 :   1.0
           ('D1', 'Alina', 12) :  None :  0.0 :   1.0
              ('D1', 'Bob', 0) :  None :  1.0 :   1.0
              ('D1', 'Bob', 1) :  None :  1.0 :   1.0
              ('D1', 'Bob', 2) :  None :  1.0 :   1.0
              ('D1', 'Bob', 3) :  None :  1.0 :   1.0
              ('D1', 'Bob', 4) :  None :  1.0 :   1.0
              ('D1', 'Bob', 5) :  None :  0.0 :   1.0
              ('D1', 'Bob', 6) :  None :  0.0 :   1.0
              ('D1', 'Bob', 7) :  None :  1.0 :   1.0
              ('D1', 'Bob', 8) :  None :  1.0 :   1.0
              ('D1', 'Bob', 9) :  None :  0.0 :   1.0
             ('D1', 'Bob', 10) :  None :  0.0 :   1.0
             ('D1', 'Bob', 11) :  None :  0.0 :   1.0
             ('D1', 'Bob', 12) :  None :  1.0 :   1.0
          ('D1', 'Catalin', 0) :  None :  1.0 :   1.0
          ('D1', 'Catalin', 1) :  None :  1.0 :   1.0
          ('D1', 'Catalin', 2) :  None :  0.0 :   1.0
          ('D1', 'Catalin', 3) :  None :  0.0 :   1.0
          ('D1', 'Catalin', 4) :  None :  1.0 :   1.0
          ('D1', 'Catalin', 5) :  None :  1.0 :   1.0
          ('D1', 'Catalin', 6) :  None :  1.0 :   1.0
          ('D1', 'Catalin', 7) :  None :  0.0 :   1.0
          ('D1', 'Catalin', 8) :  None :  0.0 :   1.0
          ('D1', 'Catalin', 9) :  None :  1.0 :   1.0
         ('D1', 'Catalin', 10) :  None :  1.0 :   1.0
         ('D1', 'Catalin', 11) :  None :  1.0 :   1.0
         ('D1', 'Catalin', 12) :  None :  0.0 :   1.0
           ('D1', 'Daniel', 0) :  None :  1.0 :   1.0
           ('D1', 'Daniel', 1) :  None :  1.0 :   1.0
           ('D1', 'Daniel', 2) :  None :  0.0 :   1.0
           ('D1', 'Daniel', 3) :  None :  0.0 :   1.0
           ('D1', 'Daniel', 4) :  None :  0.0 :   1.0
           ('D1', 'Daniel', 5) :  None :  1.0 :   1.0
           ('D1', 'Daniel', 6) :  None :  1.0 :   1.0
           ('D1', 'Daniel', 7) :  None :  1.0 :   1.0
           ('D1', 'Daniel', 8) :  None :  1.0 :   1.0
           ('D1', 'Daniel', 9) :  None :  1.0 :   1.0
          ('D1', 'Daniel', 10) :  None :  0.0 :   1.0
          ('D1', 'Daniel', 11) :  None :  0.0 :   1.0
          ('D1', 'Daniel', 12) :  None :  0.0 :   1.0
            ('D1', 'Elena', 0) :  None :  0.0 :   1.0
            ('D1', 'Elena', 1) :  None :  1.0 :   1.0
            ('D1', 'Elena', 2) :  None :  1.0 :   1.0
            ('D1', 'Elena', 3) :  None :  1.0 :   1.0
            ('D1', 'Elena', 4) :  None :  1.0 :   1.0
            ('D1', 'Elena', 5) :  None :  0.0 :   1.0
            ('D1', 'Elena', 6) :  None :  0.0 :   1.0
            ('D1', 'Elena', 7) :  None :  1.0 :   1.0
            ('D1', 'Elena', 8) :  None :  1.0 :   1.0
            ('D1', 'Elena', 9) :  None :  0.0 :   1.0
           ('D1', 'Elena', 10) :  None :  0.0 :   1.0
           ('D1', 'Elena', 11) :  None :  1.0 :   1.0
           ('D1', 'Elena', 12) :  None :  1.0 :   1.0
            ('D1', 'Filip', 0) :  None :  1.0 :   1.0
            ('D1', 'Filip', 1) :  None :  1.0 :   1.0
            ('D1', 'Filip', 2) :  None :  1.0 :   1.0
            ('D1', 'Filip', 3) :  None :  0.0 :   1.0
            ('D1', 'Filip', 4) :  None :  0.0 :   1.0
            ('D1', 'Filip', 5) :  None :  0.0 :   1.0
            ('D1', 'Filip', 6) :  None :  0.0 :   1.0
            ('D1', 'Filip', 7) :  None :  1.0 :   1.0
            ('D1', 'Filip', 8) :  None :  1.0 :   1.0
            ('D1', 'Filip', 9) :  None :  0.0 :   1.0
           ('D1', 'Filip', 10) :  None :  0.0 :   1.0
           ('D1', 'Filip', 11) :  None :  1.0 :   1.0
           ('D1', 'Filip', 12) :  None :  1.0 :   1.0
         ('D1', 'Gheorghe', 0) :  None :  0.0 :   1.0
         ('D1', 'Gheorghe', 1) :  None :  0.0 :   1.0
         ('D1', 'Gheorghe', 2) :  None :  1.0 :   1.0
         ('D1', 'Gheorghe', 3) :  None :  1.0 :   1.0
         ('D1', 'Gheorghe', 4) :  None :  1.0 :   1.0
         ('D1', 'Gheorghe', 5) :  None :  0.0 :   1.0
         ('D1', 'Gheorghe', 6) :  None :  0.0 :   1.0
         ('D1', 'Gheorghe', 7) :  None :  1.0 :   1.0
         ('D1', 'Gheorghe', 8) :  None :  1.0 :   1.0
         ('D1', 'Gheorghe', 9) :  None :  0.0 :   1.0
        ('D1', 'Gheorghe', 10) :  None :  0.0 :   1.0
        ('D1', 'Gheorghe', 11) :  None :  1.0 :   1.0
        ('D1', 'Gheorghe', 12) :  None :  1.0 :   1.0
          ('D1', 'Horatiu', 0) :  None :  0.0 :   1.0
          ('D1', 'Horatiu', 1) :  None :  1.0 :   1.0
          ('D1', 'Horatiu', 2) :  None :  1.0 :   1.0
          ('D1', 'Horatiu', 3) :  None :  1.0 :   1.0
          ('D1', 'Horatiu', 4) :  None :  1.0 :   1.0
          ('D1', 'Horatiu', 5) :  None :  0.0 :   1.0
          ('D1', 'Horatiu', 6) :  None :  0.0 :   1.0
          ('D1', 'Horatiu', 7) :  None :  0.0 :   1.0
          ('D1', 'Horatiu', 8) :  None :  1.0 :   1.0
          ('D1', 'Horatiu', 9) :  None :  1.0 :   1.0
         ('D1', 'Horatiu', 10) :  None :  1.0 :   1.0
         ('D1', 'Horatiu', 11) :  None :  1.0 :   1.0
         ('D1', 'Horatiu', 12) :  None :  1.0 :   1.0
    constraint_max_nr_shifts : Size=8
        Key                : Lower : Body : Upper
           ('Alina', 'D1') :  None :  8.0 :  14.0
             ('Bob', 'D1') :  None :  9.0 :  14.0
         ('Catalin', 'D1') :  None :  8.0 :  14.0
          ('Daniel', 'D1') :  None :  7.0 :  14.0
           ('Elena', 'D1') :  None :  9.0 :  14.0
           ('Filip', 'D1') :  None :  8.0 :  14.0
        ('Gheorghe', 'D1') :  None :  8.0 :  14.0
         ('Horatiu', 'D1') :  None :  9.0 :  14.0
    constraint_max_total_minutes : Size=8
        Key      : Lower : Body   : Upper
           Alina :  None : 3840.0 : 4320.0
             Bob :  None : 4320.0 : 4320.0
         Catalin :  None : 3840.0 : 4320.0
          Daniel :  None : 3360.0 : 4320.0
           Elena :  None : 4320.0 : 4320.0
           Filip :  None : 3840.0 : 4320.0
        Gheorghe :  None : 3840.0 : 4320.0
         Horatiu :  None : 4320.0 : 4320.0
    constraint_min_total_minutes : Size=8
        Key      : Lower  : Body   : Upper
           Alina : 3360.0 : 3840.0 :  None
             Bob : 3360.0 : 4320.0 :  None
         Catalin : 3360.0 : 3840.0 :  None
          Daniel : 3360.0 : 3360.0 :  None
           Elena : 3360.0 : 4320.0 :  None
           Filip : 3360.0 : 3840.0 :  None
        Gheorghe : 3360.0 : 3840.0 :  None
         Horatiu : 3360.0 : 4320.0 :  None
    constraint_max_cons_shifts_backward : Size=72
        Key              : Lower : Body : Upper
            ('Alina', 5) :   1.0 :  2.0 :  None
            ('Alina', 6) :   1.0 :  2.0 :  None
            ('Alina', 7) :   1.0 :  2.0 :  None
            ('Alina', 8) :   1.0 :  2.0 :  None
            ('Alina', 9) :   1.0 :  1.0 :  None
           ('Alina', 10) :   1.0 :  1.0 :  None
           ('Alina', 11) :   1.0 :  2.0 :  None
           ('Alina', 12) :   1.0 :  3.0 :  None
           ('Alina', 13) :   1.0 :  4.0 :  None
              ('Bob', 5) :   1.0 :  1.0 :  None
              ('Bob', 6) :   1.0 :  2.0 :  None
              ('Bob', 7) :   1.0 :  2.0 :  None
              ('Bob', 8) :   1.0 :  2.0 :  None
              ('Bob', 9) :   1.0 :  3.0 :  None
             ('Bob', 10) :   1.0 :  4.0 :  None
             ('Bob', 11) :   1.0 :  4.0 :  None
             ('Bob', 12) :   1.0 :  3.0 :  None
             ('Bob', 13) :   1.0 :  3.0 :  None
          ('Catalin', 5) :   1.0 :  2.0 :  None
          ('Catalin', 6) :   1.0 :  2.0 :  None
          ('Catalin', 7) :   1.0 :  3.0 :  None
          ('Catalin', 8) :   1.0 :  3.0 :  None
          ('Catalin', 9) :   1.0 :  2.0 :  None
         ('Catalin', 10) :   1.0 :  2.0 :  None
         ('Catalin', 11) :   1.0 :  2.0 :  None
         ('Catalin', 12) :   1.0 :  3.0 :  None
         ('Catalin', 13) :   1.0 :  3.0 :  None
           ('Daniel', 5) :   1.0 :  3.0 :  None
           ('Daniel', 6) :   1.0 :  3.0 :  None
           ('Daniel', 7) :   1.0 :  3.0 :  None
           ('Daniel', 8) :   1.0 :  2.0 :  None
           ('Daniel', 9) :   1.0 :  1.0 :  None
          ('Daniel', 10) :   1.0 :  1.0 :  None
          ('Daniel', 11) :   1.0 :  2.0 :  None
          ('Daniel', 12) :   1.0 :  3.0 :  None
          ('Daniel', 13) :   1.0 :  4.0 :  None
            ('Elena', 5) :   1.0 :  2.0 :  None
            ('Elena', 6) :   1.0 :  2.0 :  None
            ('Elena', 7) :   1.0 :  2.0 :  None
            ('Elena', 8) :   1.0 :  2.0 :  None
            ('Elena', 9) :   1.0 :  3.0 :  None
           ('Elena', 10) :   1.0 :  4.0 :  None
           ('Elena', 11) :   1.0 :  3.0 :  None
           ('Elena', 12) :   1.0 :  2.0 :  None
           ('Elena', 13) :   1.0 :  2.0 :  None
            ('Filip', 5) :   1.0 :  3.0 :  None
            ('Filip', 6) :   1.0 :  4.0 :  None
            ('Filip', 7) :   1.0 :  4.0 :  None
            ('Filip', 8) :   1.0 :  4.0 :  None
            ('Filip', 9) :   1.0 :  4.0 :  None
           ('Filip', 10) :   1.0 :  4.0 :  None
           ('Filip', 11) :   1.0 :  3.0 :  None
           ('Filip', 12) :   1.0 :  2.0 :  None
           ('Filip', 13) :   1.0 :  2.0 :  None
         ('Gheorghe', 5) :   1.0 :  3.0 :  None
         ('Gheorghe', 6) :   1.0 :  3.0 :  None
         ('Gheorghe', 7) :   1.0 :  2.0 :  None
         ('Gheorghe', 8) :   1.0 :  2.0 :  None
         ('Gheorghe', 9) :   1.0 :  3.0 :  None
        ('Gheorghe', 10) :   1.0 :  4.0 :  None
        ('Gheorghe', 11) :   1.0 :  3.0 :  None
        ('Gheorghe', 12) :   1.0 :  2.0 :  None
        ('Gheorghe', 13) :   1.0 :  2.0 :  None
          ('Horatiu', 5) :   1.0 :  2.0 :  None
          ('Horatiu', 6) :   1.0 :  2.0 :  None
          ('Horatiu', 7) :   1.0 :  3.0 :  None
          ('Horatiu', 8) :   1.0 :  3.0 :  None
          ('Horatiu', 9) :   1.0 :  3.0 :  None
         ('Horatiu', 10) :   1.0 :  3.0 :  None
         ('Horatiu', 11) :   1.0 :  2.0 :  None
         ('Horatiu', 12) :   1.0 :  1.0 :  None
         ('Horatiu', 13) :   1.0 :  1.0 :  None
    constraint_max_cons_shifts_forward : Size=0
        Key : Lower : Body : Upper
    constraint_max_cons_shifts_in_between : Size=0
        Key : Lower : Body : Upper
    constraint_is_end_of_work_block : Size=112
        Key              : Lower : Body : Upper
            ('Alina', 0) :  None : -1.0 :   0.0
            ('Alina', 1) :  None : -1.0 :   0.0
            ('Alina', 2) :  None :  0.0 :   0.0
            ('Alina', 3) :  None : -1.0 :   0.0
            ('Alina', 4) :  None : -1.0 :   0.0
            ('Alina', 5) :  None :  0.0 :   0.0
            ('Alina', 6) :  None : -1.0 :   0.0
            ('Alina', 7) :  None : -1.0 :   0.0
            ('Alina', 8) :  None : -1.0 :   0.0
            ('Alina', 9) :  None :  0.0 :   0.0
           ('Alina', 10) :  None : -1.0 :   0.0
           ('Alina', 11) :  None :  0.0 :   0.0
           ('Alina', 12) :  None :  0.0 :   0.0
           ('Alina', 13) :   0.0 :  0.0 :   0.0
              ('Bob', 0) :  None : -1.0 :   0.0
              ('Bob', 1) :  None : -1.0 :   0.0
              ('Bob', 2) :  None : -1.0 :   0.0
              ('Bob', 3) :  None : -1.0 :   0.0
              ('Bob', 4) :  None :  0.0 :   0.0
              ('Bob', 5) :  None : -1.0 :   0.0
              ('Bob', 6) :  None : -1.0 :   0.0
              ('Bob', 7) :  None :  0.0 :   0.0
              ('Bob', 8) :  None :  0.0 :   0.0
              ('Bob', 9) :  None : -1.0 :   0.0
             ('Bob', 10) :  None :  0.0 :   0.0
             ('Bob', 11) :  None : -1.0 :   0.0
             ('Bob', 12) :  None :  0.0 :   0.0
             ('Bob', 13) :   0.0 :  0.0 :   0.0
          ('Catalin', 0) :  None : -1.0 :   0.0
          ('Catalin', 1) :  None :  0.0 :   0.0
          ('Catalin', 2) :  None : -1.0 :   0.0
          ('Catalin', 3) :  None : -1.0 :   0.0
          ('Catalin', 4) :  None :  0.0 :   0.0
          ('Catalin', 5) :  None : -1.0 :   0.0
          ('Catalin', 6) :  None :  0.0 :   0.0
          ('Catalin', 7) :  None : -1.0 :   0.0
          ('Catalin', 8) :  None : -1.0 :   0.0
          ('Catalin', 9) :  None :  0.0 :   0.0
         ('Catalin', 10) :  None : -1.0 :   0.0
         ('Catalin', 11) :  None :  0.0 :   0.0
         ('Catalin', 12) :  None : -1.0 :   0.0
         ('Catalin', 13) :   0.0 :  0.0 :   0.0
           ('Daniel', 0) :  None : -1.0 :   0.0
           ('Daniel', 1) :  None :  0.0 :   0.0
           ('Daniel', 2) :  None : -1.0 :   0.0
           ('Daniel', 3) :  None :  0.0 :   0.0
           ('Daniel', 4) :  None : -1.0 :   0.0
           ('Daniel', 5) :  None :  0.0 :   0.0
           ('Daniel', 6) :  None : -1.0 :   0.0
           ('Daniel', 7) :  None : -1.0 :   0.0
           ('Daniel', 8) :  None : -1.0 :   0.0
           ('Daniel', 9) :  None :  0.0 :   0.0
          ('Daniel', 10) :  None : -1.0 :   0.0
          ('Daniel', 11) :  None :  0.0 :   0.0
          ('Daniel', 12) :  None :  0.0 :   0.0
          ('Daniel', 13) :   0.0 :  0.0 :   0.0
            ('Elena', 0) :  None : -2.0 :   0.0
            ('Elena', 1) :  None :  0.0 :   0.0
            ('Elena', 2) :  None : -1.0 :   0.0
            ('Elena', 3) :  None : -1.0 :   0.0
            ('Elena', 4) :  None :  0.0 :   0.0
            ('Elena', 5) :  None : -1.0 :   0.0
            ('Elena', 6) :  None : -1.0 :   0.0
            ('Elena', 7) :  None :  0.0 :   0.0
            ('Elena', 8) :  None :  0.0 :   0.0
            ('Elena', 9) :  None : -1.0 :   0.0
           ('Elena', 10) :  None : -1.0 :   0.0
           ('Elena', 11) :  None :  0.0 :   0.0
           ('Elena', 12) :  None : -1.0 :   0.0
           ('Elena', 13) :   0.0 :  0.0 :   0.0
            ('Filip', 0) :  None : -1.0 :   0.0
            ('Filip', 1) :  None : -1.0 :   0.0
            ('Filip', 2) :  None :  0.0 :   0.0
            ('Filip', 3) :  None : -1.0 :   0.0
            ('Filip', 4) :  None :  0.0 :   0.0
            ('Filip', 5) :  None :  0.0 :   0.0
            ('Filip', 6) :  None : -1.0 :   0.0
            ('Filip', 7) :  None :  0.0 :   0.0
            ('Filip', 8) :  None :  0.0 :   0.0
            ('Filip', 9) :  None : -1.0 :   0.0
           ('Filip', 10) :  None : -1.0 :   0.0
           ('Filip', 11) :  None :  0.0 :   0.0
           ('Filip', 12) :  None : -1.0 :   0.0
           ('Filip', 13) :   0.0 :  0.0 :   0.0
         ('Gheorghe', 0) :  None : -1.0 :   0.0
         ('Gheorghe', 1) :  None : -1.0 :   0.0
         ('Gheorghe', 2) :  None :  0.0 :   0.0
         ('Gheorghe', 3) :  None : -1.0 :   0.0
         ('Gheorghe', 4) :  None :  0.0 :   0.0
         ('Gheorghe', 5) :  None : -1.0 :   0.0
         ('Gheorghe', 6) :  None : -1.0 :   0.0
         ('Gheorghe', 7) :  None :  0.0 :   0.0
         ('Gheorghe', 8) :  None :  0.0 :   0.0
         ('Gheorghe', 9) :  None : -1.0 :   0.0
        ('Gheorghe', 10) :  None : -1.0 :   0.0
        ('Gheorghe', 11) :  None :  0.0 :   0.0
        ('Gheorghe', 12) :  None : -1.0 :   0.0
        ('Gheorghe', 13) :   0.0 :  0.0 :   0.0
          ('Horatiu', 0) :  None : -2.0 :   0.0
          ('Horatiu', 1) :  None :  0.0 :   0.0
          ('Horatiu', 2) :  None : -1.0 :   0.0
          ('Horatiu', 3) :  None : -1.0 :   0.0
          ('Horatiu', 4) :  None :  0.0 :   0.0
          ('Horatiu', 5) :  None : -1.0 :   0.0
          ('Horatiu', 6) :  None :  0.0 :   0.0
          ('Horatiu', 7) :  None : -1.0 :   0.0
          ('Horatiu', 8) :  None :  0.0 :   0.0
          ('Horatiu', 9) :  None : -1.0 :   0.0
         ('Horatiu', 10) :  None : -1.0 :   0.0
         ('Horatiu', 11) :  None : -1.0 :   0.0
         ('Horatiu', 12) :  None :  0.0 :   0.0
         ('Horatiu', 13) :   0.0 :  0.0 :   0.0
    constraint_min_cons_shift_inscope : Size=112
        Key              : Lower : Body : Upper
            ('Alina', 0) :  None :  0.0 :   0.0
            ('Alina', 1) :  None :  1.0 :   1.0
            ('Alina', 2) :  None :  1.0 :   1.0
            ('Alina', 3) :  None :  1.0 :   1.0
            ('Alina', 4) :  None :  1.0 :   1.0
            ('Alina', 5) :  None :  1.0 :   1.0
            ('Alina', 6) :  None :  1.0 :   1.0
            ('Alina', 7) :  None :  1.0 :   1.0
            ('Alina', 8) :  None :  1.0 :   1.0
            ('Alina', 9) :  None :  1.0 :   1.0
           ('Alina', 10) :  None :  1.0 :   1.0
           ('Alina', 11) :  None :  1.0 :   1.0
           ('Alina', 12) :  None :  1.0 :   1.0
           ('Alina', 13) :  None :  1.0 :   1.0
              ('Bob', 0) :  None :  0.0 :   0.0
              ('Bob', 1) :  None :  1.0 :   1.0
              ('Bob', 2) :  None :  1.0 :   1.0
              ('Bob', 3) :  None :  1.0 :   1.0
              ('Bob', 4) :  None :  1.0 :   1.0
              ('Bob', 5) :  None :  1.0 :   1.0
              ('Bob', 6) :  None :  1.0 :   1.0
              ('Bob', 7) :  None :  1.0 :   1.0
              ('Bob', 8) :  None :  1.0 :   1.0
              ('Bob', 9) :  None :  1.0 :   1.0
             ('Bob', 10) :  None :  1.0 :   1.0
             ('Bob', 11) :  None :  1.0 :   1.0
             ('Bob', 12) :  None :  1.0 :   1.0
             ('Bob', 13) :  None :  0.0 :   1.0
          ('Catalin', 0) :  None :  0.0 :   0.0
          ('Catalin', 1) :  None :  1.0 :   1.0
          ('Catalin', 2) :  None :  1.0 :   1.0
          ('Catalin', 3) :  None :  1.0 :   1.0
          ('Catalin', 4) :  None :  1.0 :   1.0
          ('Catalin', 5) :  None :  1.0 :   1.0
          ('Catalin', 6) :  None :  1.0 :   1.0
          ('Catalin', 7) :  None :  1.0 :   1.0
          ('Catalin', 8) :  None :  1.0 :   1.0
          ('Catalin', 9) :  None :  1.0 :   1.0
         ('Catalin', 10) :  None :  1.0 :   1.0
         ('Catalin', 11) :  None :  1.0 :   1.0
         ('Catalin', 12) :  None :  1.0 :   1.0
         ('Catalin', 13) :  None :  1.0 :   1.0
           ('Daniel', 0) :  None :  0.0 :   0.0
           ('Daniel', 1) :  None :  1.0 :   1.0
           ('Daniel', 2) :  None :  1.0 :   1.0
           ('Daniel', 3) :  None :  1.0 :   1.0
           ('Daniel', 4) :  None :  1.0 :   1.0
           ('Daniel', 5) :  None :  1.0 :   1.0
           ('Daniel', 6) :  None :  1.0 :   1.0
           ('Daniel', 7) :  None :  1.0 :   1.0
           ('Daniel', 8) :  None :  1.0 :   1.0
           ('Daniel', 9) :  None :  1.0 :   1.0
          ('Daniel', 10) :  None :  1.0 :   1.0
          ('Daniel', 11) :  None :  1.0 :   1.0
          ('Daniel', 12) :  None :  1.0 :   1.0
          ('Daniel', 13) :  None :  1.0 :   1.0
            ('Elena', 0) :  None :  0.0 :   0.0
            ('Elena', 1) :  None :  1.0 :   1.0
            ('Elena', 2) :  None :  1.0 :   1.0
            ('Elena', 3) :  None :  1.0 :   1.0
            ('Elena', 4) :  None :  1.0 :   1.0
            ('Elena', 5) :  None :  1.0 :   1.0
            ('Elena', 6) :  None :  1.0 :   1.0
            ('Elena', 7) :  None :  1.0 :   1.0
            ('Elena', 8) :  None :  1.0 :   1.0
            ('Elena', 9) :  None :  1.0 :   1.0
           ('Elena', 10) :  None :  1.0 :   1.0
           ('Elena', 11) :  None :  1.0 :   1.0
           ('Elena', 12) :  None :  1.0 :   1.0
           ('Elena', 13) :  None :  0.0 :   1.0
            ('Filip', 0) :  None :  0.0 :   0.0
            ('Filip', 1) :  None :  1.0 :   1.0
            ('Filip', 2) :  None :  1.0 :   1.0
            ('Filip', 3) :  None :  1.0 :   1.0
            ('Filip', 4) :  None :  1.0 :   1.0
            ('Filip', 5) :  None :  1.0 :   1.0
            ('Filip', 6) :  None :  1.0 :   1.0
            ('Filip', 7) :  None :  1.0 :   1.0
            ('Filip', 8) :  None :  1.0 :   1.0
            ('Filip', 9) :  None :  1.0 :   1.0
           ('Filip', 10) :  None :  1.0 :   1.0
           ('Filip', 11) :  None :  1.0 :   1.0
           ('Filip', 12) :  None :  1.0 :   1.0
           ('Filip', 13) :  None :  0.0 :   1.0
         ('Gheorghe', 0) :  None :  0.0 :   0.0
         ('Gheorghe', 1) :  None :  1.0 :   1.0
         ('Gheorghe', 2) :  None :  1.0 :   1.0
         ('Gheorghe', 3) :  None :  1.0 :   1.0
         ('Gheorghe', 4) :  None :  1.0 :   1.0
         ('Gheorghe', 5) :  None :  1.0 :   1.0
         ('Gheorghe', 6) :  None :  1.0 :   1.0
         ('Gheorghe', 7) :  None :  1.0 :   1.0
         ('Gheorghe', 8) :  None :  1.0 :   1.0
         ('Gheorghe', 9) :  None :  1.0 :   1.0
        ('Gheorghe', 10) :  None :  1.0 :   1.0
        ('Gheorghe', 11) :  None :  1.0 :   1.0
        ('Gheorghe', 12) :  None :  1.0 :   1.0
        ('Gheorghe', 13) :  None :  0.0 :   1.0
          ('Horatiu', 0) :  None :  0.0 :   0.0
          ('Horatiu', 1) :  None :  1.0 :   1.0
          ('Horatiu', 2) :  None :  1.0 :   1.0
          ('Horatiu', 3) :  None :  1.0 :   1.0
          ('Horatiu', 4) :  None :  1.0 :   1.0
          ('Horatiu', 5) :  None :  1.0 :   1.0
          ('Horatiu', 6) :  None :  1.0 :   1.0
          ('Horatiu', 7) :  None :  1.0 :   1.0
          ('Horatiu', 8) :  None :  1.0 :   1.0
          ('Horatiu', 9) :  None :  1.0 :   1.0
         ('Horatiu', 10) :  None :  1.0 :   1.0
         ('Horatiu', 11) :  None :  1.0 :   1.0
         ('Horatiu', 12) :  None :  1.0 :   1.0
         ('Horatiu', 13) :  None :  0.0 :   1.0
    constraint_min_cons_shift_backward : Size=0
        Key : Lower : Body : Upper
    constraint_min_cons_shift_forward : Size=0
        Key : Lower : Body : Upper
    constraint_is_end_of_rest_block : Size=112
        Key              : Lower : Body : Upper
            ('Alina', 0) :  None : -1.0 :   0.0
            ('Alina', 1) :  None :  0.0 :   0.0
            ('Alina', 2) :  None : -1.0 :   0.0
            ('Alina', 3) :  None :  0.0 :   0.0
            ('Alina', 4) :  None :  0.0 :   0.0
            ('Alina', 5) :  None : -1.0 :   0.0
            ('Alina', 6) :  None :  0.0 :   0.0
            ('Alina', 7) :  None :  0.0 :   0.0
            ('Alina', 8) :  None :  0.0 :   0.0
            ('Alina', 9) :  None : -1.0 :   0.0
           ('Alina', 10) :  None :  0.0 :   0.0
           ('Alina', 11) :  None : -1.0 :   0.0
           ('Alina', 12) :  None : -1.0 :   0.0
           ('Alina', 13) :   0.0 :  0.0 :   0.0
              ('Bob', 0) :  None : -1.0 :   0.0
              ('Bob', 1) :  None :  0.0 :   0.0
              ('Bob', 2) :  None :  0.0 :   0.0
              ('Bob', 3) :  None :  0.0 :   0.0
              ('Bob', 4) :  None : -1.0 :   0.0
              ('Bob', 5) :  None :  0.0 :   0.0
              ('Bob', 6) :  None :  0.0 :   0.0
              ('Bob', 7) :  None : -1.0 :   0.0
              ('Bob', 8) :  None : -1.0 :   0.0
              ('Bob', 9) :  None :  0.0 :   0.0
             ('Bob', 10) :  None : -1.0 :   0.0
             ('Bob', 11) :  None :  0.0 :   0.0
             ('Bob', 12) :  None : -1.0 :   0.0
             ('Bob', 13) :   0.0 :  0.0 :   0.0
          ('Catalin', 0) :  None : -1.0 :   0.0
          ('Catalin', 1) :  None : -1.0 :   0.0
          ('Catalin', 2) :  None :  0.0 :   0.0
          ('Catalin', 3) :  None :  0.0 :   0.0
          ('Catalin', 4) :  None : -1.0 :   0.0
          ('Catalin', 5) :  None :  0.0 :   0.0
          ('Catalin', 6) :  None : -1.0 :   0.0
          ('Catalin', 7) :  None :  0.0 :   0.0
          ('Catalin', 8) :  None :  0.0 :   0.0
          ('Catalin', 9) :  None : -1.0 :   0.0
         ('Catalin', 10) :  None :  0.0 :   0.0
         ('Catalin', 11) :  None : -1.0 :   0.0
         ('Catalin', 12) :  None :  0.0 :   0.0
         ('Catalin', 13) :   0.0 :  0.0 :   0.0
           ('Daniel', 0) :  None : -1.0 :   0.0
           ('Daniel', 1) :  None : -1.0 :   0.0
           ('Daniel', 2) :  None :  0.0 :   0.0
           ('Daniel', 3) :  None : -1.0 :   0.0
           ('Daniel', 4) :  None :  0.0 :   0.0
           ('Daniel', 5) :  None : -1.0 :   0.0
           ('Daniel', 6) :  None :  0.0 :   0.0
           ('Daniel', 7) :  None :  0.0 :   0.0
           ('Daniel', 8) :  None :  0.0 :   0.0
           ('Daniel', 9) :  None : -1.0 :   0.0
          ('Daniel', 10) :  None :  0.0 :   0.0
          ('Daniel', 11) :  None : -1.0 :   0.0
          ('Daniel', 12) :  None : -1.0 :   0.0
          ('Daniel', 13) :   0.0 :  0.0 :   0.0
            ('Elena', 0) :  None :  0.0 :   0.0
            ('Elena', 1) :  None : -1.0 :   0.0
            ('Elena', 2) :  None :  0.0 :   0.0
            ('Elena', 3) :  None :  0.0 :   0.0
            ('Elena', 4) :  None : -1.0 :   0.0
            ('Elena', 5) :  None :  0.0 :   0.0
            ('Elena', 6) :  None :  0.0 :   0.0
            ('Elena', 7) :  None : -1.0 :   0.0
            ('Elena', 8) :  None : -1.0 :   0.0
            ('Elena', 9) :  None :  0.0 :   0.0
           ('Elena', 10) :  None :  0.0 :   0.0
           ('Elena', 11) :  None : -1.0 :   0.0
           ('Elena', 12) :  None :  0.0 :   0.0
           ('Elena', 13) :   0.0 :  0.0 :   0.0
            ('Filip', 0) :  None : -1.0 :   0.0
            ('Filip', 1) :  None :  0.0 :   0.0
            ('Filip', 2) :  None : -1.0 :   0.0
            ('Filip', 3) :  None :  0.0 :   0.0
            ('Filip', 4) :  None : -1.0 :   0.0
            ('Filip', 5) :  None : -1.0 :   0.0
            ('Filip', 6) :  None :  0.0 :   0.0
            ('Filip', 7) :  None : -1.0 :   0.0
            ('Filip', 8) :  None : -1.0 :   0.0
            ('Filip', 9) :  None :  0.0 :   0.0
           ('Filip', 10) :  None :  0.0 :   0.0
           ('Filip', 11) :  None : -1.0 :   0.0
           ('Filip', 12) :  None :  0.0 :   0.0
           ('Filip', 13) :   0.0 :  0.0 :   0.0
         ('Gheorghe', 0) :  None : -1.0 :   0.0
         ('Gheorghe', 1) :  None :  0.0 :   0.0
         ('Gheorghe', 2) :  None : -1.0 :   0.0
         ('Gheorghe', 3) :  None :  0.0 :   0.0
         ('Gheorghe', 4) :  None : -1.0 :   0.0
         ('Gheorghe', 5) :  None :  0.0 :   0.0
         ('Gheorghe', 6) :  None :  0.0 :   0.0
         ('Gheorghe', 7) :  None : -1.0 :   0.0
         ('Gheorghe', 8) :  None : -1.0 :   0.0
         ('Gheorghe', 9) :  None :  0.0 :   0.0
        ('Gheorghe', 10) :  None :  0.0 :   0.0
        ('Gheorghe', 11) :  None : -1.0 :   0.0
        ('Gheorghe', 12) :  None :  0.0 :   0.0
        ('Gheorghe', 13) :   0.0 :  0.0 :   0.0
          ('Horatiu', 0) :  None :  0.0 :   0.0
          ('Horatiu', 1) :  None : -1.0 :   0.0
          ('Horatiu', 2) :  None :  0.0 :   0.0
          ('Horatiu', 3) :  None :  0.0 :   0.0
          ('Horatiu', 4) :  None : -1.0 :   0.0
          ('Horatiu', 5) :  None :  0.0 :   0.0
          ('Horatiu', 6) :  None : -1.0 :   0.0
          ('Horatiu', 7) :  None :  0.0 :   0.0
          ('Horatiu', 8) :  None : -1.0 :   0.0
          ('Horatiu', 9) :  None :  0.0 :   0.0
         ('Horatiu', 10) :  None :  0.0 :   0.0
         ('Horatiu', 11) :  None :  0.0 :   0.0
         ('Horatiu', 12) :  None : -1.0 :   0.0
         ('Horatiu', 13) :   0.0 :  0.0 :   0.0
    constraint_min_cons_days_off_inscope : Size=112
        Key              : Lower : Body : Upper
            ('Alina', 0) :  None :  0.0 :   0.0
            ('Alina', 1) :  None :  0.0 :   0.0
            ('Alina', 2) :  None :  0.0 :   0.0
            ('Alina', 3) :  None :  0.0 :   0.0
            ('Alina', 4) :  None :  0.0 :   0.0
            ('Alina', 5) :  None :  0.0 :   0.0
            ('Alina', 6) :  None :  0.0 :   0.0
            ('Alina', 7) :  None :  0.0 :   0.0
            ('Alina', 8) :  None :  0.0 :   0.0
            ('Alina', 9) :  None :  0.0 :   0.0
           ('Alina', 10) :  None :  0.0 :   0.0
           ('Alina', 11) :  None :  0.0 :   0.0
           ('Alina', 12) :  None :  0.0 :   0.0
           ('Alina', 13) :  None : -1.0 :   0.0
              ('Bob', 0) :  None :  0.0 :   0.0
              ('Bob', 1) :  None :  0.0 :   0.0
              ('Bob', 2) :  None :  0.0 :   0.0
              ('Bob', 3) :  None :  0.0 :   0.0
              ('Bob', 4) :  None :  0.0 :   0.0
              ('Bob', 5) :  None :  0.0 :   0.0
              ('Bob', 6) :  None :  0.0 :   0.0
              ('Bob', 7) :  None :  0.0 :   0.0
              ('Bob', 8) :  None :  0.0 :   0.0
              ('Bob', 9) :  None :  0.0 :   0.0
             ('Bob', 10) :  None :  0.0 :   0.0
             ('Bob', 11) :  None :  0.0 :   0.0
             ('Bob', 12) :  None :  0.0 :   0.0
             ('Bob', 13) :  None :  0.0 :   0.0
          ('Catalin', 0) :  None :  0.0 :   0.0
          ('Catalin', 1) :  None :  0.0 :   0.0
          ('Catalin', 2) :  None :  0.0 :   0.0
          ('Catalin', 3) :  None :  0.0 :   0.0
          ('Catalin', 4) :  None :  0.0 :   0.0
          ('Catalin', 5) :  None :  0.0 :   0.0
          ('Catalin', 6) :  None :  0.0 :   0.0
          ('Catalin', 7) :  None :  0.0 :   0.0
          ('Catalin', 8) :  None :  0.0 :   0.0
          ('Catalin', 9) :  None :  0.0 :   0.0
         ('Catalin', 10) :  None :  0.0 :   0.0
         ('Catalin', 11) :  None :  0.0 :   0.0
         ('Catalin', 12) :  None :  0.0 :   0.0
         ('Catalin', 13) :  None : -1.0 :   0.0
           ('Daniel', 0) :  None :  0.0 :   0.0
           ('Daniel', 1) :  None :  0.0 :   0.0
           ('Daniel', 2) :  None :  0.0 :   0.0
           ('Daniel', 3) :  None :  0.0 :   0.0
           ('Daniel', 4) :  None :  0.0 :   0.0
           ('Daniel', 5) :  None :  0.0 :   0.0
           ('Daniel', 6) :  None :  0.0 :   0.0
           ('Daniel', 7) :  None :  0.0 :   0.0
           ('Daniel', 8) :  None :  0.0 :   0.0
           ('Daniel', 9) :  None :  0.0 :   0.0
          ('Daniel', 10) :  None :  0.0 :   0.0
          ('Daniel', 11) :  None :  0.0 :   0.0
          ('Daniel', 12) :  None :  0.0 :   0.0
          ('Daniel', 13) :  None : -1.0 :   0.0
            ('Elena', 0) :  None :  0.0 :   0.0
            ('Elena', 1) :  None :  0.0 :   0.0
            ('Elena', 2) :  None :  0.0 :   0.0
            ('Elena', 3) :  None :  0.0 :   0.0
            ('Elena', 4) :  None :  0.0 :   0.0
            ('Elena', 5) :  None :  0.0 :   0.0
            ('Elena', 6) :  None :  0.0 :   0.0
            ('Elena', 7) :  None :  0.0 :   0.0
            ('Elena', 8) :  None :  0.0 :   0.0
            ('Elena', 9) :  None :  0.0 :   0.0
           ('Elena', 10) :  None :  0.0 :   0.0
           ('Elena', 11) :  None :  0.0 :   0.0
           ('Elena', 12) :  None :  0.0 :   0.0
           ('Elena', 13) :  None :  0.0 :   0.0
            ('Filip', 0) :  None :  0.0 :   0.0
            ('Filip', 1) :  None :  0.0 :   0.0
            ('Filip', 2) :  None :  0.0 :   0.0
            ('Filip', 3) :  None :  0.0 :   0.0
            ('Filip', 4) :  None :  0.0 :   0.0
            ('Filip', 5) :  None :  0.0 :   0.0
            ('Filip', 6) :  None :  0.0 :   0.0
            ('Filip', 7) :  None :  0.0 :   0.0
            ('Filip', 8) :  None :  0.0 :   0.0
            ('Filip', 9) :  None :  0.0 :   0.0
           ('Filip', 10) :  None :  0.0 :   0.0
           ('Filip', 11) :  None :  0.0 :   0.0
           ('Filip', 12) :  None :  0.0 :   0.0
           ('Filip', 13) :  None :  0.0 :   0.0
         ('Gheorghe', 0) :  None :  0.0 :   0.0
         ('Gheorghe', 1) :  None :  0.0 :   0.0
         ('Gheorghe', 2) :  None :  0.0 :   0.0
         ('Gheorghe', 3) :  None :  0.0 :   0.0
         ('Gheorghe', 4) :  None :  0.0 :   0.0
         ('Gheorghe', 5) :  None :  0.0 :   0.0
         ('Gheorghe', 6) :  None :  0.0 :   0.0
         ('Gheorghe', 7) :  None :  0.0 :   0.0
         ('Gheorghe', 8) :  None :  0.0 :   0.0
         ('Gheorghe', 9) :  None :  0.0 :   0.0
        ('Gheorghe', 10) :  None :  0.0 :   0.0
        ('Gheorghe', 11) :  None :  0.0 :   0.0
        ('Gheorghe', 12) :  None :  0.0 :   0.0
        ('Gheorghe', 13) :  None :  0.0 :   0.0
          ('Horatiu', 0) :  None :  0.0 :   0.0
          ('Horatiu', 1) :  None :  0.0 :   0.0
          ('Horatiu', 2) :  None :  0.0 :   0.0
          ('Horatiu', 3) :  None :  0.0 :   0.0
          ('Horatiu', 4) :  None :  0.0 :   0.0
          ('Horatiu', 5) :  None :  0.0 :   0.0
          ('Horatiu', 6) :  None :  0.0 :   0.0
          ('Horatiu', 7) :  None :  0.0 :   0.0
          ('Horatiu', 8) :  None :  0.0 :   0.0
          ('Horatiu', 9) :  None :  0.0 :   0.0
         ('Horatiu', 10) :  None :  0.0 :   0.0
         ('Horatiu', 11) :  None :  0.0 :   0.0
         ('Horatiu', 12) :  None :  0.0 :   0.0
         ('Horatiu', 13) :  None :  0.0 :   0.0
    constraint_min_cons_days_off_backward : Size=0
        Key : Lower : Body : Upper
    constraint_min_cons_days_off_forward : Size=0
        Key : Lower : Body : Upper
    constraint_has_weekend_work_lb : Size=0
        Key : Lower : Body : Upper
    constraint_has_weekend_work : Size=32
        Key              : Lower : Body : Upper
            ('Alina', 5) :  None :  0.0 :   0.0
            ('Alina', 6) :  None :  0.0 :   0.0
           ('Alina', 12) :  None :  0.0 :   0.0
           ('Alina', 13) :  None :  0.0 :   0.0
              ('Bob', 5) :  None :  0.0 :   0.0
              ('Bob', 6) :  None :  0.0 :   0.0
             ('Bob', 12) :  None :  0.0 :   0.0
             ('Bob', 13) :  None :  0.0 :   0.0
          ('Catalin', 5) :  None :  0.0 :   0.0
          ('Catalin', 6) :  None :  0.0 :   0.0
         ('Catalin', 12) :  None :  0.0 :   0.0
         ('Catalin', 13) :  None :  0.0 :   0.0
           ('Daniel', 5) :  None :  0.0 :   0.0
           ('Daniel', 6) :  None :  0.0 :   0.0
          ('Daniel', 12) :  None :  0.0 :   0.0
          ('Daniel', 13) :  None :  0.0 :   0.0
            ('Elena', 5) :  None :  0.0 :   0.0
            ('Elena', 6) :  None :  0.0 :   0.0
           ('Elena', 12) :  None :  0.0 :   0.0
           ('Elena', 13) :  None :  0.0 :   0.0
            ('Filip', 5) :  None :  0.0 :   0.0
            ('Filip', 6) :  None :  0.0 :   0.0
           ('Filip', 12) :  None :  0.0 :   0.0
           ('Filip', 13) :  None :  0.0 :   0.0
         ('Gheorghe', 5) :  None :  0.0 :   0.0
         ('Gheorghe', 6) :  None :  0.0 :   0.0
        ('Gheorghe', 12) :  None :  0.0 :   0.0
        ('Gheorghe', 13) :  None :  0.0 :   0.0
          ('Horatiu', 5) :  None :  0.0 :   0.0
          ('Horatiu', 6) :  None :  0.0 :   0.0
         ('Horatiu', 12) :  None :  0.0 :   0.0
         ('Horatiu', 13) :  None : -1.0 :   0.0
    constraint_max_nr_weekend : Size=8
        Key      : Lower : Body : Upper
           Alina :  None :  1.0 :   1.0
             Bob :  None :  1.0 :   1.0
         Catalin :  None :  1.0 :   1.0
          Daniel :  None :  1.0 :   1.0
           Elena :  None :  1.0 :   1.0
           Filip :  None :  1.0 :   1.0
        Gheorghe :  None :  1.0 :   1.0
         Horatiu :  None :  1.0 :   1.0
    constraint_days_off : Size=6
        Key             : Lower : Body : Upper
         ('Catalin', 8) :   1.0 :  1.0 :   1.0
          ('Daniel', 2) :   1.0 :  1.0 :   1.0
           ('Elena', 9) :   1.0 :  1.0 :   1.0
           ('Filip', 5) :   1.0 :  1.0 :   1.0
        ('Gheorghe', 1) :   1.0 :  1.0 :   1.0
         ('Horatiu', 7) :   1.0 :  1.0 :   1.0
    constraint_shift_on_request : Size=112
        Key                    : Lower : Body : Upper
            ('D1', 'Alina', 0) :   0.0 :  0.0 :   0.0
            ('D1', 'Alina', 1) :   0.0 :  0.0 :   0.0
            ('D1', 'Alina', 2) :   0.0 :  0.0 :   0.0
            ('D1', 'Alina', 3) :   0.0 :  0.0 :   0.0
            ('D1', 'Alina', 4) :   0.0 :  0.0 :   0.0
            ('D1', 'Alina', 5) :   0.0 :  0.0 :   0.0
            ('D1', 'Alina', 6) :   0.0 :  0.0 :   0.0
            ('D1', 'Alina', 7) :   0.0 :  0.0 :   0.0
            ('D1', 'Alina', 8) :   0.0 :  0.0 :   0.0
            ('D1', 'Alina', 9) :   0.0 :  0.0 :   0.0
           ('D1', 'Alina', 10) :   0.0 :  0.0 :   0.0
           ('D1', 'Alina', 11) :   0.0 :  0.0 :   0.0
           ('D1', 'Alina', 12) :   0.0 :  0.0 :   0.0
           ('D1', 'Alina', 13) :   0.0 :  0.0 :   0.0
              ('D1', 'Bob', 0) :   0.0 :  0.0 :   0.0
              ('D1', 'Bob', 1) :   0.0 :  0.0 :   0.0
              ('D1', 'Bob', 2) :   0.0 :  0.0 :   0.0
              ('D1', 'Bob', 3) :   0.0 :  0.0 :   0.0
              ('D1', 'Bob', 4) :   0.0 :  0.0 :   0.0
              ('D1', 'Bob', 5) :   0.0 :  0.0 :   0.0
              ('D1', 'Bob', 6) :   0.0 :  0.0 :   0.0
              ('D1', 'Bob', 7) :   0.0 :  0.0 :   0.0
              ('D1', 'Bob', 8) :   0.0 :  0.0 :   0.0
              ('D1', 'Bob', 9) :   0.0 :  0.0 :   0.0
             ('D1', 'Bob', 10) :   0.0 :  0.0 :   0.0
             ('D1', 'Bob', 11) :   0.0 :  0.0 :   0.0
             ('D1', 'Bob', 12) :   0.0 :  0.0 :   0.0
             ('D1', 'Bob', 13) :   0.0 :  0.0 :   0.0
          ('D1', 'Catalin', 0) :   0.0 :  0.0 :   0.0
          ('D1', 'Catalin', 1) :   0.0 :  0.0 :   0.0
          ('D1', 'Catalin', 2) :   0.0 :  0.0 :   0.0
          ('D1', 'Catalin', 3) :   0.0 :  0.0 :   0.0
          ('D1', 'Catalin', 4) :   0.0 :  0.0 :   0.0
          ('D1', 'Catalin', 5) :   0.0 :  0.0 :   0.0
          ('D1', 'Catalin', 6) :   0.0 :  0.0 :   0.0
          ('D1', 'Catalin', 7) :   0.0 :  0.0 :   0.0
          ('D1', 'Catalin', 8) :   0.0 :  0.0 :   0.0
          ('D1', 'Catalin', 9) :   0.0 :  0.0 :   0.0
         ('D1', 'Catalin', 10) :   0.0 :  0.0 :   0.0
         ('D1', 'Catalin', 11) :   0.0 :  0.0 :   0.0
         ('D1', 'Catalin', 12) :   0.0 :  0.0 :   0.0
         ('D1', 'Catalin', 13) :   0.0 :  0.0 :   0.0
           ('D1', 'Daniel', 0) :   0.0 :  0.0 :   0.0
           ('D1', 'Daniel', 1) :   0.0 :  0.0 :   0.0
           ('D1', 'Daniel', 2) :   0.0 :  0.0 :   0.0
           ('D1', 'Daniel', 3) :   0.0 :  0.0 :   0.0
           ('D1', 'Daniel', 4) :   0.0 :  0.0 :   0.0
           ('D1', 'Daniel', 5) :   0.0 :  0.0 :   0.0
           ('D1', 'Daniel', 6) :   0.0 :  0.0 :   0.0
           ('D1', 'Daniel', 7) :   0.0 :  0.0 :   0.0
           ('D1', 'Daniel', 8) :   0.0 :  0.0 :   0.0
           ('D1', 'Daniel', 9) :   0.0 :  0.0 :   0.0
          ('D1', 'Daniel', 10) :   0.0 :  0.0 :   0.0
          ('D1', 'Daniel', 11) :   0.0 :  0.0 :   0.0
          ('D1', 'Daniel', 12) :   0.0 :  0.0 :   0.0
          ('D1', 'Daniel', 13) :   0.0 :  0.0 :   0.0
            ('D1', 'Elena', 0) :   0.0 :  0.0 :   0.0
            ('D1', 'Elena', 1) :   0.0 :  0.0 :   0.0
            ('D1', 'Elena', 2) :   0.0 :  0.0 :   0.0
            ('D1', 'Elena', 3) :   0.0 :  0.0 :   0.0
            ('D1', 'Elena', 4) :   0.0 :  0.0 :   0.0
            ('D1', 'Elena', 5) :   0.0 :  0.0 :   0.0
            ('D1', 'Elena', 6) :   0.0 :  0.0 :   0.0
            ('D1', 'Elena', 7) :   0.0 :  0.0 :   0.0
            ('D1', 'Elena', 8) :   0.0 :  0.0 :   0.0
            ('D1', 'Elena', 9) :   0.0 :  0.0 :   0.0
           ('D1', 'Elena', 10) :   0.0 :  0.0 :   0.0
           ('D1', 'Elena', 11) :   0.0 :  0.0 :   0.0
           ('D1', 'Elena', 12) :   0.0 :  0.0 :   0.0
           ('D1', 'Elena', 13) :   0.0 :  0.0 :   0.0
            ('D1', 'Filip', 0) :   0.0 :  0.0 :   0.0
            ('D1', 'Filip', 1) :   0.0 :  0.0 :   0.0
            ('D1', 'Filip', 2) :   0.0 :  0.0 :   0.0
            ('D1', 'Filip', 3) :   0.0 :  0.0 :   0.0
            ('D1', 'Filip', 4) :   0.0 :  0.0 :   0.0
            ('D1', 'Filip', 5) :   0.0 :  0.0 :   0.0
            ('D1', 'Filip', 6) :   0.0 :  0.0 :   0.0
            ('D1', 'Filip', 7) :   0.0 :  0.0 :   0.0
            ('D1', 'Filip', 8) :   0.0 :  0.0 :   0.0
            ('D1', 'Filip', 9) :   0.0 :  0.0 :   0.0
           ('D1', 'Filip', 10) :   0.0 :  0.0 :   0.0
           ('D1', 'Filip', 11) :   0.0 :  0.0 :   0.0
           ('D1', 'Filip', 12) :   0.0 :  0.0 :   0.0
           ('D1', 'Filip', 13) :   0.0 :  0.0 :   0.0
         ('D1', 'Gheorghe', 0) :   0.0 :  0.0 :   0.0
         ('D1', 'Gheorghe', 1) :   0.0 :  0.0 :   0.0
         ('D1', 'Gheorghe', 2) :   0.0 :  0.0 :   0.0
         ('D1', 'Gheorghe', 3) :   0.0 :  0.0 :   0.0
         ('D1', 'Gheorghe', 4) :   0.0 :  0.0 :   0.0
         ('D1', 'Gheorghe', 5) :   0.0 :  0.0 :   0.0
         ('D1', 'Gheorghe', 6) :   0.0 :  0.0 :   0.0
         ('D1', 'Gheorghe', 7) :   0.0 :  0.0 :   0.0
         ('D1', 'Gheorghe', 8) :   0.0 :  0.0 :   0.0
         ('D1', 'Gheorghe', 9) :   0.0 :  0.0 :   0.0
        ('D1', 'Gheorghe', 10) :   0.0 :  0.0 :   0.0
        ('D1', 'Gheorghe', 11) :   0.0 :  0.0 :   0.0
        ('D1', 'Gheorghe', 12) :   0.0 :  0.0 :   0.0
        ('D1', 'Gheorghe', 13) :   0.0 :  0.0 :   0.0
          ('D1', 'Horatiu', 0) :   0.0 :  0.0 :   0.0
          ('D1', 'Horatiu', 1) :   0.0 :  0.0 :   0.0
          ('D1', 'Horatiu', 2) :   0.0 :  0.0 :   0.0
          ('D1', 'Horatiu', 3) :   0.0 :  0.0 :   0.0
          ('D1', 'Horatiu', 4) :   0.0 :  0.0 :   0.0
          ('D1', 'Horatiu', 5) :   0.0 :  0.0 :   0.0
          ('D1', 'Horatiu', 6) :   0.0 :  0.0 :   0.0
          ('D1', 'Horatiu', 7) :   0.0 :  0.0 :   0.0
          ('D1', 'Horatiu', 8) :   0.0 :  0.0 :   0.0
          ('D1', 'Horatiu', 9) :   0.0 :  0.0 :   0.0
         ('D1', 'Horatiu', 10) :   0.0 :  0.0 :   0.0
         ('D1', 'Horatiu', 11) :   0.0 :  0.0 :   0.0
         ('D1', 'Horatiu', 12) :   0.0 :  0.0 :   0.0
         ('D1', 'Horatiu', 13) :   0.0 :  0.0 :   0.0
    constraint_shift_off_request : Size=112
        Key                    : Lower : Body : Upper
            ('D1', 'Alina', 0) :   0.0 :  0.0 :   0.0
            ('D1', 'Alina', 1) :   0.0 :  0.0 :   0.0
            ('D1', 'Alina', 2) :   0.0 :  0.0 :   0.0
            ('D1', 'Alina', 3) :   0.0 :  0.0 :   0.0
            ('D1', 'Alina', 4) :   0.0 :  0.0 :   0.0
            ('D1', 'Alina', 5) :   0.0 :  0.0 :   0.0
            ('D1', 'Alina', 6) :   0.0 :  0.0 :   0.0
            ('D1', 'Alina', 7) :   0.0 :  0.0 :   0.0
            ('D1', 'Alina', 8) :   0.0 :  0.0 :   0.0
            ('D1', 'Alina', 9) :   0.0 :  0.0 :   0.0
           ('D1', 'Alina', 10) :   0.0 :  0.0 :   0.0
           ('D1', 'Alina', 11) :   0.0 :  0.0 :   0.0
           ('D1', 'Alina', 12) :   0.0 :  0.0 :   0.0
           ('D1', 'Alina', 13) :   0.0 :  0.0 :   0.0
              ('D1', 'Bob', 0) :   0.0 :  0.0 :   0.0
              ('D1', 'Bob', 1) :   0.0 :  0.0 :   0.0
              ('D1', 'Bob', 2) :   0.0 :  0.0 :   0.0
              ('D1', 'Bob', 3) :   0.0 :  0.0 :   0.0
              ('D1', 'Bob', 4) :   0.0 :  0.0 :   0.0
              ('D1', 'Bob', 5) :   0.0 :  0.0 :   0.0
              ('D1', 'Bob', 6) :   0.0 :  0.0 :   0.0
              ('D1', 'Bob', 7) :   0.0 :  0.0 :   0.0
              ('D1', 'Bob', 8) :   0.0 :  0.0 :   0.0
              ('D1', 'Bob', 9) :   0.0 :  0.0 :   0.0
             ('D1', 'Bob', 10) :   0.0 :  0.0 :   0.0
             ('D1', 'Bob', 11) :   0.0 :  0.0 :   0.0
             ('D1', 'Bob', 12) :   0.0 :  0.0 :   0.0
             ('D1', 'Bob', 13) :   0.0 :  0.0 :   0.0
          ('D1', 'Catalin', 0) :   0.0 :  0.0 :   0.0
          ('D1', 'Catalin', 1) :   0.0 :  0.0 :   0.0
          ('D1', 'Catalin', 2) :   0.0 :  0.0 :   0.0
          ('D1', 'Catalin', 3) :   0.0 :  0.0 :   0.0
          ('D1', 'Catalin', 4) :   0.0 :  0.0 :   0.0
          ('D1', 'Catalin', 5) :   0.0 :  0.0 :   0.0
          ('D1', 'Catalin', 6) :   0.0 :  0.0 :   0.0
          ('D1', 'Catalin', 7) :   0.0 :  0.0 :   0.0
          ('D1', 'Catalin', 8) :   0.0 :  0.0 :   0.0
          ('D1', 'Catalin', 9) :   0.0 :  0.0 :   0.0
         ('D1', 'Catalin', 10) :   0.0 :  0.0 :   0.0
         ('D1', 'Catalin', 11) :   0.0 :  0.0 :   0.0
         ('D1', 'Catalin', 12) :   0.0 :  0.0 :   0.0
         ('D1', 'Catalin', 13) :   0.0 :  0.0 :   0.0
           ('D1', 'Daniel', 0) :   0.0 :  0.0 :   0.0
           ('D1', 'Daniel', 1) :   0.0 :  0.0 :   0.0
           ('D1', 'Daniel', 2) :   0.0 :  0.0 :   0.0
           ('D1', 'Daniel', 3) :   0.0 :  0.0 :   0.0
           ('D1', 'Daniel', 4) :   0.0 :  0.0 :   0.0
           ('D1', 'Daniel', 5) :   0.0 :  0.0 :   0.0
           ('D1', 'Daniel', 6) :   0.0 :  0.0 :   0.0
           ('D1', 'Daniel', 7) :   0.0 :  0.0 :   0.0
           ('D1', 'Daniel', 8) :   0.0 :  0.0 :   0.0
           ('D1', 'Daniel', 9) :   0.0 :  0.0 :   0.0
          ('D1', 'Daniel', 10) :   0.0 :  0.0 :   0.0
          ('D1', 'Daniel', 11) :   0.0 :  0.0 :   0.0
          ('D1', 'Daniel', 12) :   0.0 :  0.0 :   0.0
          ('D1', 'Daniel', 13) :   0.0 :  0.0 :   0.0
            ('D1', 'Elena', 0) :   0.0 :  0.0 :   0.0
            ('D1', 'Elena', 1) :   0.0 :  0.0 :   0.0
            ('D1', 'Elena', 2) :   0.0 :  0.0 :   0.0
            ('D1', 'Elena', 3) :   0.0 :  0.0 :   0.0
            ('D1', 'Elena', 4) :   0.0 :  0.0 :   0.0
            ('D1', 'Elena', 5) :   0.0 :  0.0 :   0.0
            ('D1', 'Elena', 6) :   0.0 :  0.0 :   0.0
            ('D1', 'Elena', 7) :   0.0 :  0.0 :   0.0
            ('D1', 'Elena', 8) :   0.0 :  0.0 :   0.0
            ('D1', 'Elena', 9) :   0.0 :  0.0 :   0.0
           ('D1', 'Elena', 10) :   0.0 :  0.0 :   0.0
           ('D1', 'Elena', 11) :   0.0 :  0.0 :   0.0
           ('D1', 'Elena', 12) :   0.0 :  0.0 :   0.0
           ('D1', 'Elena', 13) :   0.0 :  0.0 :   0.0
            ('D1', 'Filip', 0) :   0.0 :  0.0 :   0.0
            ('D1', 'Filip', 1) :   0.0 :  0.0 :   0.0
            ('D1', 'Filip', 2) :   0.0 :  0.0 :   0.0
            ('D1', 'Filip', 3) :   0.0 :  0.0 :   0.0
            ('D1', 'Filip', 4) :   0.0 :  0.0 :   0.0
            ('D1', 'Filip', 5) :   0.0 :  0.0 :   0.0
            ('D1', 'Filip', 6) :   0.0 :  0.0 :   0.0
            ('D1', 'Filip', 7) :   0.0 :  0.0 :   0.0
            ('D1', 'Filip', 8) :   0.0 :  0.0 :   0.0
            ('D1', 'Filip', 9) :   0.0 :  0.0 :   0.0
           ('D1', 'Filip', 10) :   0.0 :  0.0 :   0.0
           ('D1', 'Filip', 11) :   0.0 :  0.0 :   0.0
           ('D1', 'Filip', 12) :   0.0 :  0.0 :   0.0
           ('D1', 'Filip', 13) :   0.0 :  0.0 :   0.0
         ('D1', 'Gheorghe', 0) :   0.0 :  0.0 :   0.0
         ('D1', 'Gheorghe', 1) :   0.0 :  0.0 :   0.0
         ('D1', 'Gheorghe', 2) :   0.0 :  0.0 :   0.0
         ('D1', 'Gheorghe', 3) :   0.0 :  0.0 :   0.0
         ('D1', 'Gheorghe', 4) :   0.0 :  0.0 :   0.0
         ('D1', 'Gheorghe', 5) :   0.0 :  0.0 :   0.0
         ('D1', 'Gheorghe', 6) :   0.0 :  0.0 :   0.0
         ('D1', 'Gheorghe', 7) :   0.0 :  0.0 :   0.0
         ('D1', 'Gheorghe', 8) :   0.0 :  0.0 :   0.0
         ('D1', 'Gheorghe', 9) :   0.0 :  0.0 :   0.0
        ('D1', 'Gheorghe', 10) :   0.0 :  0.0 :   0.0
        ('D1', 'Gheorghe', 11) :   0.0 :  0.0 :   0.0
        ('D1', 'Gheorghe', 12) :   0.0 :  0.0 :   0.0
        ('D1', 'Gheorghe', 13) :   0.0 :  0.0 :   0.0
          ('D1', 'Horatiu', 0) :   0.0 :  0.0 :   0.0
          ('D1', 'Horatiu', 1) :   0.0 :  0.0 :   0.0
          ('D1', 'Horatiu', 2) :   0.0 :  0.0 :   0.0
          ('D1', 'Horatiu', 3) :   0.0 :  0.0 :   0.0
          ('D1', 'Horatiu', 4) :   0.0 :  0.0 :   0.0
          ('D1', 'Horatiu', 5) :   0.0 :  0.0 :   0.0
          ('D1', 'Horatiu', 6) :   0.0 :  0.0 :   0.0
          ('D1', 'Horatiu', 7) :   0.0 :  0.0 :   0.0
          ('D1', 'Horatiu', 8) :   0.0 :  0.0 :   0.0
          ('D1', 'Horatiu', 9) :   0.0 :  0.0 :   0.0
         ('D1', 'Horatiu', 10) :   0.0 :  0.0 :   0.0
         ('D1', 'Horatiu', 11) :   0.0 :  0.0 :   0.0
         ('D1', 'Horatiu', 12) :   0.0 :  0.0 :   0.0
         ('D1', 'Horatiu', 13) :   0.0 :  0.0 :   0.0
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
         ('D1', 8) :  None :  7.0 :   7.0
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
