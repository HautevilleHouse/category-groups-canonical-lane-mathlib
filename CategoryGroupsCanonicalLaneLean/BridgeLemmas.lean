import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryGroupsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CategoryBridgeClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CategoryGroupsCanonicalLaneLean
end HautevilleHouse