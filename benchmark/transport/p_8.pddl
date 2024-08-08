; Transport city-sequential-10nodes-1000size-3degree-100mindistance-2trucks-3packages-34seed

(define (problem transport-city-sequential-10nodes-1000size-3degree-100mindistance-2trucks-3packages-34seed)
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
  ; 651,317 -> 956,170
  (road city-loc-3 city-loc-1)
  (= (road-length city-loc-3 city-loc-1) 34)
  ; 956,170 -> 651,317
  (road city-loc-1 city-loc-3)
  (= (road-length city-loc-1 city-loc-3) 34)
  ; 298,390 -> 651,317
  (road city-loc-4 city-loc-3)
  (= (road-length city-loc-4 city-loc-3) 36)
  ; 651,317 -> 298,390
  (road city-loc-3 city-loc-4)
  (= (road-length city-loc-3 city-loc-4) 36)
  ; 321,217 -> 651,317
  (road city-loc-5 city-loc-3)
  (= (road-length city-loc-5 city-loc-3) 35)
  ; 651,317 -> 321,217
  (road city-loc-3 city-loc-5)
  (= (road-length city-loc-3 city-loc-5) 35)
  ; 321,217 -> 298,390
  (road city-loc-5 city-loc-4)
  (= (road-length city-loc-5 city-loc-4) 18)
  ; 298,390 -> 321,217
  (road city-loc-4 city-loc-5)
  (= (road-length city-loc-4 city-loc-5) 18)
  ; 210,463 -> 298,390
  (road city-loc-6 city-loc-4)
  (= (road-length city-loc-6 city-loc-4) 12)
  ; 298,390 -> 210,463
  (road city-loc-4 city-loc-6)
  (= (road-length city-loc-4 city-loc-6) 12)
  ; 210,463 -> 321,217
  (road city-loc-6 city-loc-5)
  (= (road-length city-loc-6 city-loc-5) 27)
  ; 321,217 -> 210,463
  (road city-loc-5 city-loc-6)
  (= (road-length city-loc-5 city-loc-6) 27)
  ; 548,183 -> 651,317
  (road city-loc-7 city-loc-3)
  (= (road-length city-loc-7 city-loc-3) 17)
  ; 651,317 -> 548,183
  (road city-loc-3 city-loc-7)
  (= (road-length city-loc-3 city-loc-7) 17)
  ; 548,183 -> 298,390
  (road city-loc-7 city-loc-4)
  (= (road-length city-loc-7 city-loc-4) 33)
  ; 298,390 -> 548,183
  (road city-loc-4 city-loc-7)
  (= (road-length city-loc-4 city-loc-7) 33)
  ; 548,183 -> 321,217
  (road city-loc-7 city-loc-5)
  (= (road-length city-loc-7 city-loc-5) 23)
  ; 321,217 -> 548,183
  (road city-loc-5 city-loc-7)
  (= (road-length city-loc-5 city-loc-7) 23)
  ; 586,735 -> 602,894
  (road city-loc-8 city-loc-2)
  (= (road-length city-loc-8 city-loc-2) 16)
  ; 602,894 -> 586,735
  (road city-loc-2 city-loc-8)
  (= (road-length city-loc-2 city-loc-8) 16)
  ; 401,556 -> 651,317
  (road city-loc-9 city-loc-3)
  (= (road-length city-loc-9 city-loc-3) 35)
  ; 651,317 -> 401,556
  (road city-loc-3 city-loc-9)
  (= (road-length city-loc-3 city-loc-9) 35)
  ; 401,556 -> 298,390
  (road city-loc-9 city-loc-4)
  (= (road-length city-loc-9 city-loc-4) 20)
  ; 298,390 -> 401,556
  (road city-loc-4 city-loc-9)
  (= (road-length city-loc-4 city-loc-9) 20)
  ; 401,556 -> 321,217
  (road city-loc-9 city-loc-5)
  (= (road-length city-loc-9 city-loc-5) 35)
  ; 321,217 -> 401,556
  (road city-loc-5 city-loc-9)
  (= (road-length city-loc-5 city-loc-9) 35)
  ; 401,556 -> 210,463
  (road city-loc-9 city-loc-6)
  (= (road-length city-loc-9 city-loc-6) 22)
  ; 210,463 -> 401,556
  (road city-loc-6 city-loc-9)
  (= (road-length city-loc-6 city-loc-9) 22)
  ; 401,556 -> 586,735
  (road city-loc-9 city-loc-8)
  (= (road-length city-loc-9 city-loc-8) 26)
  ; 586,735 -> 401,556
  (road city-loc-8 city-loc-9)
  (= (road-length city-loc-8 city-loc-9) 26)
  ; 434,241 -> 651,317
  (road city-loc-10 city-loc-3)
  (= (road-length city-loc-10 city-loc-3) 23)
  ; 651,317 -> 434,241
  (road city-loc-3 city-loc-10)
  (= (road-length city-loc-3 city-loc-10) 23)
  ; 434,241 -> 298,390
  (road city-loc-10 city-loc-4)
  (= (road-length city-loc-10 city-loc-4) 21)
  ; 298,390 -> 434,241
  (road city-loc-4 city-loc-10)
  (= (road-length city-loc-4 city-loc-10) 21)
  ; 434,241 -> 321,217
  (road city-loc-10 city-loc-5)
  (= (road-length city-loc-10 city-loc-5) 12)
  ; 321,217 -> 434,241
  (road city-loc-5 city-loc-10)
  (= (road-length city-loc-5 city-loc-10) 12)
  ; 434,241 -> 210,463
  (road city-loc-10 city-loc-6)
  (= (road-length city-loc-10 city-loc-6) 32)
  ; 210,463 -> 434,241
  (road city-loc-6 city-loc-10)
  (= (road-length city-loc-6 city-loc-10) 32)
  ; 434,241 -> 548,183
  (road city-loc-10 city-loc-7)
  (= (road-length city-loc-10 city-loc-7) 13)
  ; 548,183 -> 434,241
  (road city-loc-7 city-loc-10)
  (= (road-length city-loc-7 city-loc-10) 13)
  ; 434,241 -> 401,556
  (road city-loc-10 city-loc-9)
  (= (road-length city-loc-10 city-loc-9) 32)
  ; 401,556 -> 434,241
  (road city-loc-9 city-loc-10)
  (= (road-length city-loc-9 city-loc-10) 32)
  (at package-1 city-loc-4)
  (at package-2 city-loc-2)
  (at package-3 city-loc-10)
  (at truck-1 city-loc-2)
  (capacity truck-1 capacity-4)
  (at truck-2 city-loc-5)
  (capacity truck-2 capacity-3)
 )
 (:goal (and
  (at package-1 city-loc-7)
  (at package-2 city-loc-10)
  (at package-3 city-loc-5)
 ))
 (:metric minimize (total-cost))
)
