import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryGroupsCanonicalLaneLean

structure AdjointPair (C D : Type u) [Category C] [Category D] where
  leftAdjoint : Functor D C
  rightAdjoint : Functor C D
  unit : 𝟭 D ⟶ rightAdjoint.comp leftAdjoint
  counit : leftAdjoint.comp rightAdjoint ⟶ 𝟭 C
  triangleLeft : (whiskerLeft leftAdjoint unit) ≫ (whiskerRight counit leftAdjoint) = 𝟙 leftAdjoint
  triangleRight : (whiskerLeft rightAdjoint counit) ≫ (whiskerRight unit rightAdjoint) = 𝟙 rightAdjoint

structure AdjointFunctorEvidence where
  leftAdjointExists : Prop
  rightAdjointExists : Prop
  unitNatural : Prop
  counitNatural : Prop
  triangleIdentitiesHold : Prop

def AdjointFunctorClosed (A : AdmissibleClass) : Prop := True

end CategoryGroupsCanonicalLaneLean
end HautevilleHouse
