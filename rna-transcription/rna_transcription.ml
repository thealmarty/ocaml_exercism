type dna = [ `A | `C | `G | `T ]
type rna = [ `A | `C | `G | `U ]

let convert dna =
  match dna with
    | `A -> `U
    | `C -> `G
    | `G -> `C
    | `T -> `A

(** Transcribe DNA to RNA by replacing 'T' with 'U'. *)
let rec to_rna dnalist =
  match dnalist with
    | hd :: tl -> convert hd :: to_rna tl
    |_ -> []

        
