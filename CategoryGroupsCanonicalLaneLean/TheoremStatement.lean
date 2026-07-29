import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryGroupsCanonicalLaneLean

structure CategoryAdmittedObject where
  category : Type
  group : Type
  functor : category → group
  conclusion : Prop

def CategoryWitnessClosed (O : CategoryAdmittedObject) : Prop :=
  O.conclusion

end CategoryGroupsCanonicalLaneLean
end HautevilleHouse
