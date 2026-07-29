import canonicalLaneMathlib.AdmissibleClass
import CategoryGroupsCanonicalLaneLean.AdjointFunctors
import CategoryGroupsCanonicalLaneLean.YonedaLemma
import CategoryGroupsCanonicalLaneLean.LimitsColimits

namespace HautevilleHouse
namespace CategoryGroupsCanonicalLaneLean

def ConstrainedCategoryGroupsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_category_groups_endgame (A : AdmissibleClass) :
    ConstrainedCategoryGroupsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CategoryGroupsCanonicalLaneLean
end HautevilleHouse
