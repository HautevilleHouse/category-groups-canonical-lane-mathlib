import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoryGroupsCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace CategoryGroupsCanonicalLaneLean

structure AdjointFunctorPackage where
  left : Functor
  right : Functor
  unit : NaturalTransformation (left.comp right) (Functor.id)
  counit : NaturalTransformation (Functor.id) (right.comp left)
  triangleIdentities : Prop

structure AdjointEvidence (A : AdjointFunctorPackage) where
  unitNaturalClosed : A.unit.naturality
  counitNaturalClosed : A.counit.naturality
  triangleIdentitiesClosed : A.triangleIdentities

def AdjointClosed (A : AdjointFunctorPackage) : Prop :=
  A.triangleIdentities

theorem adjoint_closed_from_evidence (A : AdjointFunctorPackage) (E : AdjointEvidence A) : AdjointClosed A :=
  E.triangleIdentitiesClosed

theorem adjoint_evidence_terms (A : AdjointFunctorPackage) (E : AdjointEvidence A) : True :=
  trivial

end CategoryGroupsCanonicalLaneLean
end HautevilleHouse