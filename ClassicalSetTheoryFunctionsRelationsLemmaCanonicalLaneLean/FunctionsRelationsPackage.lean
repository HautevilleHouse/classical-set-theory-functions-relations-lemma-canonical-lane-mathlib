import classicalSetTheoryFunctionsRelationsLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalSetTheoryFunctionsRelationsLemmaCanonicalLaneLean

structure FunctionsPackage where
  domain : Type u
  codomain : Type v
  functionSet : Set (domain → codomain)
  injectionDefined : Prop
  surjectionDefined : Prop
  bijectionDefined : Prop

structure RelationsPackage where
  carrier : Type u
  relation : carrier → carrier → Prop
  reflexive : Prop
  symmetric : Prop
  transitive : Prop

def FunctionsAllowedClosure (F : FunctionsPackage) : Prop :=
  F.injectionDefined ∧ F.surjectionDefined ∧ F.bijectionDefined

def RelationsAllowedClosure (R : RelationsPackage) : Prop :=
  R.reflexive ∧ R.symmetric ∧ R.transitive

theorem functions_allowed_closed (F : FunctionsPackage) (h : FunctionsAllowedClosure F) :
    FunctionsAllowedClosure F := h

theorem relations_allowed_closed (R : RelationsPackage) (h : RelationsAllowedClosure R) :
    RelationsAllowedClosure R := h

end ClassicalSetTheoryFunctionsRelationsLemmaCanonicalLaneLean
end HautevilleHouse