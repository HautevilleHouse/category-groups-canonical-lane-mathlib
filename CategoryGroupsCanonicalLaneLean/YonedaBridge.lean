import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoryGroupsCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace CategoryGroupsCanonicalLaneLean

structure YonedaPackage where
  category : Category
  presheafCat : Category
  yonedaEmbedding : YonedaEmbedding category
  yonedaLemmaProof : Prop

structure YonedaEvidence (Y : YonedaPackage) where
  yonedaLemmaProofClosed : Y.yonedaLemmaProof
  yonedaEmbeddingFullyFaithfulClosed : Y.yonedaEmbedding.fullyFaithful

def YonedaClosed (Y : YonedaPackage) : Prop :=
  Y.yonedaLemmaProof ∧ Y.yonedaEmbedding.fullyFaithful

theorem yoneda_closed_from_evidence (Y : YonedaPackage) (E : YonedaEvidence Y) : YonedaClosed Y :=
  And.intro E.yonedaLemmaProofClosed E.yonedaEmbeddingFullyFaithfulClosed

end CategoryGroupsCanonicalLaneLean
end HautevilleHouse