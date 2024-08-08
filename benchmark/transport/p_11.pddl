; Transport city-sequential-10nodes-1000size-3degree-100mindistance-2trucks-3packages-40seed

(define (problem transport-city-sequential-10nodes-1000size-3degree-100mindistance-2trucks-3packages-40seed)
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
  ; 166,532 -> 232,755
  (road city-loc-3 city-loc-1)
  (= (road-length city-loc-3 city-loc-1) 24)
  ; 232,755 -> 166,532
  (road city-loc-1 city-loc-3)
  (= (road-length city-loc-1 city-loc-3) 24)
  ; 166,532 -> 157,317
  (road city-loc-3 city-loc-2)
  (= (road-length city-loc-3 city-loc-2) 22)
  ; 157,317 -> 166,532
  (road city-loc-2 city-loc-3)
  (= (road-length city-loc-2 city-loc-3) 22)
  ; 472,803 -> 232,755
  (road city-loc-5 city-loc-1)
  (= (road-length city-loc-5 city-loc-1) 25)
  ; 232,755 -> 472,803
  (road city-loc-1 city-loc-5)
  (= (road-length city-loc-1 city-loc-5) 25)
  ; 161,915 -> 232,755
  (road city-loc-6 city-loc-1)
  (= (road-length city-loc-6 city-loc-1) 18)
  ; 232,755 -> 161,915
  (road city-loc-1 city-loc-6)
  (= (road-length city-loc-1 city-loc-6) 18)
  ; 161,915 -> 472,803
  (road city-loc-6 city-loc-5)
  (= (road-length city-loc-6 city-loc-5) 34)
  ; 472,803 -> 161,915
  (road city-loc-5 city-loc-6)
  (= (road-length city-loc-5 city-loc-6) 34)
  ; 600,215 -> 846,298
  (road city-loc-7 city-loc-4)
  (= (road-length city-loc-7 city-loc-4) 26)
  ; 846,298 -> 600,215
  (road city-loc-4 city-loc-7)
  (= (road-length city-loc-4 city-loc-7) 26)
  ; 503,443 -> 157,317
  (road city-loc-8 city-loc-2)
  (= (road-length city-loc-8 city-loc-2) 37)
  ; 157,317 -> 503,443
  (road city-loc-2 city-loc-8)
  (= (road-length city-loc-2 city-loc-8) 37)
  ; 503,443 -> 166,532
  (road city-loc-8 city-loc-3)
  (= (road-length city-loc-8 city-loc-3) 35)
  ; 166,532 -> 503,443
  (road city-loc-3 city-loc-8)
  (= (road-length city-loc-3 city-loc-8) 35)
  ; 503,443 -> 846,298
  (road city-loc-8 city-loc-4)
  (= (road-length city-loc-8 city-loc-4) 38)
  ; 846,298 -> 503,443
  (road city-loc-4 city-loc-8)
  (= (road-length city-loc-4 city-loc-8) 38)
  ; 503,443 -> 472,803
  (road city-loc-8 city-loc-5)
  (= (road-length city-loc-8 city-loc-5) 37)
  ; 472,803 -> 503,443
  (road city-loc-5 city-loc-8)
  (= (road-length city-loc-5 city-loc-8) 37)
  ; 503,443 -> 600,215
  (road city-loc-8 city-loc-7)
  (= (road-length city-loc-8 city-loc-7) 25)
  ; 600,215 -> 503,443
  (road city-loc-7 city-loc-8)
  (= (road-length city-loc-7 city-loc-8) 25)
  ; 528,65 -> 600,215
  (road city-loc-9 city-loc-7)
  (= (road-length city-loc-9 city-loc-7) 17)
  ; 600,215 -> 528,65
  (road city-loc-7 city-loc-9)
  (= (road-length city-loc-7 city-loc-9) 17)
  ; 209,623 -> 232,755
  (road city-loc-10 city-loc-1)
  (= (road-length city-loc-10 city-loc-1) 14)
  ; 232,755 -> 209,623
  (road city-loc-1 city-loc-10)
  (= (road-length city-loc-1 city-loc-10) 14)
  ; 209,623 -> 157,317
  (road city-loc-10 city-loc-2)
  (= (road-length city-loc-10 city-loc-2) 31)
  ; 157,317 -> 209,623
  (road city-loc-2 city-loc-10)
  (= (road-length city-loc-2 city-loc-10) 31)
  ; 209,623 -> 166,532
  (road city-loc-10 city-loc-3)
  (= (road-length city-loc-10 city-loc-3) 11)
  ; 166,532 -> 209,623
  (road city-loc-3 city-loc-10)
  (= (road-length city-loc-3 city-loc-10) 11)
  ; 209,623 -> 472,803
  (road city-loc-10 city-loc-5)
  (= (road-length city-loc-10 city-loc-5) 32)
  ; 472,803 -> 209,623
  (road city-loc-5 city-loc-10)
  (= (road-length city-loc-5 city-loc-10) 32)
  ; 209,623 -> 161,915
  (road city-loc-10 city-loc-6)
  (= (road-length city-loc-10 city-loc-6) 30)
  ; 161,915 -> 209,623
  (road city-loc-6 city-loc-10)
  (= (road-length city-loc-6 city-loc-10) 30)
  ; 209,623 -> 503,443
  (road city-loc-10 city-loc-8)
  (= (road-length city-loc-10 city-loc-8) 35)
  ; 503,443 -> 209,623
  (road city-loc-8 city-loc-10)
  (= (road-length city-loc-8 city-loc-10) 35)
  (at package-1 city-loc-10)
  (at package-2 city-loc-1)
  (at package-3 city-loc-2)
  (at truck-1 city-loc-10)
  (capacity truck-1 capacity-3)
  (at truck-2 city-loc-2)
  (capacity truck-2 capacity-3)
 )
 (:goal (and
  (at package-1 city-loc-4)
  (at package-2 city-loc-4)
  (at package-3 city-loc-8)
 ))
 (:metric minimize (total-cost))
)
