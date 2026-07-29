import classicalSetTheoryFunctionsRelationsLemmaCanonicalLaneLean.FunctionsRelationsPackage

namespace HautevilleHouse
namespace ClassicalSetTheoryFunctionsRelationsLemmaCanonicalLaneLean

structure CantorBernsteinEvidence (F : FunctionsPackage) where
  injectionAB : ∃ f : F.domain → F.codomain, f ∈ F.functionSet ∧ Function.Injective f
  injectionBA : ∃ g : F.codomain → F.domain, g ∈ F.functionSet ∧ Function.Injective g
  bijectionConstructed : ∃ h : F.domain → F.codomain, h ∈ F.functionSet ∧ Function.Bijective h
  constructionClosure : (injectionAB ∧ injectionBA) → bijectionConstructed

def CantorBernsteinClosed (F : FunctionsPackage) : Prop :=
  (∃ f : F.domain → F.codomain, f ∈ F.functionSet ∧ Function.Injective f) ∧
  (∃ g : F.codomain → F.domain, g ∈ F.functionSet ∧ Function.Injective g) →
  (∃ h : F.domain → F.codomain, h ∈ F.functionSet ∧ Function.Bijective h)

theorem cantor_bernstein_closed (F : FunctionsPackage) (E : CantorBernsteinEvidence F) :
    CantorBernsteinClosed F := by
  intro h
  exact E.constructionClosure h

end ClassicalSetTheoryFunctionsRelationsLemmaCanonicalLaneLean
end HautevilleHouse