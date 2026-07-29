import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalSetTheoryFunctionsRelationsLemmaCanonicalLaneLean

structure FunctionComposition (D : SetTheoryDomain) (F G : FunctionPackage D) where
  composedFunc : FunctionPackage D
  compositionDefined : Prop
  associativeLaw : Prop
  identityLaw : Prop
  compositionDefinedTerm : compositionDefined
  associativeLawTerm : associativeLaw
  identityLawTerm : identityLaw

structure FunctionCompositionEvidence {D : SetTheoryDomain} {F G : FunctionPackage D} (C : FunctionComposition D F G) where
  compositionDefinedClosed : C.compositionDefined
  associativeLawClosed : C.associativeLaw
  identityLawClosed : C.identityLaw

def FunctionCompositionClosed {D : SetTheoryDomain} {F G : FunctionPackage D} (C : FunctionComposition D F G) : Prop :=
  C.compositionDefined ∧ C.associativeLaw ∧ C.identityLaw

theorem function_composition_closed_from_evidence {D : SetTheoryDomain} {F G : FunctionPackage D} (C : FunctionComposition D F G) (E : FunctionCompositionEvidence C) :
    FunctionCompositionClosed C := by
  exact And.intro E.compositionDefinedClosed (And.intro E.associativeLawClosed E.identityLawClosed)

end ClassicalSetTheoryFunctionsRelationsLemmaCanonicalLaneLean
end HautevilleHouse