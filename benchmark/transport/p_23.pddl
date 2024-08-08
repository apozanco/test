; Transport city-sequential-10nodes-1000size-3degree-100mindistance-2trucks-3packages-80seed

(define (problem transport-city-sequential-10nodes-1000size-3degree-100mindistance-2trucks-3packages-80seed)
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
  ; 947,473 -> 663,560
  (road city-loc-2 city-loc-1)
  (= (road-length city-loc-2 city-loc-1) 30)
  ; 663,560 -> 947,473
  (road city-loc-1 city-loc-2)
  (= (road-length city-loc-1 city-loc-2) 30)
  ; 565,827 -> 663,560
  (road city-loc-4 city-loc-1)
  (= (road-length city-loc-4 city-loc-1) 29)
  ; 663,560 -> 565,827
  (road city-loc-1 city-loc-4)
  (= (road-length city-loc-1 city-loc-4) 29)
  ; 350,785 -> 195,597
  (road city-loc-5 city-loc-3)
  (= (road-length city-loc-5 city-loc-3) 25)
  ; 195,597 -> 350,785
  (road city-loc-3 city-loc-5)
  (= (road-length city-loc-3 city-loc-5) 25)
  ; 350,785 -> 565,827
  (road city-loc-5 city-loc-4)
  (= (road-length city-loc-5 city-loc-4) 22)
  ; 565,827 -> 350,785
  (road city-loc-4 city-loc-5)
  (= (road-length city-loc-4 city-loc-5) 22)
  ; 570,285 -> 663,560
  (road city-loc-6 city-loc-1)
  (= (road-length city-loc-6 city-loc-1) 29)
  ; 663,560 -> 570,285
  (road city-loc-1 city-loc-6)
  (= (road-length city-loc-1 city-loc-6) 29)
  ; 24,299 -> 195,597
  (road city-loc-7 city-loc-3)
  (= (road-length city-loc-7 city-loc-3) 35)
  ; 195,597 -> 24,299
  (road city-loc-3 city-loc-7)
  (= (road-length city-loc-3 city-loc-7) 35)
  ; 374,395 -> 663,560
  (road city-loc-8 city-loc-1)
  (= (road-length city-loc-8 city-loc-1) 34)
  ; 663,560 -> 374,395
  (road city-loc-1 city-loc-8)
  (= (road-length city-loc-1 city-loc-8) 34)
  ; 374,395 -> 195,597
  (road city-loc-8 city-loc-3)
  (= (road-length city-loc-8 city-loc-3) 27)
  ; 195,597 -> 374,395
  (road city-loc-3 city-loc-8)
  (= (road-length city-loc-3 city-loc-8) 27)
  ; 374,395 -> 570,285
  (road city-loc-8 city-loc-6)
  (= (road-length city-loc-8 city-loc-6) 23)
  ; 570,285 -> 374,395
  (road city-loc-6 city-loc-8)
  (= (road-length city-loc-6 city-loc-8) 23)
  ; 374,395 -> 24,299
  (road city-loc-8 city-loc-7)
  (= (road-length city-loc-8 city-loc-7) 37)
  ; 24,299 -> 374,395
  (road city-loc-7 city-loc-8)
  (= (road-length city-loc-7 city-loc-8) 37)
  ; 420,9 -> 570,285
  (road city-loc-9 city-loc-6)
  (= (road-length city-loc-9 city-loc-6) 32)
  ; 570,285 -> 420,9
  (road city-loc-6 city-loc-9)
  (= (road-length city-loc-6 city-loc-9) 32)
  ; 250,994 -> 565,827
  (road city-loc-10 city-loc-4)
  (= (road-length city-loc-10 city-loc-4) 36)
  ; 565,827 -> 250,994
  (road city-loc-4 city-loc-10)
  (= (road-length city-loc-4 city-loc-10) 36)
  ; 250,994 -> 350,785
  (road city-loc-10 city-loc-5)
  (= (road-length city-loc-10 city-loc-5) 24)
  ; 350,785 -> 250,994
  (road city-loc-5 city-loc-10)
  (= (road-length city-loc-5 city-loc-10) 24)
  (at package-1 city-loc-2)
  (at package-2 city-loc-6)
  (at package-3 city-loc-4)
  (at truck-1 city-loc-5)
  (capacity truck-1 capacity-4)
  (at truck-2 city-loc-6)
  (capacity truck-2 capacity-3)
 )
 (:goal (and
  (at package-1 city-loc-10)
  (at package-2 city-loc-5)
  (at package-3 city-loc-6)
 ))
 (:metric minimize (total-cost))
)
