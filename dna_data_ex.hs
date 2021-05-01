import Data.List

data NtDNA = Ad | Td | Gd | Cd deriving (Eq)
data NtRNA = Ar | Ur | Gr | Cr deriving (Eq)
data DNA = DNA [NtDNA] deriving (Eq)
data RNA = RNA [NtRNA] deriving (Eq)

class NucleotidChain a where
  valid :: a -> Bool
  countATGX :: a -> (Int, Int, Int, Int)

instance NucleotidChain DNA where
  valid (DNA str) = all (\nuc -> (nuc == Ad) || (nuc == Td) || (nuc == Gd) || (nuc == Cd)) str
  countATGX (DNA str) =
    let a = length $ (filter (\nuc -> nuc == Ad) str)
        t = length $ (filter (\nuc -> nuc == Td) str)
        g = length $ (filter (\nuc -> nuc == Gd) str)
        c = length $ (filter (\nuc -> nuc == Cd) str)
    in (a, t, c, g)

-- :l dna_data_ex
-- countATGX (DNA [Td, Ad, Td, Ad, Gd, Cd, Cd, Cd, Ad])
-- => (3,2,3,1)
