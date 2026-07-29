import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalSetTheoryFunctionsRelationsLemmaCanonicalLaneLean

structure SetTheoryDomain where
  domainType : Type u
  membership : domainType → domainType → Prop
  extensionality : Prop
  foundationRestriction : Prop
  extensionalityTerm : extensionality
  foundationRestrictionTerm : foundationRestriction

structure SetTheoryDomainEvidence (D : SetTheoryDomain) where
  extensionalityClosed : D.extensionality
  foundationRestrictionClosed : D.foundationRestriction

def SetTheoryDomainClosed (D : SetTheoryDomain) : Prop :=
  D.extensionality ∧ D.foundationRestriction

theorem set_theory_domain_closed_from_evidence (D : SetTheoryDomain) (E : SetTheoryDomainEvidence D) :
    SetTheoryDomainClosed D := by
  exact And.intro E.extensionalityClosed E.foundationRestrictionClosed

end ClassicalSetTheoryFunctionsRelationsLemmaCanonicalLaneLean
end HautevilleHouse