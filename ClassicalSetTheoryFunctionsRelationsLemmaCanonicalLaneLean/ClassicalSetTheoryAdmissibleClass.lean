import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalSetTheoryFunctionsRelationsLemmaCanonicalLaneLean

structure SetTheoryAdmissibleObject where
  domainSet : Type
  codomainSet : Type
  functionRelation : Prop
  functionDefined : Prop
  relationWellDefined : Prop
  conclusion : functionDefined ∧ relationWellDefined

structure AdmissibleClass where
  object : SetTheoryAdmissibleObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.functionDefined ∧ A.object.relationWellDefined) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ClassicalSetTheoryFunctionsRelationsLemmaCanonicalLaneLean
end HautevilleHouse