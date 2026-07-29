import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryGroupsCanonicalLaneLean

structure MonoidalCategoryPackage where
  tensorProduct : Type u → Type u → Type u
  associatorNatural : Prop
  leftUnitorNatural : Prop
  rightUnitorNatural : Prop
  pentagonIdentity : Prop
  triangleIdentity : Prop

structure MonoidalCategoryEvidence (M : MonoidalCategoryPackage) where
  tensorProductClosed : M.tensorProduct = M.tensorProduct
  associatorNaturalClosed : M.associatorNatural
  leftUnitorNaturalClosed : M.leftUnitorNatural
  rightUnitorNaturalClosed : M.rightUnitorNatural
  pentagonIdentityClosed : M.pentagonIdentity
  triangleIdentityClosed : M.triangleIdentity

def MonoidalCategoryClosed (M : MonoidalCategoryPackage) : Prop :=
  M.associatorNatural ∧ M.leftUnitorNatural ∧ M.rightUnitorNatural ∧
  M.pentagonIdentity ∧ M.triangleIdentity

theorem monoidal_category_closed_from_evidence (M : MonoidalCategoryPackage) (E : MonoidalCategoryEvidence M) : MonoidalCategoryClosed M := by
  exact And.intro E.associatorNaturalClosed
    (And.intro E.leftUnitorNaturalClosed
      (And.intro E.rightUnitorNaturalClosed
        (And.intro E.pentagonIdentityClosed E.triangleIdentityClosed)))

end HautevilleHouse
end CategoryGroupsCanonicalLaneLean
