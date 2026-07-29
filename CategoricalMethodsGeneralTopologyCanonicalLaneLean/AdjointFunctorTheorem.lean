import canonicalLaneMathlib.AdmissibleClass
import .CategoryOfTopologicalSpaces
import .NaturalTransformation

namespace HautevilleHouse
namespace CategoricalMethodsGeneralTopologyCanonicalLaneLean

structure Adjunction {C D : TopologicalCategory} (F : Functor C D) (G : Functor D C) where
  unit : NaturalTransformation (Functor.id C) (F.comp G)
  counit : NaturalTransformation (G.comp F) (Functor.id D)
  triangleLeft : ∀ (X : C.objs), ... = ...
  triangleRight : ∀ (Y : D.objs), ... = ...

theorem adjoint_functor_theorem {C D : TopologicalCategory} (F : Functor C D) (h : ∀ (Y : D.objs), ...) : ... := by
  sorry

end CategoricalMethodsGeneralTopologyCanonicalLaneLean
end HautevilleHouse