; Transport city-sequential-10nodes-1000size-3degree-100mindistance-2trucks-3packages-9seed

(define (problem transport-city-sequential-10nodes-1000size-3degree-100mindistance-2trucks-3packages-9seed)
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
  ; 218,227 -> 443,114
  (road city-loc-2 city-loc-1)
  (= (road-length city-loc-2 city-loc-1) 26)
  ; 443,114 -> 218,227
  (road city-loc-1 city-loc-2)
  (= (road-length city-loc-1 city-loc-2) 26)
  ; 454,276 -> 443,114
  (road city-loc-3 city-loc-1)
  (= (road-length city-loc-3 city-loc-1) 17)
  ; 443,114 -> 454,276
  (road city-loc-1 city-loc-3)
  (= (road-length city-loc-1 city-loc-3) 17)
  ; 454,276 -> 218,227
  (road city-loc-3 city-loc-2)
  (= (road-length city-loc-3 city-loc-2) 25)
  ; 218,227 -> 454,276
  (road city-loc-2 city-loc-3)
  (= (road-length city-loc-2 city-loc-3) 25)
  ; 90,314 -> 218,227
  (road city-loc-5 city-loc-2)
  (= (road-length city-loc-5 city-loc-2) 16)
  ; 218,227 -> 90,314
  (road city-loc-2 city-loc-5)
  (= (road-length city-loc-2 city-loc-5) 16)
  ; 90,314 -> 454,276
  (road city-loc-5 city-loc-3)
  (= (road-length city-loc-5 city-loc-3) 37)
  ; 454,276 -> 90,314
  (road city-loc-3 city-loc-5)
  (= (road-length city-loc-3 city-loc-5) 37)
  ; 644,291 -> 443,114
  (road city-loc-6 city-loc-1)
  (= (road-length city-loc-6 city-loc-1) 27)
  ; 443,114 -> 644,291
  (road city-loc-1 city-loc-6)
  (= (road-length city-loc-1 city-loc-6) 27)
  ; 644,291 -> 454,276
  (road city-loc-6 city-loc-3)
  (= (road-length city-loc-6 city-loc-3) 20)
  ; 454,276 -> 644,291
  (road city-loc-3 city-loc-6)
  (= (road-length city-loc-3 city-loc-6) 20)
  ; 105,529 -> 218,227
  (road city-loc-7 city-loc-2)
  (= (road-length city-loc-7 city-loc-2) 33)
  ; 218,227 -> 105,529
  (road city-loc-2 city-loc-7)
  (= (road-length city-loc-2 city-loc-7) 33)
  ; 105,529 -> 332,834
  (road city-loc-7 city-loc-4)
  (= (road-length city-loc-7 city-loc-4) 38)
  ; 332,834 -> 105,529
  (road city-loc-4 city-loc-7)
  (= (road-length city-loc-4 city-loc-7) 38)
  ; 105,529 -> 90,314
  (road city-loc-7 city-loc-5)
  (= (road-length city-loc-7 city-loc-5) 22)
  ; 90,314 -> 105,529
  (road city-loc-5 city-loc-7)
  (= (road-length city-loc-5 city-loc-7) 22)
  ; 802,56 -> 443,114
  (road city-loc-8 city-loc-1)
  (= (road-length city-loc-8 city-loc-1) 37)
  ; 443,114 -> 802,56
  (road city-loc-1 city-loc-8)
  (= (road-length city-loc-1 city-loc-8) 37)
  ; 802,56 -> 644,291
  (road city-loc-8 city-loc-6)
  (= (road-length city-loc-8 city-loc-6) 29)
  ; 644,291 -> 802,56
  (road city-loc-6 city-loc-8)
  (= (road-length city-loc-6 city-loc-8) 29)
  ; 799,573 -> 644,291
  (road city-loc-9 city-loc-6)
  (= (road-length city-loc-9 city-loc-6) 33)
  ; 644,291 -> 799,573
  (road city-loc-6 city-loc-9)
  (= (road-length city-loc-6 city-loc-9) 33)
  ; 826,438 -> 644,291
  (road city-loc-10 city-loc-6)
  (= (road-length city-loc-10 city-loc-6) 24)
  ; 644,291 -> 826,438
  (road city-loc-6 city-loc-10)
  (= (road-length city-loc-6 city-loc-10) 24)
  ; 826,438 -> 802,56
  (road city-loc-10 city-loc-8)
  (= (road-length city-loc-10 city-loc-8) 39)
  ; 802,56 -> 826,438
  (road city-loc-8 city-loc-10)
  (= (road-length city-loc-8 city-loc-10) 39)
  ; 826,438 -> 799,573
  (road city-loc-10 city-loc-9)
  (= (road-length city-loc-10 city-loc-9) 14)
  ; 799,573 -> 826,438
  (road city-loc-9 city-loc-10)
  (= (road-length city-loc-9 city-loc-10) 14)
  (at package-1 city-loc-8)
  (at package-2 city-loc-6)
  (at package-3 city-loc-4)
  (at truck-1 city-loc-2)
  (capacity truck-1 capacity-4)
  (at truck-2 city-loc-4)
  (capacity truck-2 capacity-3)
 )
 (:goal (and
  (at package-1 city-loc-2)
  (at package-2 city-loc-7)
  (at package-3 city-loc-9)
 ))
 (:metric minimize (total-cost))
)
