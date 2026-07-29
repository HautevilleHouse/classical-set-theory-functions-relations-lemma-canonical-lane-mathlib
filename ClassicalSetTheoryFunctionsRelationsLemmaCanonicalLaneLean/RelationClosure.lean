import classicalSetTheoryFunctionsRelationsLemmaCanonicalLaneLean.PrimitiveSetStructure

namespace HautevilleHouse
namespace ClassicalSetTheoryFunctionsRelationsLemmaCanonicalLaneLean

structure RelationClosurePackage {α β : Type u} (R : PrimitiveRelation α β) where
  reflexive : Prop
  symmetric : Prop
  transitive : Prop
  reflexiveClosure : Set (α × α)
  symmetricClosure : Set (α × α)
  transitiveClosure : Set (α × α)
  reflexiveClosed : reflexive
  symmetricClosed : symmetric
  transitiveClosed : transitive

structure RelationClosureEvidence {α β : Type u} {R : PrimitiveRelation α β} (C : RelationClosurePackage R) where
  reflexiveClosed : C.reflexive
  symmetricClosed : C.symmetric
  transitiveClosed : C.transitive

def RelationClosureClosed {α β : Type u} {R : PrimitiveRelation α β} (C : RelationClosurePackage R) : Prop :=
  C.reflexive ∧ C.symmetric ∧ C.transitive

theorem relation_closure_closed_from_evidence
    {α β : Type u} {R : PrimitiveRelation α β}
    (C : RelationClosurePackage R) (E : RelationClosureEvidence C) :
    RelationClosureClosed C := by
  exact And.intro E.reflexiveClosed (And.intro E.symmetricClosed E.transitiveClosed)

end ClassicalSetTheoryFunctionsRelationsLemmaCanonicalLaneLean
end HautevilleHouse
