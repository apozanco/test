; Transport city-sequential-10nodes-1000size-3degree-100mindistance-2trucks-3packages-93seed

(define (problem transport-city-sequential-10nodes-1000size-3degree-100mindistance-2trucks-3packages-93seed)
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
  ; 550,672 -> 708,562
  (road city-loc-3 city-loc-2)
  (= (road-length city-loc-3 city-loc-2) 20)
  ; 708,562 -> 550,672
  (road city-loc-2 city-loc-3)
  (= (road-length city-loc-2 city-loc-3) 20)
  ; 83,935 -> 168,704
  (road city-loc-4 city-loc-1)
  (= (road-length city-loc-4 city-loc-1) 25)
  ; 168,704 -> 83,935
  (road city-loc-1 city-loc-4)
  (= (road-length city-loc-1 city-loc-4) 25)
  ; 743,260 -> 708,562
  (road city-loc-5 city-loc-2)
  (= (road-length city-loc-5 city-loc-2) 31)
  ; 708,562 -> 743,260
  (road city-loc-2 city-loc-5)
  (= (road-length city-loc-2 city-loc-5) 31)
  ; 724,937 -> 708,562
  (road city-loc-6 city-loc-2)
  (= (road-length city-loc-6 city-loc-2) 38)
  ; 708,562 -> 724,937
  (road city-loc-2 city-loc-6)
  (= (road-length city-loc-2 city-loc-6) 38)
  ; 724,937 -> 550,672
  (road city-loc-6 city-loc-3)
  (= (road-length city-loc-6 city-loc-3) 32)
  ; 550,672 -> 724,937
  (road city-loc-3 city-loc-6)
  (= (road-length city-loc-3 city-loc-6) 32)
  ; 851,866 -> 708,562
  (road city-loc-7 city-loc-2)
  (= (road-length city-loc-7 city-loc-2) 34)
  ; 708,562 -> 851,866
  (road city-loc-2 city-loc-7)
  (= (road-length city-loc-2 city-loc-7) 34)
  ; 851,866 -> 550,672
  (road city-loc-7 city-loc-3)
  (= (road-length city-loc-7 city-loc-3) 36)
  ; 550,672 -> 851,866
  (road city-loc-3 city-loc-7)
  (= (road-length city-loc-3 city-loc-7) 36)
  ; 851,866 -> 724,937
  (road city-loc-7 city-loc-6)
  (= (road-length city-loc-7 city-loc-6) 15)
  ; 724,937 -> 851,866
  (road city-loc-6 city-loc-7)
  (= (road-length city-loc-6 city-loc-7) 15)
  ; 357,625 -> 168,704
  (road city-loc-8 city-loc-1)
  (= (road-length city-loc-8 city-loc-1) 21)
  ; 168,704 -> 357,625
  (road city-loc-1 city-loc-8)
  (= (road-length city-loc-1 city-loc-8) 21)
  ; 357,625 -> 708,562
  (road city-loc-8 city-loc-2)
  (= (road-length city-loc-8 city-loc-2) 36)
  ; 708,562 -> 357,625
  (road city-loc-2 city-loc-8)
  (= (road-length city-loc-2 city-loc-8) 36)
  ; 357,625 -> 550,672
  (road city-loc-8 city-loc-3)
  (= (road-length city-loc-8 city-loc-3) 20)
  ; 550,672 -> 357,625
  (road city-loc-3 city-loc-8)
  (= (road-length city-loc-3 city-loc-8) 20)
  ; 85,521 -> 168,704
  (road city-loc-9 city-loc-1)
  (= (road-length city-loc-9 city-loc-1) 21)
  ; 168,704 -> 85,521
  (road city-loc-1 city-loc-9)
  (= (road-length city-loc-1 city-loc-9) 21)
  ; 85,521 -> 357,625
  (road city-loc-9 city-loc-8)
  (= (road-length city-loc-9 city-loc-8) 30)
  ; 357,625 -> 85,521
  (road city-loc-8 city-loc-9)
  (= (road-length city-loc-8 city-loc-9) 30)
  ; 2,313 -> 85,521
  (road city-loc-10 city-loc-9)
  (= (road-length city-loc-10 city-loc-9) 23)
  ; 85,521 -> 2,313
  (road city-loc-9 city-loc-10)
  (= (road-length city-loc-9 city-loc-10) 23)
  (at package-1 city-loc-9)
  (at package-2 city-loc-1)
  (at package-3 city-loc-7)
  (at truck-1 city-loc-1)
  (capacity truck-1 capacity-4)
  (at truck-2 city-loc-10)
  (capacity truck-2 capacity-2)
 )
 (:goal (and
  (at package-1 city-loc-8)
  (at package-2 city-loc-9)
  (at package-3 city-loc-3)
 ))
 (:metric minimize (total-cost))
)
