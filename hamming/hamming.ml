type nucleotide = A | C | G | T
;;

let compare_nucleotide a b =
  match a = b with
    true -> 0
    |_ -> 1
;;

let rec distance s1 s2 =
 match (s1,s2) with
  (hd1::tl1) , (hd2::tl2) -> compare_nucleotide hd1 hd2 + distance tl1 tl2
  |_ -> 0
;;

(*humming_distance takes the dna strands and returns the hamming distance.*)
let hamming_distance (dnas1 : nucleotide list) (dnas2 : nucleotide list) =
  match List.length dnas1 = List.length dnas2 with
    true -> Some (distance (dnas1 : nucleotide list) (dnas2 : nucleotide list))
    |_ -> None
        
       
