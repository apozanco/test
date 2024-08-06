; 13 floors, area size: 2, areas: 6, passengers: 4
(define (problem elevators)
(:domain elevators-sequencedstrips)
    (:objects
       n0 n1 n2 n3 n4 n5 n6 n7 n8 n9 n10 n11 n12 - count
       p0 p1 p2 p3 - passenger
       fast0 - fast-elevator
       slow0-0 slow1-0 slow2-0 slow3-0 slow4-0 slow5-0 - slow-elevator
    )

    (:init
       (next n0 n1)
       (next n1 n2)
       (next n2 n3)
       (next n3 n4)
       (next n4 n5)
       (next n5 n6)
       (next n6 n7)
       (next n7 n8)
       (next n8 n9)
       (next n9 n10)
       (next n10 n11)
       (next n11 n12)

       (above n0 n1)
       (above n0 n2)
       (above n0 n3)
       (above n0 n4)
       (above n0 n5)
       (above n0 n6)
       (above n0 n7)
       (above n0 n8)
       (above n0 n9)
       (above n0 n10)
       (above n0 n11)
       (above n0 n12)
       (above n1 n2)
       (above n1 n3)
       (above n1 n4)
       (above n1 n5)
       (above n1 n6)
       (above n1 n7)
       (above n1 n8)
       (above n1 n9)
       (above n1 n10)
       (above n1 n11)
       (above n1 n12)
       (above n2 n3)
       (above n2 n4)
       (above n2 n5)
       (above n2 n6)
       (above n2 n7)
       (above n2 n8)
       (above n2 n9)
       (above n2 n10)
       (above n2 n11)
       (above n2 n12)
       (above n3 n4)
       (above n3 n5)
       (above n3 n6)
       (above n3 n7)
       (above n3 n8)
       (above n3 n9)
       (above n3 n10)
       (above n3 n11)
       (above n3 n12)
       (above n4 n5)
       (above n4 n6)
       (above n4 n7)
       (above n4 n8)
       (above n4 n9)
       (above n4 n10)
       (above n4 n11)
       (above n4 n12)
       (above n5 n6)
       (above n5 n7)
       (above n5 n8)
       (above n5 n9)
       (above n5 n10)
       (above n5 n11)
       (above n5 n12)
       (above n6 n7)
       (above n6 n8)
       (above n6 n9)
       (above n6 n10)
       (above n6 n11)
       (above n6 n12)
       (above n7 n8)
       (above n7 n9)
       (above n7 n10)
       (above n7 n11)
       (above n7 n12)
       (above n8 n9)
       (above n8 n10)
       (above n8 n11)
       (above n8 n12)
       (above n9 n10)
       (above n9 n11)
       (above n9 n12)
       (above n10 n11)
       (above n10 n12)
       (above n11 n12)

       (lift-at fast0 n11)
       (passengers fast0 n0)
       (can-hold fast0 n1) (can-hold fast0 n2) (can-hold fast0 n3) (can-hold fast0 n4) (can-hold fast0 n5)
       (reachable-floor fast0 n0) (reachable-floor fast0 n1) (reachable-floor fast0 n2) (reachable-floor fast0 n3) (reachable-floor fast0 n4) (reachable-floor fast0 n5) (reachable-floor fast0 n6) (reachable-floor fast0 n7) (reachable-floor fast0 n8) (reachable-floor fast0 n9) (reachable-floor fast0 n10) (reachable-floor fast0 n11) (reachable-floor fast0 n12)
    
       (lift-at slow0-0 n0)
       (passengers slow0-0 n0)
       (can-hold slow0-0 n1) (can-hold slow0-0 n2)
       (reachable-floor slow0-0 n0) (reachable-floor slow0-0 n1) (reachable-floor slow0-0 n2)
    
       (lift-at slow1-0 n2)
       (passengers slow1-0 n0)
       (can-hold slow1-0 n1) (can-hold slow1-0 n2)
       (reachable-floor slow1-0 n2) (reachable-floor slow1-0 n3) (reachable-floor slow1-0 n4)
    
       (lift-at slow2-0 n6)
       (passengers slow2-0 n0)
       (can-hold slow2-0 n1) (can-hold slow2-0 n2)
       (reachable-floor slow2-0 n4) (reachable-floor slow2-0 n5) (reachable-floor slow2-0 n6)
    
       (lift-at slow3-0 n7)
       (passengers slow3-0 n0)
       (can-hold slow3-0 n1) (can-hold slow3-0 n2)
       (reachable-floor slow3-0 n6) (reachable-floor slow3-0 n7) (reachable-floor slow3-0 n8)
    
       (lift-at slow4-0 n8)
       (passengers slow4-0 n0)
       (can-hold slow4-0 n1) (can-hold slow4-0 n2)
       (reachable-floor slow4-0 n8) (reachable-floor slow4-0 n9) (reachable-floor slow4-0 n10)
    
       (lift-at slow5-0 n12)
       (passengers slow5-0 n0)
       (can-hold slow5-0 n1) (can-hold slow5-0 n2)
       (reachable-floor slow5-0 n10) (reachable-floor slow5-0 n11) (reachable-floor slow5-0 n12)
    

       (passenger-at p0 n7)
       (passenger-at p1 n2)
       (passenger-at p2 n9)
       (passenger-at p3 n9)

       (= (travel-slow n0 n1) 8)
       (= (travel-slow n0 n2) 11)
       (= (travel-slow n1 n2) 8)
       (= (travel-slow n2 n3) 8)
       (= (travel-slow n2 n4) 11)
       (= (travel-slow n3 n4) 8)
       (= (travel-slow n4 n5) 8)
       (= (travel-slow n4 n6) 11)
       (= (travel-slow n5 n6) 8)
       (= (travel-slow n6 n7) 8)
       (= (travel-slow n6 n8) 11)
       (= (travel-slow n7 n8) 8)
       (= (travel-slow n8 n9) 8)
       (= (travel-slow n8 n10) 11)
       (= (travel-slow n9 n10) 8)
       (= (travel-slow n10 n11) 8)
       (= (travel-slow n10 n12) 11)
       (= (travel-slow n11 n12) 8)
       (= (travel-fast n0 n1) 5)
       (= (travel-fast n0 n2) 9)
       (= (travel-fast n0 n3) 13)
       (= (travel-fast n0 n4) 17)
       (= (travel-fast n0 n5) 21)
       (= (travel-fast n0 n6) 25)
       (= (travel-fast n0 n7) 29)
       (= (travel-fast n0 n8) 33)
       (= (travel-fast n0 n9) 37)
       (= (travel-fast n0 n10) 41)
       (= (travel-fast n0 n11) 45)
       (= (travel-fast n0 n12) 49)
       (= (travel-fast n1 n2) 5)
       (= (travel-fast n1 n3) 9)
       (= (travel-fast n1 n4) 13)
       (= (travel-fast n1 n5) 17)
       (= (travel-fast n1 n6) 21)
       (= (travel-fast n1 n7) 25)
       (= (travel-fast n1 n8) 29)
       (= (travel-fast n1 n9) 33)
       (= (travel-fast n1 n10) 37)
       (= (travel-fast n1 n11) 41)
       (= (travel-fast n1 n12) 45)
       (= (travel-fast n2 n3) 5)
       (= (travel-fast n2 n4) 9)
       (= (travel-fast n2 n5) 13)
       (= (travel-fast n2 n6) 17)
       (= (travel-fast n2 n7) 21)
       (= (travel-fast n2 n8) 25)
       (= (travel-fast n2 n9) 29)
       (= (travel-fast n2 n10) 33)
       (= (travel-fast n2 n11) 37)
       (= (travel-fast n2 n12) 41)
       (= (travel-fast n3 n4) 5)
       (= (travel-fast n3 n5) 9)
       (= (travel-fast n3 n6) 13)
       (= (travel-fast n3 n7) 17)
       (= (travel-fast n3 n8) 21)
       (= (travel-fast n3 n9) 25)
       (= (travel-fast n3 n10) 29)
       (= (travel-fast n3 n11) 33)
       (= (travel-fast n3 n12) 37)
       (= (travel-fast n4 n5) 5)
       (= (travel-fast n4 n6) 9)
       (= (travel-fast n4 n7) 13)
       (= (travel-fast n4 n8) 17)
       (= (travel-fast n4 n9) 21)
       (= (travel-fast n4 n10) 25)
       (= (travel-fast n4 n11) 29)
       (= (travel-fast n4 n12) 33)
       (= (travel-fast n5 n6) 5)
       (= (travel-fast n5 n7) 9)
       (= (travel-fast n5 n8) 13)
       (= (travel-fast n5 n9) 17)
       (= (travel-fast n5 n10) 21)
       (= (travel-fast n5 n11) 25)
       (= (travel-fast n5 n12) 29)
       (= (travel-fast n6 n7) 5)
       (= (travel-fast n6 n8) 9)
       (= (travel-fast n6 n9) 13)
       (= (travel-fast n6 n10) 17)
       (= (travel-fast n6 n11) 21)
       (= (travel-fast n6 n12) 25)
       (= (travel-fast n7 n8) 5)
       (= (travel-fast n7 n9) 9)
       (= (travel-fast n7 n10) 13)
       (= (travel-fast n7 n11) 17)
       (= (travel-fast n7 n12) 21)
       (= (travel-fast n8 n9) 5)
       (= (travel-fast n8 n10) 9)
       (= (travel-fast n8 n11) 13)
       (= (travel-fast n8 n12) 17)
       (= (travel-fast n9 n10) 5)
       (= (travel-fast n9 n11) 9)
       (= (travel-fast n9 n12) 13)
       (= (travel-fast n10 n11) 5)
       (= (travel-fast n10 n12) 9)
       (= (travel-fast n11 n12) 5)

       (= (total-cost) 0)
    )

    (:goal (and
       (passenger-at p0 n4)
       (passenger-at p1 n5)
       (passenger-at p2 n12)
       (passenger-at p3 n12)
    ))

    (:metric minimize (total-cost))
)
    
