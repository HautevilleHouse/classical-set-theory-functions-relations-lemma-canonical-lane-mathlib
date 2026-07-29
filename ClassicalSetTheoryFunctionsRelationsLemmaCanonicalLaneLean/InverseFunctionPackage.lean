import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalSetTheoryFunctionsRelationsLemmaCanonicalLaneLean

structure InverseFunctionPackage (D : SetTheoryDomain) (F : FunctionPackage D) where
  inverseFunc : FunctionPackage D
  invertibilityCondition : Prop
  leftInverseLaw : Prop
  rightInverseLaw : Prop
  invertibilityConditionTerm : invertibilityCondition
  leftInverseLawTerm : leftInverseLaw
  rightInverseLawTerm : rightInverseLaw

structure InverseFunctionPackageEvidence {D : SetTheoryDomain} {F : FunctionPackage D} (I : InverseFunctionPackage D F) where
  invertibilityConditionClosed : I.invertibilityCondition
  leftInverseLawClosed : I.leftInverseLaw
  rightInverseLawClosed : I.rightInverseLaw

def InverseFunctionPackageClosed {D : SetTheoryDomain} {F : FunctionPackage D} (I : InverseFunctionPackage D F) : Prop :=
  I.invertibilityCondition ∧ I.leftInverseLaw ∧ I.rightInverseLaw

theorem inverse_function_package_closed_from_evidence {D : SetTheoryDomain} {F : FunctionPackage D} (I : InverseFunctionPackage D F) (E : InverseFunctionPackageEvidence I) :
    InverseFunctionPackageClosed I := by
  exact And.intro E.invertibilityConditionClosed (And.intro E.leftInverseLawClosed E.rightInverseLawClosed)

end ClassicalSetTheoryFunctionsRelationsLemmaCanonicalLaneLean
end HautevilleHouse