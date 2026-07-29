import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryGroupsCanonicalLaneLean

structure Category where
  Obj : Type u
  Hom : Obj → Obj → Type v
  id : (X : Obj) → Hom X X
  comp : {X Y Z : Obj} → Hom X Y → Hom Y Z → Hom X Z
  idLeft : {X Y : Obj} (f : Hom X Y) → comp (id X) f = f
  idRight : {X Y : Obj} (f : Hom X Y) → comp f (id Y) = f
  assoc : {X Y Z W : Obj} (f : Hom X Y) (g : Hom Y Z) (h : Hom Z W) → comp (comp f g) h = comp f (comp g h)

structure Functor (C D : Category) where
  objMap : C.Obj → D.Obj
  homMap : {X Y : C.Obj} → C.Hom X Y → D.Hom (objMap X) (objMap Y)
  mapId : (X : C.Obj) → homMap (C.id X) = D.id (objMap X)
  mapComp : {X Y Z : C.Obj} (f : C.Hom X Y) (g : C.Hom Y Z) → homMap (C.comp f g) = D.comp (homMap f) (homMap g)

structure NaturalTransformation (C D : Category) (F G : Functor C D) where
  components : (X : C.Obj) → D.Hom (F.objMap X) (G.objMap X)
  naturality : {X Y : C.Obj} (f : C.Hom X Y) → D.comp (components X) (G.homMap f) = D.comp (F.homMap f) (components Y)

structure CategoryGroupAdmittedObject where
  cat : Category
  terminalObject : cat.Obj
  terminalUniversal : (X : cat.Obj) → Nonempty (cat.Hom X terminalObject)

end CategoryGroupsCanonicalLaneLean
end HautevilleHouse