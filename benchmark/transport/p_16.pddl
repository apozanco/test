; Transport city-sequential-10nodes-1000size-3degree-100mindistance-2trucks-3packages-89seed

(define (problem transport-city-sequential-10nodes-1000size-3degree-100mindistance-2trucks-3packages-89seed)
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
  ; 571,177 -> 858,318
  (road city-loc-3 city-loc-2)
  (= (road-length city-loc-3 city-loc-2) 32)
  ; 858,318 -> 571,177
  (road city-loc-2 city-loc-3)
  (= (road-length city-loc-2 city-loc-3) 32)
  ; 551,496 -> 737,693
  (road city-loc-4 city-loc-1)
  (= (road-length city-loc-4 city-loc-1) 28)
  ; 737,693 -> 551,496
  (road city-loc-1 city-loc-4)
  (= (road-length city-loc-1 city-loc-4) 28)
  ; 551,496 -> 858,318
  (road city-loc-4 city-loc-2)
  (= (road-length city-loc-4 city-loc-2) 36)
  ; 858,318 -> 551,496
  (road city-loc-2 city-loc-4)
  (= (road-length city-loc-2 city-loc-4) 36)
  ; 551,496 -> 571,177
  (road city-loc-4 city-loc-3)
  (= (road-length city-loc-4 city-loc-3) 32)
  ; 571,177 -> 551,496
  (road city-loc-3 city-loc-4)
  (= (road-length city-loc-3 city-loc-4) 32)
  ; 407,769 -> 737,693
  (road city-loc-5 city-loc-1)
  (= (road-length city-loc-5 city-loc-1) 34)
  ; 737,693 -> 407,769
  (road city-loc-1 city-loc-5)
  (= (road-length city-loc-1 city-loc-5) 34)
  ; 407,769 -> 551,496
  (road city-loc-5 city-loc-4)
  (= (road-length city-loc-5 city-loc-4) 31)
  ; 551,496 -> 407,769
  (road city-loc-4 city-loc-5)
  (= (road-length city-loc-4 city-loc-5) 31)
  ; 680,482 -> 737,693
  (road city-loc-6 city-loc-1)
  (= (road-length city-loc-6 city-loc-1) 22)
  ; 737,693 -> 680,482
  (road city-loc-1 city-loc-6)
  (= (road-length city-loc-1 city-loc-6) 22)
  ; 680,482 -> 858,318
  (road city-loc-6 city-loc-2)
  (= (road-length city-loc-6 city-loc-2) 25)
  ; 858,318 -> 680,482
  (road city-loc-2 city-loc-6)
  (= (road-length city-loc-2 city-loc-6) 25)
  ; 680,482 -> 571,177
  (road city-loc-6 city-loc-3)
  (= (road-length city-loc-6 city-loc-3) 33)
  ; 571,177 -> 680,482
  (road city-loc-3 city-loc-6)
  (= (road-length city-loc-3 city-loc-6) 33)
  ; 680,482 -> 551,496
  (road city-loc-6 city-loc-4)
  (= (road-length city-loc-6 city-loc-4) 13)
  ; 551,496 -> 680,482
  (road city-loc-4 city-loc-6)
  (= (road-length city-loc-4 city-loc-6) 13)
  ; 350,992 -> 407,769
  (road city-loc-7 city-loc-5)
  (= (road-length city-loc-7 city-loc-5) 23)
  ; 407,769 -> 350,992
  (road city-loc-5 city-loc-7)
  (= (road-length city-loc-5 city-loc-7) 23)
  ; 568,947 -> 737,693
  (road city-loc-8 city-loc-1)
  (= (road-length city-loc-8 city-loc-1) 31)
  ; 737,693 -> 568,947
  (road city-loc-1 city-loc-8)
  (= (road-length city-loc-1 city-loc-8) 31)
  ; 568,947 -> 407,769
  (road city-loc-8 city-loc-5)
  (= (road-length city-loc-8 city-loc-5) 24)
  ; 407,769 -> 568,947
  (road city-loc-5 city-loc-8)
  (= (road-length city-loc-5 city-loc-8) 24)
  ; 568,947 -> 350,992
  (road city-loc-8 city-loc-7)
  (= (road-length city-loc-8 city-loc-7) 23)
  ; 350,992 -> 568,947
  (road city-loc-7 city-loc-8)
  (= (road-length city-loc-7 city-loc-8) 23)
  ; 535,294 -> 858,318
  (road city-loc-9 city-loc-2)
  (= (road-length city-loc-9 city-loc-2) 33)
  ; 858,318 -> 535,294
  (road city-loc-2 city-loc-9)
  (= (road-length city-loc-2 city-loc-9) 33)
  ; 535,294 -> 571,177
  (road city-loc-9 city-loc-3)
  (= (road-length city-loc-9 city-loc-3) 13)
  ; 571,177 -> 535,294
  (road city-loc-3 city-loc-9)
  (= (road-length city-loc-3 city-loc-9) 13)
  ; 535,294 -> 551,496
  (road city-loc-9 city-loc-4)
  (= (road-length city-loc-9 city-loc-4) 21)
  ; 551,496 -> 535,294
  (road city-loc-4 city-loc-9)
  (= (road-length city-loc-4 city-loc-9) 21)
  ; 535,294 -> 680,482
  (road city-loc-9 city-loc-6)
  (= (road-length city-loc-9 city-loc-6) 24)
  ; 680,482 -> 535,294
  (road city-loc-6 city-loc-9)
  (= (road-length city-loc-6 city-loc-9) 24)
  ; 680,211 -> 858,318
  (road city-loc-10 city-loc-2)
  (= (road-length city-loc-10 city-loc-2) 21)
  ; 858,318 -> 680,211
  (road city-loc-2 city-loc-10)
  (= (road-length city-loc-2 city-loc-10) 21)
  ; 680,211 -> 571,177
  (road city-loc-10 city-loc-3)
  (= (road-length city-loc-10 city-loc-3) 12)
  ; 571,177 -> 680,211
  (road city-loc-3 city-loc-10)
  (= (road-length city-loc-3 city-loc-10) 12)
  ; 680,211 -> 551,496
  (road city-loc-10 city-loc-4)
  (= (road-length city-loc-10 city-loc-4) 32)
  ; 551,496 -> 680,211
  (road city-loc-4 city-loc-10)
  (= (road-length city-loc-4 city-loc-10) 32)
  ; 680,211 -> 680,482
  (road city-loc-10 city-loc-6)
  (= (road-length city-loc-10 city-loc-6) 28)
  ; 680,482 -> 680,211
  (road city-loc-6 city-loc-10)
  (= (road-length city-loc-6 city-loc-10) 28)
  ; 680,211 -> 535,294
  (road city-loc-10 city-loc-9)
  (= (road-length city-loc-10 city-loc-9) 17)
  ; 535,294 -> 680,211
  (road city-loc-9 city-loc-10)
  (= (road-length city-loc-9 city-loc-10) 17)
  (at package-1 city-loc-9)
  (at package-2 city-loc-9)
  (at package-3 city-loc-5)
  (at truck-1 city-loc-10)
  (capacity truck-1 capacity-4)
  (at truck-2 city-loc-10)
  (capacity truck-2 capacity-2)
 )
 (:goal (and
  (at package-1 city-loc-10)
  (at package-2 city-loc-6)
  (at package-3 city-loc-7)
 ))
 (:metric minimize (total-cost))
)
