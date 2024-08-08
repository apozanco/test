; Transport city-sequential-10nodes-1000size-3degree-100mindistance-2trucks-3packages-99seed

(define (problem transport-city-sequential-10nodes-1000size-3degree-100mindistance-2trucks-3packages-99seed)
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
  ; 204,613 -> 413,389
  (road city-loc-2 city-loc-1)
  (= (road-length city-loc-2 city-loc-1) 31)
  ; 413,389 -> 204,613
  (road city-loc-1 city-loc-2)
  (= (road-length city-loc-1 city-loc-2) 31)
  ; 183,235 -> 413,389
  (road city-loc-3 city-loc-1)
  (= (road-length city-loc-3 city-loc-1) 28)
  ; 413,389 -> 183,235
  (road city-loc-1 city-loc-3)
  (= (road-length city-loc-1 city-loc-3) 28)
  ; 254,136 -> 413,389
  (road city-loc-4 city-loc-1)
  (= (road-length city-loc-4 city-loc-1) 30)
  ; 413,389 -> 254,136
  (road city-loc-1 city-loc-4)
  (= (road-length city-loc-1 city-loc-4) 30)
  ; 254,136 -> 183,235
  (road city-loc-4 city-loc-3)
  (= (road-length city-loc-4 city-loc-3) 13)
  ; 183,235 -> 254,136
  (road city-loc-3 city-loc-4)
  (= (road-length city-loc-3 city-loc-4) 13)
  ; 257,746 -> 204,613
  (road city-loc-6 city-loc-2)
  (= (road-length city-loc-6 city-loc-2) 15)
  ; 204,613 -> 257,746
  (road city-loc-2 city-loc-6)
  (= (road-length city-loc-2 city-loc-6) 15)
  ; 392,543 -> 413,389
  (road city-loc-7 city-loc-1)
  (= (road-length city-loc-7 city-loc-1) 16)
  ; 413,389 -> 392,543
  (road city-loc-1 city-loc-7)
  (= (road-length city-loc-1 city-loc-7) 16)
  ; 392,543 -> 204,613
  (road city-loc-7 city-loc-2)
  (= (road-length city-loc-7 city-loc-2) 21)
  ; 204,613 -> 392,543
  (road city-loc-2 city-loc-7)
  (= (road-length city-loc-2 city-loc-7) 21)
  ; 392,543 -> 257,746
  (road city-loc-7 city-loc-6)
  (= (road-length city-loc-7 city-loc-6) 25)
  ; 257,746 -> 392,543
  (road city-loc-6 city-loc-7)
  (= (road-length city-loc-6 city-loc-7) 25)
  ; 700,717 -> 392,543
  (road city-loc-8 city-loc-7)
  (= (road-length city-loc-8 city-loc-7) 36)
  ; 392,543 -> 700,717
  (road city-loc-7 city-loc-8)
  (= (road-length city-loc-7 city-loc-8) 36)
  ; 551,91 -> 413,389
  (road city-loc-9 city-loc-1)
  (= (road-length city-loc-9 city-loc-1) 33)
  ; 413,389 -> 551,91
  (road city-loc-1 city-loc-9)
  (= (road-length city-loc-1 city-loc-9) 33)
  ; 551,91 -> 254,136
  (road city-loc-9 city-loc-4)
  (= (road-length city-loc-9 city-loc-4) 30)
  ; 254,136 -> 551,91
  (road city-loc-4 city-loc-9)
  (= (road-length city-loc-4 city-loc-9) 30)
  ; 551,91 -> 778,88
  (road city-loc-9 city-loc-5)
  (= (road-length city-loc-9 city-loc-5) 23)
  ; 778,88 -> 551,91
  (road city-loc-5 city-loc-9)
  (= (road-length city-loc-5 city-loc-9) 23)
  ; 960,638 -> 700,717
  (road city-loc-10 city-loc-8)
  (= (road-length city-loc-10 city-loc-8) 28)
  ; 700,717 -> 960,638
  (road city-loc-8 city-loc-10)
  (= (road-length city-loc-8 city-loc-10) 28)
  (at package-1 city-loc-8)
  (at package-2 city-loc-4)
  (at package-3 city-loc-7)
  (at truck-1 city-loc-10)
  (capacity truck-1 capacity-4)
  (at truck-2 city-loc-4)
  (capacity truck-2 capacity-4)
 )
 (:goal (and
  (at package-1 city-loc-6)
  (at package-2 city-loc-7)
  (at package-3 city-loc-4)
 ))
 (:metric minimize (total-cost))
)
