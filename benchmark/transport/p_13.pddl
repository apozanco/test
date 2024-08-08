; Transport city-sequential-10nodes-1000size-3degree-100mindistance-2trucks-3packages-38seed

(define (problem transport-city-sequential-10nodes-1000size-3degree-100mindistance-2trucks-3packages-38seed)
 (:domain transport)
 (:objects
  city-loc-1 - location
  city-loc-2 - location
  city-loc-3 - location
  city-loc-4 - location
  city-loc-5 - location
  city-loc-6 - location
  city-loc-7 - location
  city-loc-8 - location
  city-loc-9 - location
  city-loc-10 - location
  truck-1 - vehicle
  truck-2 - vehicle
  package-1 - package
  package-2 - package
  package-3 - package
  capacity-0 - capacity-number
  capacity-1 - capacity-number
  capacity-2 - capacity-number
  capacity-3 - capacity-number
  capacity-4 - capacity-number
 )
 (:init
  (= (total-cost) 0)
  (capacity-predecessor capacity-0 capacity-1)
  (capacity-predecessor capacity-1 capacity-2)
  (capacity-predecessor capacity-2 capacity-3)
  (capacity-predecessor capacity-3 capacity-4)
  ; 741,104 -> 654,431
  (road city-loc-3 city-loc-1)
  (= (road-length city-loc-3 city-loc-1) 34)
  ; 654,431 -> 741,104
  (road city-loc-1 city-loc-3)
  (= (road-length city-loc-1 city-loc-3) 34)
  ; 383,44 -> 741,104
  (road city-loc-5 city-loc-3)
  (= (road-length city-loc-5 city-loc-3) 37)
  ; 741,104 -> 383,44
  (road city-loc-3 city-loc-5)
  (= (road-length city-loc-3 city-loc-5) 37)
  ; 622,680 -> 654,431
  (road city-loc-6 city-loc-1)
  (= (road-length city-loc-6 city-loc-1) 26)
  ; 654,431 -> 622,680
  (road city-loc-1 city-loc-6)
  (= (road-length city-loc-1 city-loc-6) 26)
  ; 622,680 -> 439,772
  (road city-loc-6 city-loc-2)
  (= (road-length city-loc-6 city-loc-2) 21)
  ; 439,772 -> 622,680
  (road city-loc-2 city-loc-6)
  (= (road-length city-loc-2 city-loc-6) 21)
  ; 174,604 -> 439,772
  (road city-loc-7 city-loc-2)
  (= (road-length city-loc-7 city-loc-2) 32)
  ; 439,772 -> 174,604
  (road city-loc-2 city-loc-7)
  (= (road-length city-loc-2 city-loc-7) 32)
  ; 174,604 -> 67,375
  (road city-loc-7 city-loc-4)
  (= (road-length city-loc-7 city-loc-4) 26)
  ; 67,375 -> 174,604
  (road city-loc-4 city-loc-7)
  (= (road-length city-loc-4 city-loc-7) 26)
  ; 352,335 -> 654,431
  (road city-loc-8 city-loc-1)
  (= (road-length city-loc-8 city-loc-1) 32)
  ; 654,431 -> 352,335
  (road city-loc-1 city-loc-8)
  (= (road-length city-loc-1 city-loc-8) 32)
  ; 352,335 -> 67,375
  (road city-loc-8 city-loc-4)
  (= (road-length city-loc-8 city-loc-4) 29)
  ; 67,375 -> 352,335
  (road city-loc-4 city-loc-8)
  (= (road-length city-loc-4 city-loc-8) 29)
  ; 352,335 -> 383,44
  (road city-loc-8 city-loc-5)
  (= (road-length city-loc-8 city-loc-5) 30)
  ; 383,44 -> 352,335
  (road city-loc-5 city-loc-8)
  (= (road-length city-loc-5 city-loc-8) 30)
  ; 352,335 -> 174,604
  (road city-loc-8 city-loc-7)
  (= (road-length city-loc-8 city-loc-7) 33)
  ; 174,604 -> 352,335
  (road city-loc-7 city-loc-8)
  (= (road-length city-loc-7 city-loc-8) 33)
  ; 273,727 -> 439,772
  (road city-loc-9 city-loc-2)
  (= (road-length city-loc-9 city-loc-2) 18)
  ; 439,772 -> 273,727
  (road city-loc-2 city-loc-9)
  (= (road-length city-loc-2 city-loc-9) 18)
  ; 273,727 -> 622,680
  (road city-loc-9 city-loc-6)
  (= (road-length city-loc-9 city-loc-6) 36)
  ; 622,680 -> 273,727
  (road city-loc-6 city-loc-9)
  (= (road-length city-loc-6 city-loc-9) 36)
  ; 273,727 -> 174,604
  (road city-loc-9 city-loc-7)
  (= (road-length city-loc-9 city-loc-7) 16)
  ; 174,604 -> 273,727
  (road city-loc-7 city-loc-9)
  (= (road-length city-loc-7 city-loc-9) 16)
  ; 337,637 -> 439,772
  (road city-loc-10 city-loc-2)
  (= (road-length city-loc-10 city-loc-2) 17)
  ; 439,772 -> 337,637
  (road city-loc-2 city-loc-10)
  (= (road-length city-loc-2 city-loc-10) 17)
  ; 337,637 -> 622,680
  (road city-loc-10 city-loc-6)
  (= (road-length city-loc-10 city-loc-6) 29)
  ; 622,680 -> 337,637
  (road city-loc-6 city-loc-10)
  (= (road-length city-loc-6 city-loc-10) 29)
  ; 337,637 -> 174,604
  (road city-loc-10 city-loc-7)
  (= (road-length city-loc-10 city-loc-7) 17)
  ; 174,604 -> 337,637
  (road city-loc-7 city-loc-10)
  (= (road-length city-loc-7 city-loc-10) 17)
  ; 337,637 -> 352,335
  (road city-loc-10 city-loc-8)
  (= (road-length city-loc-10 city-loc-8) 31)
  ; 352,335 -> 337,637
  (road city-loc-8 city-loc-10)
  (= (road-length city-loc-8 city-loc-10) 31)
  ; 337,637 -> 273,727
  (road city-loc-10 city-loc-9)
  (= (road-length city-loc-10 city-loc-9) 11)
  ; 273,727 -> 337,637
  (road city-loc-9 city-loc-10)
  (= (road-length city-loc-9 city-loc-10) 11)
  (at package-1 city-loc-5)
  (at package-2 city-loc-8)
  (at package-3 city-loc-10)
  (at truck-1 city-loc-4)
  (capacity truck-1 capacity-3)
  (at truck-2 city-loc-2)
  (capacity truck-2 capacity-4)
 )
 (:goal (and
  (at package-1 city-loc-9)
  (at package-2 city-loc-3)
  (at package-3 city-loc-7)
 ))
 (:metric minimize (total-cost))
)
