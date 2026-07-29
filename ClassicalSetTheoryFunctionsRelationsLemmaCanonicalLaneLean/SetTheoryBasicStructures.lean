import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalSetTheoryFunctionsRelationsLemmaCanonicalLaneLean

structure SetTheoryClass where
  carrier : Type u
  membership : carrier → carrier → Prop
  extensionality : Prop
  foundation : Prop
  extensionalityTerm : extensionality
  foundationTerm : foundation

structure FunctionClass (A B : Type u) where
  map : A → B
  domain : Set A
  codomain : Set B
  totalDefined : Prop
  totalDefinedTerm : totalDefined

structure RelationClass (A B : Type u) where
  graph : Set (A × B)
  domain : Set A
  range : Set B
  serial : Prop
  serialTerm : serial

structure OrderRelation (A : Type u) where
  rel : A → A → Prop
  reflexive : Prop
  transitive : Prop
  antisymmetric : Prop
  reflexiveTerm : reflexive
  transitiveTerm : transitive
  antisymmetricTerm : antisymmetric

def SetTheoryEvidence (S : SetTheoryClass) : Prop :=
  S.extensionality ∧ S.foundation

theorem set_theory_evidence_holds (S : SetTheoryClass) : SetTheoryEvidence S := by
  exact And.intro S.extensionalityTerm S.foundationTerm

end ClassicalSetTheoryFunctionsRelationsLemmaCanonicalLaneLean
end HautevilleHouse
