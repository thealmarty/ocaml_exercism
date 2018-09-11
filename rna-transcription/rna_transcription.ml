type dna = [ `A | `C | `G | `T ]
type rna = [ `A | `C | `G | `U ]

(** Transcribe DNA to RNA by replacing 'T' with 'U'. *)
let to_rna dnalist =
        
