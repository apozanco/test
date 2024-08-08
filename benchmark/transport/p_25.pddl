; Transport city-sequential-10nodes-1000size-3degree-100mindistance-2trucks-3packages-14seed

(define (problem transport-city-sequential-10nodes-1000size-3degree-100mindistance-2trucks-3packages-14seed)
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
  ; 667,71 -> 679,281
  (road city-loc-3 city-loc-1)
  (= (road-length city-loc-3 city-loc-1) 21)
  ; 679,281 -> 667,71
  (road city-loc-1 city-loc-3)
  (= (road-length city-loc-1 city-loc-3) 21)
  ; 345,28 -> 168,10
  (road city-loc-5 city-loc-2)
  (= (road-length city-loc-5 city-loc-2) 18)
  ; 168,10 -> 345,28
  (road city-loc-2 city-loc-5)
  (= (road-length city-loc-2 city-loc-5) 18)
  ; 345,28 -> 667,71
  (road city-loc-5 city-loc-3)
  (= (road-length city-loc-5 city-loc-3) 33)
  ; 667,71 -> 345,28
  (road city-loc-3 city-loc-5)
  (= (road-length city-loc-3 city-loc-5) 33)
  ; 85,280 -> 168,10
  (road city-loc-6 city-loc-2)
  (= (road-length city-loc-6 city-loc-2) 29)
  ; 168,10 -> 85,280
  (road city-loc-2 city-loc-6)
  (= (road-length city-loc-2 city-loc-6) 29)
  ; 85,280 -> 125,609
  (road city-loc-6 city-loc-4)
  (= (road-length city-loc-6 city-loc-4) 34)
  ; 125,609 -> 85,280
  (road city-loc-4 city-loc-6)
  (= (road-length city-loc-4 city-loc-6) 34)
  ; 85,280 -> 345,28
  (road city-loc-6 city-loc-5)
  (= (road-length city-loc-6 city-loc-5) 37)
  ; 345,28 -> 85,280
  (road city-loc-5 city-loc-6)
  (= (road-length city-loc-5 city-loc-6) 37)
  ; 209,874 -> 125,609
  (road city-loc-7 city-loc-4)
  (= (road-length city-loc-7 city-loc-4) 28)
  ; 125,609 -> 209,874
  (road city-loc-4 city-loc-7)
  (= (road-length city-loc-4 city-loc-7) 28)
  ; 391,413 -> 679,281
  (road city-loc-8 city-loc-1)
  (= (road-length city-loc-8 city-loc-1) 32)
  ; 679,281 -> 391,413
  (road city-loc-1 city-loc-8)
  (= (road-length city-loc-1 city-loc-8) 32)
  ; 391,413 -> 125,609
  (road city-loc-8 city-loc-4)
  (= (road-length city-loc-8 city-loc-4) 33)
  ; 125,609 -> 391,413
  (road city-loc-4 city-loc-8)
  (= (road-length city-loc-4 city-loc-8) 33)
  ; 391,413 -> 85,280
  (road city-loc-8 city-loc-6)
  (= (road-length city-loc-8 city-loc-6) 34)
  ; 85,280 -> 391,413
  (road city-loc-6 city-loc-8)
  (= (road-length city-loc-6 city-loc-8) 34)
  ; 449,917 -> 209,874
  (road city-loc-10 city-loc-7)
  (= (road-length city-loc-10 city-loc-7) 25)
  ; 209,874 -> 449,917
  (road city-loc-7 city-loc-10)
  (= (road-length city-loc-7 city-loc-10) 25)
  ; 449,917 -> 597,956
  (road city-loc-10 city-loc-9)
  (= (road-length city-loc-10 city-loc-9) 16)
  ; 597,956 -> 449,917
  (road city-loc-9 city-loc-10)
  (= (road-length city-loc-9 city-loc-10) 16)
  (at package-1 city-loc-10)
  (at package-2 city-loc-2)
  (at package-3 city-loc-2)
  (at truck-1 city-loc-10)
  (capacity truck-1 capacity-4)
  (at truck-2 city-loc-6)
  (capacity truck-2 capacity-4)
 )
 (:goal (and
  (at package-1 city-loc-3)
  (at package-2 city-loc-8)
  (at package-3 city-loc-9)
 ))
 (:metric minimize (total-cost))
)
