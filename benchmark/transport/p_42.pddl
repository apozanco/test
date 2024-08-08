; Transport city-sequential-10nodes-1000size-3degree-100mindistance-2trucks-3packages-84seed

(define (problem transport-city-sequential-10nodes-1000size-3degree-100mindistance-2trucks-3packages-84seed)
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
  ; 853,201 -> 749,290
  (road city-loc-4 city-loc-1)
  (= (road-length city-loc-4 city-loc-1) 14)
  ; 749,290 -> 853,201
  (road city-loc-1 city-loc-4)
  (= (road-length city-loc-1 city-loc-4) 14)
  ; 471,510 -> 749,290
  (road city-loc-5 city-loc-1)
  (= (road-length city-loc-5 city-loc-1) 36)
  ; 749,290 -> 471,510
  (road city-loc-1 city-loc-5)
  (= (road-length city-loc-1 city-loc-5) 36)
  ; 874,564 -> 749,290
  (road city-loc-6 city-loc-1)
  (= (road-length city-loc-6 city-loc-1) 31)
  ; 749,290 -> 874,564
  (road city-loc-1 city-loc-6)
  (= (road-length city-loc-1 city-loc-6) 31)
  ; 874,564 -> 935,793
  (road city-loc-6 city-loc-2)
  (= (road-length city-loc-6 city-loc-2) 24)
  ; 935,793 -> 874,564
  (road city-loc-2 city-loc-6)
  (= (road-length city-loc-2 city-loc-6) 24)
  ; 874,564 -> 853,201
  (road city-loc-6 city-loc-4)
  (= (road-length city-loc-6 city-loc-4) 37)
  ; 853,201 -> 874,564
  (road city-loc-4 city-loc-6)
  (= (road-length city-loc-4 city-loc-6) 37)
  ; 772,757 -> 935,793
  (road city-loc-7 city-loc-2)
  (= (road-length city-loc-7 city-loc-2) 17)
  ; 935,793 -> 772,757
  (road city-loc-2 city-loc-7)
  (= (road-length city-loc-2 city-loc-7) 17)
  ; 772,757 -> 874,564
  (road city-loc-7 city-loc-6)
  (= (road-length city-loc-7 city-loc-6) 22)
  ; 874,564 -> 772,757
  (road city-loc-6 city-loc-7)
  (= (road-length city-loc-6 city-loc-7) 22)
  ; 375,623 -> 38,500
  (road city-loc-8 city-loc-3)
  (= (road-length city-loc-8 city-loc-3) 36)
  ; 38,500 -> 375,623
  (road city-loc-3 city-loc-8)
  (= (road-length city-loc-3 city-loc-8) 36)
  ; 375,623 -> 471,510
  (road city-loc-8 city-loc-5)
  (= (road-length city-loc-8 city-loc-5) 15)
  ; 471,510 -> 375,623
  (road city-loc-5 city-loc-8)
  (= (road-length city-loc-5 city-loc-8) 15)
  ; 153,557 -> 38,500
  (road city-loc-9 city-loc-3)
  (= (road-length city-loc-9 city-loc-3) 13)
  ; 38,500 -> 153,557
  (road city-loc-3 city-loc-9)
  (= (road-length city-loc-3 city-loc-9) 13)
  ; 153,557 -> 471,510
  (road city-loc-9 city-loc-5)
  (= (road-length city-loc-9 city-loc-5) 33)
  ; 471,510 -> 153,557
  (road city-loc-5 city-loc-9)
  (= (road-length city-loc-5 city-loc-9) 33)
  ; 153,557 -> 375,623
  (road city-loc-9 city-loc-8)
  (= (road-length city-loc-9 city-loc-8) 24)
  ; 375,623 -> 153,557
  (road city-loc-8 city-loc-9)
  (= (road-length city-loc-8 city-loc-9) 24)
  ; 408,912 -> 375,623
  (road city-loc-10 city-loc-8)
  (= (road-length city-loc-10 city-loc-8) 30)
  ; 375,623 -> 408,912
  (road city-loc-8 city-loc-10)
  (= (road-length city-loc-8 city-loc-10) 30)
  (at package-1 city-loc-6)
  (at package-2 city-loc-10)
  (at package-3 city-loc-4)
  (at truck-1 city-loc-8)
  (capacity truck-1 capacity-2)
  (at truck-2 city-loc-9)
  (capacity truck-2 capacity-2)
 )
 (:goal (and
  (at package-1 city-loc-1)
  (at package-2 city-loc-3)
  (at package-3 city-loc-1)
 ))
 (:metric minimize (total-cost))
)
