; Transport city-sequential-10nodes-1000size-3degree-100mindistance-2trucks-3packages-43seed

(define (problem transport-city-sequential-10nodes-1000size-3degree-100mindistance-2trucks-3packages-43seed)
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
  ; 98,164 -> 384,157
  (road city-loc-3 city-loc-2)
  (= (road-length city-loc-3 city-loc-2) 29)
  ; 384,157 -> 98,164
  (road city-loc-2 city-loc-3)
  (= (road-length city-loc-2 city-loc-3) 29)
  ; 507,131 -> 871,109
  (road city-loc-5 city-loc-1)
  (= (road-length city-loc-5 city-loc-1) 37)
  ; 871,109 -> 507,131
  (road city-loc-1 city-loc-5)
  (= (road-length city-loc-1 city-loc-5) 37)
  ; 507,131 -> 384,157
  (road city-loc-5 city-loc-2)
  (= (road-length city-loc-5 city-loc-2) 13)
  ; 384,157 -> 507,131
  (road city-loc-2 city-loc-5)
  (= (road-length city-loc-2 city-loc-5) 13)
  ; 790,396 -> 871,109
  (road city-loc-6 city-loc-1)
  (= (road-length city-loc-6 city-loc-1) 30)
  ; 871,109 -> 790,396
  (road city-loc-1 city-loc-6)
  (= (road-length city-loc-1 city-loc-6) 30)
  ; 611,518 -> 524,854
  (road city-loc-7 city-loc-4)
  (= (road-length city-loc-7 city-loc-4) 35)
  ; 524,854 -> 611,518
  (road city-loc-4 city-loc-7)
  (= (road-length city-loc-4 city-loc-7) 35)
  ; 611,518 -> 790,396
  (road city-loc-7 city-loc-6)
  (= (road-length city-loc-7 city-loc-6) 22)
  ; 790,396 -> 611,518
  (road city-loc-6 city-loc-7)
  (= (road-length city-loc-6 city-loc-7) 22)
  ; 278,588 -> 524,854
  (road city-loc-8 city-loc-4)
  (= (road-length city-loc-8 city-loc-4) 37)
  ; 524,854 -> 278,588
  (road city-loc-4 city-loc-8)
  (= (road-length city-loc-4 city-loc-8) 37)
  ; 278,588 -> 611,518
  (road city-loc-8 city-loc-7)
  (= (road-length city-loc-8 city-loc-7) 34)
  ; 611,518 -> 278,588
  (road city-loc-7 city-loc-8)
  (= (road-length city-loc-7 city-loc-8) 34)
  ; 186,385 -> 384,157
  (road city-loc-9 city-loc-2)
  (= (road-length city-loc-9 city-loc-2) 31)
  ; 384,157 -> 186,385
  (road city-loc-2 city-loc-9)
  (= (road-length city-loc-2 city-loc-9) 31)
  ; 186,385 -> 98,164
  (road city-loc-9 city-loc-3)
  (= (road-length city-loc-9 city-loc-3) 24)
  ; 98,164 -> 186,385
  (road city-loc-3 city-loc-9)
  (= (road-length city-loc-3 city-loc-9) 24)
  ; 186,385 -> 278,588
  (road city-loc-9 city-loc-8)
  (= (road-length city-loc-9 city-loc-8) 23)
  ; 278,588 -> 186,385
  (road city-loc-8 city-loc-9)
  (= (road-length city-loc-8 city-loc-9) 23)
  ; 65,50 -> 384,157
  (road city-loc-10 city-loc-2)
  (= (road-length city-loc-10 city-loc-2) 34)
  ; 384,157 -> 65,50
  (road city-loc-2 city-loc-10)
  (= (road-length city-loc-2 city-loc-10) 34)
  ; 65,50 -> 98,164
  (road city-loc-10 city-loc-3)
  (= (road-length city-loc-10 city-loc-3) 12)
  ; 98,164 -> 65,50
  (road city-loc-3 city-loc-10)
  (= (road-length city-loc-3 city-loc-10) 12)
  ; 65,50 -> 186,385
  (road city-loc-10 city-loc-9)
  (= (road-length city-loc-10 city-loc-9) 36)
  ; 186,385 -> 65,50
  (road city-loc-9 city-loc-10)
  (= (road-length city-loc-9 city-loc-10) 36)
  (at package-1 city-loc-10)
  (at package-2 city-loc-1)
  (at package-3 city-loc-3)
  (at truck-1 city-loc-3)
  (capacity truck-1 capacity-2)
  (at truck-2 city-loc-5)
  (capacity truck-2 capacity-3)
 )
 (:goal (and
  (at package-1 city-loc-2)
  (at package-2 city-loc-9)
  (at package-3 city-loc-10)
 ))
 (:metric minimize (total-cost))
)
