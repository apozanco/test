; Transport city-sequential-10nodes-1000size-3degree-100mindistance-2trucks-3packages-64seed

(define (problem transport-city-sequential-10nodes-1000size-3degree-100mindistance-2trucks-3packages-64seed)
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
  ; 552,201 -> 270,224
  (road city-loc-2 city-loc-1)
  (= (road-length city-loc-2 city-loc-1) 29)
  ; 270,224 -> 552,201
  (road city-loc-1 city-loc-2)
  (= (road-length city-loc-1 city-loc-2) 29)
  ; 469,406 -> 270,224
  (road city-loc-4 city-loc-1)
  (= (road-length city-loc-4 city-loc-1) 27)
  ; 270,224 -> 469,406
  (road city-loc-1 city-loc-4)
  (= (road-length city-loc-1 city-loc-4) 27)
  ; 469,406 -> 552,201
  (road city-loc-4 city-loc-2)
  (= (road-length city-loc-4 city-loc-2) 23)
  ; 552,201 -> 469,406
  (road city-loc-2 city-loc-4)
  (= (road-length city-loc-2 city-loc-4) 23)
  ; 913,218 -> 552,201
  (road city-loc-5 city-loc-2)
  (= (road-length city-loc-5 city-loc-2) 37)
  ; 552,201 -> 913,218
  (road city-loc-2 city-loc-5)
  (= (road-length city-loc-2 city-loc-5) 37)
  ; 302,760 -> 90,834
  (road city-loc-6 city-loc-3)
  (= (road-length city-loc-6 city-loc-3) 23)
  ; 90,834 -> 302,760
  (road city-loc-3 city-loc-6)
  (= (road-length city-loc-3 city-loc-6) 23)
  ; 140,562 -> 270,224
  (road city-loc-7 city-loc-1)
  (= (road-length city-loc-7 city-loc-1) 37)
  ; 270,224 -> 140,562
  (road city-loc-1 city-loc-7)
  (= (road-length city-loc-1 city-loc-7) 37)
  ; 140,562 -> 90,834
  (road city-loc-7 city-loc-3)
  (= (road-length city-loc-7 city-loc-3) 28)
  ; 90,834 -> 140,562
  (road city-loc-3 city-loc-7)
  (= (road-length city-loc-3 city-loc-7) 28)
  ; 140,562 -> 469,406
  (road city-loc-7 city-loc-4)
  (= (road-length city-loc-7 city-loc-4) 37)
  ; 469,406 -> 140,562
  (road city-loc-4 city-loc-7)
  (= (road-length city-loc-4 city-loc-7) 37)
  ; 140,562 -> 302,760
  (road city-loc-7 city-loc-6)
  (= (road-length city-loc-7 city-loc-6) 26)
  ; 302,760 -> 140,562
  (road city-loc-6 city-loc-7)
  (= (road-length city-loc-6 city-loc-7) 26)
  ; 521,314 -> 270,224
  (road city-loc-8 city-loc-1)
  (= (road-length city-loc-8 city-loc-1) 27)
  ; 270,224 -> 521,314
  (road city-loc-1 city-loc-8)
  (= (road-length city-loc-1 city-loc-8) 27)
  ; 521,314 -> 552,201
  (road city-loc-8 city-loc-2)
  (= (road-length city-loc-8 city-loc-2) 12)
  ; 552,201 -> 521,314
  (road city-loc-2 city-loc-8)
  (= (road-length city-loc-2 city-loc-8) 12)
  ; 521,314 -> 469,406
  (road city-loc-8 city-loc-4)
  (= (road-length city-loc-8 city-loc-4) 11)
  ; 469,406 -> 521,314
  (road city-loc-4 city-loc-8)
  (= (road-length city-loc-4 city-loc-8) 11)
  ; 765,372 -> 552,201
  (road city-loc-9 city-loc-2)
  (= (road-length city-loc-9 city-loc-2) 28)
  ; 552,201 -> 765,372
  (road city-loc-2 city-loc-9)
  (= (road-length city-loc-2 city-loc-9) 28)
  ; 765,372 -> 469,406
  (road city-loc-9 city-loc-4)
  (= (road-length city-loc-9 city-loc-4) 30)
  ; 469,406 -> 765,372
  (road city-loc-4 city-loc-9)
  (= (road-length city-loc-4 city-loc-9) 30)
  ; 765,372 -> 913,218
  (road city-loc-9 city-loc-5)
  (= (road-length city-loc-9 city-loc-5) 22)
  ; 913,218 -> 765,372
  (road city-loc-5 city-loc-9)
  (= (road-length city-loc-5 city-loc-9) 22)
  ; 765,372 -> 521,314
  (road city-loc-9 city-loc-8)
  (= (road-length city-loc-9 city-loc-8) 26)
  ; 521,314 -> 765,372
  (road city-loc-8 city-loc-9)
  (= (road-length city-loc-8 city-loc-9) 26)
  ; 704,498 -> 552,201
  (road city-loc-10 city-loc-2)
  (= (road-length city-loc-10 city-loc-2) 34)
  ; 552,201 -> 704,498
  (road city-loc-2 city-loc-10)
  (= (road-length city-loc-2 city-loc-10) 34)
  ; 704,498 -> 469,406
  (road city-loc-10 city-loc-4)
  (= (road-length city-loc-10 city-loc-4) 26)
  ; 469,406 -> 704,498
  (road city-loc-4 city-loc-10)
  (= (road-length city-loc-4 city-loc-10) 26)
  ; 704,498 -> 913,218
  (road city-loc-10 city-loc-5)
  (= (road-length city-loc-10 city-loc-5) 35)
  ; 913,218 -> 704,498
  (road city-loc-5 city-loc-10)
  (= (road-length city-loc-5 city-loc-10) 35)
  ; 704,498 -> 521,314
  (road city-loc-10 city-loc-8)
  (= (road-length city-loc-10 city-loc-8) 26)
  ; 521,314 -> 704,498
  (road city-loc-8 city-loc-10)
  (= (road-length city-loc-8 city-loc-10) 26)
  ; 704,498 -> 765,372
  (road city-loc-10 city-loc-9)
  (= (road-length city-loc-10 city-loc-9) 14)
  ; 765,372 -> 704,498
  (road city-loc-9 city-loc-10)
  (= (road-length city-loc-9 city-loc-10) 14)
  (at package-1 city-loc-9)
  (at package-2 city-loc-3)
  (at package-3 city-loc-1)
  (at truck-1 city-loc-4)
  (capacity truck-1 capacity-2)
  (at truck-2 city-loc-3)
  (capacity truck-2 capacity-3)
 )
 (:goal (and
  (at package-1 city-loc-4)
  (at package-2 city-loc-4)
  (at package-3 city-loc-5)
 ))
 (:metric minimize (total-cost))
)
