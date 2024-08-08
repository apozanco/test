; Transport city-sequential-10nodes-1000size-3degree-100mindistance-2trucks-3packages-18seed

(define (problem transport-city-sequential-10nodes-1000size-3degree-100mindistance-2trucks-3packages-18seed)
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
  ; 342,245 -> 185,125
  (road city-loc-3 city-loc-1)
  (= (road-length city-loc-3 city-loc-1) 20)
  ; 185,125 -> 342,245
  (road city-loc-1 city-loc-3)
  (= (road-length city-loc-1 city-loc-3) 20)
  ; 501,643 -> 677,459
  (road city-loc-5 city-loc-2)
  (= (road-length city-loc-5 city-loc-2) 26)
  ; 677,459 -> 501,643
  (road city-loc-2 city-loc-5)
  (= (road-length city-loc-2 city-loc-5) 26)
  ; 505,187 -> 185,125
  (road city-loc-6 city-loc-1)
  (= (road-length city-loc-6 city-loc-1) 33)
  ; 185,125 -> 505,187
  (road city-loc-1 city-loc-6)
  (= (road-length city-loc-1 city-loc-6) 33)
  ; 505,187 -> 677,459
  (road city-loc-6 city-loc-2)
  (= (road-length city-loc-6 city-loc-2) 33)
  ; 677,459 -> 505,187
  (road city-loc-2 city-loc-6)
  (= (road-length city-loc-2 city-loc-6) 33)
  ; 505,187 -> 342,245
  (road city-loc-6 city-loc-3)
  (= (road-length city-loc-6 city-loc-3) 18)
  ; 342,245 -> 505,187
  (road city-loc-3 city-loc-6)
  (= (road-length city-loc-3 city-loc-6) 18)
  ; 491,302 -> 185,125
  (road city-loc-7 city-loc-1)
  (= (road-length city-loc-7 city-loc-1) 36)
  ; 185,125 -> 491,302
  (road city-loc-1 city-loc-7)
  (= (road-length city-loc-1 city-loc-7) 36)
  ; 491,302 -> 677,459
  (road city-loc-7 city-loc-2)
  (= (road-length city-loc-7 city-loc-2) 25)
  ; 677,459 -> 491,302
  (road city-loc-2 city-loc-7)
  (= (road-length city-loc-2 city-loc-7) 25)
  ; 491,302 -> 342,245
  (road city-loc-7 city-loc-3)
  (= (road-length city-loc-7 city-loc-3) 16)
  ; 342,245 -> 491,302
  (road city-loc-3 city-loc-7)
  (= (road-length city-loc-3 city-loc-7) 16)
  ; 491,302 -> 501,643
  (road city-loc-7 city-loc-5)
  (= (road-length city-loc-7 city-loc-5) 35)
  ; 501,643 -> 491,302
  (road city-loc-5 city-loc-7)
  (= (road-length city-loc-5 city-loc-7) 35)
  ; 491,302 -> 505,187
  (road city-loc-7 city-loc-6)
  (= (road-length city-loc-7 city-loc-6) 12)
  ; 505,187 -> 491,302
  (road city-loc-6 city-loc-7)
  (= (road-length city-loc-6 city-loc-7) 12)
  ; 469,908 -> 202,974
  (road city-loc-8 city-loc-4)
  (= (road-length city-loc-8 city-loc-4) 28)
  ; 202,974 -> 469,908
  (road city-loc-4 city-loc-8)
  (= (road-length city-loc-4 city-loc-8) 28)
  ; 469,908 -> 501,643
  (road city-loc-8 city-loc-5)
  (= (road-length city-loc-8 city-loc-5) 27)
  ; 501,643 -> 469,908
  (road city-loc-5 city-loc-8)
  (= (road-length city-loc-5 city-loc-8) 27)
  ; 708,120 -> 677,459
  (road city-loc-9 city-loc-2)
  (= (road-length city-loc-9 city-loc-2) 34)
  ; 677,459 -> 708,120
  (road city-loc-2 city-loc-9)
  (= (road-length city-loc-2 city-loc-9) 34)
  ; 708,120 -> 505,187
  (road city-loc-9 city-loc-6)
  (= (road-length city-loc-9 city-loc-6) 22)
  ; 505,187 -> 708,120
  (road city-loc-6 city-loc-9)
  (= (road-length city-loc-6 city-loc-9) 22)
  ; 708,120 -> 491,302
  (road city-loc-9 city-loc-7)
  (= (road-length city-loc-9 city-loc-7) 29)
  ; 491,302 -> 708,120
  (road city-loc-7 city-loc-9)
  (= (road-length city-loc-7 city-loc-9) 29)
  ; 332,534 -> 677,459
  (road city-loc-10 city-loc-2)
  (= (road-length city-loc-10 city-loc-2) 36)
  ; 677,459 -> 332,534
  (road city-loc-2 city-loc-10)
  (= (road-length city-loc-2 city-loc-10) 36)
  ; 332,534 -> 342,245
  (road city-loc-10 city-loc-3)
  (= (road-length city-loc-10 city-loc-3) 29)
  ; 342,245 -> 332,534
  (road city-loc-3 city-loc-10)
  (= (road-length city-loc-3 city-loc-10) 29)
  ; 332,534 -> 501,643
  (road city-loc-10 city-loc-5)
  (= (road-length city-loc-10 city-loc-5) 21)
  ; 501,643 -> 332,534
  (road city-loc-5 city-loc-10)
  (= (road-length city-loc-5 city-loc-10) 21)
  ; 332,534 -> 491,302
  (road city-loc-10 city-loc-7)
  (= (road-length city-loc-10 city-loc-7) 29)
  ; 491,302 -> 332,534
  (road city-loc-7 city-loc-10)
  (= (road-length city-loc-7 city-loc-10) 29)
  (at package-1 city-loc-3)
  (at package-2 city-loc-4)
  (at package-3 city-loc-3)
  (at truck-1 city-loc-4)
  (capacity truck-1 capacity-2)
  (at truck-2 city-loc-6)
  (capacity truck-2 capacity-4)
 )
 (:goal (and
  (at package-1 city-loc-10)
  (at package-2 city-loc-9)
  (at package-3 city-loc-4)
 ))
 (:metric minimize (total-cost))
)
