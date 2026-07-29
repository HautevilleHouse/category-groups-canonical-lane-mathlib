import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryGroupsCanonicalLaneLean

structure CategoryGroupsAdmittedObject where
  category : Type u
  functor : Type v
  yonedaLemmaHolds : Prop
  conclusion : yonedaLemmaHolds

def CategoryGroupsWitnessClosed (O : CategoryGroupsAdmittedObject) : Prop :=
  O.yonedaLemmaHolds

end CategoryGroupsCanonicalLaneLean
end HautevilleHouse