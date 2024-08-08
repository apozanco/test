; Transport city-sequential-10nodes-1000size-3degree-100mindistance-2trucks-3packages-88seed

(define (problem transport-city-sequential-10nodes-1000size-3degree-100mindistance-2trucks-3packages-88seed)
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
  ; 640,14 -> 924,189
  (road city-loc-4 city-loc-3)
  (= (road-length city-loc-4 city-loc-3) 34)
  ; 924,189 -> 640,14
  (road city-loc-3 city-loc-4)
  (= (road-length city-loc-3 city-loc-4) 34)
  ; 539,786 -> 407,997
  (road city-loc-5 city-loc-1)
  (= (road-length city-loc-5 city-loc-1) 25)
  ; 407,997 -> 539,786
  (road city-loc-1 city-loc-5)
  (= (road-length city-loc-1 city-loc-5) 25)
  ; 872,349 -> 924,189
  (road city-loc-6 city-loc-3)
  (= (road-length city-loc-6 city-loc-3) 17)
  ; 924,189 -> 872,349
  (road city-loc-3 city-loc-6)
  (= (road-length city-loc-3 city-loc-6) 17)
  ; 702,475 -> 924,189
  (road city-loc-7 city-loc-3)
  (= (road-length city-loc-7 city-loc-3) 37)
  ; 924,189 -> 702,475
  (road city-loc-3 city-loc-7)
  (= (road-length city-loc-3 city-loc-7) 37)
  ; 702,475 -> 539,786
  (road city-loc-7 city-loc-5)
  (= (road-length city-loc-7 city-loc-5) 36)
  ; 539,786 -> 702,475
  (road city-loc-5 city-loc-7)
  (= (road-length city-loc-5 city-loc-7) 36)
  ; 702,475 -> 872,349
  (road city-loc-7 city-loc-6)
  (= (road-length city-loc-7 city-loc-6) 22)
  ; 872,349 -> 702,475
  (road city-loc-6 city-loc-7)
  (= (road-length city-loc-6 city-loc-7) 22)
  ; 138,229 -> 194,340
  (road city-loc-8 city-loc-2)
  (= (road-length city-loc-8 city-loc-2) 13)
  ; 194,340 -> 138,229
  (road city-loc-2 city-loc-8)
  (= (road-length city-loc-2 city-loc-8) 13)
  ; 704,143 -> 924,189
  (road city-loc-9 city-loc-3)
  (= (road-length city-loc-9 city-loc-3) 23)
  ; 924,189 -> 704,143
  (road city-loc-3 city-loc-9)
  (= (road-length city-loc-3 city-loc-9) 23)
  ; 704,143 -> 640,14
  (road city-loc-9 city-loc-4)
  (= (road-length city-loc-9 city-loc-4) 15)
  ; 640,14 -> 704,143
  (road city-loc-4 city-loc-9)
  (= (road-length city-loc-4 city-loc-9) 15)
  ; 704,143 -> 872,349
  (road city-loc-9 city-loc-6)
  (= (road-length city-loc-9 city-loc-6) 27)
  ; 872,349 -> 704,143
  (road city-loc-6 city-loc-9)
  (= (road-length city-loc-6 city-loc-9) 27)
  ; 704,143 -> 702,475
  (road city-loc-9 city-loc-7)
  (= (road-length city-loc-9 city-loc-7) 34)
  ; 702,475 -> 704,143
  (road city-loc-7 city-loc-9)
  (= (road-length city-loc-7 city-loc-9) 34)
  ; 452,420 -> 194,340
  (road city-loc-10 city-loc-2)
  (= (road-length city-loc-10 city-loc-2) 27)
  ; 194,340 -> 452,420
  (road city-loc-2 city-loc-10)
  (= (road-length city-loc-2 city-loc-10) 27)
  ; 452,420 -> 702,475
  (road city-loc-10 city-loc-7)
  (= (road-length city-loc-10 city-loc-7) 26)
  ; 702,475 -> 452,420
  (road city-loc-7 city-loc-10)
  (= (road-length city-loc-7 city-loc-10) 26)
  ; 452,420 -> 138,229
  (road city-loc-10 city-loc-8)
  (= (road-length city-loc-10 city-loc-8) 37)
  ; 138,229 -> 452,420
  (road city-loc-8 city-loc-10)
  (= (road-length city-loc-8 city-loc-10) 37)
  (at package-1 city-loc-6)
  (at package-2 city-loc-7)
  (at package-3 city-loc-3)
  (at truck-1 city-loc-3)
  (capacity truck-1 capacity-3)
  (at truck-2 city-loc-8)
  (capacity truck-2 capacity-2)
 )
 (:goal (and
  (at package-1 city-loc-1)
  (at package-2 city-loc-3)
  (at package-3 city-loc-4)
 ))
 (:metric minimize (total-cost))
)
