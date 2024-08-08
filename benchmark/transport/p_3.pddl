; Transport city-sequential-10nodes-1000size-3degree-100mindistance-2trucks-3packages-98seed

(define (problem transport-city-sequential-10nodes-1000size-3degree-100mindistance-2trucks-3packages-98seed)
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
  ; 412,182 -> 553,175
  (road city-loc-2 city-loc-1)
  (= (road-length city-loc-2 city-loc-1) 15)
  ; 553,175 -> 412,182
  (road city-loc-1 city-loc-2)
  (= (road-length city-loc-1 city-loc-2) 15)
  ; 583,512 -> 553,175
  (road city-loc-3 city-loc-1)
  (= (road-length city-loc-3 city-loc-1) 34)
  ; 553,175 -> 583,512
  (road city-loc-1 city-loc-3)
  (= (road-length city-loc-1 city-loc-3) 34)
  ; 583,512 -> 412,182
  (road city-loc-3 city-loc-2)
  (= (road-length city-loc-3 city-loc-2) 38)
  ; 412,182 -> 583,512
  (road city-loc-2 city-loc-3)
  (= (road-length city-loc-2 city-loc-3) 38)
  ; 832,192 -> 553,175
  (road city-loc-4 city-loc-1)
  (= (road-length city-loc-4 city-loc-1) 28)
  ; 553,175 -> 832,192
  (road city-loc-1 city-loc-4)
  (= (road-length city-loc-1 city-loc-4) 28)
  ; 274,633 -> 583,512
  (road city-loc-5 city-loc-3)
  (= (road-length city-loc-5 city-loc-3) 34)
  ; 583,512 -> 274,633
  (road city-loc-3 city-loc-5)
  (= (road-length city-loc-3 city-loc-5) 34)
  ; 128,218 -> 412,182
  (road city-loc-7 city-loc-2)
  (= (road-length city-loc-7 city-loc-2) 29)
  ; 412,182 -> 128,218
  (road city-loc-2 city-loc-7)
  (= (road-length city-loc-2 city-loc-7) 29)
  ; 707,809 -> 583,512
  (road city-loc-8 city-loc-3)
  (= (road-length city-loc-8 city-loc-3) 33)
  ; 583,512 -> 707,809
  (road city-loc-3 city-loc-8)
  (= (road-length city-loc-3 city-loc-8) 33)
  ; 707,809 -> 525,966
  (road city-loc-8 city-loc-6)
  (= (road-length city-loc-8 city-loc-6) 24)
  ; 525,966 -> 707,809
  (road city-loc-6 city-loc-8)
  (= (road-length city-loc-6 city-loc-8) 24)
  ; 420,552 -> 412,182
  (road city-loc-9 city-loc-2)
  (= (road-length city-loc-9 city-loc-2) 37)
  ; 412,182 -> 420,552
  (road city-loc-2 city-loc-9)
  (= (road-length city-loc-2 city-loc-9) 37)
  ; 420,552 -> 583,512
  (road city-loc-9 city-loc-3)
  (= (road-length city-loc-9 city-loc-3) 17)
  ; 583,512 -> 420,552
  (road city-loc-3 city-loc-9)
  (= (road-length city-loc-3 city-loc-9) 17)
  ; 420,552 -> 274,633
  (road city-loc-9 city-loc-5)
  (= (road-length city-loc-9 city-loc-5) 17)
  ; 274,633 -> 420,552
  (road city-loc-5 city-loc-9)
  (= (road-length city-loc-5 city-loc-9) 17)
  ; 105,942 -> 274,633
  (road city-loc-10 city-loc-5)
  (= (road-length city-loc-10 city-loc-5) 36)
  ; 274,633 -> 105,942
  (road city-loc-5 city-loc-10)
  (= (road-length city-loc-5 city-loc-10) 36)
  (at package-1 city-loc-9)
  (at package-2 city-loc-3)
  (at package-3 city-loc-7)
  (at truck-1 city-loc-6)
  (capacity truck-1 capacity-2)
  (at truck-2 city-loc-3)
  (capacity truck-2 capacity-3)
 )
 (:goal (and
  (at package-1 city-loc-5)
  (at package-2 city-loc-9)
  (at package-3 city-loc-2)
 ))
 (:metric minimize (total-cost))
)
