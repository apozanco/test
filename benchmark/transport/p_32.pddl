; Transport city-sequential-10nodes-1000size-3degree-100mindistance-2trucks-3packages-6seed

(define (problem transport-city-sequential-10nodes-1000size-3degree-100mindistance-2trucks-3packages-6seed)
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
  ; 440,311 -> 648,370
  (road city-loc-3 city-loc-1)
  (= (road-length city-loc-3 city-loc-1) 22)
  ; 648,370 -> 440,311
  (road city-loc-1 city-loc-3)
  (= (road-length city-loc-1 city-loc-3) 22)
  ; 440,311 -> 250,616
  (road city-loc-3 city-loc-2)
  (= (road-length city-loc-3 city-loc-2) 36)
  ; 250,616 -> 440,311
  (road city-loc-2 city-loc-3)
  (= (road-length city-loc-2 city-loc-3) 36)
  ; 365,603 -> 648,370
  (road city-loc-4 city-loc-1)
  (= (road-length city-loc-4 city-loc-1) 37)
  ; 648,370 -> 365,603
  (road city-loc-1 city-loc-4)
  (= (road-length city-loc-1 city-loc-4) 37)
  ; 365,603 -> 250,616
  (road city-loc-4 city-loc-2)
  (= (road-length city-loc-4 city-loc-2) 12)
  ; 250,616 -> 365,603
  (road city-loc-2 city-loc-4)
  (= (road-length city-loc-2 city-loc-4) 12)
  ; 365,603 -> 440,311
  (road city-loc-4 city-loc-3)
  (= (road-length city-loc-4 city-loc-3) 31)
  ; 440,311 -> 365,603
  (road city-loc-3 city-loc-4)
  (= (road-length city-loc-3 city-loc-4) 31)
  ; 512,901 -> 365,603
  (road city-loc-6 city-loc-4)
  (= (road-length city-loc-6 city-loc-4) 34)
  ; 365,603 -> 512,901
  (road city-loc-4 city-loc-6)
  (= (road-length city-loc-4 city-loc-6) 34)
  ; 694,537 -> 648,370
  (road city-loc-7 city-loc-1)
  (= (road-length city-loc-7 city-loc-1) 18)
  ; 648,370 -> 694,537
  (road city-loc-1 city-loc-7)
  (= (road-length city-loc-1 city-loc-7) 18)
  ; 694,537 -> 440,311
  (road city-loc-7 city-loc-3)
  (= (road-length city-loc-7 city-loc-3) 34)
  ; 440,311 -> 694,537
  (road city-loc-3 city-loc-7)
  (= (road-length city-loc-3 city-loc-7) 34)
  ; 694,537 -> 365,603
  (road city-loc-7 city-loc-4)
  (= (road-length city-loc-7 city-loc-4) 34)
  ; 365,603 -> 694,537
  (road city-loc-4 city-loc-7)
  (= (road-length city-loc-4 city-loc-7) 34)
  ; 622,678 -> 648,370
  (road city-loc-8 city-loc-1)
  (= (road-length city-loc-8 city-loc-1) 31)
  ; 648,370 -> 622,678
  (road city-loc-1 city-loc-8)
  (= (road-length city-loc-1 city-loc-8) 31)
  ; 622,678 -> 250,616
  (road city-loc-8 city-loc-2)
  (= (road-length city-loc-8 city-loc-2) 38)
  ; 250,616 -> 622,678
  (road city-loc-2 city-loc-8)
  (= (road-length city-loc-2 city-loc-8) 38)
  ; 622,678 -> 365,603
  (road city-loc-8 city-loc-4)
  (= (road-length city-loc-8 city-loc-4) 27)
  ; 365,603 -> 622,678
  (road city-loc-4 city-loc-8)
  (= (road-length city-loc-4 city-loc-8) 27)
  ; 622,678 -> 512,901
  (road city-loc-8 city-loc-6)
  (= (road-length city-loc-8 city-loc-6) 25)
  ; 512,901 -> 622,678
  (road city-loc-6 city-loc-8)
  (= (road-length city-loc-6 city-loc-8) 25)
  ; 622,678 -> 694,537
  (road city-loc-8 city-loc-7)
  (= (road-length city-loc-8 city-loc-7) 16)
  ; 694,537 -> 622,678
  (road city-loc-7 city-loc-8)
  (= (road-length city-loc-7 city-loc-8) 16)
  ; 274,319 -> 648,370
  (road city-loc-9 city-loc-1)
  (= (road-length city-loc-9 city-loc-1) 38)
  ; 648,370 -> 274,319
  (road city-loc-1 city-loc-9)
  (= (road-length city-loc-1 city-loc-9) 38)
  ; 274,319 -> 250,616
  (road city-loc-9 city-loc-2)
  (= (road-length city-loc-9 city-loc-2) 30)
  ; 250,616 -> 274,319
  (road city-loc-2 city-loc-9)
  (= (road-length city-loc-2 city-loc-9) 30)
  ; 274,319 -> 440,311
  (road city-loc-9 city-loc-3)
  (= (road-length city-loc-9 city-loc-3) 17)
  ; 440,311 -> 274,319
  (road city-loc-3 city-loc-9)
  (= (road-length city-loc-3 city-loc-9) 17)
  ; 274,319 -> 365,603
  (road city-loc-9 city-loc-4)
  (= (road-length city-loc-9 city-loc-4) 30)
  ; 365,603 -> 274,319
  (road city-loc-4 city-loc-9)
  (= (road-length city-loc-4 city-loc-9) 30)
  ; 274,319 -> 122,91
  (road city-loc-9 city-loc-5)
  (= (road-length city-loc-9 city-loc-5) 28)
  ; 122,91 -> 274,319
  (road city-loc-5 city-loc-9)
  (= (road-length city-loc-5 city-loc-9) 28)
  ; 736,200 -> 648,370
  (road city-loc-10 city-loc-1)
  (= (road-length city-loc-10 city-loc-1) 20)
  ; 648,370 -> 736,200
  (road city-loc-1 city-loc-10)
  (= (road-length city-loc-1 city-loc-10) 20)
  ; 736,200 -> 440,311
  (road city-loc-10 city-loc-3)
  (= (road-length city-loc-10 city-loc-3) 32)
  ; 440,311 -> 736,200
  (road city-loc-3 city-loc-10)
  (= (road-length city-loc-3 city-loc-10) 32)
  ; 736,200 -> 694,537
  (road city-loc-10 city-loc-7)
  (= (road-length city-loc-10 city-loc-7) 34)
  ; 694,537 -> 736,200
  (road city-loc-7 city-loc-10)
  (= (road-length city-loc-7 city-loc-10) 34)
  (at package-1 city-loc-7)
  (at package-2 city-loc-8)
  (at package-3 city-loc-4)
  (at truck-1 city-loc-10)
  (capacity truck-1 capacity-2)
  (at truck-2 city-loc-9)
  (capacity truck-2 capacity-2)
 )
 (:goal (and
  (at package-1 city-loc-1)
  (at package-2 city-loc-4)
  (at package-3 city-loc-3)
 ))
 (:metric minimize (total-cost))
)
