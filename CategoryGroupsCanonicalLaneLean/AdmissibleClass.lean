import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryGroupsCanonicalLaneLean

structure AdmissibleClass where
  object : CategoryObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CategoryBridgeClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CategoryGroupsCanonicalLaneLean
end HautevilleHouse