; Transport city-sequential-10nodes-1000size-3degree-100mindistance-2trucks-3packages-798089seed

(define (problem transport-city-sequential-10nodes-1000size-3degree-100mindistance-2trucks-3packages-798089seed)
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
  ; 841,285 -> 752,573
  (road city-loc-4 city-loc-2)
  (= (road-length city-loc-4 city-loc-2) 31)
  ; 752,573 -> 841,285
  (road city-loc-2 city-loc-4)
  (= (road-length city-loc-2 city-loc-4) 31)
  ; 376,641 -> 433,937
  (road city-loc-5 city-loc-3)
  (= (road-length city-loc-5 city-loc-3) 31)
  ; 433,937 -> 376,641
  (road city-loc-3 city-loc-5)
  (= (road-length city-loc-3 city-loc-5) 31)
  ; 437,337 -> 366,188
  (road city-loc-6 city-loc-1)
  (= (road-length city-loc-6 city-loc-1) 17)
  ; 366,188 -> 437,337
  (road city-loc-1 city-loc-6)
  (= (road-length city-loc-1 city-loc-6) 17)
  ; 437,337 -> 376,641
  (road city-loc-6 city-loc-5)
  (= (road-length city-loc-6 city-loc-5) 31)
  ; 376,641 -> 437,337
  (road city-loc-5 city-loc-6)
  (= (road-length city-loc-5 city-loc-6) 31)
  ; 881,396 -> 752,573
  (road city-loc-7 city-loc-2)
  (= (road-length city-loc-7 city-loc-2) 22)
  ; 752,573 -> 881,396
  (road city-loc-2 city-loc-7)
  (= (road-length city-loc-2 city-loc-7) 22)
  ; 881,396 -> 841,285
  (road city-loc-7 city-loc-4)
  (= (road-length city-loc-7 city-loc-4) 12)
  ; 841,285 -> 881,396
  (road city-loc-4 city-loc-7)
  (= (road-length city-loc-4 city-loc-7) 12)
  ; 130,144 -> 366,188
  (road city-loc-8 city-loc-1)
  (= (road-length city-loc-8 city-loc-1) 24)
  ; 366,188 -> 130,144
  (road city-loc-1 city-loc-8)
  (= (road-length city-loc-1 city-loc-8) 24)
  ; 130,144 -> 437,337
  (road city-loc-8 city-loc-6)
  (= (road-length city-loc-8 city-loc-6) 37)
  ; 437,337 -> 130,144
  (road city-loc-6 city-loc-8)
  (= (road-length city-loc-6 city-loc-8) 37)
  ; 429,772 -> 433,937
  (road city-loc-9 city-loc-3)
  (= (road-length city-loc-9 city-loc-3) 17)
  ; 433,937 -> 429,772
  (road city-loc-3 city-loc-9)
  (= (road-length city-loc-3 city-loc-9) 17)
  ; 429,772 -> 376,641
  (road city-loc-9 city-loc-5)
  (= (road-length city-loc-9 city-loc-5) 15)
  ; 376,641 -> 429,772
  (road city-loc-5 city-loc-9)
  (= (road-length city-loc-5 city-loc-9) 15)
  ; 574,327 -> 366,188
  (road city-loc-10 city-loc-1)
  (= (road-length city-loc-10 city-loc-1) 25)
  ; 366,188 -> 574,327
  (road city-loc-1 city-loc-10)
  (= (road-length city-loc-1 city-loc-10) 25)
  ; 574,327 -> 752,573
  (road city-loc-10 city-loc-2)
  (= (road-length city-loc-10 city-loc-2) 31)
  ; 752,573 -> 574,327
  (road city-loc-2 city-loc-10)
  (= (road-length city-loc-2 city-loc-10) 31)
  ; 574,327 -> 841,285
  (road city-loc-10 city-loc-4)
  (= (road-length city-loc-10 city-loc-4) 27)
  ; 841,285 -> 574,327
  (road city-loc-4 city-loc-10)
  (= (road-length city-loc-4 city-loc-10) 27)
  ; 574,327 -> 376,641
  (road city-loc-10 city-loc-5)
  (= (road-length city-loc-10 city-loc-5) 38)
  ; 376,641 -> 574,327
  (road city-loc-5 city-loc-10)
  (= (road-length city-loc-5 city-loc-10) 38)
  ; 574,327 -> 437,337
  (road city-loc-10 city-loc-6)
  (= (road-length city-loc-10 city-loc-6) 14)
  ; 437,337 -> 574,327
  (road city-loc-6 city-loc-10)
  (= (road-length city-loc-6 city-loc-10) 14)
  ; 574,327 -> 881,396
  (road city-loc-10 city-loc-7)
  (= (road-length city-loc-10 city-loc-7) 32)
  ; 881,396 -> 574,327
  (road city-loc-7 city-loc-10)
  (= (road-length city-loc-7 city-loc-10) 32)
  (at package-1 city-loc-8)
  (at package-2 city-loc-1)
  (at package-3 city-loc-10)
  (at truck-1 city-loc-8)
  (capacity truck-1 capacity-4)
  (at truck-2 city-loc-7)
  (capacity truck-2 capacity-4)
 )
 (:goal (and
  (at package-1 city-loc-5)
  (at package-2 city-loc-2)
  (at package-3 city-loc-2)
 ))
 (:metric minimize (total-cost))
)
