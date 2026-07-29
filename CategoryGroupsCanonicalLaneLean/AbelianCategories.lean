import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryGroupsCanonicalLaneLean

structure AbelianCategoryPackage where
  additive : Prop
  kernelsExist : Prop
  cokernelsExist : Prop
  monomorphismAreKernels : Prop
  epimorphismAreCokernels : Prop

structure AbelianCategoryEvidence (A : AbelianCategoryPackage) where
  additiveClosed : A.additive
  kernelsExistClosed : A.kernelsExist
  cokernelsExistClosed : A.cokernelsExist
  monomorphismAreKernelsClosed : A.monomorphismAreKernels
  epimorphismAreCokernelsClosed : A.epimorphismAreCokernels

def AbelianCategoryClosed (A : AbelianCategoryPackage) : Prop :=
  A.additive ∧ A.kernelsExist ∧ A.cokernelsExist ∧ A.monomorphismAreKernels ∧ A.epimorphismAreCokernels

theorem abelian_category_closed_from_evidence (A : AbelianCategoryPackage) (E : AbelianCategoryEvidence A) : AbelianCategoryClosed A := by
  exact And.intro E.additiveClosed
    (And.intro E.kernelsExistClosed
      (And.intro E.cokernelsExistClosed
        (And.intro E.monomorphismAreKernelsClosed E.epimorphismAreCokernelsClosed)))

end HautevilleHouse
end CategoryGroupsCanonicalLaneLean
