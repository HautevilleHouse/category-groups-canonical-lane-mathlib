import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryGroupsCanonicalLaneLean

structure LimitColimitPackage (J C : Type u) [Category.{v} J] [Category.{v} C] where
  limitCone : (J ⥤ C) → Type (max u v)
  colimitCocone : (J ⥤ C) → Type (max u v)
  universality : Prop

structure LimitColimitEvidence (J C : Type u) [Category.{v} J] [Category.{v} C]
    (L : LimitColimitPackage J C) where
  universalityClosed : L.universality

def LimitColimitClosed (J C : Type u) [Category.{v} J] [Category.{v} C]
    (L : LimitColimitPackage J C) : Prop :=
  L.universality

theorem limit_colimit_closed_from_evidence (J C : Type u) [Category.{v} J] [Category.{v} C]
    (L : LimitColimitPackage J C) (E : LimitColimitEvidence J C L) : LimitColimitClosed J C L :=
  E.universalityClosed

end CategoryGroupsCanonicalLaneLean
end HautevilleHouse