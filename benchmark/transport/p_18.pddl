; Transport city-sequential-10nodes-1000size-3degree-100mindistance-2trucks-3packages-54seed

(define (problem transport-city-sequential-10nodes-1000size-3degree-100mindistance-2trucks-3packages-54seed)
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
  ; 348,528 -> 463,612
  (road city-loc-3 city-loc-1)
  (= (road-length city-loc-3 city-loc-1) 15)
  ; 463,612 -> 348,528
  (road city-loc-1 city-loc-3)
  (= (road-length city-loc-1 city-loc-3) 15)
  ; 348,528 -> 93,555
  (road city-loc-3 city-loc-2)
  (= (road-length city-loc-3 city-loc-2) 26)
  ; 93,555 -> 348,528
  (road city-loc-2 city-loc-3)
  (= (road-length city-loc-2 city-loc-3) 26)
  ; 424,279 -> 463,612
  (road city-loc-5 city-loc-1)
  (= (road-length city-loc-5 city-loc-1) 34)
  ; 463,612 -> 424,279
  (road city-loc-1 city-loc-5)
  (= (road-length city-loc-1 city-loc-5) 34)
  ; 424,279 -> 348,528
  (road city-loc-5 city-loc-3)
  (= (road-length city-loc-5 city-loc-3) 26)
  ; 348,528 -> 424,279
  (road city-loc-3 city-loc-5)
  (= (road-length city-loc-3 city-loc-5) 26)
  ; 557,145 -> 424,279
  (road city-loc-6 city-loc-5)
  (= (road-length city-loc-6 city-loc-5) 19)
  ; 424,279 -> 557,145
  (road city-loc-5 city-loc-6)
  (= (road-length city-loc-5 city-loc-6) 19)
  ; 99,661 -> 463,612
  (road city-loc-7 city-loc-1)
  (= (road-length city-loc-7 city-loc-1) 37)
  ; 463,612 -> 99,661
  (road city-loc-1 city-loc-7)
  (= (road-length city-loc-1 city-loc-7) 37)
  ; 99,661 -> 93,555
  (road city-loc-7 city-loc-2)
  (= (road-length city-loc-7 city-loc-2) 11)
  ; 93,555 -> 99,661
  (road city-loc-2 city-loc-7)
  (= (road-length city-loc-2 city-loc-7) 11)
  ; 99,661 -> 348,528
  (road city-loc-7 city-loc-3)
  (= (road-length city-loc-7 city-loc-3) 29)
  ; 348,528 -> 99,661
  (road city-loc-3 city-loc-7)
  (= (road-length city-loc-3 city-loc-7) 29)
  ; 99,661 -> 300,953
  (road city-loc-7 city-loc-4)
  (= (road-length city-loc-7 city-loc-4) 36)
  ; 300,953 -> 99,661
  (road city-loc-4 city-loc-7)
  (= (road-length city-loc-4 city-loc-7) 36)
  ; 284,448 -> 463,612
  (road city-loc-8 city-loc-1)
  (= (road-length city-loc-8 city-loc-1) 25)
  ; 463,612 -> 284,448
  (road city-loc-1 city-loc-8)
  (= (road-length city-loc-1 city-loc-8) 25)
  ; 284,448 -> 93,555
  (road city-loc-8 city-loc-2)
  (= (road-length city-loc-8 city-loc-2) 22)
  ; 93,555 -> 284,448
  (road city-loc-2 city-loc-8)
  (= (road-length city-loc-2 city-loc-8) 22)
  ; 284,448 -> 348,528
  (road city-loc-8 city-loc-3)
  (= (road-length city-loc-8 city-loc-3) 11)
  ; 348,528 -> 284,448
  (road city-loc-3 city-loc-8)
  (= (road-length city-loc-3 city-loc-8) 11)
  ; 284,448 -> 424,279
  (road city-loc-8 city-loc-5)
  (= (road-length city-loc-8 city-loc-5) 22)
  ; 424,279 -> 284,448
  (road city-loc-5 city-loc-8)
  (= (road-length city-loc-5 city-loc-8) 22)
  ; 284,448 -> 99,661
  (road city-loc-8 city-loc-7)
  (= (road-length city-loc-8 city-loc-7) 29)
  ; 99,661 -> 284,448
  (road city-loc-7 city-loc-8)
  (= (road-length city-loc-7 city-loc-8) 29)
  ; 600,919 -> 463,612
  (road city-loc-9 city-loc-1)
  (= (road-length city-loc-9 city-loc-1) 34)
  ; 463,612 -> 600,919
  (road city-loc-1 city-loc-9)
  (= (road-length city-loc-1 city-loc-9) 34)
  ; 600,919 -> 300,953
  (road city-loc-9 city-loc-4)
  (= (road-length city-loc-9 city-loc-4) 31)
  ; 300,953 -> 600,919
  (road city-loc-4 city-loc-9)
  (= (road-length city-loc-4 city-loc-9) 31)
  ; 37,385 -> 93,555
  (road city-loc-10 city-loc-2)
  (= (road-length city-loc-10 city-loc-2) 18)
  ; 93,555 -> 37,385
  (road city-loc-2 city-loc-10)
  (= (road-length city-loc-2 city-loc-10) 18)
  ; 37,385 -> 348,528
  (road city-loc-10 city-loc-3)
  (= (road-length city-loc-10 city-loc-3) 35)
  ; 348,528 -> 37,385
  (road city-loc-3 city-loc-10)
  (= (road-length city-loc-3 city-loc-10) 35)
  ; 37,385 -> 99,661
  (road city-loc-10 city-loc-7)
  (= (road-length city-loc-10 city-loc-7) 29)
  ; 99,661 -> 37,385
  (road city-loc-7 city-loc-10)
  (= (road-length city-loc-7 city-loc-10) 29)
  ; 37,385 -> 284,448
  (road city-loc-10 city-loc-8)
  (= (road-length city-loc-10 city-loc-8) 26)
  ; 284,448 -> 37,385
  (road city-loc-8 city-loc-10)
  (= (road-length city-loc-8 city-loc-10) 26)
  (at package-1 city-loc-1)
  (at package-2 city-loc-6)
  (at package-3 city-loc-5)
  (at truck-1 city-loc-4)
  (capacity truck-1 capacity-2)
  (at truck-2 city-loc-1)
  (capacity truck-2 capacity-4)
 )
 (:goal (and
  (at package-1 city-loc-3)
  (at package-2 city-loc-3)
  (at package-3 city-loc-7)
 ))
 (:metric minimize (total-cost))
)
