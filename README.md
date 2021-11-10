# Wealth-Effect-on-Labor-Supply-
In this project I use Lagrangians to find labor supply. I use for loops, various functions, and various programming techniques to get a final result


PROJECT SUMMARY: 


Wealth effect on labor supply. Consider an agent that lives for two periods. In the first period, the agent
is young and can work to produce a consumption good using technology

y = l^(1−α)

where y is the amount of the good produced and l is the labor effort supplied by the agent. In addition, at
the beginning of the period, the agent is endowed with some quantity W of the consumption good. In the
second period, the agent is old and cannot work anymore. The agent has access to a savings technology that
allows her to store some of the consumption good that was produced in period 1 and get them back in period 2
with some return r. The agent has preferences represented by:

U (c1, c2, l) = c 1−σ 1 1 − σ − ψ l 1+ν 1 + ν + β c 1−σ 2 1 − σ

where c1 and c2 are consumption in period 1 and 2, respectively, 0 < β < 1 is a discount factor, and −ψ
l
1+ν
1+ν
represents the disutility the agent gets from working. The problem of the agent is to choose how much to
work l, how much to save a, and how much to consume in each period c1, c2 to maximize her lifetime utility
subject to her resource constraints in both periods:

max {c1,c2,l,a} c 1−σ 1 1 − σ − ψ l 1+ν 1 + ν + β c 1−σ 2 1 − σ s.t. c1 + a = l 1−α + W c2 = (1 + r) a

(a) Show that you can consolidate the two resource constraints into a single budget constraint in which 1
1+r

is the relative price of consumption in period 2 in terms of consumption in period 1.
(b) Write down the Lagrangian associated with the maximization problem using the budget constraint in
(a). Use the first-order-conditions and the budget constraint to derive the following non-linear equation
for the labor supply:
l 1−α + W − 1 l ν+α σ � 1 − α ψ � 1 σ " 1 + [β (1 + r)] 1 σ 1 + r # = 0
(c) Write a MATLAB function F (l, W, α, σ, ν, ψ, β, r) that returns the left-hand-side of equation (1). When
you dene it use the notation for vector operations so that the function can be evaluated on a vector of l

(for example, for the first term write l.-
(1 − α) so that the function elevates each element in l to that

power.
(d) Let W = 1, α = 0.66, ν = 1.3, σ = 2, ψ = 1.5, β = 0.98, and r = 0.04. Create a plot of the function you
dened in (c) for a range of values for l between 0.1 and 1.5. Now, on the same plot, include the curves
for when W = 0 and W = 2. In which of the three cases the agent chooses to work more? Explain your
intuition.
(e) Show that the derivative of F with respect to l is:

∂F ∂l = (1 − α) 1 l α + ν + α σ � 1 − α ψ � 1 σ " 1 + [β (1 + r)] 1 σ 1 + r # 1 l 1+ ν+α

(f) Write a MATLAB function LaborSupply (l0, W, α, σ, ν, ψ, β, r) that uses Newton's method to get the
labor supply (i.e. to nd l such that equation (1) holds) using l0 as a starting point.
(g) Set W = 2 and compute the labor supply using your function from (f) and l0 = 0.5. Now test your
function with l0 = 3. Are both starting points good? Discuss why or why not.
