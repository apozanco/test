; Transport city-sequential-10nodes-1000size-3degree-100mindistance-2trucks-3packages-16seed

(define (problem transport-city-sequential-10nodes-1000size-3degree-100mindistance-2trucks-3packages-16seed)
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
  ; 492,291 -> 370,480
  (road city-loc-2 city-loc-1)
  (= (road-length city-loc-2 city-loc-1) 23)
  ; 370,480 -> 492,291
  (road city-loc-1 city-loc-2)
  (= (road-length city-loc-1 city-loc-2) 23)
  ; 457,5 -> 492,291
  (road city-loc-3 city-loc-2)
  (= (road-length city-loc-3 city-loc-2) 29)
  ; 492,291 -> 457,5
  (road city-loc-2 city-loc-3)
  (= (road-length city-loc-2 city-loc-3) 29)
  ; 673,728 -> 419,874
  (road city-loc-5 city-loc-4)
  (= (road-length city-loc-5 city-loc-4) 30)
  ; 419,874 -> 673,728
  (road city-loc-4 city-loc-5)
  (= (road-length city-loc-4 city-loc-5) 30)
  ; 265,243 -> 370,480
  (road city-loc-6 city-loc-1)
  (= (road-length city-loc-6 city-loc-1) 26)
  ; 370,480 -> 265,243
  (road city-loc-1 city-loc-6)
  (= (road-length city-loc-1 city-loc-6) 26)
  ; 265,243 -> 492,291
  (road city-loc-6 city-loc-2)
  (= (road-length city-loc-6 city-loc-2) 24)
  ; 492,291 -> 265,243
  (road city-loc-2 city-loc-6)
  (= (road-length city-loc-2 city-loc-6) 24)
  ; 265,243 -> 457,5
  (road city-loc-6 city-loc-3)
  (= (road-length city-loc-6 city-loc-3) 31)
  ; 457,5 -> 265,243
  (road city-loc-3 city-loc-6)
  (= (road-length city-loc-3 city-loc-6) 31)
  ; 650,227 -> 492,291
  (road city-loc-7 city-loc-2)
  (= (road-length city-loc-7 city-loc-2) 17)
  ; 492,291 -> 650,227
  (road city-loc-2 city-loc-7)
  (= (road-length city-loc-2 city-loc-7) 17)
  ; 650,227 -> 457,5
  (road city-loc-7 city-loc-3)
  (= (road-length city-loc-7 city-loc-3) 30)
  ; 457,5 -> 650,227
  (road city-loc-3 city-loc-7)
  (= (road-length city-loc-3 city-loc-7) 30)
  ; 10,303 -> 265,243
  (road city-loc-8 city-loc-6)
  (= (road-length city-loc-8 city-loc-6) 27)
  ; 265,243 -> 10,303
  (road city-loc-6 city-loc-8)
  (= (road-length city-loc-6 city-loc-8) 27)
  ; 309,834 -> 370,480
  (road city-loc-9 city-loc-1)
  (= (road-length city-loc-9 city-loc-1) 36)
  ; 370,480 -> 309,834
  (road city-loc-1 city-loc-9)
  (= (road-length city-loc-1 city-loc-9) 36)
  ; 309,834 -> 419,874
  (road city-loc-9 city-loc-4)
  (= (road-length city-loc-9 city-loc-4) 12)
  ; 419,874 -> 309,834
  (road city-loc-4 city-loc-9)
  (= (road-length city-loc-4 city-loc-9) 12)
  ; 343,682 -> 370,480
  (road city-loc-10 city-loc-1)
  (= (road-length city-loc-10 city-loc-1) 21)
  ; 370,480 -> 343,682
  (road city-loc-1 city-loc-10)
  (= (road-length city-loc-1 city-loc-10) 21)
  ; 343,682 -> 419,874
  (road city-loc-10 city-loc-4)
  (= (road-length city-loc-10 city-loc-4) 21)
  ; 419,874 -> 343,682
  (road city-loc-4 city-loc-10)
  (= (road-length city-loc-4 city-loc-10) 21)
  ; 343,682 -> 673,728
  (road city-loc-10 city-loc-5)
  (= (road-length city-loc-10 city-loc-5) 34)
  ; 673,728 -> 343,682
  (road city-loc-5 city-loc-10)
  (= (road-length city-loc-5 city-loc-10) 34)
  ; 343,682 -> 309,834
  (road city-loc-10 city-loc-9)
  (= (road-length city-loc-10 city-loc-9) 16)
  ; 309,834 -> 343,682
  (road city-loc-9 city-loc-10)
  (= (road-length city-loc-9 city-loc-10) 16)
  (at package-1 city-loc-3)
  (at package-2 city-loc-10)
  (at package-3 city-loc-5)
  (at truck-1 city-loc-4)
  (capacity truck-1 capacity-2)
  (at truck-2 city-loc-5)
  (capacity truck-2 capacity-4)
 )
 (:goal (and
  (at package-1 city-loc-1)
  (at package-2 city-loc-3)
  (at package-3 city-loc-10)
 ))
 (:metric minimize (total-cost))
)
