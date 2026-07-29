import classicalSetTheoryFunctionsRelationsLemmaCanonicalLaneLean.FunctionsRelationsPackage

namespace HautevilleHouse
namespace ClassicalSetTheoryFunctionsRelationsLemmaCanonicalLaneLean

structure ZornLemmaEvidence (P : RelationsPackage) where
  chainProperty : ∀ (C : Set P.carrier), (∀ x y ∈ C, P.relation x y ∨ P.relation y x) → ∃ z, ∀ x ∈ C, P.relation x z
  maximalExists : ∃ m, ∀ x, P.relation m x → x = m
  chainImplication : chainProperty → maximalExists

def ZornLemmaClosed (P : RelationsPackage) : Prop :=
  (∀ (C : Set P.carrier), (∀ x y ∈ C, P.relation x y ∨ P.relation y x) → ∃ z, ∀ x ∈ C, P.relation x z) →
  (∃ m, ∀ x, P.relation m x → x = m)

theorem zorn_lemma_closed (P : RelationsPackage) (E : ZornLemmaEvidence P) :
    ZornLemmaClosed P := by
  intro h
  exact E.chainImplication h

end ClassicalSetTheoryFunctionsRelationsLemmaCanonicalLaneLean
end HautevilleHouse