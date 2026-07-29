import HautevilleHouse.CategoryGroupsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CategoryGroupsCanonicalLaneLean

structure LimitColimitPackage (C : AdmittedCategory) where
  limitExistence : Prop
  colimitExistence : Prop
  limitUniversalProperty : Prop
  colimitUniversalProperty : Prop
  limitColimitAdjunction : Prop

structure LimitColimitEvidence {C : AdmittedCategory} (L : LimitColimitPackage C) where
  limitExistenceClosed : L.limitExistence
  colimitExistenceClosed : L.colimitExistence
  limitUniversalPropertyClosed : L.limitUniversalProperty
  colimitUniversalPropertyClosed : L.colimitUniversalProperty
  limitColimitAdjunctionClosed : L.limitColimitAdjunction

def LimitColimitClosed {C : AdmittedCategory} (L : LimitColimitPackage C) : Prop :=
  L.limitExistence ∧ L.colimitExistence ∧ L.limitUniversalProperty ∧ L.colimitUniversalProperty ∧ L.limitColimitAdjunction

theorem limit_colimit_closed_from_evidence {C : AdmittedCategory} (L : LimitColimitPackage C) (E : LimitColimitEvidence L) : LimitColimitClosed L :=
  And.intro E.limitExistenceClosed (And.intro E.colimitExistenceClosed (And.intro E.limitUniversalPropertyClosed (And.intro E.colimitUniversalPropertyClosed E.limitColimitAdjunctionClosed)))

end CategoryGroupsCanonicalLaneLean
end HautevilleHouse