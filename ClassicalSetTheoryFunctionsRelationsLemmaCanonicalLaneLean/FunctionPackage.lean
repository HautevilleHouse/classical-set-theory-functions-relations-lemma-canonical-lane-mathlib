import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalSetTheoryFunctionsRelationsLemmaCanonicalLaneLean

structure FunctionPackage (D : SetTheoryDomain) where
  functionDef : Type u
  graph : functionDef → Set (D.domainType × D.domainType)
  functionalProperty : Prop
  domainDefined : Prop
  codomainDefined : Prop
  functionalPropertyTerm : functionalProperty
  domainDefinedTerm : domainDefined
  codomainDefinedTerm : codomainDefined

structure FunctionPackageEvidence {D : SetTheoryDomain} (F : FunctionPackage D) where
  functionalPropertyClosed : F.functionalProperty
  domainDefinedClosed : F.domainDefined
  codomainDefinedClosed : F.codomainDefined

def FunctionPackageClosed {D : SetTheoryDomain} (F : FunctionPackage D) : Prop :=
  F.functionalProperty ∧ F.domainDefined ∧ F.codomainDefined

theorem function_package_closed_from_evidence {D : SetTheoryDomain} (F : FunctionPackage D) (E : FunctionPackageEvidence F) :
    FunctionPackageClosed F := by
  exact And.intro E.functionalPropertyClosed (And.intro E.domainDefinedClosed E.codomainDefinedClosed)

end ClassicalSetTheoryFunctionsRelationsLemmaCanonicalLaneLean
end HautevilleHouse