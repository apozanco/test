; Transport city-sequential-10nodes-1000size-3degree-100mindistance-2trucks-3packages-3seed

(define (problem transport-city-sequential-10nodes-1000size-3degree-100mindistance-2trucks-3packages-3seed)
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
  ; 587,359 -> 431,519
  (road city-loc-3 city-loc-1)
  (= (road-length city-loc-3 city-loc-1) 23)
  ; 431,519 -> 587,359
  (road city-loc-1 city-loc-3)
  (= (road-length city-loc-1 city-loc-3) 23)
  ; 587,359 -> 853,395
  (road city-loc-3 city-loc-2)
  (= (road-length city-loc-3 city-loc-2) 27)
  ; 853,395 -> 587,359
  (road city-loc-2 city-loc-3)
  (= (road-length city-loc-2 city-loc-3) 27)
  ; 546,599 -> 431,519
  (road city-loc-4 city-loc-1)
  (= (road-length city-loc-4 city-loc-1) 14)
  ; 431,519 -> 546,599
  (road city-loc-1 city-loc-4)
  (= (road-length city-loc-1 city-loc-4) 14)
  ; 546,599 -> 853,395
  (road city-loc-4 city-loc-2)
  (= (road-length city-loc-4 city-loc-2) 37)
  ; 853,395 -> 546,599
  (road city-loc-2 city-loc-4)
  (= (road-length city-loc-2 city-loc-4) 37)
  ; 546,599 -> 587,359
  (road city-loc-4 city-loc-3)
  (= (road-length city-loc-4 city-loc-3) 25)
  ; 587,359 -> 546,599
  (road city-loc-3 city-loc-4)
  (= (road-length city-loc-3 city-loc-4) 25)
  ; 344,698 -> 431,519
  (road city-loc-6 city-loc-1)
  (= (road-length city-loc-6 city-loc-1) 20)
  ; 431,519 -> 344,698
  (road city-loc-1 city-loc-6)
  (= (road-length city-loc-1 city-loc-6) 20)
  ; 344,698 -> 546,599
  (road city-loc-6 city-loc-4)
  (= (road-length city-loc-6 city-loc-4) 23)
  ; 546,599 -> 344,698
  (road city-loc-4 city-loc-6)
  (= (road-length city-loc-4 city-loc-6) 23)
  ; 344,698 -> 237,925
  (road city-loc-6 city-loc-5)
  (= (road-length city-loc-6 city-loc-5) 26)
  ; 237,925 -> 344,698
  (road city-loc-5 city-loc-6)
  (= (road-length city-loc-5 city-loc-6) 26)
  ; 29,876 -> 237,925
  (road city-loc-8 city-loc-5)
  (= (road-length city-loc-8 city-loc-5) 22)
  ; 237,925 -> 29,876
  (road city-loc-5 city-loc-8)
  (= (road-length city-loc-5 city-loc-8) 22)
  ; 29,876 -> 344,698
  (road city-loc-8 city-loc-6)
  (= (road-length city-loc-8 city-loc-6) 37)
  ; 344,698 -> 29,876
  (road city-loc-6 city-loc-8)
  (= (road-length city-loc-6 city-loc-8) 37)
  ; 687,712 -> 431,519
  (road city-loc-9 city-loc-1)
  (= (road-length city-loc-9 city-loc-1) 33)
  ; 431,519 -> 687,712
  (road city-loc-1 city-loc-9)
  (= (road-length city-loc-1 city-loc-9) 33)
  ; 687,712 -> 853,395
  (road city-loc-9 city-loc-2)
  (= (road-length city-loc-9 city-loc-2) 36)
  ; 853,395 -> 687,712
  (road city-loc-2 city-loc-9)
  (= (road-length city-loc-2 city-loc-9) 36)
  ; 687,712 -> 587,359
  (road city-loc-9 city-loc-3)
  (= (road-length city-loc-9 city-loc-3) 37)
  ; 587,359 -> 687,712
  (road city-loc-3 city-loc-9)
  (= (road-length city-loc-3 city-loc-9) 37)
  ; 687,712 -> 546,599
  (road city-loc-9 city-loc-4)
  (= (road-length city-loc-9 city-loc-4) 19)
  ; 546,599 -> 687,712
  (road city-loc-4 city-loc-9)
  (= (road-length city-loc-4 city-loc-9) 19)
  ; 687,712 -> 344,698
  (road city-loc-9 city-loc-6)
  (= (road-length city-loc-9 city-loc-6) 35)
  ; 344,698 -> 687,712
  (road city-loc-6 city-loc-9)
  (= (road-length city-loc-6 city-loc-9) 35)
  ; 687,712 -> 937,951
  (road city-loc-9 city-loc-7)
  (= (road-length city-loc-9 city-loc-7) 35)
  ; 937,951 -> 687,712
  (road city-loc-7 city-loc-9)
  (= (road-length city-loc-7 city-loc-9) 35)
  ; 167,715 -> 431,519
  (road city-loc-10 city-loc-1)
  (= (road-length city-loc-10 city-loc-1) 33)
  ; 431,519 -> 167,715
  (road city-loc-1 city-loc-10)
  (= (road-length city-loc-1 city-loc-10) 33)
  ; 167,715 -> 237,925
  (road city-loc-10 city-loc-5)
  (= (road-length city-loc-10 city-loc-5) 23)
  ; 237,925 -> 167,715
  (road city-loc-5 city-loc-10)
  (= (road-length city-loc-5 city-loc-10) 23)
  ; 167,715 -> 344,698
  (road city-loc-10 city-loc-6)
  (= (road-length city-loc-10 city-loc-6) 18)
  ; 344,698 -> 167,715
  (road city-loc-6 city-loc-10)
  (= (road-length city-loc-6 city-loc-10) 18)
  ; 167,715 -> 29,876
  (road city-loc-10 city-loc-8)
  (= (road-length city-loc-10 city-loc-8) 22)
  ; 29,876 -> 167,715
  (road city-loc-8 city-loc-10)
  (= (road-length city-loc-8 city-loc-10) 22)
  (at package-1 city-loc-6)
  (at package-2 city-loc-9)
  (at package-3 city-loc-10)
  (at truck-1 city-loc-2)
  (capacity truck-1 capacity-4)
  (at truck-2 city-loc-4)
  (capacity truck-2 capacity-4)
 )
 (:goal (and
  (at package-1 city-loc-10)
  (at package-2 city-loc-5)
  (at package-3 city-loc-5)
 ))
 (:metric minimize (total-cost))
)
