# Minizinc-Example-Knapsack-Problem
Minizinc code is written for solving knapsack problem. This code will give insight to beginers. Here i have given instruction how to run code.

1. Download both files: knap.mzn (where actual minizinc code is written) and knap.dzn which is used to supply input in program.

2. To run program simply type: minizinc knap.mzn
   Note : No need to supply input file knap.dzn as it's already included inside actual minizinc file just see code carefully.

3. Since minizinc is solver independent platform so you can use any solver just by writting:-

minizinc --solver gecode knap.mzn

here gecode solver will be used by minizinc.
