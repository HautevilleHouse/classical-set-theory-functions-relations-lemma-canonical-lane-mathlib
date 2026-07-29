import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalSetTheoryFunctionsRelationsLemmaCanonicalLaneLean

structure RelationPackage (D : SetTheoryDomain) where
  relationDef : Type u
  extension : relationDef → Set (D.domainType × D.domainType)
  reflexive : Prop
  symmetric : Prop
  transitive : Prop
  reflexiveTerm : reflexive
  symmetricTerm : symmetric
  transitiveTerm : transitive

structure RelationPackageEvidence {D : SetTheoryDomain} (R : RelationPackage D) where
  reflexiveClosed : R.reflexive
  symmetricClosed : R.symmetric
  transitiveClosed : R.transitive

def RelationPackageClosed {D : SetTheoryDomain} (R : RelationPackage D) : Prop :=
  R.reflexive ∧ R.symmetric ∧ R.transitive

theorem relation_package_closed_from_evidence {D : SetTheoryDomain} (R : RelationPackage D) (E : RelationPackageEvidence R) :
    RelationPackageClosed R := by
  exact And.intro E.reflexiveClosed (And.intro E.symmetricClosed E.transitiveClosed)

end ClassicalSetTheoryFunctionsRelationsLemmaCanonicalLaneLean
end HautevilleHouse