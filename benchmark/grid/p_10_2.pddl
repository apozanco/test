(define (problem 2)
(:domain navigation)
(:objects
c0_0 c0_1 c0_2 c0_3 c0_4 c0_5 c0_6 c0_7 c0_8 c0_9 c1_0 c1_1 c1_2 c1_3 c1_4 c1_5 c1_6 c1_7 c1_8 c1_9 c2_0 c2_1 c2_2 c2_3 c2_4 c2_5 c2_6 c2_7 c2_8 c2_9 c3_0 c3_1 c3_2 c3_3 c3_4 c3_5 c3_6 c3_7 c3_8 c3_9 c4_0 c4_1 c4_2 c4_3 c4_4 c4_5 c4_6 c4_7 c4_8 c4_9 c5_0 c5_1 c5_2 c5_3 c5_4 c5_5 c5_6 c5_7 c5_8 c5_9 c6_0 c6_1 c6_2 c6_3 c6_4 c6_5 c6_6 c6_7 c6_8 c6_9 c7_0 c7_1 c7_2 c7_3 c7_4 c7_5 c7_6 c7_7 c7_8 c7_9 c8_0 c8_1 c8_2 c8_3 c8_4 c8_5 c8_6 c8_7 c8_8 c8_9 c9_0 c9_1 c9_2 c9_3 c9_4 c9_5 c9_6 c9_7 c9_8 c9_9 - cell
car1 - car
)
(:init
(at car1 c5_2)
( = (congestion c0_0) 1)
(connected c0_0 c1_0)
(connected c1_0 c0_0)
(connected c0_0 c0_1)
(connected c0_1 c0_0)
( = (congestion c0_1) 1)
(connected c0_1 c1_1)
(connected c1_1 c0_1)
(connected c0_1 c0_2)
(connected c0_2 c0_1)
( = (congestion c0_2) 1)
(connected c0_2 c1_2)
(connected c1_2 c0_2)
(connected c0_2 c0_3)
(connected c0_3 c0_2)
( = (congestion c0_3) 1)
(connected c0_3 c1_3)
(connected c1_3 c0_3)
(connected c0_3 c0_4)
(connected c0_4 c0_3)
( = (congestion c0_4) 1)
(connected c0_4 c1_4)
(connected c1_4 c0_4)
(connected c0_4 c0_5)
(connected c0_5 c0_4)
( = (congestion c0_5) 1)
(connected c0_5 c1_5)
(connected c1_5 c0_5)
(connected c0_5 c0_6)
(connected c0_6 c0_5)
( = (congestion c0_6) 1)
(connected c0_6 c1_6)
(connected c1_6 c0_6)
(connected c0_6 c0_7)
(connected c0_7 c0_6)
( = (congestion c0_7) 1)
(connected c0_7 c1_7)
(connected c1_7 c0_7)
(connected c0_7 c0_8)
(connected c0_8 c0_7)
( = (congestion c0_8) 1)
(connected c0_8 c1_8)
(connected c1_8 c0_8)
(connected c0_8 c0_9)
(connected c0_9 c0_8)
( = (congestion c0_9) 1)
(connected c0_9 c1_9)
(connected c1_9 c0_9)
(connected c0_9 c0_10)
(connected c0_10 c0_9)
( = (congestion c1_0) 1)
(connected c1_0 c2_0)
(connected c2_0 c1_0)
(connected c1_0 c1_1)
(connected c1_1 c1_0)
( = (congestion c1_1) 1)
(connected c1_1 c2_1)
(connected c2_1 c1_1)
(connected c1_1 c1_2)
(connected c1_2 c1_1)
( = (congestion c1_2) 1)
(connected c1_2 c2_2)
(connected c2_2 c1_2)
(connected c1_2 c1_3)
(connected c1_3 c1_2)
( = (congestion c1_3) 1)
(connected c1_3 c2_3)
(connected c2_3 c1_3)
(connected c1_3 c1_4)
(connected c1_4 c1_3)
( = (congestion c1_4) 1)
(connected c1_4 c2_4)
(connected c2_4 c1_4)
(connected c1_4 c1_5)
(connected c1_5 c1_4)
( = (congestion c1_5) 1)
(connected c1_5 c2_5)
(connected c2_5 c1_5)
(connected c1_5 c1_6)
(connected c1_6 c1_5)
( = (congestion c1_6) 1)
(connected c1_6 c2_6)
(connected c2_6 c1_6)
(connected c1_6 c1_7)
(connected c1_7 c1_6)
( = (congestion c1_7) 1)
(connected c1_7 c2_7)
(connected c2_7 c1_7)
(connected c1_7 c1_8)
(connected c1_8 c1_7)
( = (congestion c1_8) 1)
(connected c1_8 c2_8)
(connected c2_8 c1_8)
(connected c1_8 c1_9)
(connected c1_9 c1_8)
( = (congestion c1_9) 1)
(connected c1_9 c2_9)
(connected c2_9 c1_9)
(connected c1_9 c1_10)
(connected c1_10 c1_9)
( = (congestion c2_0) 1)
(connected c2_0 c3_0)
(connected c3_0 c2_0)
(connected c2_0 c2_1)
(connected c2_1 c2_0)
( = (congestion c2_1) 1)
(connected c2_1 c3_1)
(connected c3_1 c2_1)
(connected c2_1 c2_2)
(connected c2_2 c2_1)
( = (congestion c2_2) 1)
(connected c2_2 c3_2)
(connected c3_2 c2_2)
(connected c2_2 c2_3)
(connected c2_3 c2_2)
( = (congestion c2_3) 1)
(connected c2_3 c3_3)
(connected c3_3 c2_3)
(connected c2_3 c2_4)
(connected c2_4 c2_3)
( = (congestion c2_4) 1)
(connected c2_4 c3_4)
(connected c3_4 c2_4)
(connected c2_4 c2_5)
(connected c2_5 c2_4)
( = (congestion c2_5) 1)
(connected c2_5 c3_5)
(connected c3_5 c2_5)
(connected c2_5 c2_6)
(connected c2_6 c2_5)
( = (congestion c2_6) 1)
(connected c2_6 c3_6)
(connected c3_6 c2_6)
(connected c2_6 c2_7)
(connected c2_7 c2_6)
( = (congestion c2_7) 1)
(connected c2_7 c3_7)
(connected c3_7 c2_7)
(connected c2_7 c2_8)
(connected c2_8 c2_7)
( = (congestion c2_8) 1)
(connected c2_8 c3_8)
(connected c3_8 c2_8)
(connected c2_8 c2_9)
(connected c2_9 c2_8)
( = (congestion c2_9) 1)
(connected c2_9 c3_9)
(connected c3_9 c2_9)
(connected c2_9 c2_10)
(connected c2_10 c2_9)
( = (congestion c3_0) 1)
(connected c3_0 c4_0)
(connected c4_0 c3_0)
(connected c3_0 c3_1)
(connected c3_1 c3_0)
( = (congestion c3_1) 1)
(connected c3_1 c4_1)
(connected c4_1 c3_1)
(connected c3_1 c3_2)
(connected c3_2 c3_1)
( = (congestion c3_2) 1)
(connected c3_2 c4_2)
(connected c4_2 c3_2)
(connected c3_2 c3_3)
(connected c3_3 c3_2)
( = (congestion c3_3) 1)
(connected c3_3 c4_3)
(connected c4_3 c3_3)
(connected c3_3 c3_4)
(connected c3_4 c3_3)
( = (congestion c3_4) 1)
(connected c3_4 c4_4)
(connected c4_4 c3_4)
(connected c3_4 c3_5)
(connected c3_5 c3_4)
( = (congestion c3_5) 1)
(connected c3_5 c4_5)
(connected c4_5 c3_5)
(connected c3_5 c3_6)
(connected c3_6 c3_5)
( = (congestion c3_6) 1)
(connected c3_6 c4_6)
(connected c4_6 c3_6)
(connected c3_6 c3_7)
(connected c3_7 c3_6)
( = (congestion c3_7) 1)
(connected c3_7 c4_7)
(connected c4_7 c3_7)
(connected c3_7 c3_8)
(connected c3_8 c3_7)
( = (congestion c3_8) 1)
(connected c3_8 c4_8)
(connected c4_8 c3_8)
(connected c3_8 c3_9)
(connected c3_9 c3_8)
( = (congestion c3_9) 1)
(connected c3_9 c4_9)
(connected c4_9 c3_9)
(connected c3_9 c3_10)
(connected c3_10 c3_9)
( = (congestion c4_0) 1)
(connected c4_0 c5_0)
(connected c5_0 c4_0)
(connected c4_0 c4_1)
(connected c4_1 c4_0)
( = (congestion c4_1) 1)
(connected c4_1 c5_1)
(connected c5_1 c4_1)
(connected c4_1 c4_2)
(connected c4_2 c4_1)
( = (congestion c4_2) 1)
(connected c4_2 c5_2)
(connected c5_2 c4_2)
(connected c4_2 c4_3)
(connected c4_3 c4_2)
( = (congestion c4_3) 1)
(connected c4_3 c5_3)
(connected c5_3 c4_3)
(connected c4_3 c4_4)
(connected c4_4 c4_3)
( = (congestion c4_4) 1)
(connected c4_4 c5_4)
(connected c5_4 c4_4)
(connected c4_4 c4_5)
(connected c4_5 c4_4)
( = (congestion c4_5) 1)
(connected c4_5 c5_5)
(connected c5_5 c4_5)
(connected c4_5 c4_6)
(connected c4_6 c4_5)
( = (congestion c4_6) 1)
(connected c4_6 c5_6)
(connected c5_6 c4_6)
(connected c4_6 c4_7)
(connected c4_7 c4_6)
( = (congestion c4_7) 1)
(connected c4_7 c5_7)
(connected c5_7 c4_7)
(connected c4_7 c4_8)
(connected c4_8 c4_7)
( = (congestion c4_8) 1)
(connected c4_8 c5_8)
(connected c5_8 c4_8)
(connected c4_8 c4_9)
(connected c4_9 c4_8)
( = (congestion c4_9) 1)
(connected c4_9 c5_9)
(connected c5_9 c4_9)
(connected c4_9 c4_10)
(connected c4_10 c4_9)
( = (congestion c5_0) 1)
(connected c5_0 c6_0)
(connected c6_0 c5_0)
(connected c5_0 c5_1)
(connected c5_1 c5_0)
( = (congestion c5_1) 1)
(connected c5_1 c6_1)
(connected c6_1 c5_1)
(connected c5_1 c5_2)
(connected c5_2 c5_1)
( = (congestion c5_2) 1)
(connected c5_2 c6_2)
(connected c6_2 c5_2)
(connected c5_2 c5_3)
(connected c5_3 c5_2)
( = (congestion c5_3) 1)
(connected c5_3 c6_3)
(connected c6_3 c5_3)
(connected c5_3 c5_4)
(connected c5_4 c5_3)
( = (congestion c5_4) 1)
(connected c5_4 c6_4)
(connected c6_4 c5_4)
(connected c5_4 c5_5)
(connected c5_5 c5_4)
( = (congestion c5_5) 1)
(connected c5_5 c6_5)
(connected c6_5 c5_5)
(connected c5_5 c5_6)
(connected c5_6 c5_5)
( = (congestion c5_6) 1)
(connected c5_6 c6_6)
(connected c6_6 c5_6)
(connected c5_6 c5_7)
(connected c5_7 c5_6)
( = (congestion c5_7) 1)
(connected c5_7 c6_7)
(connected c6_7 c5_7)
(connected c5_7 c5_8)
(connected c5_8 c5_7)
( = (congestion c5_8) 1)
(connected c5_8 c6_8)
(connected c6_8 c5_8)
(connected c5_8 c5_9)
(connected c5_9 c5_8)
( = (congestion c5_9) 1)
(connected c5_9 c6_9)
(connected c6_9 c5_9)
(connected c5_9 c5_10)
(connected c5_10 c5_9)
( = (congestion c6_0) 1)
(connected c6_0 c7_0)
(connected c7_0 c6_0)
(connected c6_0 c6_1)
(connected c6_1 c6_0)
( = (congestion c6_1) 1)
(connected c6_1 c7_1)
(connected c7_1 c6_1)
(connected c6_1 c6_2)
(connected c6_2 c6_1)
( = (congestion c6_2) 1)
(connected c6_2 c7_2)
(connected c7_2 c6_2)
(connected c6_2 c6_3)
(connected c6_3 c6_2)
( = (congestion c6_3) 1)
(connected c6_3 c7_3)
(connected c7_3 c6_3)
(connected c6_3 c6_4)
(connected c6_4 c6_3)
( = (congestion c6_4) 1)
(connected c6_4 c7_4)
(connected c7_4 c6_4)
(connected c6_4 c6_5)
(connected c6_5 c6_4)
( = (congestion c6_5) 1)
(connected c6_5 c7_5)
(connected c7_5 c6_5)
(connected c6_5 c6_6)
(connected c6_6 c6_5)
( = (congestion c6_6) 1)
(connected c6_6 c7_6)
(connected c7_6 c6_6)
(connected c6_6 c6_7)
(connected c6_7 c6_6)
( = (congestion c6_7) 1)
(connected c6_7 c7_7)
(connected c7_7 c6_7)
(connected c6_7 c6_8)
(connected c6_8 c6_7)
( = (congestion c6_8) 1)
(connected c6_8 c7_8)
(connected c7_8 c6_8)
(connected c6_8 c6_9)
(connected c6_9 c6_8)
( = (congestion c6_9) 1)
(connected c6_9 c7_9)
(connected c7_9 c6_9)
(connected c6_9 c6_10)
(connected c6_10 c6_9)
( = (congestion c7_0) 1)
(connected c7_0 c8_0)
(connected c8_0 c7_0)
(connected c7_0 c7_1)
(connected c7_1 c7_0)
( = (congestion c7_1) 1)
(connected c7_1 c8_1)
(connected c8_1 c7_1)
(connected c7_1 c7_2)
(connected c7_2 c7_1)
( = (congestion c7_2) 1)
(connected c7_2 c8_2)
(connected c8_2 c7_2)
(connected c7_2 c7_3)
(connected c7_3 c7_2)
( = (congestion c7_3) 1)
(connected c7_3 c8_3)
(connected c8_3 c7_3)
(connected c7_3 c7_4)
(connected c7_4 c7_3)
( = (congestion c7_4) 1)
(connected c7_4 c8_4)
(connected c8_4 c7_4)
(connected c7_4 c7_5)
(connected c7_5 c7_4)
( = (congestion c7_5) 1)
(connected c7_5 c8_5)
(connected c8_5 c7_5)
(connected c7_5 c7_6)
(connected c7_6 c7_5)
( = (congestion c7_6) 1)
(connected c7_6 c8_6)
(connected c8_6 c7_6)
(connected c7_6 c7_7)
(connected c7_7 c7_6)
( = (congestion c7_7) 1)
(connected c7_7 c8_7)
(connected c8_7 c7_7)
(connected c7_7 c7_8)
(connected c7_8 c7_7)
( = (congestion c7_8) 1)
(connected c7_8 c8_8)
(connected c8_8 c7_8)
(connected c7_8 c7_9)
(connected c7_9 c7_8)
( = (congestion c7_9) 1)
(connected c7_9 c8_9)
(connected c8_9 c7_9)
(connected c7_9 c7_10)
(connected c7_10 c7_9)
( = (congestion c8_0) 1)
(connected c8_0 c9_0)
(connected c9_0 c8_0)
(connected c8_0 c8_1)
(connected c8_1 c8_0)
( = (congestion c8_1) 1)
(connected c8_1 c9_1)
(connected c9_1 c8_1)
(connected c8_1 c8_2)
(connected c8_2 c8_1)
( = (congestion c8_2) 1)
(connected c8_2 c9_2)
(connected c9_2 c8_2)
(connected c8_2 c8_3)
(connected c8_3 c8_2)
( = (congestion c8_3) 1)
(connected c8_3 c9_3)
(connected c9_3 c8_3)
(connected c8_3 c8_4)
(connected c8_4 c8_3)
( = (congestion c8_4) 1)
(connected c8_4 c9_4)
(connected c9_4 c8_4)
(connected c8_4 c8_5)
(connected c8_5 c8_4)
( = (congestion c8_5) 1)
(connected c8_5 c9_5)
(connected c9_5 c8_5)
(connected c8_5 c8_6)
(connected c8_6 c8_5)
( = (congestion c8_6) 1)
(connected c8_6 c9_6)
(connected c9_6 c8_6)
(connected c8_6 c8_7)
(connected c8_7 c8_6)
( = (congestion c8_7) 1)
(connected c8_7 c9_7)
(connected c9_7 c8_7)
(connected c8_7 c8_8)
(connected c8_8 c8_7)
( = (congestion c8_8) 1)
(connected c8_8 c9_8)
(connected c9_8 c8_8)
(connected c8_8 c8_9)
(connected c8_9 c8_8)
( = (congestion c8_9) 1)
(connected c8_9 c9_9)
(connected c9_9 c8_9)
(connected c8_9 c8_10)
(connected c8_10 c8_9)
( = (congestion c9_0) 1)
(connected c9_0 c10_0)
(connected c10_0 c9_0)
(connected c9_0 c9_1)
(connected c9_1 c9_0)
( = (congestion c9_1) 1)
(connected c9_1 c10_1)
(connected c10_1 c9_1)
(connected c9_1 c9_2)
(connected c9_2 c9_1)
( = (congestion c9_2) 1)
(connected c9_2 c10_2)
(connected c10_2 c9_2)
(connected c9_2 c9_3)
(connected c9_3 c9_2)
( = (congestion c9_3) 1)
(connected c9_3 c10_3)
(connected c10_3 c9_3)
(connected c9_3 c9_4)
(connected c9_4 c9_3)
( = (congestion c9_4) 1)
(connected c9_4 c10_4)
(connected c10_4 c9_4)
(connected c9_4 c9_5)
(connected c9_5 c9_4)
( = (congestion c9_5) 1)
(connected c9_5 c10_5)
(connected c10_5 c9_5)
(connected c9_5 c9_6)
(connected c9_6 c9_5)
( = (congestion c9_6) 1)
(connected c9_6 c10_6)
(connected c10_6 c9_6)
(connected c9_6 c9_7)
(connected c9_7 c9_6)
( = (congestion c9_7) 1)
(connected c9_7 c10_7)
(connected c10_7 c9_7)
(connected c9_7 c9_8)
(connected c9_8 c9_7)
( = (congestion c9_8) 1)
(connected c9_8 c10_8)
(connected c10_8 c9_8)
(connected c9_8 c9_9)
(connected c9_9 c9_8)
( = (congestion c9_9) 1)
(connected c9_9 c10_9)
(connected c10_9 c9_9)
(connected c9_9 c9_10)
(connected c9_10 c9_9)
)
(:goal
(at car1 c8_8)
)
(:metric minimize (total-cost))
)