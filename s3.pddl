(define (problem s3)
	(:domain sokoban)
	(:objects sokoban1, sokoban2, crate1, crate2, crate3, l1, l3, l4, l5, l6, l7, l9, l11, l12, l13, l15, l16, l17, l19,
			l21, l23, l25, l27, l29, l31, l32, l33, l35)
	(:init (sokoban sokoban1) 
		   (sokoban sokoban2)
		   (crate crate1)	
		   (crate crate2)
		   (crate crate3)

		   ;;horizontal relationships
		   (leftOf l3 l4) (leftOf l4 l5) (leftOf l5 l6)
		   (leftOf l11 l12)
		   (leftOf l15 l16) (leftOf l16 l17)
		   (leftOf l31 l32) (leftOf l32 l33)

		   ;;vertical relationships
		   (below l7 l1) (below l13 l7) (below l19 l13) (below l25 l19) (below l31 l25)
		   (below l9 l3) (below l15 l9) (below l21 l15) (below l27 l21) (below l33 l27)
		   (below l11 l5) (below l17 l11) (below l23 l17) (below l29 l23) (below l35 l29)
		   (below l12 l6)

		   ;;initialize objects
		   (at sokoban1 l1)
		   (at sokoban2 l7)
		   (at crate1 l5)
		   (at crate2 l11)
		   (at crate3 l29)

		   (clear l3) (clear l4) (clear l6) 
		   (clear l9) (clear l12)
		   (clear l13) (clear l15) (clear l16) (clear l17)
		   (clear l19) (clear l21) (clear l23)
		   (clear l25) (clear l27)
		   (clear l31) (clear l32) (clear l33) (clear l35))


	(:goal (and (at crate1 l6) (at crate2 l17) (at crate3 l35)))
)