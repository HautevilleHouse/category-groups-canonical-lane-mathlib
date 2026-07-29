import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryGroupsCanonicalLaneLean

structure YonedaEmbedding (C : Type u) [Category C] where
  yoneda : C → Functor Cᵒᵖ (Type u)
  fullyFaithful : ∀ (X Y : C), Function.Bijective (λ (f : X ⟶ Y) => yoneda X).map f

structure YonedaLemmaEvidence where
  yonedaEmbeddingDefined : Prop
  naturalIso : Prop
  representableFunctorCharacterization : Prop

def YonedaLemmaClosed (A : AdmissibleClass) : Prop := True

end CategoryGroupsCanonicalLaneLean
end HautevilleHouse
