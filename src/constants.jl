# Session variables
const EVAL_DATE = today()

# Seasonal constants to determine start of seasons (more precisely, equinoxes
# ands solstices)
# See Meeus, Ch 26
const SEASON_MAR = [2451623.80984, 365242.37404, 0.05169, -0.00411, -0.00057]
const SEASON_JUN = [2451716.56767, 365241.62603, 0.00325, 0.00888, -0.00030]
const SEASON_SEP = [2451810.21715, 365242.01767, -0.11575,  0.00337,  0.00078]
const SEASON_DEC = [2451900.05952, 365242.74049, 0.06223, 0.00823, 0.00032]
const SEASON = [Mar => SEASON_MAR, Jun => SEASON_JUN, Sep => SEASON_SEP,
    Dec => SEASON_DEC]
const SEASON_A = [485, 203, 199, 182, 156, 136, 77, 74, 70, 58, 52, 50, 45, 44,
    29, 18, 17, 16, 14, 12, 12, 12, 9, 8]
const SEASON_B = [324.96, 337.23, 342.08, 27.85, 73.14, 171.52, 222.54, 296.72,
    243.58, 119.81, 297.17, 21.02, 247.54, 325.15, 60.93, 155.12, 288.79,
    198.04, 199.76, 95.39, 287.11, 320.81, 227.73, 15.45]
const SEASON_C = [1934.136, 32964.467, 20.186, 445267.112, 45036.886, 22518.443,
    65928.934, 3034.906, 9037.513, 33718.147, 150.678, 2281.226, 29929.562,
    31555.956, 4443.417, 67555.328, 4562.452, 62894.029, 31436.921, 14577.848,
    31931.756, 34777.259, 1222.114, 16859.074]

# Compounding constants
(const Simply, Annually, SemiAnnually, TriAnnually, Quarterly, BiMonthly,
    Monthly, Fortnightly, Weekly, Daily, Continuously =
    0, 1, 2, 3, 4, 6, 12, 24, 52, 365, 1000)
const COMPOUNDINGS = [0 => "simply", 1 => "annually", 2 => "semi-annually",
    3 => "tri-annually", 4 => "quarterly", 6 => "bi-monthly", 12 => "monthly",
    24 => "fornightly", 52 => "weekly", 365 => "daily", 1000 => "continuously"]

