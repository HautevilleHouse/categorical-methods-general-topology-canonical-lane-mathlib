import canonicalLaneMathlib.AdmissibleClass
import .CategoryOfTopologicalSpaces

namespace HautevilleHouse
namespace CategoricalMethodsGeneralTopologyCanonicalLaneLean

structure NaturalTransformation {C D : TopologicalCategory} (F G : Functor C D) where
  components : (X : C.objs) → D.homs (F.objMap X) (G.objMap X)
  naturality : ∀ {X Y : C.objs} (f : C.homs X Y),
    D.comp (components X) (G.homMap f) = D.comp (F.homMap f) (components Y)

end CategoricalMethodsGeneralTopologyCanonicalLaneLean
end HautevilleHouse