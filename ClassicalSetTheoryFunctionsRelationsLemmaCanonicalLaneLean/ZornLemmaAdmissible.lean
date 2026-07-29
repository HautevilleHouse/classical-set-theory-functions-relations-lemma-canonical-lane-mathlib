import classicalSetTheoryFunctionsRelationsLemmaCanonicalLaneLean.RelationClosure

namespace HautevilleHouse
namespace ClassicalSetTheoryFunctionsRelationsLemmaCanonicalLaneLean

structure ZornLemmaPackage {α : Type u} (R : PrimitiveRelation α α) where
  partialOrder : Prop
  chainCondition : Prop
  maximalElement : α
  maximality : Prop
  partialOrderClosed : partialOrder
  chainConditionClosed : chainCondition
  maximalityClosed : maximality

structure ZornLemmaEvidence {α : Type u} {R : PrimitiveRelation α α} (Z : ZornLemmaPackage R) where
  partialOrderClosed : Z.partialOrder
  chainConditionClosed : Z.chainCondition
  maximalityClosed : Z.maximality

def ZornLemmaClosed {α : Type u} {R : PrimitiveRelation α α} (Z : ZornLemmaPackage R) : Prop :=
  Z.partialOrder ∧ Z.chainCondition ∧ Z.maximality

theorem zorn_lemma_closed_from_evidence
    {α : Type u} {R : PrimitiveRelation α α}
    (Z : ZornLemmaPackage R) (E : ZornLemmaEvidence Z) :
    ZornLemmaClosed Z := by
  exact And.intro E.partialOrderClosed (And.intro E.chainConditionClosed E.maximalityClosed)

end ClassicalSetTheoryFunctionsRelationsLemmaCanonicalLaneLean
end HautevilleHouse
