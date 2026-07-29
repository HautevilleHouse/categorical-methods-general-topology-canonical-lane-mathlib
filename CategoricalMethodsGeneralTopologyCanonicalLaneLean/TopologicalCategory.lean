import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalMethodsGeneralTopologyCanonicalLaneLean

structure TopologicalCategory (C : Type u) [Category.{v} C] where
  underlyingTopology : C → TopCat.{w}
  morphismTopology : ∀ {X Y : C}, TopologicalSpace (C.Hom X Y)
  compositionContinuous : ∀ {X Y Z : C}, Continuous (λ (f : C.Hom X Y, g : C.Hom Y Z) => g ∘ f)
  identityContinuous : ∀ (X : C), Continuous (λ (_ : Unit) => 𝟙 X)

def TopologicalCategoryClosed (T : TopologicalCategory C) : Prop := True

end CategoricalMethodsGeneralTopologyCanonicalLaneLean
end HautevilleHouse