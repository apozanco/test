; Transport city-sequential-10nodes-1000size-3degree-100mindistance-2trucks-3packages-53seed

(define (problem transport-city-sequential-10nodes-1000size-3degree-100mindistance-2trucks-3packages-53seed)
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
  ; 368,234 -> 173,48
  (road city-loc-4 city-loc-3)
  (= (road-length city-loc-4 city-loc-3) 27)
  ; 173,48 -> 368,234
  (road city-loc-3 city-loc-4)
  (= (road-length city-loc-3 city-loc-4) 27)
  ; 234,129 -> 173,48
  (road city-loc-5 city-loc-3)
  (= (road-length city-loc-5 city-loc-3) 11)
  ; 173,48 -> 234,129
  (road city-loc-3 city-loc-5)
  (= (road-length city-loc-3 city-loc-5) 11)
  ; 234,129 -> 368,234
  (road city-loc-5 city-loc-4)
  (= (road-length city-loc-5 city-loc-4) 17)
  ; 368,234 -> 234,129
  (road city-loc-4 city-loc-5)
  (= (road-length city-loc-4 city-loc-5) 17)
  ; 141,359 -> 173,48
  (road city-loc-6 city-loc-3)
  (= (road-length city-loc-6 city-loc-3) 32)
  ; 173,48 -> 141,359
  (road city-loc-3 city-loc-6)
  (= (road-length city-loc-3 city-loc-6) 32)
  ; 141,359 -> 368,234
  (road city-loc-6 city-loc-4)
  (= (road-length city-loc-6 city-loc-4) 26)
  ; 368,234 -> 141,359
  (road city-loc-4 city-loc-6)
  (= (road-length city-loc-4 city-loc-6) 26)
  ; 141,359 -> 234,129
  (road city-loc-6 city-loc-5)
  (= (road-length city-loc-6 city-loc-5) 25)
  ; 234,129 -> 141,359
  (road city-loc-5 city-loc-6)
  (= (road-length city-loc-5 city-loc-6) 25)
  ; 519,783 -> 267,902
  (road city-loc-7 city-loc-2)
  (= (road-length city-loc-7 city-loc-2) 28)
  ; 267,902 -> 519,783
  (road city-loc-2 city-loc-7)
  (= (road-length city-loc-2 city-loc-7) 28)
  ; 662,872 -> 519,783
  (road city-loc-8 city-loc-7)
  (= (road-length city-loc-8 city-loc-7) 17)
  ; 519,783 -> 662,872
  (road city-loc-7 city-loc-8)
  (= (road-length city-loc-7 city-loc-8) 17)
  ; 325,523 -> 368,234
  (road city-loc-9 city-loc-4)
  (= (road-length city-loc-9 city-loc-4) 30)
  ; 368,234 -> 325,523
  (road city-loc-4 city-loc-9)
  (= (road-length city-loc-4 city-loc-9) 30)
  ; 325,523 -> 141,359
  (road city-loc-9 city-loc-6)
  (= (road-length city-loc-9 city-loc-6) 25)
  ; 141,359 -> 325,523
  (road city-loc-6 city-loc-9)
  (= (road-length city-loc-6 city-loc-9) 25)
  ; 325,523 -> 519,783
  (road city-loc-9 city-loc-7)
  (= (road-length city-loc-9 city-loc-7) 33)
  ; 519,783 -> 325,523
  (road city-loc-7 city-loc-9)
  (= (road-length city-loc-7 city-loc-9) 33)
  ; 676,412 -> 764,135
  (road city-loc-10 city-loc-1)
  (= (road-length city-loc-10 city-loc-1) 30)
  ; 764,135 -> 676,412
  (road city-loc-1 city-loc-10)
  (= (road-length city-loc-1 city-loc-10) 30)
  ; 676,412 -> 368,234
  (road city-loc-10 city-loc-4)
  (= (road-length city-loc-10 city-loc-4) 36)
  ; 368,234 -> 676,412
  (road city-loc-4 city-loc-10)
  (= (road-length city-loc-4 city-loc-10) 36)
  ; 676,412 -> 325,523
  (road city-loc-10 city-loc-9)
  (= (road-length city-loc-10 city-loc-9) 37)
  ; 325,523 -> 676,412
  (road city-loc-9 city-loc-10)
  (= (road-length city-loc-9 city-loc-10) 37)
  (at package-1 city-loc-1)
  (at package-2 city-loc-6)
  (at package-3 city-loc-5)
  (at truck-1 city-loc-2)
  (capacity truck-1 capacity-2)
  (at truck-2 city-loc-9)
  (capacity truck-2 capacity-4)
 )
 (:goal (and
  (at package-1 city-loc-7)
  (at package-2 city-loc-7)
  (at package-3 city-loc-8)
 ))
 (:metric minimize (total-cost))
)
