import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryGroupsCanonicalLaneLean

structure CategoryObject where
  carrier : Type u
  identityMorphism : carrier -> carrier
  composition : (carrier -> carrier) -> (carrier -> carrier) -> (carrier -> carrier)
  associativity : Prop
  identityLeft : Prop
  identityRight : Prop

structure AdmittedCategory (A : AdmissibleClass) where
  obj : CategoryObject
  closureCondition : bridgeClosed A ∧ gateClosed A

def CategoryWitnessClosed (O : CategoryObject) : Prop :=
  O.associativity ∧ O.identityLeft ∧ O.identityRight

end CategoryGroupsCanonicalLaneLean
end HautevilleHouse