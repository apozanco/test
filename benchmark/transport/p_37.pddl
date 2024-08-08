; Transport city-sequential-10nodes-1000size-3degree-100mindistance-2trucks-3packages-50seed

(define (problem transport-city-sequential-10nodes-1000size-3degree-100mindistance-2trucks-3packages-50seed)
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
  ; 834,544 -> 640,806
  (road city-loc-4 city-loc-1)
  (= (road-length city-loc-4 city-loc-1) 33)
  ; 640,806 -> 834,544
  (road city-loc-1 city-loc-4)
  (= (road-length city-loc-1 city-loc-4) 33)
  ; 834,544 -> 989,556
  (road city-loc-4 city-loc-2)
  (= (road-length city-loc-4 city-loc-2) 16)
  ; 989,556 -> 834,544
  (road city-loc-2 city-loc-4)
  (= (road-length city-loc-2 city-loc-4) 16)
  ; 834,544 -> 508,437
  (road city-loc-4 city-loc-3)
  (= (road-length city-loc-4 city-loc-3) 35)
  ; 508,437 -> 834,544
  (road city-loc-3 city-loc-4)
  (= (road-length city-loc-3 city-loc-4) 35)
  ; 837,690 -> 640,806
  (road city-loc-5 city-loc-1)
  (= (road-length city-loc-5 city-loc-1) 23)
  ; 640,806 -> 837,690
  (road city-loc-1 city-loc-5)
  (= (road-length city-loc-1 city-loc-5) 23)
  ; 837,690 -> 989,556
  (road city-loc-5 city-loc-2)
  (= (road-length city-loc-5 city-loc-2) 21)
  ; 989,556 -> 837,690
  (road city-loc-2 city-loc-5)
  (= (road-length city-loc-2 city-loc-5) 21)
  ; 837,690 -> 834,544
  (road city-loc-5 city-loc-4)
  (= (road-length city-loc-5 city-loc-4) 15)
  ; 834,544 -> 837,690
  (road city-loc-4 city-loc-5)
  (= (road-length city-loc-4 city-loc-5) 15)
  ; 528,307 -> 508,437
  (road city-loc-7 city-loc-3)
  (= (road-length city-loc-7 city-loc-3) 14)
  ; 508,437 -> 528,307
  (road city-loc-3 city-loc-7)
  (= (road-length city-loc-3 city-loc-7) 14)
  ; 95,878 -> 128,511
  (road city-loc-8 city-loc-6)
  (= (road-length city-loc-8 city-loc-6) 37)
  ; 128,511 -> 95,878
  (road city-loc-6 city-loc-8)
  (= (road-length city-loc-6 city-loc-8) 37)
  ; 376,776 -> 640,806
  (road city-loc-9 city-loc-1)
  (= (road-length city-loc-9 city-loc-1) 27)
  ; 640,806 -> 376,776
  (road city-loc-1 city-loc-9)
  (= (road-length city-loc-1 city-loc-9) 27)
  ; 376,776 -> 508,437
  (road city-loc-9 city-loc-3)
  (= (road-length city-loc-9 city-loc-3) 37)
  ; 508,437 -> 376,776
  (road city-loc-3 city-loc-9)
  (= (road-length city-loc-3 city-loc-9) 37)
  ; 376,776 -> 128,511
  (road city-loc-9 city-loc-6)
  (= (road-length city-loc-9 city-loc-6) 37)
  ; 128,511 -> 376,776
  (road city-loc-6 city-loc-9)
  (= (road-length city-loc-6 city-loc-9) 37)
  ; 376,776 -> 95,878
  (road city-loc-9 city-loc-8)
  (= (road-length city-loc-9 city-loc-8) 30)
  ; 95,878 -> 376,776
  (road city-loc-8 city-loc-9)
  (= (road-length city-loc-8 city-loc-9) 30)
  ; 529,153 -> 508,437
  (road city-loc-10 city-loc-3)
  (= (road-length city-loc-10 city-loc-3) 29)
  ; 508,437 -> 529,153
  (road city-loc-3 city-loc-10)
  (= (road-length city-loc-3 city-loc-10) 29)
  ; 529,153 -> 528,307
  (road city-loc-10 city-loc-7)
  (= (road-length city-loc-10 city-loc-7) 16)
  ; 528,307 -> 529,153
  (road city-loc-7 city-loc-10)
  (= (road-length city-loc-7 city-loc-10) 16)
  (at package-1 city-loc-1)
  (at package-2 city-loc-6)
  (at package-3 city-loc-1)
  (at truck-1 city-loc-7)
  (capacity truck-1 capacity-4)
  (at truck-2 city-loc-9)
  (capacity truck-2 capacity-3)
 )
 (:goal (and
  (at package-1 city-loc-4)
  (at package-2 city-loc-3)
  (at package-3 city-loc-10)
 ))
 (:metric minimize (total-cost))
)
