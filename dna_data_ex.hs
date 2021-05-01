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
    let adenine = length $ Ad `elemIndices` str
        thymine = length $ Td `elemIndices` str
        guanine = length $ Gd `elemIndices` str
        cytosine = length $ Cd `elemIndices` str
    in (adenine, thymine, guanine, cytosine)
