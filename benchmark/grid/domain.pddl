(define (domain navigation)
  (:requirements :typing :action-costs)
  (:types
        car cell - object
  )

  (:predicates
     (connected ?x ?y - cell)
     (at ?x - car ?y - cell)
  )

  (:functions
     (congestion ?x - cell) - number
     (total-cost) - number
  )

  (:action drive
    :parameters (?c - car ?x ?y - cell)
    :precondition (and
        (at ?c ?x)
        (connected ?x ?y)
      )
    :effect (and
        (not (at ?c ?x))
        (at ?c ?y)
        (increase (total-cost) (congestion ?y))
      )
  )
)
