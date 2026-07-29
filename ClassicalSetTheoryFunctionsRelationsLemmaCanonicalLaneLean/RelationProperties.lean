import ClassicalSetTheoryFunctionsRelationsLemmaCanonicalLaneLean.ClassicalSetTheoryAdmissibleClass

namespace HautevilleHouse
namespace ClassicalSetTheoryFunctionsRelationsLemmaCanonicalLaneLean

structure RelationPackage where
  carrierSet : Type
  binaryRelation : Prop
  reflexivity : Prop
  symmetry : Prop
  transitivity : Prop
  equivalenceRelation : Prop

structure RelationPropertiesEvidence (R : RelationPackage) where
  reflexivityClosed : R.reflexivity
  symmetryClosed : R.symmetry
  transitivityClosed : R.transitivity
  equivalenceRelationClosed : R.equivalenceRelation

def RelationPropertiesClosed (R : RelationPackage) : Prop :=
  R.reflexivity ∧ R.symmetry ∧ R.transitivity ∧ R.equivalenceRelation

theorem relation_properties_closed_from_evidence
    (R : RelationPackage) (E : RelationPropertiesEvidence R) :
    RelationPropertiesClosed R := by
  exact And.intro E.reflexivityClosed
    (And.intro E.symmetryClosed
      (And.intro E.transitivityClosed E.equivalenceRelationClosed))

end ClassicalSetTheoryFunctionsRelationsLemmaCanonicalLaneLean
end HautevilleHouse