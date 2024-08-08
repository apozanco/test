; Transport city-sequential-10nodes-1000size-3degree-100mindistance-2trucks-3packages-23seed

(define (problem transport-city-sequential-10nodes-1000size-3degree-100mindistance-2trucks-3packages-23seed)
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
  ; 880,377 -> 752,371
  (road city-loc-3 city-loc-1)
  (= (road-length city-loc-3 city-loc-1) 13)
  ; 752,371 -> 880,377
  (road city-loc-1 city-loc-3)
  (= (road-length city-loc-1 city-loc-3) 13)
  ; 991,585 -> 752,371
  (road city-loc-4 city-loc-1)
  (= (road-length city-loc-4 city-loc-1) 33)
  ; 752,371 -> 991,585
  (road city-loc-1 city-loc-4)
  (= (road-length city-loc-1 city-loc-4) 33)
  ; 991,585 -> 880,377
  (road city-loc-4 city-loc-3)
  (= (road-length city-loc-4 city-loc-3) 24)
  ; 880,377 -> 991,585
  (road city-loc-3 city-loc-4)
  (= (road-length city-loc-3 city-loc-4) 24)
  ; 288,676 -> 579,778
  (road city-loc-5 city-loc-2)
  (= (road-length city-loc-5 city-loc-2) 31)
  ; 579,778 -> 288,676
  (road city-loc-2 city-loc-5)
  (= (road-length city-loc-2 city-loc-5) 31)
  ; 998,321 -> 752,371
  (road city-loc-6 city-loc-1)
  (= (road-length city-loc-6 city-loc-1) 26)
  ; 752,371 -> 998,321
  (road city-loc-1 city-loc-6)
  (= (road-length city-loc-1 city-loc-6) 26)
  ; 998,321 -> 880,377
  (road city-loc-6 city-loc-3)
  (= (road-length city-loc-6 city-loc-3) 14)
  ; 880,377 -> 998,321
  (road city-loc-3 city-loc-6)
  (= (road-length city-loc-3 city-loc-6) 14)
  ; 998,321 -> 991,585
  (road city-loc-6 city-loc-4)
  (= (road-length city-loc-6 city-loc-4) 27)
  ; 991,585 -> 998,321
  (road city-loc-4 city-loc-6)
  (= (road-length city-loc-4 city-loc-6) 27)
  ; 586,87 -> 752,371
  (road city-loc-7 city-loc-1)
  (= (road-length city-loc-7 city-loc-1) 33)
  ; 752,371 -> 586,87
  (road city-loc-1 city-loc-7)
  (= (road-length city-loc-1 city-loc-7) 33)
  ; 833,485 -> 752,371
  (road city-loc-8 city-loc-1)
  (= (road-length city-loc-8 city-loc-1) 14)
  ; 752,371 -> 833,485
  (road city-loc-1 city-loc-8)
  (= (road-length city-loc-1 city-loc-8) 14)
  ; 833,485 -> 880,377
  (road city-loc-8 city-loc-3)
  (= (road-length city-loc-8 city-loc-3) 12)
  ; 880,377 -> 833,485
  (road city-loc-3 city-loc-8)
  (= (road-length city-loc-3 city-loc-8) 12)
  ; 833,485 -> 991,585
  (road city-loc-8 city-loc-4)
  (= (road-length city-loc-8 city-loc-4) 19)
  ; 991,585 -> 833,485
  (road city-loc-4 city-loc-8)
  (= (road-length city-loc-4 city-loc-8) 19)
  ; 833,485 -> 998,321
  (road city-loc-8 city-loc-6)
  (= (road-length city-loc-8 city-loc-6) 24)
  ; 998,321 -> 833,485
  (road city-loc-6 city-loc-8)
  (= (road-length city-loc-6 city-loc-8) 24)
  ; 181,735 -> 288,676
  (road city-loc-9 city-loc-5)
  (= (road-length city-loc-9 city-loc-5) 13)
  ; 288,676 -> 181,735
  (road city-loc-5 city-loc-9)
  (= (road-length city-loc-5 city-loc-9) 13)
  ; 494,604 -> 752,371
  (road city-loc-10 city-loc-1)
  (= (road-length city-loc-10 city-loc-1) 35)
  ; 752,371 -> 494,604
  (road city-loc-1 city-loc-10)
  (= (road-length city-loc-1 city-loc-10) 35)
  ; 494,604 -> 579,778
  (road city-loc-10 city-loc-2)
  (= (road-length city-loc-10 city-loc-2) 20)
  ; 579,778 -> 494,604
  (road city-loc-2 city-loc-10)
  (= (road-length city-loc-2 city-loc-10) 20)
  ; 494,604 -> 288,676
  (road city-loc-10 city-loc-5)
  (= (road-length city-loc-10 city-loc-5) 22)
  ; 288,676 -> 494,604
  (road city-loc-5 city-loc-10)
  (= (road-length city-loc-5 city-loc-10) 22)
  ; 494,604 -> 833,485
  (road city-loc-10 city-loc-8)
  (= (road-length city-loc-10 city-loc-8) 36)
  ; 833,485 -> 494,604
  (road city-loc-8 city-loc-10)
  (= (road-length city-loc-8 city-loc-10) 36)
  ; 494,604 -> 181,735
  (road city-loc-10 city-loc-9)
  (= (road-length city-loc-10 city-loc-9) 34)
  ; 181,735 -> 494,604
  (road city-loc-9 city-loc-10)
  (= (road-length city-loc-9 city-loc-10) 34)
  (at package-1 city-loc-8)
  (at package-2 city-loc-3)
  (at package-3 city-loc-3)
  (at truck-1 city-loc-9)
  (capacity truck-1 capacity-2)
  (at truck-2 city-loc-9)
  (capacity truck-2 capacity-3)
 )
 (:goal (and
  (at package-1 city-loc-4)
  (at package-2 city-loc-10)
  (at package-3 city-loc-2)
 ))
 (:metric minimize (total-cost))
)
