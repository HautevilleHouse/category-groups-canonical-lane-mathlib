import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryGroupsCanonicalLaneLean

structure MonoidalCategoryPackage (C : Type u) [Category.{v} C] where
  tensorProduct : C × C ⥤ C
  unitObject : C
  associator : Prop
  leftUnitor : Prop
  rightUnitor : Prop
  coherence : Prop

structure MonoidalCategoryEvidence (C : Type u) [Category.{v} C]
    (M : MonoidalCategoryPackage C) where
  coherenceClosed : M.coherence

def MonoidalCategoryClosed (C : Type u) [Category.{v} C]
    (M : MonoidalCategoryPackage C) : Prop :=
  M.coherence

theorem monoidal_category_closed_from_evidence (C : Type u) [Category.{v} C]
    (M : MonoidalCategoryPackage C) (E : MonoidalCategoryEvidence C M) : MonoidalCategoryClosed C M :=
  E.coherenceClosed

end CategoryGroupsCanonicalLaneLean
end HautevilleHouse