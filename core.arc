; Arc Reactor
; Dominating the world since 2013.
; by Brian J Rubinton
;
; thank you, Dan Na, for the name

; Control flow (fsm)
;
; input: stream of http requests from risk server
; state: based on available actions
; output: determine action, send response

; Optimizations
;
; lazy & memoized risk/reward/value functions
; the functions will be defined in such a way to maximize use of memoized values
;     generalize scenarios as much as possible

; Heuristics
;
; Attack whenever risk/reward pay off.
; Consider the value of waiting?
; Take North America or Australia at start.
; Continent value = bonus * (borders / territories)
;   Risk | Continent
;   ------------------------------
;        | N. America + S. America
;        | N. America
;        | Australia
;        | Africa + S. America
;        | Europe + Africa
;        | S. America
;
; Territory value = marginal bonus reinforcements * (enemy borders - allied borders) + continent perimeter bonus

(def risk (d . a)
  "d - defending armies
   a - attacking armies"
  nil)

(def reward (cur new)
  "new armies per turn"
  nil)

(def rank-action-value ()
  "Use heuristics to choose a candidate action.
   Find diff in risk/reward given action."
  nil)

(defop turn () nil)

(defop not_turn () nil)

(defop status () nil)


