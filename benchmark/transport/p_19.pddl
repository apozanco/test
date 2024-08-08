; Transport city-sequential-10nodes-1000size-3degree-100mindistance-2trucks-3packages-74seed

(define (problem transport-city-sequential-10nodes-1000size-3degree-100mindistance-2trucks-3packages-74seed)
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
  ; 714,174 -> 405,149
  (road city-loc-3 city-loc-2)
  (= (road-length city-loc-3 city-loc-2) 31)
  ; 405,149 -> 714,174
  (road city-loc-2 city-loc-3)
  (= (road-length city-loc-2 city-loc-3) 31)
  ; 613,178 -> 405,149
  (road city-loc-4 city-loc-2)
  (= (road-length city-loc-4 city-loc-2) 21)
  ; 405,149 -> 613,178
  (road city-loc-2 city-loc-4)
  (= (road-length city-loc-2 city-loc-4) 21)
  ; 613,178 -> 714,174
  (road city-loc-4 city-loc-3)
  (= (road-length city-loc-4 city-loc-3) 11)
  ; 714,174 -> 613,178
  (road city-loc-3 city-loc-4)
  (= (road-length city-loc-3 city-loc-4) 11)
  ; 798,927 -> 506,734
  (road city-loc-5 city-loc-1)
  (= (road-length city-loc-5 city-loc-1) 35)
  ; 506,734 -> 798,927
  (road city-loc-1 city-loc-5)
  (= (road-length city-loc-1 city-loc-5) 35)
  ; 440,473 -> 506,734
  (road city-loc-6 city-loc-1)
  (= (road-length city-loc-6 city-loc-1) 27)
  ; 506,734 -> 440,473
  (road city-loc-1 city-loc-6)
  (= (road-length city-loc-1 city-loc-6) 27)
  ; 440,473 -> 405,149
  (road city-loc-6 city-loc-2)
  (= (road-length city-loc-6 city-loc-2) 33)
  ; 405,149 -> 440,473
  (road city-loc-2 city-loc-6)
  (= (road-length city-loc-2 city-loc-6) 33)
  ; 440,473 -> 613,178
  (road city-loc-6 city-loc-4)
  (= (road-length city-loc-6 city-loc-4) 35)
  ; 613,178 -> 440,473
  (road city-loc-4 city-loc-6)
  (= (road-length city-loc-4 city-loc-6) 35)
  ; 233,190 -> 405,149
  (road city-loc-7 city-loc-2)
  (= (road-length city-loc-7 city-loc-2) 18)
  ; 405,149 -> 233,190
  (road city-loc-2 city-loc-7)
  (= (road-length city-loc-2 city-loc-7) 18)
  ; 233,190 -> 440,473
  (road city-loc-7 city-loc-6)
  (= (road-length city-loc-7 city-loc-6) 36)
  ; 440,473 -> 233,190
  (road city-loc-6 city-loc-7)
  (= (road-length city-loc-6 city-loc-7) 36)
  ; 937,942 -> 798,927
  (road city-loc-8 city-loc-5)
  (= (road-length city-loc-8 city-loc-5) 14)
  ; 798,927 -> 937,942
  (road city-loc-5 city-loc-8)
  (= (road-length city-loc-5 city-loc-8) 14)
  ; 56,449 -> 233,190
  (road city-loc-9 city-loc-7)
  (= (road-length city-loc-9 city-loc-7) 32)
  ; 233,190 -> 56,449
  (road city-loc-7 city-loc-9)
  (= (road-length city-loc-7 city-loc-9) 32)
  ; 857,510 -> 714,174
  (road city-loc-10 city-loc-3)
  (= (road-length city-loc-10 city-loc-3) 37)
  ; 714,174 -> 857,510
  (road city-loc-3 city-loc-10)
  (= (road-length city-loc-3 city-loc-10) 37)
  (at package-1 city-loc-3)
  (at package-2 city-loc-8)
  (at package-3 city-loc-3)
  (at truck-1 city-loc-5)
  (capacity truck-1 capacity-2)
  (at truck-2 city-loc-1)
  (capacity truck-2 capacity-4)
 )
 (:goal (and
  (at package-1 city-loc-5)
  (at package-2 city-loc-9)
  (at package-3 city-loc-5)
 ))
 (:metric minimize (total-cost))
)
