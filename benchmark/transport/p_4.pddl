; Transport city-sequential-10nodes-1000size-3degree-100mindistance-2trucks-3packages-1seed

(define (problem transport-city-sequential-10nodes-1000size-3degree-100mindistance-2trucks-3packages-1seed)
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
  ; 221,992 -> 390,702
  (road city-loc-2 city-loc-1)
  (= (road-length city-loc-2 city-loc-1) 34)
  ; 390,702 -> 221,992
  (road city-loc-1 city-loc-2)
  (= (road-length city-loc-1 city-loc-2) 34)
  ; 227,782 -> 390,702
  (road city-loc-4 city-loc-1)
  (= (road-length city-loc-4 city-loc-1) 19)
  ; 390,702 -> 227,782
  (road city-loc-1 city-loc-4)
  (= (road-length city-loc-1 city-loc-4) 19)
  ; 227,782 -> 221,992
  (road city-loc-4 city-loc-2)
  (= (road-length city-loc-4 city-loc-2) 21)
  ; 221,992 -> 227,782
  (road city-loc-2 city-loc-4)
  (= (road-length city-loc-2 city-loc-4) 21)
  ; 227,782 -> 29,540
  (road city-loc-4 city-loc-3)
  (= (road-length city-loc-4 city-loc-3) 32)
  ; 29,540 -> 227,782
  (road city-loc-3 city-loc-4)
  (= (road-length city-loc-3 city-loc-4) 32)
  ; 448,961 -> 390,702
  (road city-loc-5 city-loc-1)
  (= (road-length city-loc-5 city-loc-1) 27)
  ; 390,702 -> 448,961
  (road city-loc-1 city-loc-5)
  (= (road-length city-loc-1 city-loc-5) 27)
  ; 448,961 -> 221,992
  (road city-loc-5 city-loc-2)
  (= (road-length city-loc-5 city-loc-2) 23)
  ; 221,992 -> 448,961
  (road city-loc-2 city-loc-5)
  (= (road-length city-loc-2 city-loc-5) 23)
  ; 448,961 -> 227,782
  (road city-loc-5 city-loc-4)
  (= (road-length city-loc-5 city-loc-4) 29)
  ; 227,782 -> 448,961
  (road city-loc-4 city-loc-5)
  (= (road-length city-loc-4 city-loc-5) 29)
  ; 507,566 -> 390,702
  (road city-loc-6 city-loc-1)
  (= (road-length city-loc-6 city-loc-1) 18)
  ; 390,702 -> 507,566
  (road city-loc-1 city-loc-6)
  (= (road-length city-loc-1 city-loc-6) 18)
  ; 507,566 -> 227,782
  (road city-loc-6 city-loc-4)
  (= (road-length city-loc-6 city-loc-4) 36)
  ; 227,782 -> 507,566
  (road city-loc-4 city-loc-6)
  (= (road-length city-loc-4 city-loc-6) 36)
  ; 238,353 -> 29,540
  (road city-loc-7 city-loc-3)
  (= (road-length city-loc-7 city-loc-3) 28)
  ; 29,540 -> 238,353
  (road city-loc-3 city-loc-7)
  (= (road-length city-loc-3 city-loc-7) 28)
  ; 238,353 -> 507,566
  (road city-loc-7 city-loc-6)
  (= (road-length city-loc-7 city-loc-6) 35)
  ; 507,566 -> 238,353
  (road city-loc-6 city-loc-7)
  (= (road-length city-loc-6 city-loc-7) 35)
  ; 22,426 -> 29,540
  (road city-loc-8 city-loc-3)
  (= (road-length city-loc-8 city-loc-3) 12)
  ; 29,540 -> 22,426
  (road city-loc-3 city-loc-8)
  (= (road-length city-loc-3 city-loc-8) 12)
  ; 22,426 -> 238,353
  (road city-loc-8 city-loc-7)
  (= (road-length city-loc-8 city-loc-7) 23)
  ; 238,353 -> 22,426
  (road city-loc-7 city-loc-8)
  (= (road-length city-loc-7 city-loc-8) 23)
  ; 569,944 -> 390,702
  (road city-loc-10 city-loc-1)
  (= (road-length city-loc-10 city-loc-1) 31)
  ; 390,702 -> 569,944
  (road city-loc-1 city-loc-10)
  (= (road-length city-loc-1 city-loc-10) 31)
  ; 569,944 -> 221,992
  (road city-loc-10 city-loc-2)
  (= (road-length city-loc-10 city-loc-2) 36)
  ; 221,992 -> 569,944
  (road city-loc-2 city-loc-10)
  (= (road-length city-loc-2 city-loc-10) 36)
  ; 569,944 -> 448,961
  (road city-loc-10 city-loc-5)
  (= (road-length city-loc-10 city-loc-5) 13)
  ; 448,961 -> 569,944
  (road city-loc-5 city-loc-10)
  (= (road-length city-loc-5 city-loc-10) 13)
  ; 569,944 -> 857,938
  (road city-loc-10 city-loc-9)
  (= (road-length city-loc-10 city-loc-9) 29)
  ; 857,938 -> 569,944
  (road city-loc-9 city-loc-10)
  (= (road-length city-loc-9 city-loc-10) 29)
  (at package-1 city-loc-2)
  (at package-2 city-loc-3)
  (at package-3 city-loc-5)
  (at truck-1 city-loc-6)
  (capacity truck-1 capacity-2)
  (at truck-2 city-loc-9)
  (capacity truck-2 capacity-4)
 )
 (:goal (and
  (at package-1 city-loc-7)
  (at package-2 city-loc-9)
  (at package-3 city-loc-4)
 ))
 (:metric minimize (total-cost))
)
