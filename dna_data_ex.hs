data NtDNA = Ad | Td | Gd | Cd deriving (Eq)
data NtRNA = Ar | Ur | Gr | Cr deriving (Eq)
data DNA = [NtDNA] deriving (Eq)
data RNA = [NtRNA] deriving (Eq)

class NucleotidChain a where
  valid :: a -> Bool
  countATGX :: (Int, Int, Int, Int)
