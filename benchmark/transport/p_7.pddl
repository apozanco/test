; Transport city-sequential-10nodes-1000size-3degree-100mindistance-2trucks-3packages-96seed

(define (problem transport-city-sequential-10nodes-1000size-3degree-100mindistance-2trucks-3packages-96seed)
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
  ; 210,98 -> 379,322
  (road city-loc-4 city-loc-1)
  (= (road-length city-loc-4 city-loc-1) 29)
  ; 379,322 -> 210,98
  (road city-loc-1 city-loc-4)
  (= (road-length city-loc-1 city-loc-4) 29)
  ; 837,349 -> 929,689
  (road city-loc-5 city-loc-2)
  (= (road-length city-loc-5 city-loc-2) 36)
  ; 929,689 -> 837,349
  (road city-loc-2 city-loc-5)
  (= (road-length city-loc-2 city-loc-5) 36)
  ; 776,47 -> 837,349
  (road city-loc-6 city-loc-5)
  (= (road-length city-loc-6 city-loc-5) 31)
  ; 837,349 -> 776,47
  (road city-loc-5 city-loc-6)
  (= (road-length city-loc-5 city-loc-6) 31)
  ; 715,907 -> 929,689
  (road city-loc-7 city-loc-2)
  (= (road-length city-loc-7 city-loc-2) 31)
  ; 929,689 -> 715,907
  (road city-loc-2 city-loc-7)
  (= (road-length city-loc-2 city-loc-7) 31)
  ; 715,907 -> 405,946
  (road city-loc-7 city-loc-3)
  (= (road-length city-loc-7 city-loc-3) 32)
  ; 405,946 -> 715,907
  (road city-loc-3 city-loc-7)
  (= (road-length city-loc-3 city-loc-7) 32)
  ; 22,170 -> 210,98
  (road city-loc-8 city-loc-4)
  (= (road-length city-loc-8 city-loc-4) 21)
  ; 210,98 -> 22,170
  (road city-loc-4 city-loc-8)
  (= (road-length city-loc-4 city-loc-8) 21)
  ; 417,658 -> 379,322
  (road city-loc-9 city-loc-1)
  (= (road-length city-loc-9 city-loc-1) 34)
  ; 379,322 -> 417,658
  (road city-loc-1 city-loc-9)
  (= (road-length city-loc-1 city-loc-9) 34)
  ; 417,658 -> 405,946
  (road city-loc-9 city-loc-3)
  (= (road-length city-loc-9 city-loc-3) 29)
  ; 405,946 -> 417,658
  (road city-loc-3 city-loc-9)
  (= (road-length city-loc-3 city-loc-9) 29)
  ; 322,89 -> 379,322
  (road city-loc-10 city-loc-1)
  (= (road-length city-loc-10 city-loc-1) 24)
  ; 379,322 -> 322,89
  (road city-loc-1 city-loc-10)
  (= (road-length city-loc-1 city-loc-10) 24)
  ; 322,89 -> 210,98
  (road city-loc-10 city-loc-4)
  (= (road-length city-loc-10 city-loc-4) 12)
  ; 210,98 -> 322,89
  (road city-loc-4 city-loc-10)
  (= (road-length city-loc-4 city-loc-10) 12)
  ; 322,89 -> 22,170
  (road city-loc-10 city-loc-8)
  (= (road-length city-loc-10 city-loc-8) 32)
  ; 22,170 -> 322,89
  (road city-loc-8 city-loc-10)
  (= (road-length city-loc-8 city-loc-10) 32)
  (at package-1 city-loc-5)
  (at package-2 city-loc-6)
  (at package-3 city-loc-6)
  (at truck-1 city-loc-3)
  (capacity truck-1 capacity-3)
  (at truck-2 city-loc-1)
  (capacity truck-2 capacity-4)
 )
 (:goal (and
  (at package-1 city-loc-10)
  (at package-2 city-loc-8)
  (at package-3 city-loc-9)
 ))
 (:metric minimize (total-cost))
)
