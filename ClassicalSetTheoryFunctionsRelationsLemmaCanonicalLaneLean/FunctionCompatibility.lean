import ClassicalSetTheoryFunctionsRelationsLemmaCanonicalLaneLean.ClassicalSetTheoryAdmissibleClass
import ClassicalSetTheoryFunctionsRelationsLemmaCanonicalLaneLean.RelationProperties

namespace HautevilleHouse
namespace ClassicalSetTheoryFunctionsRelationsLemmaCanonicalLaneLean

structure FunctionCompatibilityPackage (A : AdmissibleClass) (P : RelationPropertiesPackage A) where
  compatibleWithEquivalence : (P.reflexive ∧ P.symmetric ∧ P.transitive) → (∀ x y, A.object.relation x y → A.object.relation (A.object.function x) (A.object.function y))
  preservesEquivalence : Prop

def FunctionCompatibilityClosed (F : FunctionCompatibilityPackage A P) : Prop :=
  F.preservesEquivalence

end ClassicalSetTheoryFunctionsRelationsLemmaCanonicalLaneLean
end HautevilleHouse