type nucleotide = A | C | G | T
;;

let rec sum_distance_inner n s1 s2 =
 match (s1,s2) with
  (hd1::tl1) , (hd2::tl2) ->
    (match hd1 = hd2 with
      true -> sum_distance_inner n tl1 tl2
      |_ -> sum_distance_inner (n + 1) tl1 tl2)
  |[],[] -> Some n
  |_ -> None
;;

(*humming_distance takes the dna strands and returns the hamming distance.*)
let hamming_distance dnas1 dnas2 =
  sum_distance_inner 0 dnas1 dnas2
;;
       
