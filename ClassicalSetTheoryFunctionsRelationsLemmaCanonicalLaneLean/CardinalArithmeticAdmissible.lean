import classicalSetTheoryFunctionsRelationsLemmaCanonicalLaneLean.PrimitiveSetStructure

namespace HautevilleHouse
namespace ClassicalSetTheoryFunctionsRelationsLemmaCanonicalLaneLean

structure CardinalArithmeticPackage where
  cardinalType : Type u
  addition : cardinalType → cardinalType → cardinalType
  multiplication : cardinalType → cardinalType → cardinalType
  exponentiation : cardinalType → cardinalType → cardinalType
  additionProperties : Prop
  multiplicationProperties : Prop
  exponentiationProperties : Prop
  additionPropertiesClosed : additionProperties
  multiplicationPropertiesClosed : multiplicationProperties
  exponentiationPropertiesClosed : exponentiationProperties

structure CardinalArithmeticEvidence (C : CardinalArithmeticPackage) where
  additionPropertiesClosed : C.additionProperties
  multiplicationPropertiesClosed : C.multiplicationProperties
  exponentiationPropertiesClosed : C.exponentiationProperties

def CardinalArithmeticClosed (C : CardinalArithmeticPackage) : Prop :=
  C.additionProperties ∧ C.multiplicationProperties ∧ C.exponentiationProperties

theorem cardinal_arithmetic_closed_from_evidence
    (C : CardinalArithmeticPackage) (E : CardinalArithmeticEvidence C) :
    CardinalArithmeticClosed C := by
  exact And.intro E.additionPropertiesClosed
    (And.intro E.multiplicationPropertiesClosed E.exponentiationPropertiesClosed)

end ClassicalSetTheoryFunctionsRelationsLemmaCanonicalLaneLean
end HautevilleHouse
