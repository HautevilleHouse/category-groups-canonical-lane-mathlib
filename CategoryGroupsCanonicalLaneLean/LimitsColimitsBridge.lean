import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoryGroupsCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace CategoryGroupsCanonicalLaneLean

structure LimitPackage where
  diagram : Functor
  cone : Cone diagram
  universalProperty : Prop

structure ColimitPackage where
  diagram : Functor
  cocone : Cocone diagram
  universalProperty : Prop

structure LimitEvidence (L : LimitPackage) where
  coneClosed : L.cone.vertex  -- simplified
  universalPropertyClosed : L.universalProperty

def LimitClosed (L : LimitPackage) : Prop :=
  L.universalProperty

theorem limit_closed_from_evidence (L : LimitPackage) (E : LimitEvidence L) : LimitClosed L :=
  E.universalPropertyClosed

structure ColimitEvidence (C : ColimitPackage) where
  coconeClosed : C.cocone.vertex
  universalPropertyClosed : C.universalProperty

def ColimitClosed (C : ColimitPackage) : Prop :=
  C.universalProperty

theorem colimit_closed_from_evidence (C : ColimitPackage) (E : ColimitEvidence C) : ColimitClosed C :=
  E.universalPropertyClosed

end CategoryGroupsCanonicalLaneLean
end HautevilleHouse