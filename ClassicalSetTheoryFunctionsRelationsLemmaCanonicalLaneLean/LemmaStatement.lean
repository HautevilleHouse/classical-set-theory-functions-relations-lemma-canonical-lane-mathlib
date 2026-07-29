import ClassicalSetTheoryFunctionsRelationsLemmaCanonicalLaneLean.FunctionCompatibility

namespace HautevilleHouse
namespace ClassicalSetTheoryFunctionsRelationsLemmaCanonicalLaneLean

structure LemmaStatementPackage (A : AdmissibleClass) (P : RelationPropertiesPackage A) (F : FunctionCompatibilityPackage A P) where
  lemmaProved : Prop
  lemmaProof : lemmaProved

def LemmaStatementClosed (L : LemmaStatementPackage A P F) : Prop :=
  L.lemmaProved

end ClassicalSetTheoryFunctionsRelationsLemmaCanonicalLaneLean
end HautevilleHouse