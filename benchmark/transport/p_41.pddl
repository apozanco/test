; Transport city-sequential-10nodes-1000size-3degree-100mindistance-2trucks-3packages-24seed

(define (problem transport-city-sequential-10nodes-1000size-3degree-100mindistance-2trucks-3packages-24seed)
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
  ; 503,756 -> 451,478
  (road city-loc-6 city-loc-1)
  (= (road-length city-loc-6 city-loc-1) 29)
  ; 451,478 -> 503,756
  (road city-loc-1 city-loc-6)
  (= (road-length city-loc-1 city-loc-6) 29)
  ; 865,454 -> 886,738
  (road city-loc-7 city-loc-2)
  (= (road-length city-loc-7 city-loc-2) 29)
  ; 886,738 -> 865,454
  (road city-loc-2 city-loc-7)
  (= (road-length city-loc-2 city-loc-7) 29)
  ; 698,311 -> 451,478
  (road city-loc-8 city-loc-1)
  (= (road-length city-loc-8 city-loc-1) 30)
  ; 451,478 -> 698,311
  (road city-loc-1 city-loc-8)
  (= (road-length city-loc-1 city-loc-8) 30)
  ; 698,311 -> 650,118
  (road city-loc-8 city-loc-3)
  (= (road-length city-loc-8 city-loc-3) 20)
  ; 650,118 -> 698,311
  (road city-loc-3 city-loc-8)
  (= (road-length city-loc-3 city-loc-8) 20)
  ; 698,311 -> 865,454
  (road city-loc-8 city-loc-7)
  (= (road-length city-loc-8 city-loc-7) 22)
  ; 865,454 -> 698,311
  (road city-loc-7 city-loc-8)
  (= (road-length city-loc-7 city-loc-8) 22)
  ; 511,975 -> 172,981
  (road city-loc-9 city-loc-5)
  (= (road-length city-loc-9 city-loc-5) 34)
  ; 172,981 -> 511,975
  (road city-loc-5 city-loc-9)
  (= (road-length city-loc-5 city-loc-9) 34)
  ; 511,975 -> 503,756
  (road city-loc-9 city-loc-6)
  (= (road-length city-loc-9 city-loc-6) 22)
  ; 503,756 -> 511,975
  (road city-loc-6 city-loc-9)
  (= (road-length city-loc-6 city-loc-9) 22)
  ; 87,703 -> 28,529
  (road city-loc-10 city-loc-4)
  (= (road-length city-loc-10 city-loc-4) 19)
  ; 28,529 -> 87,703
  (road city-loc-4 city-loc-10)
  (= (road-length city-loc-4 city-loc-10) 19)
  ; 87,703 -> 172,981
  (road city-loc-10 city-loc-5)
  (= (road-length city-loc-10 city-loc-5) 30)
  ; 172,981 -> 87,703
  (road city-loc-5 city-loc-10)
  (= (road-length city-loc-5 city-loc-10) 30)
  (at package-1 city-loc-5)
  (at package-2 city-loc-10)
  (at package-3 city-loc-3)
  (at truck-1 city-loc-6)
  (capacity truck-1 capacity-4)
  (at truck-2 city-loc-2)
  (capacity truck-2 capacity-3)
 )
 (:goal (and
  (at package-1 city-loc-9)
  (at package-2 city-loc-6)
  (at package-3 city-loc-1)
 ))
 (:metric minimize (total-cost))
)
