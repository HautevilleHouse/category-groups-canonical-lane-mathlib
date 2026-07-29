import HautevilleHouse.CategoryGroupsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CategoryGroupsCanonicalLaneLean

structure UniversalConstructionPackage (C : AdmittedCategory) where
  initialObject : Prop
  terminalObject : Prop
  productExistence : Prop
  coproductExistence : Prop
  equalizerExistence : Prop
  coequalizerExistence : Prop

structure UniversalConstructionEvidence {C : AdmittedCategory} (U : UniversalConstructionPackage C) where
  initialObjectClosed : U.initialObject
  terminalObjectClosed : U.terminalObject
  productExistenceClosed : U.productExistence
  coproductExistenceClosed : U.coproductExistence
  equalizerExistenceClosed : U.equalizerExistence
  coequalizerExistenceClosed : U.coequalizerExistence

def UniversalConstructionClosed {C : AdmittedCategory} (U : UniversalConstructionPackage C) : Prop :=
  U.initialObject ∧ U.terminalObject ∧ U.productExistence ∧ U.coproductExistence ∧ U.equalizerExistence ∧ U.coequalizerExistence

theorem universal_construction_closed_from_evidence {C : AdmittedCategory} (U : UniversalConstructionPackage C) (E : UniversalConstructionEvidence U) : UniversalConstructionClosed U :=
  And.intro E.initialObjectClosed (And.intro E.terminalObjectClosed (And.intro E.productExistenceClosed (And.intro E.coproductExistenceClosed (And.intro E.equalizerExistenceClosed E.coequalizerExistenceClosed))))

end CategoryGroupsCanonicalLaneLean
end HautevilleHouse