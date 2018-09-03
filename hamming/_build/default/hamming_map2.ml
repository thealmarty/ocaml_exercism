(*Write the function using map2 that returns a list of 0 (equal) or 1 (not equal).  Then, write another function to sum up the content of the list, which gives the hamming distance.  *) 

(*is_different takes dna strand 1 and dna strand 2 in as lists (must be of the same length), and returns a list with the same number of element as the strands, each element corresponds to the strands being the same (0) or different (1).*)
let is_different dnas1 dnas2 =
  let is_equal x y = 
    match compare_string x y with
      0 -> 0
      |_ -> 1
  in
    List.map2 dnas1 dnas2 is_equal 
;;

(*get turns any 'a option to 'a*)
let get x = 
  match x with
    Some x -> x
;;

(*sum_list sums up the value of each element in a list.*)
let rec sum_list l =
  match l with
    hd::tl -> hd + sum_list tl
    |_ -> 0
;;

(*humming_distance takes the dna strands and returns the distance.*)
let hamming_distance dnas1 dnas2 =
  sum_list (get (is_different dnas1 dnas2))
;;
