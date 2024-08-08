; Transport city-sequential-10nodes-1000size-3degree-100mindistance-2trucks-3packages-22seed

(define (problem transport-city-sequential-10nodes-1000size-3degree-100mindistance-2trucks-3packages-22seed)
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
  ; 419,406 -> 518,291
  (road city-loc-3 city-loc-1)
  (= (road-length city-loc-3 city-loc-1) 16)
  ; 518,291 -> 419,406
  (road city-loc-1 city-loc-3)
  (= (road-length city-loc-1 city-loc-3) 16)
  ; 676,946 -> 529,903
  (road city-loc-4 city-loc-2)
  (= (road-length city-loc-4 city-loc-2) 16)
  ; 529,903 -> 676,946
  (road city-loc-2 city-loc-4)
  (= (road-length city-loc-2 city-loc-4) 16)
  ; 314,576 -> 518,291
  (road city-loc-6 city-loc-1)
  (= (road-length city-loc-6 city-loc-1) 35)
  ; 518,291 -> 314,576
  (road city-loc-1 city-loc-6)
  (= (road-length city-loc-1 city-loc-6) 35)
  ; 314,576 -> 419,406
  (road city-loc-6 city-loc-3)
  (= (road-length city-loc-6 city-loc-3) 20)
  ; 419,406 -> 314,576
  (road city-loc-3 city-loc-6)
  (= (road-length city-loc-3 city-loc-6) 20)
  ; 596,25 -> 518,291
  (road city-loc-7 city-loc-1)
  (= (road-length city-loc-7 city-loc-1) 28)
  ; 518,291 -> 596,25
  (road city-loc-1 city-loc-7)
  (= (road-length city-loc-1 city-loc-7) 28)
  ; 596,25 -> 938,189
  (road city-loc-7 city-loc-5)
  (= (road-length city-loc-7 city-loc-5) 38)
  ; 938,189 -> 596,25
  (road city-loc-5 city-loc-7)
  (= (road-length city-loc-5 city-loc-7) 38)
  ; 609,574 -> 518,291
  (road city-loc-8 city-loc-1)
  (= (road-length city-loc-8 city-loc-1) 30)
  ; 518,291 -> 609,574
  (road city-loc-1 city-loc-8)
  (= (road-length city-loc-1 city-loc-8) 30)
  ; 609,574 -> 529,903
  (road city-loc-8 city-loc-2)
  (= (road-length city-loc-8 city-loc-2) 34)
  ; 529,903 -> 609,574
  (road city-loc-2 city-loc-8)
  (= (road-length city-loc-2 city-loc-8) 34)
  ; 609,574 -> 419,406
  (road city-loc-8 city-loc-3)
  (= (road-length city-loc-8 city-loc-3) 26)
  ; 419,406 -> 609,574
  (road city-loc-3 city-loc-8)
  (= (road-length city-loc-3 city-loc-8) 26)
  ; 609,574 -> 676,946
  (road city-loc-8 city-loc-4)
  (= (road-length city-loc-8 city-loc-4) 38)
  ; 676,946 -> 609,574
  (road city-loc-4 city-loc-8)
  (= (road-length city-loc-4 city-loc-8) 38)
  ; 609,574 -> 314,576
  (road city-loc-8 city-loc-6)
  (= (road-length city-loc-8 city-loc-6) 30)
  ; 314,576 -> 609,574
  (road city-loc-6 city-loc-8)
  (= (road-length city-loc-6 city-loc-8) 30)
  ; 443,775 -> 529,903
  (road city-loc-9 city-loc-2)
  (= (road-length city-loc-9 city-loc-2) 16)
  ; 529,903 -> 443,775
  (road city-loc-2 city-loc-9)
  (= (road-length city-loc-2 city-loc-9) 16)
  ; 443,775 -> 419,406
  (road city-loc-9 city-loc-3)
  (= (road-length city-loc-9 city-loc-3) 37)
  ; 419,406 -> 443,775
  (road city-loc-3 city-loc-9)
  (= (road-length city-loc-3 city-loc-9) 37)
  ; 443,775 -> 676,946
  (road city-loc-9 city-loc-4)
  (= (road-length city-loc-9 city-loc-4) 29)
  ; 676,946 -> 443,775
  (road city-loc-4 city-loc-9)
  (= (road-length city-loc-4 city-loc-9) 29)
  ; 443,775 -> 314,576
  (road city-loc-9 city-loc-6)
  (= (road-length city-loc-9 city-loc-6) 24)
  ; 314,576 -> 443,775
  (road city-loc-6 city-loc-9)
  (= (road-length city-loc-6 city-loc-9) 24)
  ; 443,775 -> 609,574
  (road city-loc-9 city-loc-8)
  (= (road-length city-loc-9 city-loc-8) 27)
  ; 609,574 -> 443,775
  (road city-loc-8 city-loc-9)
  (= (road-length city-loc-8 city-loc-9) 27)
  ; 540,437 -> 518,291
  (road city-loc-10 city-loc-1)
  (= (road-length city-loc-10 city-loc-1) 15)
  ; 518,291 -> 540,437
  (road city-loc-1 city-loc-10)
  (= (road-length city-loc-1 city-loc-10) 15)
  ; 540,437 -> 419,406
  (road city-loc-10 city-loc-3)
  (= (road-length city-loc-10 city-loc-3) 13)
  ; 419,406 -> 540,437
  (road city-loc-3 city-loc-10)
  (= (road-length city-loc-3 city-loc-10) 13)
  ; 540,437 -> 314,576
  (road city-loc-10 city-loc-6)
  (= (road-length city-loc-10 city-loc-6) 27)
  ; 314,576 -> 540,437
  (road city-loc-6 city-loc-10)
  (= (road-length city-loc-6 city-loc-10) 27)
  ; 540,437 -> 609,574
  (road city-loc-10 city-loc-8)
  (= (road-length city-loc-10 city-loc-8) 16)
  ; 609,574 -> 540,437
  (road city-loc-8 city-loc-10)
  (= (road-length city-loc-8 city-loc-10) 16)
  ; 540,437 -> 443,775
  (road city-loc-10 city-loc-9)
  (= (road-length city-loc-10 city-loc-9) 36)
  ; 443,775 -> 540,437
  (road city-loc-9 city-loc-10)
  (= (road-length city-loc-9 city-loc-10) 36)
  (at package-1 city-loc-2)
  (at package-2 city-loc-2)
  (at package-3 city-loc-8)
  (at truck-1 city-loc-2)
  (capacity truck-1 capacity-3)
  (at truck-2 city-loc-7)
  (capacity truck-2 capacity-3)
 )
 (:goal (and
  (at package-1 city-loc-1)
  (at package-2 city-loc-4)
  (at package-3 city-loc-9)
 ))
 (:metric minimize (total-cost))
)
