import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryGroupsCanonicalLaneLean

structure CategoryPackage where
  objects : Type u
  morphisms : objects → objects → Type v
  identity : (X : objects) → morphisms X X
  compose : {X Y Z : objects} → morphisms X Y → morphisms Y Z → morphisms X Z
  identityLeft : (X Y : objects) → (f : morphisms X Y) → compose (identity X) f = f
  identityRight : (X Y : objects) → (f : morphisms X Y) → compose f (identity Y) = f
  associativity : (X Y Z W : objects) → (f : morphisms X Y) → (g : morphisms Y Z) → (h : morphisms Z W) → compose (compose f g) h = compose f (compose g h)

structure FunctorPackage (C D : CategoryPackage) where
  objectMap : C.objects → D.objects
  morphismMap : {X Y : C.objects} → C.morphisms X Y → D.morphisms (objectMap X) (objectMap Y)
  preserveIdentity : (X : C.objects) → morphismMap (C.identity X) = D.identity (objectMap X)
  preserveCompose : {X Y Z : C.objects} → (f : C.morphisms X Y) → (g : C.morphisms Y Z) → morphismMap (C.compose f g) = D.compose (morphismMap f) (morphismMap g)

structure NaturalTransformationPackage (C D : CategoryPackage) (F G : FunctorPackage C D) where
  component : (X : C.objects) → D.morphisms (F.objectMap X) (G.objectMap X)
  naturality : {X Y : C.objects} → (f : C.morphisms X Y) → D.compose (component X) (G.morphismMap f) = D.compose (F.morphismMap f) (component Y)

def CategoryClosed (C : CategoryPackage) : Prop :=
  True

def FunctorClosed (C D : CategoryPackage) (F : FunctorPackage C D) : Prop :=
  True

def NaturalTransformationClosed (C D : CategoryPackage) (F G : FunctorPackage C D) (η : NaturalTransformationPackage C D F G) : Prop :=
  True

end CategoryGroupsCanonicalLaneLean
end HautevilleHouse