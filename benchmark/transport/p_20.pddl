; Transport city-sequential-10nodes-1000size-3degree-100mindistance-2trucks-3packages-68seed

(define (problem transport-city-sequential-10nodes-1000size-3degree-100mindistance-2trucks-3packages-68seed)
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
  ; 963,706 -> 759,477
  (road city-loc-2 city-loc-1)
  (= (road-length city-loc-2 city-loc-1) 31)
  ; 759,477 -> 963,706
  (road city-loc-1 city-loc-2)
  (= (road-length city-loc-1 city-loc-2) 31)
  ; 765,845 -> 759,477
  (road city-loc-3 city-loc-1)
  (= (road-length city-loc-3 city-loc-1) 37)
  ; 759,477 -> 765,845
  (road city-loc-1 city-loc-3)
  (= (road-length city-loc-1 city-loc-3) 37)
  ; 765,845 -> 963,706
  (road city-loc-3 city-loc-2)
  (= (road-length city-loc-3 city-loc-2) 25)
  ; 963,706 -> 765,845
  (road city-loc-2 city-loc-3)
  (= (road-length city-loc-2 city-loc-3) 25)
  ; 929,512 -> 759,477
  (road city-loc-4 city-loc-1)
  (= (road-length city-loc-4 city-loc-1) 18)
  ; 759,477 -> 929,512
  (road city-loc-1 city-loc-4)
  (= (road-length city-loc-1 city-loc-4) 18)
  ; 929,512 -> 963,706
  (road city-loc-4 city-loc-2)
  (= (road-length city-loc-4 city-loc-2) 20)
  ; 963,706 -> 929,512
  (road city-loc-2 city-loc-4)
  (= (road-length city-loc-2 city-loc-4) 20)
  ; 929,512 -> 765,845
  (road city-loc-4 city-loc-3)
  (= (road-length city-loc-4 city-loc-3) 38)
  ; 765,845 -> 929,512
  (road city-loc-3 city-loc-4)
  (= (road-length city-loc-3 city-loc-4) 38)
  ; 593,249 -> 759,477
  (road city-loc-6 city-loc-1)
  (= (road-length city-loc-6 city-loc-1) 29)
  ; 759,477 -> 593,249
  (road city-loc-1 city-loc-6)
  (= (road-length city-loc-1 city-loc-6) 29)
  ; 442,480 -> 759,477
  (road city-loc-7 city-loc-1)
  (= (road-length city-loc-7 city-loc-1) 32)
  ; 759,477 -> 442,480
  (road city-loc-1 city-loc-7)
  (= (road-length city-loc-1 city-loc-7) 32)
  ; 442,480 -> 113,621
  (road city-loc-7 city-loc-5)
  (= (road-length city-loc-7 city-loc-5) 36)
  ; 113,621 -> 442,480
  (road city-loc-5 city-loc-7)
  (= (road-length city-loc-5 city-loc-7) 36)
  ; 442,480 -> 593,249
  (road city-loc-7 city-loc-6)
  (= (road-length city-loc-7 city-loc-6) 28)
  ; 593,249 -> 442,480
  (road city-loc-6 city-loc-7)
  (= (road-length city-loc-6 city-loc-7) 28)
  ; 271,737 -> 113,621
  (road city-loc-8 city-loc-5)
  (= (road-length city-loc-8 city-loc-5) 20)
  ; 113,621 -> 271,737
  (road city-loc-5 city-loc-8)
  (= (road-length city-loc-5 city-loc-8) 20)
  ; 271,737 -> 442,480
  (road city-loc-8 city-loc-7)
  (= (road-length city-loc-8 city-loc-7) 31)
  ; 442,480 -> 271,737
  (road city-loc-7 city-loc-8)
  (= (road-length city-loc-7 city-loc-8) 31)
  ; 337,448 -> 113,621
  (road city-loc-9 city-loc-5)
  (= (road-length city-loc-9 city-loc-5) 29)
  ; 113,621 -> 337,448
  (road city-loc-5 city-loc-9)
  (= (road-length city-loc-5 city-loc-9) 29)
  ; 337,448 -> 593,249
  (road city-loc-9 city-loc-6)
  (= (road-length city-loc-9 city-loc-6) 33)
  ; 593,249 -> 337,448
  (road city-loc-6 city-loc-9)
  (= (road-length city-loc-6 city-loc-9) 33)
  ; 337,448 -> 442,480
  (road city-loc-9 city-loc-7)
  (= (road-length city-loc-9 city-loc-7) 11)
  ; 442,480 -> 337,448
  (road city-loc-7 city-loc-9)
  (= (road-length city-loc-7 city-loc-9) 11)
  ; 337,448 -> 271,737
  (road city-loc-9 city-loc-8)
  (= (road-length city-loc-9 city-loc-8) 30)
  ; 271,737 -> 337,448
  (road city-loc-8 city-loc-9)
  (= (road-length city-loc-8 city-loc-9) 30)
  ; 369,170 -> 593,249
  (road city-loc-10 city-loc-6)
  (= (road-length city-loc-10 city-loc-6) 24)
  ; 593,249 -> 369,170
  (road city-loc-6 city-loc-10)
  (= (road-length city-loc-6 city-loc-10) 24)
  ; 369,170 -> 442,480
  (road city-loc-10 city-loc-7)
  (= (road-length city-loc-10 city-loc-7) 32)
  ; 442,480 -> 369,170
  (road city-loc-7 city-loc-10)
  (= (road-length city-loc-7 city-loc-10) 32)
  ; 369,170 -> 337,448
  (road city-loc-10 city-loc-9)
  (= (road-length city-loc-10 city-loc-9) 28)
  ; 337,448 -> 369,170
  (road city-loc-9 city-loc-10)
  (= (road-length city-loc-9 city-loc-10) 28)
  (at package-1 city-loc-9)
  (at package-2 city-loc-2)
  (at package-3 city-loc-1)
  (at truck-1 city-loc-8)
  (capacity truck-1 capacity-4)
  (at truck-2 city-loc-6)
  (capacity truck-2 capacity-2)
 )
 (:goal (and
  (at package-1 city-loc-1)
  (at package-2 city-loc-10)
  (at package-3 city-loc-3)
 ))
 (:metric minimize (total-cost))
)
