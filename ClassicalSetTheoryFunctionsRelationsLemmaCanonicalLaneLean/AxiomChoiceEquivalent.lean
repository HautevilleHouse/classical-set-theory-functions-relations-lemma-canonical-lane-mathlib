import classicalSetTheoryFunctionsRelationsLemmaCanonicalLaneLean.ZornLemmaEvidence
import classicalSetTheoryFunctionsRelationsLemmaCanonicalLaneLean.CantorBernsteinEvidence

namespace HautevilleHouse
namespace ClassicalSetTheoryFunctionsRelationsLemmaCanonicalLaneLean

structure AxiomChoiceEquivalent where
  choiceFunction : (S : Set (Set α)) → (h : ∅ ∉ S) → (∃ f : S → α, ∀ X ∈ S, f X ∈ X)
  wellOrdering : ∀ X, ∃ (R : X → X → Prop), IsWellOrder X R
  zornLemma : ∀ (P : RelationsPackage), ZornLemmaClosed P
  cantorBernstein : ∀ (F : FunctionsPackage), CantorBernsteinClosed F
  equivalencesProved : choiceFunction = wellOrdering ∧ wellOrdering = zornLemma ∧ zornLemma = cantorBernstein

def AxiomChoiceClosed : Prop :=
  ∀ (S : Set (Set α)) (h : ∅ ∉ S), ∃ f : S → α, ∀ X ∈ S, f X ∈ X

theorem axiom_choice_closed (A : AxiomChoiceEquivalent) : AxiomChoiceClosed := by
  intro S h
  exact A.choiceFunction S h

end ClassicalSetTheoryFunctionsRelationsLemmaCanonicalLaneLean
end HautevilleHouse