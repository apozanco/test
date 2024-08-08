; Transport city-sequential-10nodes-1000size-3degree-100mindistance-2trucks-3packages-46seed

(define (problem transport-city-sequential-10nodes-1000size-3degree-100mindistance-2trucks-3packages-46seed)
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
  ; 831,118 -> 774,290
  (road city-loc-3 city-loc-2)
  (= (road-length city-loc-3 city-loc-2) 19)
  ; 774,290 -> 831,118
  (road city-loc-2 city-loc-3)
  (= (road-length city-loc-2 city-loc-3) 19)
  ; 187,374 -> 321,66
  (road city-loc-5 city-loc-1)
  (= (road-length city-loc-5 city-loc-1) 34)
  ; 321,66 -> 187,374
  (road city-loc-1 city-loc-5)
  (= (road-length city-loc-1 city-loc-5) 34)
  ; 187,374 -> 377,573
  (road city-loc-5 city-loc-4)
  (= (road-length city-loc-5 city-loc-4) 28)
  ; 377,573 -> 187,374
  (road city-loc-4 city-loc-5)
  (= (road-length city-loc-4 city-loc-5) 28)
  ; 542,769 -> 377,573
  (road city-loc-6 city-loc-4)
  (= (road-length city-loc-6 city-loc-4) 26)
  ; 377,573 -> 542,769
  (road city-loc-4 city-loc-6)
  (= (road-length city-loc-4 city-loc-6) 26)
  ; 677,582 -> 774,290
  (road city-loc-7 city-loc-2)
  (= (road-length city-loc-7 city-loc-2) 31)
  ; 774,290 -> 677,582
  (road city-loc-2 city-loc-7)
  (= (road-length city-loc-2 city-loc-7) 31)
  ; 677,582 -> 377,573
  (road city-loc-7 city-loc-4)
  (= (road-length city-loc-7 city-loc-4) 30)
  ; 377,573 -> 677,582
  (road city-loc-4 city-loc-7)
  (= (road-length city-loc-4 city-loc-7) 30)
  ; 677,582 -> 542,769
  (road city-loc-7 city-loc-6)
  (= (road-length city-loc-7 city-loc-6) 24)
  ; 542,769 -> 677,582
  (road city-loc-6 city-loc-7)
  (= (road-length city-loc-6 city-loc-7) 24)
  ; 194,67 -> 321,66
  (road city-loc-8 city-loc-1)
  (= (road-length city-loc-8 city-loc-1) 13)
  ; 321,66 -> 194,67
  (road city-loc-1 city-loc-8)
  (= (road-length city-loc-1 city-loc-8) 13)
  ; 194,67 -> 187,374
  (road city-loc-8 city-loc-5)
  (= (road-length city-loc-8 city-loc-5) 31)
  ; 187,374 -> 194,67
  (road city-loc-5 city-loc-8)
  (= (road-length city-loc-5 city-loc-8) 31)
  ; 759,878 -> 542,769
  (road city-loc-9 city-loc-6)
  (= (road-length city-loc-9 city-loc-6) 25)
  ; 542,769 -> 759,878
  (road city-loc-6 city-loc-9)
  (= (road-length city-loc-6 city-loc-9) 25)
  ; 759,878 -> 677,582
  (road city-loc-9 city-loc-7)
  (= (road-length city-loc-9 city-loc-7) 31)
  ; 677,582 -> 759,878
  (road city-loc-7 city-loc-9)
  (= (road-length city-loc-7 city-loc-9) 31)
  ; 345,178 -> 321,66
  (road city-loc-10 city-loc-1)
  (= (road-length city-loc-10 city-loc-1) 12)
  ; 321,66 -> 345,178
  (road city-loc-1 city-loc-10)
  (= (road-length city-loc-1 city-loc-10) 12)
  ; 345,178 -> 187,374
  (road city-loc-10 city-loc-5)
  (= (road-length city-loc-10 city-loc-5) 26)
  ; 187,374 -> 345,178
  (road city-loc-5 city-loc-10)
  (= (road-length city-loc-5 city-loc-10) 26)
  ; 345,178 -> 194,67
  (road city-loc-10 city-loc-8)
  (= (road-length city-loc-10 city-loc-8) 19)
  ; 194,67 -> 345,178
  (road city-loc-8 city-loc-10)
  (= (road-length city-loc-8 city-loc-10) 19)
  (at package-1 city-loc-10)
  (at package-2 city-loc-1)
  (at package-3 city-loc-3)
  (at truck-1 city-loc-7)
  (capacity truck-1 capacity-3)
  (at truck-2 city-loc-1)
  (capacity truck-2 capacity-4)
 )
 (:goal (and
  (at package-1 city-loc-9)
  (at package-2 city-loc-4)
  (at package-3 city-loc-4)
 ))
 (:metric minimize (total-cost))
)
