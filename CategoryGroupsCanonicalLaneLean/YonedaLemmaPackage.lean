import HautevilleHouse.CategoryGroupsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CategoryGroupsCanonicalLaneLean

structure YonedaLemmaPackage (C : AdmittedCategory) where
  yonedaEmbedding : Type
  fullFaithfulness : Prop
  naturalIsomorphism : Prop
  universalProperty : Prop

structure YonedaLemmaEvidence {C : AdmittedCategory} (Y : YonedaLemmaPackage C) where
  fullFaithfulnessClosed : Y.fullFaithfulness
  naturalIsomorphismClosed : Y.naturalIsomorphism
  universalPropertyClosed : Y.universalProperty

def YonedaLemmaClosed {C : AdmittedCategory} (Y : YonedaLemmaPackage C) : Prop :=
  Y.fullFaithfulness ∧ Y.naturalIsomorphism ∧ Y.universalProperty

theorem yoneda_lemma_closed_from_evidence {C : AdmittedCategory} (Y : YonedaLemmaPackage C) (E : YonedaLemmaEvidence Y) : YonedaLemmaClosed Y :=
  And.intro E.fullFaithfulnessClosed (And.intro E.naturalIsomorphismClosed E.universalPropertyClosed)

end CategoryGroupsCanonicalLaneLean
end HautevilleHouse