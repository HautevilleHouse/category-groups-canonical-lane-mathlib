import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryGroupsCanonicalLaneLean

structure AdjointFunctorPair (C D : Type u) [Category.{v} C] [Category.{v} D] where
  leftAdjoint : C ⥤ D
  rightAdjoint : D ⥤ C
  adjunctionIso : Prop

structure AdjointFunctorEvidence (C D : Type u) [Category.{v} C] [Category.{v} D]
    (A : AdjointFunctorPair C D) where
  adjunctionClosed : A.adjunctionIso

def AdjointFunctorClosed (C D : Type u) [Category.{v} C] [Category.{v} D]
    (A : AdjointFunctorPair C D) : Prop :=
  A.adjunctionIso

theorem adjoint_functor_closed_from_evidence (C D : Type u) [Category.{v} C] [Category.{v} D]
    (A : AdjointFunctorPair C D) (E : AdjointFunctorEvidence C D A) : AdjointFunctorClosed C D A :=
  E.adjunctionClosed

end CategoryGroupsCanonicalLaneLean
end HautevilleHouse