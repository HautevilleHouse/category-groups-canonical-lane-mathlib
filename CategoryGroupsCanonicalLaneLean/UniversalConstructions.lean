import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryGroupsCanonicalLaneLean

structure UniversalConstructionsPackage where
  product : Type u → Type u → Type u
  coproduct : Type u → Type u → Type u
  equalizer : (Type u → Type u) → Type u
  coequalizer : (Type u → Type u) → Type u
  pullback : Type u → Type u → Type u → Type u
  pushout : Type u → Type u → Type u → Type u
  universalProperties : Prop
  existenceProofs : Prop

structure UniversalConstructionsEvidence (U : UniversalConstructionsPackage) where
  universalPropertiesClosed : U.universalProperties
  existenceProofsClosed : U.existenceProofs

def UniversalConstructionsClosed (U : UniversalConstructionsPackage) : Prop :=
  U.universalProperties ∧ U.existenceProofs

theorem universal_constructions_closed_from_evidence
    (U : UniversalConstructionsPackage) (E : UniversalConstructionsEvidence U) :
    UniversalConstructionsClosed U := by
  exact And.intro E.universalPropertiesClosed E.existenceProofsClosed

end CategoryGroupsCanonicalLaneLean
end HautevilleHouse