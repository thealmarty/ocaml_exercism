let leap_year n = 
        if n mod 4 <> 0 then false 
        else if n mod 100 = 0 then
                (if n mod 400 = 0 then true else false)
        else true
                
