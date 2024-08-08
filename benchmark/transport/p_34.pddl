; Transport city-sequential-10nodes-1000size-3degree-100mindistance-2trucks-3packages-86seed

(define (problem transport-city-sequential-10nodes-1000size-3degree-100mindistance-2trucks-3packages-86seed)
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
  ; 437,779 -> 300,491
  (road city-loc-4 city-loc-1)
  (= (road-length city-loc-4 city-loc-1) 32)
  ; 300,491 -> 437,779
  (road city-loc-1 city-loc-4)
  (= (road-length city-loc-1 city-loc-4) 32)
  ; 437,779 -> 141,966
  (road city-loc-4 city-loc-2)
  (= (road-length city-loc-4 city-loc-2) 35)
  ; 141,966 -> 437,779
  (road city-loc-2 city-loc-4)
  (= (road-length city-loc-2 city-loc-4) 35)
  ; 205,208 -> 300,491
  (road city-loc-5 city-loc-1)
  (= (road-length city-loc-5 city-loc-1) 30)
  ; 300,491 -> 205,208
  (road city-loc-1 city-loc-5)
  (= (road-length city-loc-1 city-loc-5) 30)
  ; 730,864 -> 832,505
  (road city-loc-6 city-loc-3)
  (= (road-length city-loc-6 city-loc-3) 38)
  ; 832,505 -> 730,864
  (road city-loc-3 city-loc-6)
  (= (road-length city-loc-3 city-loc-6) 38)
  ; 730,864 -> 437,779
  (road city-loc-6 city-loc-4)
  (= (road-length city-loc-6 city-loc-4) 31)
  ; 437,779 -> 730,864
  (road city-loc-4 city-loc-6)
  (= (road-length city-loc-4 city-loc-6) 31)
  ; 42,812 -> 141,966
  (road city-loc-7 city-loc-2)
  (= (road-length city-loc-7 city-loc-2) 19)
  ; 141,966 -> 42,812
  (road city-loc-2 city-loc-7)
  (= (road-length city-loc-2 city-loc-7) 19)
  ; 407,263 -> 300,491
  (road city-loc-8 city-loc-1)
  (= (road-length city-loc-8 city-loc-1) 26)
  ; 300,491 -> 407,263
  (road city-loc-1 city-loc-8)
  (= (road-length city-loc-1 city-loc-8) 26)
  ; 407,263 -> 205,208
  (road city-loc-8 city-loc-5)
  (= (road-length city-loc-8 city-loc-5) 21)
  ; 205,208 -> 407,263
  (road city-loc-5 city-loc-8)
  (= (road-length city-loc-5 city-loc-8) 21)
  ; 756,663 -> 832,505
  (road city-loc-9 city-loc-3)
  (= (road-length city-loc-9 city-loc-3) 18)
  ; 832,505 -> 756,663
  (road city-loc-3 city-loc-9)
  (= (road-length city-loc-3 city-loc-9) 18)
  ; 756,663 -> 437,779
  (road city-loc-9 city-loc-4)
  (= (road-length city-loc-9 city-loc-4) 34)
  ; 437,779 -> 756,663
  (road city-loc-4 city-loc-9)
  (= (road-length city-loc-4 city-loc-9) 34)
  ; 756,663 -> 730,864
  (road city-loc-9 city-loc-6)
  (= (road-length city-loc-9 city-loc-6) 21)
  ; 730,864 -> 756,663
  (road city-loc-6 city-loc-9)
  (= (road-length city-loc-6 city-loc-9) 21)
  ; 382,374 -> 300,491
  (road city-loc-10 city-loc-1)
  (= (road-length city-loc-10 city-loc-1) 15)
  ; 300,491 -> 382,374
  (road city-loc-1 city-loc-10)
  (= (road-length city-loc-1 city-loc-10) 15)
  ; 382,374 -> 205,208
  (road city-loc-10 city-loc-5)
  (= (road-length city-loc-10 city-loc-5) 25)
  ; 205,208 -> 382,374
  (road city-loc-5 city-loc-10)
  (= (road-length city-loc-5 city-loc-10) 25)
  ; 382,374 -> 407,263
  (road city-loc-10 city-loc-8)
  (= (road-length city-loc-10 city-loc-8) 12)
  ; 407,263 -> 382,374
  (road city-loc-8 city-loc-10)
  (= (road-length city-loc-8 city-loc-10) 12)
  (at package-1 city-loc-7)
  (at package-2 city-loc-10)
  (at package-3 city-loc-7)
  (at truck-1 city-loc-10)
  (capacity truck-1 capacity-3)
  (at truck-2 city-loc-3)
  (capacity truck-2 capacity-3)
 )
 (:goal (and
  (at package-1 city-loc-10)
  (at package-2 city-loc-8)
  (at package-3 city-loc-9)
 ))
 (:metric minimize (total-cost))
)
