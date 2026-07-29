import classicalSetTheoryFunctionsRelationsLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalSetTheoryFunctionsRelationsLemmaCanonicalLaneLean

structure PrimitiveSet (α : Type u) where
  carrier : Set α
  emptyIncluded : carrier = Set.univ ∨ carrier = ∅
  closedUnderComplement : ∀ x, x ∈ carrier → xᶜ ∈ carrier

structure PrimitiveRelation (α β : Type u) where
  graph : Set (α × β)
  leftSet : Set α
  rightSet : Set β
  graphInProduct : graph ⊆ leftSet ×ˢ rightSet

structure PrimitiveFunction (α β : Type u) where
  graph : Set (α × β)
  domain : Set α
  codomain : Set β
  functional : ∀ x y1 y2, (x, y1) ∈ graph → (x, y2) ∈ graph → y1 = y2
  totalOnDomain : ∀ x, x ∈ domain → ∃ y, (x, y) ∈ graph

end ClassicalSetTheoryFunctionsRelationsLemmaCanonicalLaneLean
end HautevilleHouse
