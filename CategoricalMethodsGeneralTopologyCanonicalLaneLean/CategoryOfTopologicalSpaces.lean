import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalMethodsGeneralTopologyCanonicalLaneLean

structure TopologicalCategory where
  objs : Type u
  homs : objs → objs → Type v
  id : (X : objs) → homs X X
  comp : {X Y Z : objs} → homs X Y → homs Y Z → homs X Z
  idLeft : ∀ {X Y} (f : homs X Y), comp (id X) f = f
  idRight : ∀ {X Y} (f : homs X Y), comp f (id Y) = f
  assoc : ∀ {W X Y Z} (f : homs W X) (g : homs X Y) (h : homs Y Z), comp (comp f g) h = comp f (comp g h)

structure Functor (C D : TopologicalCategory) where
  objMap : C.objs → D.objs
  homMap : {X Y : C.objs} → C.homs X Y → D.homs (objMap X) (objMap Y)
  preservesId : ∀ (X : C.objs), homMap (C.id X) = D.id (objMap X)
  preservesComp : ∀ {X Y Z : C.objs} (f : C.homs X Y) (g : C.homs Y Z), homMap (C.comp f g) = D.comp (homMap f) (homMap g)

end CategoricalMethodsGeneralTopologyCanonicalLaneLean
end HautevilleHouse