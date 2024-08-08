; Transport city-sequential-10nodes-1000size-3degree-100mindistance-2trucks-3packages-29seed

(define (problem transport-city-sequential-10nodes-1000size-3degree-100mindistance-2trucks-3packages-29seed)
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
  ; 576,536 -> 811,700
  (road city-loc-2 city-loc-1)
  (= (road-length city-loc-2 city-loc-1) 29)
  ; 811,700 -> 576,536
  (road city-loc-1 city-loc-2)
  (= (road-length city-loc-1 city-loc-2) 29)
  ; 690,432 -> 811,700
  (road city-loc-4 city-loc-1)
  (= (road-length city-loc-4 city-loc-1) 30)
  ; 811,700 -> 690,432
  (road city-loc-1 city-loc-4)
  (= (road-length city-loc-1 city-loc-4) 30)
  ; 690,432 -> 576,536
  (road city-loc-4 city-loc-2)
  (= (road-length city-loc-4 city-loc-2) 16)
  ; 576,536 -> 690,432
  (road city-loc-2 city-loc-4)
  (= (road-length city-loc-2 city-loc-4) 16)
  ; 305,284 -> 576,536
  (road city-loc-5 city-loc-2)
  (= (road-length city-loc-5 city-loc-2) 37)
  ; 576,536 -> 305,284
  (road city-loc-2 city-loc-5)
  (= (road-length city-loc-2 city-loc-5) 37)
  ; 305,284 -> 201,556
  (road city-loc-5 city-loc-3)
  (= (road-length city-loc-5 city-loc-3) 30)
  ; 201,556 -> 305,284
  (road city-loc-3 city-loc-5)
  (= (road-length city-loc-3 city-loc-5) 30)
  ; 524,768 -> 811,700
  (road city-loc-6 city-loc-1)
  (= (road-length city-loc-6 city-loc-1) 30)
  ; 811,700 -> 524,768
  (road city-loc-1 city-loc-6)
  (= (road-length city-loc-1 city-loc-6) 30)
  ; 524,768 -> 576,536
  (road city-loc-6 city-loc-2)
  (= (road-length city-loc-6 city-loc-2) 24)
  ; 576,536 -> 524,768
  (road city-loc-2 city-loc-6)
  (= (road-length city-loc-2 city-loc-6) 24)
  ; 524,768 -> 690,432
  (road city-loc-6 city-loc-4)
  (= (road-length city-loc-6 city-loc-4) 38)
  ; 690,432 -> 524,768
  (road city-loc-4 city-loc-6)
  (= (road-length city-loc-4 city-loc-6) 38)
  ; 225,838 -> 201,556
  (road city-loc-7 city-loc-3)
  (= (road-length city-loc-7 city-loc-3) 29)
  ; 201,556 -> 225,838
  (road city-loc-3 city-loc-7)
  (= (road-length city-loc-3 city-loc-7) 29)
  ; 225,838 -> 524,768
  (road city-loc-7 city-loc-6)
  (= (road-length city-loc-7 city-loc-6) 31)
  ; 524,768 -> 225,838
  (road city-loc-6 city-loc-7)
  (= (road-length city-loc-6 city-loc-7) 31)
  ; 420,981 -> 524,768
  (road city-loc-8 city-loc-6)
  (= (road-length city-loc-8 city-loc-6) 24)
  ; 524,768 -> 420,981
  (road city-loc-6 city-loc-8)
  (= (road-length city-loc-6 city-loc-8) 24)
  ; 420,981 -> 225,838
  (road city-loc-8 city-loc-7)
  (= (road-length city-loc-8 city-loc-7) 25)
  ; 225,838 -> 420,981
  (road city-loc-7 city-loc-8)
  (= (road-length city-loc-7 city-loc-8) 25)
  ; 804,483 -> 811,700
  (road city-loc-9 city-loc-1)
  (= (road-length city-loc-9 city-loc-1) 22)
  ; 811,700 -> 804,483
  (road city-loc-1 city-loc-9)
  (= (road-length city-loc-1 city-loc-9) 22)
  ; 804,483 -> 576,536
  (road city-loc-9 city-loc-2)
  (= (road-length city-loc-9 city-loc-2) 24)
  ; 576,536 -> 804,483
  (road city-loc-2 city-loc-9)
  (= (road-length city-loc-2 city-loc-9) 24)
  ; 804,483 -> 690,432
  (road city-loc-9 city-loc-4)
  (= (road-length city-loc-9 city-loc-4) 13)
  ; 690,432 -> 804,483
  (road city-loc-4 city-loc-9)
  (= (road-length city-loc-4 city-loc-9) 13)
  ; 528,147 -> 690,432
  (road city-loc-10 city-loc-4)
  (= (road-length city-loc-10 city-loc-4) 33)
  ; 690,432 -> 528,147
  (road city-loc-4 city-loc-10)
  (= (road-length city-loc-4 city-loc-10) 33)
  ; 528,147 -> 305,284
  (road city-loc-10 city-loc-5)
  (= (road-length city-loc-10 city-loc-5) 27)
  ; 305,284 -> 528,147
  (road city-loc-5 city-loc-10)
  (= (road-length city-loc-5 city-loc-10) 27)
  (at package-1 city-loc-5)
  (at package-2 city-loc-5)
  (at package-3 city-loc-10)
  (at truck-1 city-loc-8)
  (capacity truck-1 capacity-4)
  (at truck-2 city-loc-10)
  (capacity truck-2 capacity-3)
 )
 (:goal (and
  (at package-1 city-loc-2)
  (at package-2 city-loc-6)
  (at package-3 city-loc-3)
 ))
 (:metric minimize (total-cost))
)
