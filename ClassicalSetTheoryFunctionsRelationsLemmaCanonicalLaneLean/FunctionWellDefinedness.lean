import ClassicalSetTheoryFunctionsRelationsLemmaCanonicalLaneLean.ClassicalSetTheoryAdmissibleClass

namespace HautevilleHouse
namespace ClassicalSetTheoryFunctionsRelationsLemmaCanonicalLaneLean

structure FunctionDefinitionPackage where
  sourceSet : Type
  targetSet : Type
  mappingRule : Prop
  singleValued : Prop
  totalDefined : Prop

structure FunctionWellDefinednessEvidence (F : FunctionDefinitionPackage) where
  singleValuedClosed : F.singleValued
  totalDefinedClosed : F.totalDefined

def FunctionWellDefinednessClosed (F : FunctionDefinitionPackage) : Prop :=
  F.singleValued ∧ F.totalDefined

theorem function_well_definedness_closed_from_evidence
    (F : FunctionDefinitionPackage) (E : FunctionWellDefinednessEvidence F) :
    FunctionWellDefinednessClosed F := by
  exact And.intro E.singleValuedClosed E.totalDefinedClosed

end ClassicalSetTheoryFunctionsRelationsLemmaCanonicalLaneLean
end HautevilleHouse