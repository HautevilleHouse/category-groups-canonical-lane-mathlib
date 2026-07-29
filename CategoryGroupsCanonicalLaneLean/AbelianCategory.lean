import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryGroupsCanonicalLaneLean

structure AbelianCategoryPackage (C : Type u) [Category.{v} C] where
  zeroObject : C
  kernels : (a b : C) → (a ⟶ b) → C
  cokernels : (a b : C) → (a ⟶ b) → C
  exactness : Prop

structure AbelianCategoryEvidence (C : Type u) [Category.{v} C]
    (A : AbelianCategoryPackage C) where
  exactnessClosed : A.exactness

def AbelianCategoryClosed (C : Type u) [Category.{v} C]
    (A : AbelianCategoryPackage C) : Prop :=
  A.exactness

theorem abelian_category_closed_from_evidence (C : Type u) [Category.{v} C]
    (A : AbelianCategoryPackage C) (E : AbelianCategoryEvidence C A) : AbelianCategoryClosed C A :=
  E.exactnessClosed

end CategoryGroupsCanonicalLaneLean
end HautevilleHouse