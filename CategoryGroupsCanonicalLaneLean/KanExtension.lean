import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryGroupsCanonicalLaneLean

structure KanExtensionPackage (C D E : Type u) [Category.{v} C] [Category.{v} D] [Category.{v} E] where
  leftKan : (C ⥤ D) → (C ⥤ E) → (D ⥤ E)
  rightKan : (C ⥤ E) → (D ⥤ C) → (D ⥤ E)
  universality : Prop

structure KanExtensionEvidence (C D E : Type u) [Category.{v} C] [Category.{v} D] [Category.{v} E]
    (K : KanExtensionPackage C D E) where
  universalityClosed : K.universality

def KanExtensionClosed (C D E : Type u) [Category.{v} C] [Category.{v} D] [Category.{v} E]
    (K : KanExtensionPackage C D E) : Prop :=
  K.universality

theorem kan_extension_closed_from_evidence (C D E : Type u) [Category.{v} C] [Category.{v} D] [Category.{v} E]
    (K : KanExtensionPackage C D E) (Ev : KanExtensionEvidence C D E K) : KanExtensionClosed C D E K :=
  Ev.universalityClosed

end CategoryGroupsCanonicalLaneLean
end HautevilleHouse