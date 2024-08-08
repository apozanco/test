; Transport city-sequential-10nodes-1000size-3degree-100mindistance-2trucks-3packages-4seed

(define (problem transport-city-sequential-10nodes-1000size-3degree-100mindistance-2trucks-3packages-4seed)
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
  ; 287,531 -> 473,641
  (road city-loc-3 city-loc-2)
  (= (road-length city-loc-3 city-loc-2) 22)
  ; 473,641 -> 287,531
  (road city-loc-2 city-loc-3)
  (= (road-length city-loc-2 city-loc-3) 22)
  ; 351,148 -> 83,47
  (road city-loc-4 city-loc-1)
  (= (road-length city-loc-4 city-loc-1) 29)
  ; 83,47 -> 351,148
  (road city-loc-1 city-loc-4)
  (= (road-length city-loc-1 city-loc-4) 29)
  ; 689,200 -> 351,148
  (road city-loc-5 city-loc-4)
  (= (road-length city-loc-5 city-loc-4) 35)
  ; 351,148 -> 689,200
  (road city-loc-4 city-loc-5)
  (= (road-length city-loc-4 city-loc-5) 35)
  ; 68,422 -> 83,47
  (road city-loc-6 city-loc-1)
  (= (road-length city-loc-6 city-loc-1) 38)
  ; 83,47 -> 68,422
  (road city-loc-1 city-loc-6)
  (= (road-length city-loc-1 city-loc-6) 38)
  ; 68,422 -> 287,531
  (road city-loc-6 city-loc-3)
  (= (road-length city-loc-6 city-loc-3) 25)
  ; 287,531 -> 68,422
  (road city-loc-3 city-loc-6)
  (= (road-length city-loc-3 city-loc-6) 25)
  ; 935,207 -> 689,200
  (road city-loc-7 city-loc-5)
  (= (road-length city-loc-7 city-loc-5) 25)
  ; 689,200 -> 935,207
  (road city-loc-5 city-loc-7)
  (= (road-length city-loc-5 city-loc-7) 25)
  ; 650,647 -> 473,641
  (road city-loc-8 city-loc-2)
  (= (road-length city-loc-8 city-loc-2) 18)
  ; 473,641 -> 650,647
  (road city-loc-2 city-loc-8)
  (= (road-length city-loc-2 city-loc-8) 18)
  ; 451,282 -> 473,641
  (road city-loc-9 city-loc-2)
  (= (road-length city-loc-9 city-loc-2) 36)
  ; 473,641 -> 451,282
  (road city-loc-2 city-loc-9)
  (= (road-length city-loc-2 city-loc-9) 36)
  ; 451,282 -> 287,531
  (road city-loc-9 city-loc-3)
  (= (road-length city-loc-9 city-loc-3) 30)
  ; 287,531 -> 451,282
  (road city-loc-3 city-loc-9)
  (= (road-length city-loc-3 city-loc-9) 30)
  ; 451,282 -> 351,148
  (road city-loc-9 city-loc-4)
  (= (road-length city-loc-9 city-loc-4) 17)
  ; 351,148 -> 451,282
  (road city-loc-4 city-loc-9)
  (= (road-length city-loc-4 city-loc-9) 17)
  ; 451,282 -> 689,200
  (road city-loc-9 city-loc-5)
  (= (road-length city-loc-9 city-loc-5) 26)
  ; 689,200 -> 451,282
  (road city-loc-5 city-loc-9)
  (= (road-length city-loc-5 city-loc-9) 26)
  ; 188,364 -> 83,47
  (road city-loc-10 city-loc-1)
  (= (road-length city-loc-10 city-loc-1) 34)
  ; 83,47 -> 188,364
  (road city-loc-1 city-loc-10)
  (= (road-length city-loc-1 city-loc-10) 34)
  ; 188,364 -> 287,531
  (road city-loc-10 city-loc-3)
  (= (road-length city-loc-10 city-loc-3) 20)
  ; 287,531 -> 188,364
  (road city-loc-3 city-loc-10)
  (= (road-length city-loc-3 city-loc-10) 20)
  ; 188,364 -> 351,148
  (road city-loc-10 city-loc-4)
  (= (road-length city-loc-10 city-loc-4) 28)
  ; 351,148 -> 188,364
  (road city-loc-4 city-loc-10)
  (= (road-length city-loc-4 city-loc-10) 28)
  ; 188,364 -> 68,422
  (road city-loc-10 city-loc-6)
  (= (road-length city-loc-10 city-loc-6) 14)
  ; 68,422 -> 188,364
  (road city-loc-6 city-loc-10)
  (= (road-length city-loc-6 city-loc-10) 14)
  ; 188,364 -> 451,282
  (road city-loc-10 city-loc-9)
  (= (road-length city-loc-10 city-loc-9) 28)
  ; 451,282 -> 188,364
  (road city-loc-9 city-loc-10)
  (= (road-length city-loc-9 city-loc-10) 28)
  (at package-1 city-loc-7)
  (at package-2 city-loc-10)
  (at package-3 city-loc-6)
  (at truck-1 city-loc-9)
  (capacity truck-1 capacity-4)
  (at truck-2 city-loc-6)
  (capacity truck-2 capacity-2)
 )
 (:goal (and
  (at package-1 city-loc-2)
  (at package-2 city-loc-1)
  (at package-3 city-loc-4)
 ))
 (:metric minimize (total-cost))
)
