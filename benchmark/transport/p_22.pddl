; Transport city-sequential-10nodes-1000size-3degree-100mindistance-2trucks-3packages-45seed

(define (problem transport-city-sequential-10nodes-1000size-3degree-100mindistance-2trucks-3packages-45seed)
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
  ; 719,658 -> 647,749
  (road city-loc-2 city-loc-1)
  (= (road-length city-loc-2 city-loc-1) 12)
  ; 647,749 -> 719,658
  (road city-loc-1 city-loc-2)
  (= (road-length city-loc-1 city-loc-2) 12)
  ; 504,931 -> 647,749
  (road city-loc-5 city-loc-1)
  (= (road-length city-loc-5 city-loc-1) 24)
  ; 647,749 -> 504,931
  (road city-loc-1 city-loc-5)
  (= (road-length city-loc-1 city-loc-5) 24)
  ; 504,931 -> 719,658
  (road city-loc-5 city-loc-2)
  (= (road-length city-loc-5 city-loc-2) 35)
  ; 719,658 -> 504,931
  (road city-loc-2 city-loc-5)
  (= (road-length city-loc-2 city-loc-5) 35)
  ; 382,933 -> 647,749
  (road city-loc-6 city-loc-1)
  (= (road-length city-loc-6 city-loc-1) 33)
  ; 647,749 -> 382,933
  (road city-loc-1 city-loc-6)
  (= (road-length city-loc-1 city-loc-6) 33)
  ; 382,933 -> 260,607
  (road city-loc-6 city-loc-3)
  (= (road-length city-loc-6 city-loc-3) 35)
  ; 260,607 -> 382,933
  (road city-loc-3 city-loc-6)
  (= (road-length city-loc-3 city-loc-6) 35)
  ; 382,933 -> 504,931
  (road city-loc-6 city-loc-5)
  (= (road-length city-loc-6 city-loc-5) 13)
  ; 504,931 -> 382,933
  (road city-loc-5 city-loc-6)
  (= (road-length city-loc-5 city-loc-6) 13)
  ; 214,359 -> 260,607
  (road city-loc-7 city-loc-3)
  (= (road-length city-loc-7 city-loc-3) 26)
  ; 260,607 -> 214,359
  (road city-loc-3 city-loc-7)
  (= (road-length city-loc-3 city-loc-7) 26)
  ; 159,641 -> 260,607
  (road city-loc-8 city-loc-3)
  (= (road-length city-loc-8 city-loc-3) 11)
  ; 260,607 -> 159,641
  (road city-loc-3 city-loc-8)
  (= (road-length city-loc-3 city-loc-8) 11)
  ; 159,641 -> 382,933
  (road city-loc-8 city-loc-6)
  (= (road-length city-loc-8 city-loc-6) 37)
  ; 382,933 -> 159,641
  (road city-loc-6 city-loc-8)
  (= (road-length city-loc-6 city-loc-8) 37)
  ; 159,641 -> 214,359
  (road city-loc-8 city-loc-7)
  (= (road-length city-loc-8 city-loc-7) 29)
  ; 214,359 -> 159,641
  (road city-loc-7 city-loc-8)
  (= (road-length city-loc-7 city-loc-8) 29)
  ; 807,17 -> 679,61
  (road city-loc-9 city-loc-4)
  (= (road-length city-loc-9 city-loc-4) 14)
  ; 679,61 -> 807,17
  (road city-loc-4 city-loc-9)
  (= (road-length city-loc-4 city-loc-9) 14)
  ; 434,300 -> 260,607
  (road city-loc-10 city-loc-3)
  (= (road-length city-loc-10 city-loc-3) 36)
  ; 260,607 -> 434,300
  (road city-loc-3 city-loc-10)
  (= (road-length city-loc-3 city-loc-10) 36)
  ; 434,300 -> 679,61
  (road city-loc-10 city-loc-4)
  (= (road-length city-loc-10 city-loc-4) 35)
  ; 679,61 -> 434,300
  (road city-loc-4 city-loc-10)
  (= (road-length city-loc-4 city-loc-10) 35)
  ; 434,300 -> 214,359
  (road city-loc-10 city-loc-7)
  (= (road-length city-loc-10 city-loc-7) 23)
  ; 214,359 -> 434,300
  (road city-loc-7 city-loc-10)
  (= (road-length city-loc-7 city-loc-10) 23)
  (at package-1 city-loc-4)
  (at package-2 city-loc-7)
  (at package-3 city-loc-7)
  (at truck-1 city-loc-3)
  (capacity truck-1 capacity-3)
  (at truck-2 city-loc-8)
  (capacity truck-2 capacity-4)
 )
 (:goal (and
  (at package-1 city-loc-9)
  (at package-2 city-loc-2)
  (at package-3 city-loc-9)
 ))
 (:metric minimize (total-cost))
)
