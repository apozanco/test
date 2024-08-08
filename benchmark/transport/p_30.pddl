; Transport city-sequential-10nodes-1000size-3degree-100mindistance-2trucks-3packages-62seed

(define (problem transport-city-sequential-10nodes-1000size-3degree-100mindistance-2trucks-3packages-62seed)
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
  ; 151,255 -> 31,588
  (road city-loc-4 city-loc-1)
  (= (road-length city-loc-4 city-loc-1) 36)
  ; 31,588 -> 151,255
  (road city-loc-1 city-loc-4)
  (= (road-length city-loc-1 city-loc-4) 36)
  ; 151,255 -> 204,14
  (road city-loc-4 city-loc-3)
  (= (road-length city-loc-4 city-loc-3) 25)
  ; 204,14 -> 151,255
  (road city-loc-3 city-loc-4)
  (= (road-length city-loc-3 city-loc-4) 25)
  ; 141,104 -> 204,14
  (road city-loc-5 city-loc-3)
  (= (road-length city-loc-5 city-loc-3) 11)
  ; 204,14 -> 141,104
  (road city-loc-3 city-loc-5)
  (= (road-length city-loc-3 city-loc-5) 11)
  ; 141,104 -> 151,255
  (road city-loc-5 city-loc-4)
  (= (road-length city-loc-5 city-loc-4) 16)
  ; 151,255 -> 141,104
  (road city-loc-4 city-loc-5)
  (= (road-length city-loc-4 city-loc-5) 16)
  ; 662,374 -> 583,593
  (road city-loc-6 city-loc-2)
  (= (road-length city-loc-6 city-loc-2) 24)
  ; 583,593 -> 662,374
  (road city-loc-2 city-loc-6)
  (= (road-length city-loc-2 city-loc-6) 24)
  ; 460,927 -> 583,593
  (road city-loc-7 city-loc-2)
  (= (road-length city-loc-7 city-loc-2) 36)
  ; 583,593 -> 460,927
  (road city-loc-2 city-loc-7)
  (= (road-length city-loc-2 city-loc-7) 36)
  ; 500,309 -> 583,593
  (road city-loc-8 city-loc-2)
  (= (road-length city-loc-8 city-loc-2) 30)
  ; 583,593 -> 500,309
  (road city-loc-2 city-loc-8)
  (= (road-length city-loc-2 city-loc-8) 30)
  ; 500,309 -> 151,255
  (road city-loc-8 city-loc-4)
  (= (road-length city-loc-8 city-loc-4) 36)
  ; 151,255 -> 500,309
  (road city-loc-4 city-loc-8)
  (= (road-length city-loc-4 city-loc-8) 36)
  ; 500,309 -> 662,374
  (road city-loc-8 city-loc-6)
  (= (road-length city-loc-8 city-loc-6) 18)
  ; 662,374 -> 500,309
  (road city-loc-6 city-loc-8)
  (= (road-length city-loc-6 city-loc-8) 18)
  ; 866,207 -> 662,374
  (road city-loc-9 city-loc-6)
  (= (road-length city-loc-9 city-loc-6) 27)
  ; 662,374 -> 866,207
  (road city-loc-6 city-loc-9)
  (= (road-length city-loc-6 city-loc-9) 27)
  ; 579,891 -> 583,593
  (road city-loc-10 city-loc-2)
  (= (road-length city-loc-10 city-loc-2) 30)
  ; 583,593 -> 579,891
  (road city-loc-2 city-loc-10)
  (= (road-length city-loc-2 city-loc-10) 30)
  ; 579,891 -> 460,927
  (road city-loc-10 city-loc-7)
  (= (road-length city-loc-10 city-loc-7) 13)
  ; 460,927 -> 579,891
  (road city-loc-7 city-loc-10)
  (= (road-length city-loc-7 city-loc-10) 13)
  (at package-1 city-loc-3)
  (at package-2 city-loc-6)
  (at package-3 city-loc-3)
  (at truck-1 city-loc-9)
  (capacity truck-1 capacity-3)
  (at truck-2 city-loc-7)
  (capacity truck-2 capacity-4)
 )
 (:goal (and
  (at package-1 city-loc-6)
  (at package-2 city-loc-7)
  (at package-3 city-loc-8)
 ))
 (:metric minimize (total-cost))
)
