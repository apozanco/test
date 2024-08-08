; Transport city-sequential-10nodes-1000size-3degree-100mindistance-2trucks-3packages-8seed

(define (problem transport-city-sequential-10nodes-1000size-3degree-100mindistance-2trucks-3packages-8seed)
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
  ; 365,875 -> 292,570
  (road city-loc-2 city-loc-1)
  (= (road-length city-loc-2 city-loc-1) 32)
  ; 292,570 -> 365,875
  (road city-loc-1 city-loc-2)
  (= (road-length city-loc-1 city-loc-2) 32)
  ; 782,615 -> 899,436
  (road city-loc-5 city-loc-3)
  (= (road-length city-loc-5 city-loc-3) 22)
  ; 899,436 -> 782,615
  (road city-loc-3 city-loc-5)
  (= (road-length city-loc-3 city-loc-5) 22)
  ; 99,544 -> 292,570
  (road city-loc-6 city-loc-1)
  (= (road-length city-loc-6 city-loc-1) 20)
  ; 292,570 -> 99,544
  (road city-loc-1 city-loc-6)
  (= (road-length city-loc-1 city-loc-6) 20)
  ; 706,321 -> 899,436
  (road city-loc-7 city-loc-3)
  (= (road-length city-loc-7 city-loc-3) 23)
  ; 899,436 -> 706,321
  (road city-loc-3 city-loc-7)
  (= (road-length city-loc-3 city-loc-7) 23)
  ; 706,321 -> 782,615
  (road city-loc-7 city-loc-5)
  (= (road-length city-loc-7 city-loc-5) 31)
  ; 782,615 -> 706,321
  (road city-loc-5 city-loc-7)
  (= (road-length city-loc-5 city-loc-7) 31)
  ; 972,659 -> 899,436
  (road city-loc-8 city-loc-3)
  (= (road-length city-loc-8 city-loc-3) 24)
  ; 899,436 -> 972,659
  (road city-loc-3 city-loc-8)
  (= (road-length city-loc-3 city-loc-8) 24)
  ; 972,659 -> 782,615
  (road city-loc-8 city-loc-5)
  (= (road-length city-loc-8 city-loc-5) 20)
  ; 782,615 -> 972,659
  (road city-loc-5 city-loc-8)
  (= (road-length city-loc-5 city-loc-8) 20)
  ; 515,638 -> 292,570
  (road city-loc-9 city-loc-1)
  (= (road-length city-loc-9 city-loc-1) 24)
  ; 292,570 -> 515,638
  (road city-loc-1 city-loc-9)
  (= (road-length city-loc-1 city-loc-9) 24)
  ; 515,638 -> 365,875
  (road city-loc-9 city-loc-2)
  (= (road-length city-loc-9 city-loc-2) 28)
  ; 365,875 -> 515,638
  (road city-loc-2 city-loc-9)
  (= (road-length city-loc-2 city-loc-9) 28)
  ; 515,638 -> 782,615
  (road city-loc-9 city-loc-5)
  (= (road-length city-loc-9 city-loc-5) 27)
  ; 782,615 -> 515,638
  (road city-loc-5 city-loc-9)
  (= (road-length city-loc-5 city-loc-9) 27)
  ; 515,638 -> 706,321
  (road city-loc-9 city-loc-7)
  (= (road-length city-loc-9 city-loc-7) 37)
  ; 706,321 -> 515,638
  (road city-loc-7 city-loc-9)
  (= (road-length city-loc-7 city-loc-9) 37)
  ; 202,316 -> 292,570
  (road city-loc-10 city-loc-1)
  (= (road-length city-loc-10 city-loc-1) 27)
  ; 292,570 -> 202,316
  (road city-loc-1 city-loc-10)
  (= (road-length city-loc-1 city-loc-10) 27)
  ; 202,316 -> 138,162
  (road city-loc-10 city-loc-4)
  (= (road-length city-loc-10 city-loc-4) 17)
  ; 138,162 -> 202,316
  (road city-loc-4 city-loc-10)
  (= (road-length city-loc-4 city-loc-10) 17)
  ; 202,316 -> 99,544
  (road city-loc-10 city-loc-6)
  (= (road-length city-loc-10 city-loc-6) 25)
  ; 99,544 -> 202,316
  (road city-loc-6 city-loc-10)
  (= (road-length city-loc-6 city-loc-10) 25)
  (at package-1 city-loc-3)
  (at package-2 city-loc-6)
  (at package-3 city-loc-9)
  (at truck-1 city-loc-9)
  (capacity truck-1 capacity-3)
  (at truck-2 city-loc-2)
  (capacity truck-2 capacity-4)
 )
 (:goal (and
  (at package-1 city-loc-9)
  (at package-2 city-loc-9)
  (at package-3 city-loc-4)
 ))
 (:metric minimize (total-cost))
)
