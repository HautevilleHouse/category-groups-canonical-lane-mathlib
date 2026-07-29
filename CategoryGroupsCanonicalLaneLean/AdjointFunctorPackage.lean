import HautevilleHouse.CategoryGroupsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CategoryGroupsCanonicalLaneLean

structure AdjointFunctorPackage (C D : AdmittedCategory) where
  leftAdjoint : (C.category.Obj → D.category.Obj) → Prop
  rightAdjoint : (D.category.Obj → C.category.Obj) → Prop
  adjunctionIso : Prop
  unitCounit : Prop
  uniqueness : Prop

structure AdjointFunctorEvidence {C D : AdmittedCategory} (A : AdjointFunctorPackage C D) where
  leftAdjointClosed : A.leftAdjoint (fun x => x)
  rightAdjointClosed : A.rightAdjoint (fun x => x)
  adjunctionIsoClosed : A.adjunctionIso
  unitCounitClosed : A.unitCounit
  uniquenessClosed : A.uniqueness

def AdjointFunctorClosed {C D : AdmittedCategory} (A : AdjointFunctorPackage C D) : Prop :=
  A.adjunctionIso ∧ A.unitCounit ∧ A.uniqueness

theorem adjoint_functor_closed_from_evidence {C D : AdmittedCategory} (A : AdjointFunctorPackage C D) (E : AdjointFunctorEvidence A) : AdjointFunctorClosed A :=
  And.intro E.adjunctionIsoClosed (And.intro E.unitCounitClosed E.uniquenessClosed)

end CategoryGroupsCanonicalLaneLean
end HautevilleHouse