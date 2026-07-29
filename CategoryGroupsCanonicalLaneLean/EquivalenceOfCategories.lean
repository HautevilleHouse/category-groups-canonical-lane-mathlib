import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoryGroupsCanonicalLaneLean.CategoriesAndFunctors
import HautevilleHouse.CategoryGroupsCanonicalLaneLean.AdjointFunctors

namespace HautevilleHouse
namespace CategoryGroupsCanonicalLaneLean

structure EquivalencePackage (C D : CategoryPackage) (F : FunctorPackage C D) (G : FunctorPackage D C) where
  adj : AdjunctionPackage C D F G
  fullyFaithfulF : sorry
  fullyFaithfulG : sorry

def EquivalenceClosed {C D : CategoryPackage} (F : FunctorPackage C D) (G : FunctorPackage D C) (E : EquivalencePackage C D F G) : Prop :=
  True

theorem equivalence_bridge {C D : CategoryPackage} (F : FunctorPackage C D) (G : FunctorPackage D C) (E : EquivalencePackage C D F G) : EquivalenceClosed F G E :=
  trivial

end CategoryGroupsCanonicalLaneLean
end HautevilleHouse