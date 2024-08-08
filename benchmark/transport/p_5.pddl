; Transport city-sequential-10nodes-1000size-3degree-100mindistance-2trucks-3packages-39seed

(define (problem transport-city-sequential-10nodes-1000size-3degree-100mindistance-2trucks-3packages-39seed)
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
  ; 394,26 -> 214,265
  (road city-loc-2 city-loc-1)
  (= (road-length city-loc-2 city-loc-1) 30)
  ; 214,265 -> 394,26
  (road city-loc-1 city-loc-2)
  (= (road-length city-loc-1 city-loc-2) 30)
  ; 576,5 -> 394,26
  (road city-loc-4 city-loc-2)
  (= (road-length city-loc-4 city-loc-2) 19)
  ; 394,26 -> 576,5
  (road city-loc-2 city-loc-4)
  (= (road-length city-loc-2 city-loc-4) 19)
  ; 661,818 -> 405,746
  (road city-loc-5 city-loc-3)
  (= (road-length city-loc-5 city-loc-3) 27)
  ; 405,746 -> 661,818
  (road city-loc-3 city-loc-5)
  (= (road-length city-loc-3 city-loc-5) 27)
  ; 260,692 -> 405,746
  (road city-loc-6 city-loc-3)
  (= (road-length city-loc-6 city-loc-3) 16)
  ; 405,746 -> 260,692
  (road city-loc-3 city-loc-6)
  (= (road-length city-loc-3 city-loc-6) 16)
  ; 182,981 -> 405,746
  (road city-loc-7 city-loc-3)
  (= (road-length city-loc-7 city-loc-3) 33)
  ; 405,746 -> 182,981
  (road city-loc-3 city-loc-7)
  (= (road-length city-loc-3 city-loc-7) 33)
  ; 182,981 -> 260,692
  (road city-loc-7 city-loc-6)
  (= (road-length city-loc-7 city-loc-6) 30)
  ; 260,692 -> 182,981
  (road city-loc-6 city-loc-7)
  (= (road-length city-loc-6 city-loc-7) 30)
  ; 834,27 -> 576,5
  (road city-loc-8 city-loc-4)
  (= (road-length city-loc-8 city-loc-4) 26)
  ; 576,5 -> 834,27
  (road city-loc-4 city-loc-8)
  (= (road-length city-loc-4 city-loc-8) 26)
  ; 903,867 -> 661,818
  (road city-loc-9 city-loc-5)
  (= (road-length city-loc-9 city-loc-5) 25)
  ; 661,818 -> 903,867
  (road city-loc-5 city-loc-9)
  (= (road-length city-loc-5 city-loc-9) 25)
  ; 75,375 -> 214,265
  (road city-loc-10 city-loc-1)
  (= (road-length city-loc-10 city-loc-1) 18)
  ; 214,265 -> 75,375
  (road city-loc-1 city-loc-10)
  (= (road-length city-loc-1 city-loc-10) 18)
  ; 75,375 -> 260,692
  (road city-loc-10 city-loc-6)
  (= (road-length city-loc-10 city-loc-6) 37)
  ; 260,692 -> 75,375
  (road city-loc-6 city-loc-10)
  (= (road-length city-loc-6 city-loc-10) 37)
  (at package-1 city-loc-1)
  (at package-2 city-loc-2)
  (at package-3 city-loc-7)
  (at truck-1 city-loc-7)
  (capacity truck-1 capacity-3)
  (at truck-2 city-loc-7)
  (capacity truck-2 capacity-2)
 )
 (:goal (and
  (at package-1 city-loc-9)
  (at package-2 city-loc-10)
  (at package-3 city-loc-5)
 ))
 (:metric minimize (total-cost))
)
