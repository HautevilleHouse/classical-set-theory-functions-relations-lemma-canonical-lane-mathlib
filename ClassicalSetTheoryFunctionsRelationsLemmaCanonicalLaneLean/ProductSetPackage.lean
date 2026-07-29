import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalSetTheoryFunctionsRelationsLemmaCanonicalLaneLean

structure ProductSetPackage (D : SetTheoryDomain) (A B : Set D.domainType) where
  productSet : Set (D.domainType × D.domainType)
  productDefined : Prop
  projectionExists : Prop
  productDefinedTerm : productDefined
  projectionExistsTerm : projectionExists

structure ProductSetPackageEvidence {D : SetTheoryDomain} {A B : Set D.domainType} (P : ProductSetPackage D A B) where
  productDefinedClosed : P.productDefined
  projectionExistsClosed : P.projectionExists

def ProductSetPackageClosed {D : SetTheoryDomain} {A B : Set D.domainType} (P : ProductSetPackage D A B) : Prop :=
  P.productDefined ∧ P.projectionExists

theorem product_set_package_closed_from_evidence {D : SetTheoryDomain} {A B : Set D.domainType} (P : ProductSetPackage D A B) (E : ProductSetPackageEvidence P) :
    ProductSetPackageClosed P := by
  exact And.intro E.productDefinedClosed E.projectionExistsClosed

end ClassicalSetTheoryFunctionsRelationsLemmaCanonicalLaneLean
end HautevilleHouse