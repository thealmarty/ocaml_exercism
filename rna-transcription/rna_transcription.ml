type dna = [ `A | `C | `G | `T ]
type rna = [ `A | `C | `G | `U ]

let convert dna =
  match dna with
    | `A -> `U
    | `C -> `G
    | `G -> `C
    | `T -> `A

(** Transcribe DNA to RNA by replacing 'T' with 'U'. *)
let to_rna dnalist =
  List.map convert dnalist
        
