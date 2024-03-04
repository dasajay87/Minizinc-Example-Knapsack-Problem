% Knapsack Problem

include "demo1_input.dzn";

% Parameters
int: n;                  % Number of items
set of int: ITEMS = 1..n;
array[ITEMS] of int: weight;   % Weight of each item
array[ITEMS] of int: profit;    % profit of each item
int: capacity;            % Knapsack capacity

% Decision Variables
array[ITEMS] of var 0..1: take;   % 1 if item is taken, 0 otherwise

% Constraints
constraint forall(i in ITEMS)(take[i] >= 0);
constraint sum(i in ITEMS) (take[i] * weight[i]) <= capacity;


% Objective Function: maximize total value
var int: total_value = sum(i in ITEMS)(take[i] * profit[i]);
solve maximize total_value;

% Output Total Values
output ["Maximum Profit: \(total_value)\n"];

% Output the selected items after solving
output ["Index of take for selecting items = ", show(take), "\n"];
