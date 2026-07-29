import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoryGroupsCanonicalLaneLean.CategoriesAndFunctors

namespace HautevilleHouse
namespace CategoryGroupsCanonicalLaneLean

structure ConePackage {C : CategoryPackage} (F : FunctorPackage (C := ?_) (D := ?_) ) where
  apex : C.objects
  projection : (i : ?_) → C.morphisms apex (F.objectMap i)
  commuting : sorry

structure LimitPackage {C : CategoryPackage} (F : FunctorPackage (C := ?_) (D := ?_) ) where
  cone : ConePackage F
  universal : (other : ConePackage F) → C.morphisms other.apex cone.apex
  universalCommutes : (other : ConePackage F) → sorry

structure ColimitPackage {C : CategoryPackage} (F : FunctorPackage (C := ?_) (D := ?_) ) where
  cocone : CoconePackage F
  universal : (other : CoconePackage F) → C.morphisms cocone.apex other.apex
  universalCommutes : (other : CoconePackage F) → sorry

def LimitClosed {C : CategoryPackage} (F : FunctorPackage (C := ?_) (D := ?_) ) (L : LimitPackage F) : Prop :=
  True

def ColimitClosed {C : CategoryPackage} (F : FunctorPackage (C := ?_) (D := ?_) ) (C' : ColimitPackage F) : Prop :=
  True

end CategoryGroupsCanonicalLaneLean
end HautevilleHouse