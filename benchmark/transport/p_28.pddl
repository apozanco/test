; Transport city-sequential-10nodes-1000size-3degree-100mindistance-2trucks-3packages-83seed

(define (problem transport-city-sequential-10nodes-1000size-3degree-100mindistance-2trucks-3packages-83seed)
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
  ; 164,582 -> 422,509
  (road city-loc-2 city-loc-1)
  (= (road-length city-loc-2 city-loc-1) 27)
  ; 422,509 -> 164,582
  (road city-loc-1 city-loc-2)
  (= (road-length city-loc-1 city-loc-2) 27)
  ; 648,594 -> 422,509
  (road city-loc-4 city-loc-1)
  (= (road-length city-loc-4 city-loc-1) 25)
  ; 422,509 -> 648,594
  (road city-loc-1 city-loc-4)
  (= (road-length city-loc-1 city-loc-4) 25)
  ; 304,613 -> 422,509
  (road city-loc-5 city-loc-1)
  (= (road-length city-loc-5 city-loc-1) 16)
  ; 422,509 -> 304,613
  (road city-loc-1 city-loc-5)
  (= (road-length city-loc-1 city-loc-5) 16)
  ; 304,613 -> 164,582
  (road city-loc-5 city-loc-2)
  (= (road-length city-loc-5 city-loc-2) 15)
  ; 164,582 -> 304,613
  (road city-loc-2 city-loc-5)
  (= (road-length city-loc-2 city-loc-5) 15)
  ; 304,613 -> 648,594
  (road city-loc-5 city-loc-4)
  (= (road-length city-loc-5 city-loc-4) 35)
  ; 648,594 -> 304,613
  (road city-loc-4 city-loc-5)
  (= (road-length city-loc-4 city-loc-5) 35)
  ; 811,874 -> 648,594
  (road city-loc-6 city-loc-4)
  (= (road-length city-loc-6 city-loc-4) 33)
  ; 648,594 -> 811,874
  (road city-loc-4 city-loc-6)
  (= (road-length city-loc-4 city-loc-6) 33)
  ; 22,516 -> 164,582
  (road city-loc-7 city-loc-2)
  (= (road-length city-loc-7 city-loc-2) 16)
  ; 164,582 -> 22,516
  (road city-loc-2 city-loc-7)
  (= (road-length city-loc-2 city-loc-7) 16)
  ; 22,516 -> 304,613
  (road city-loc-7 city-loc-5)
  (= (road-length city-loc-7 city-loc-5) 30)
  ; 304,613 -> 22,516
  (road city-loc-5 city-loc-7)
  (= (road-length city-loc-5 city-loc-7) 30)
  ; 647,404 -> 422,509
  (road city-loc-8 city-loc-1)
  (= (road-length city-loc-8 city-loc-1) 25)
  ; 422,509 -> 647,404
  (road city-loc-1 city-loc-8)
  (= (road-length city-loc-1 city-loc-8) 25)
  ; 647,404 -> 994,348
  (road city-loc-8 city-loc-3)
  (= (road-length city-loc-8 city-loc-3) 36)
  ; 994,348 -> 647,404
  (road city-loc-3 city-loc-8)
  (= (road-length city-loc-3 city-loc-8) 36)
  ; 647,404 -> 648,594
  (road city-loc-8 city-loc-4)
  (= (road-length city-loc-8 city-loc-4) 19)
  ; 648,594 -> 647,404
  (road city-loc-4 city-loc-8)
  (= (road-length city-loc-4 city-loc-8) 19)
  ; 753,687 -> 422,509
  (road city-loc-9 city-loc-1)
  (= (road-length city-loc-9 city-loc-1) 38)
  ; 422,509 -> 753,687
  (road city-loc-1 city-loc-9)
  (= (road-length city-loc-1 city-loc-9) 38)
  ; 753,687 -> 648,594
  (road city-loc-9 city-loc-4)
  (= (road-length city-loc-9 city-loc-4) 14)
  ; 648,594 -> 753,687
  (road city-loc-4 city-loc-9)
  (= (road-length city-loc-4 city-loc-9) 14)
  ; 753,687 -> 811,874
  (road city-loc-9 city-loc-6)
  (= (road-length city-loc-9 city-loc-6) 20)
  ; 811,874 -> 753,687
  (road city-loc-6 city-loc-9)
  (= (road-length city-loc-6 city-loc-9) 20)
  ; 753,687 -> 647,404
  (road city-loc-9 city-loc-8)
  (= (road-length city-loc-9 city-loc-8) 31)
  ; 647,404 -> 753,687
  (road city-loc-8 city-loc-9)
  (= (road-length city-loc-8 city-loc-9) 31)
  ; 106,928 -> 164,582
  (road city-loc-10 city-loc-2)
  (= (road-length city-loc-10 city-loc-2) 36)
  ; 164,582 -> 106,928
  (road city-loc-2 city-loc-10)
  (= (road-length city-loc-2 city-loc-10) 36)
  ; 106,928 -> 304,613
  (road city-loc-10 city-loc-5)
  (= (road-length city-loc-10 city-loc-5) 38)
  ; 304,613 -> 106,928
  (road city-loc-5 city-loc-10)
  (= (road-length city-loc-5 city-loc-10) 38)
  (at package-1 city-loc-1)
  (at package-2 city-loc-8)
  (at package-3 city-loc-2)
  (at truck-1 city-loc-8)
  (capacity truck-1 capacity-4)
  (at truck-2 city-loc-1)
  (capacity truck-2 capacity-2)
 )
 (:goal (and
  (at package-1 city-loc-8)
  (at package-2 city-loc-5)
  (at package-3 city-loc-8)
 ))
 (:metric minimize (total-cost))
)
