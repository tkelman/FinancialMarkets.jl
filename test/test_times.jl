d1 = Date(2014, 1, 1)
d2 = Date(2015, 1, 1)
d3 = Date(2014, 2, 1)

# A/365
a365 = A365()
@test years(d1, d2, a365) == 1.0
@test years(d2, d1, a365) == -1.0
@test years(d1, d3, a365) == 31 / 365

# A/360
a360 = A360()
@test years(d1, d2, a360) == 1.0
@test years(d2, d1, a360) == -1.0
@test years(d1, d3, a360) == 31 / 360
