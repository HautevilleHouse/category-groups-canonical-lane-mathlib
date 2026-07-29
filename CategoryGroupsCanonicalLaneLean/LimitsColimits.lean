import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryGroupsCanonicalLaneLean

structure Limit (J C : Type u) [Category J] [Category C] (F : Functor J C) where
  cone : Cone F
  universalProperty : ∀ (c : Cone F), ∃! (f : c.pt ⟶ cone.pt), ∀ (j : J), c.π.app j = cone.π.app j ≫ f

structure Colimit (J C : Type u) [Category J] [Category C] (F : Functor J C) where
  cocone : Cocone F
  universalProperty : ∀ (c : Cocone F), ∃! (f : cocone.pt ⟶ c.pt), ∀ (j : J), c.ι.app j = f ≫ cocone.ι.app j

structure LimitColimitEvidence where
  limitsExist : Prop
  colimitsExist : Prop
  uniqueness : Prop

def LimitsColimitsClosed (A : AdmissibleClass) : Prop := True

end CategoryGroupsCanonicalLaneLean
end HautevilleHouse
