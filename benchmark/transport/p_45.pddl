; Transport city-sequential-10nodes-1000size-3degree-100mindistance-2trucks-3packages-47seed

(define (problem transport-city-sequential-10nodes-1000size-3degree-100mindistance-2trucks-3packages-47seed)
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
  ; 568,944 -> 791,829
  (road city-loc-3 city-loc-1)
  (= (road-length city-loc-3 city-loc-1) 26)
  ; 791,829 -> 568,944
  (road city-loc-1 city-loc-3)
  (= (road-length city-loc-1 city-loc-3) 26)
  ; 568,944 -> 244,828
  (road city-loc-3 city-loc-2)
  (= (road-length city-loc-3 city-loc-2) 35)
  ; 244,828 -> 568,944
  (road city-loc-2 city-loc-3)
  (= (road-length city-loc-2 city-loc-3) 35)
  ; 545,578 -> 791,829
  (road city-loc-5 city-loc-1)
  (= (road-length city-loc-5 city-loc-1) 36)
  ; 791,829 -> 545,578
  (road city-loc-1 city-loc-5)
  (= (road-length city-loc-1 city-loc-5) 36)
  ; 545,578 -> 568,944
  (road city-loc-5 city-loc-3)
  (= (road-length city-loc-5 city-loc-3) 37)
  ; 568,944 -> 545,578
  (road city-loc-3 city-loc-5)
  (= (road-length city-loc-3 city-loc-5) 37)
  ; 545,578 -> 267,365
  (road city-loc-5 city-loc-4)
  (= (road-length city-loc-5 city-loc-4) 35)
  ; 267,365 -> 545,578
  (road city-loc-4 city-loc-5)
  (= (road-length city-loc-4 city-loc-5) 35)
  ; 41,495 -> 267,365
  (road city-loc-6 city-loc-4)
  (= (road-length city-loc-6 city-loc-4) 27)
  ; 267,365 -> 41,495
  (road city-loc-4 city-loc-6)
  (= (road-length city-loc-4 city-loc-6) 27)
  ; 319,576 -> 244,828
  (road city-loc-7 city-loc-2)
  (= (road-length city-loc-7 city-loc-2) 27)
  ; 244,828 -> 319,576
  (road city-loc-2 city-loc-7)
  (= (road-length city-loc-2 city-loc-7) 27)
  ; 319,576 -> 267,365
  (road city-loc-7 city-loc-4)
  (= (road-length city-loc-7 city-loc-4) 22)
  ; 267,365 -> 319,576
  (road city-loc-4 city-loc-7)
  (= (road-length city-loc-4 city-loc-7) 22)
  ; 319,576 -> 545,578
  (road city-loc-7 city-loc-5)
  (= (road-length city-loc-7 city-loc-5) 23)
  ; 545,578 -> 319,576
  (road city-loc-5 city-loc-7)
  (= (road-length city-loc-5 city-loc-7) 23)
  ; 319,576 -> 41,495
  (road city-loc-7 city-loc-6)
  (= (road-length city-loc-7 city-loc-6) 29)
  ; 41,495 -> 319,576
  (road city-loc-6 city-loc-7)
  (= (road-length city-loc-6 city-loc-7) 29)
  ; 798,404 -> 545,578
  (road city-loc-8 city-loc-5)
  (= (road-length city-loc-8 city-loc-5) 31)
  ; 545,578 -> 798,404
  (road city-loc-5 city-loc-8)
  (= (road-length city-loc-5 city-loc-8) 31)
  ; 266,967 -> 244,828
  (road city-loc-9 city-loc-2)
  (= (road-length city-loc-9 city-loc-2) 15)
  ; 244,828 -> 266,967
  (road city-loc-2 city-loc-9)
  (= (road-length city-loc-2 city-loc-9) 15)
  ; 266,967 -> 568,944
  (road city-loc-9 city-loc-3)
  (= (road-length city-loc-9 city-loc-3) 31)
  ; 568,944 -> 266,967
  (road city-loc-3 city-loc-9)
  (= (road-length city-loc-3 city-loc-9) 31)
  ; 747,531 -> 791,829
  (road city-loc-10 city-loc-1)
  (= (road-length city-loc-10 city-loc-1) 31)
  ; 791,829 -> 747,531
  (road city-loc-1 city-loc-10)
  (= (road-length city-loc-1 city-loc-10) 31)
  ; 747,531 -> 545,578
  (road city-loc-10 city-loc-5)
  (= (road-length city-loc-10 city-loc-5) 21)
  ; 545,578 -> 747,531
  (road city-loc-5 city-loc-10)
  (= (road-length city-loc-5 city-loc-10) 21)
  ; 747,531 -> 798,404
  (road city-loc-10 city-loc-8)
  (= (road-length city-loc-10 city-loc-8) 14)
  ; 798,404 -> 747,531
  (road city-loc-8 city-loc-10)
  (= (road-length city-loc-8 city-loc-10) 14)
  (at package-1 city-loc-4)
  (at package-2 city-loc-10)
  (at package-3 city-loc-2)
  (at truck-1 city-loc-4)
  (capacity truck-1 capacity-4)
  (at truck-2 city-loc-8)
  (capacity truck-2 capacity-3)
 )
 (:goal (and
  (at package-1 city-loc-5)
  (at package-2 city-loc-9)
  (at package-3 city-loc-3)
 ))
 (:metric minimize (total-cost))
)
