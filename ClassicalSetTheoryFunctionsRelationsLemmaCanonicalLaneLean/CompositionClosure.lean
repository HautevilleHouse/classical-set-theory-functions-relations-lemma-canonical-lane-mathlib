import ClassicalSetTheoryFunctionsRelationsLemmaCanonicalLaneLean.FunctionWellDefinedness
import ClassicalSetTheoryFunctionsRelationsLemmaCanonicalLaneLean.RelationProperties

namespace HautevilleHouse
namespace ClassicalSetTheoryFunctionsRelationsLemmaCanonicalLaneLean

structure CompositionPackage {F : FunctionDefinitionPackage} {G : FunctionDefinitionPackage} where
  compositionDefined : Prop
  compositionAssociative : Prop

structure CompositionEvidence {F : FunctionDefinitionPackage} {G : FunctionDefinitionPackage}
    (C : CompositionPackage F G) where
  compositionDefinedClosed : C.compositionDefined
  compositionAssociativeClosed : C.compositionAssociative

def CompositionClosed {F : FunctionDefinitionPackage} {G : FunctionDefinitionPackage}
    (C : CompositionPackage F G) : Prop :=
  C.compositionDefined ∧ C.compositionAssociative

theorem composition_closed_from_evidence
    {F : FunctionDefinitionPackage} {G : FunctionDefinitionPackage}
    (C : CompositionPackage F G) (E : CompositionEvidence C) :
    CompositionClosed C := by
  exact And.intro E.compositionDefinedClosed E.compositionAssociativeClosed

end ClassicalSetTheoryFunctionsRelationsLemmaCanonicalLaneLean
end HautevilleHouse