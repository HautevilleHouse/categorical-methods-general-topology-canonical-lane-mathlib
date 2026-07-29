import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalMethodsGeneralTopologyCanonicalLaneLean

structure CategoricalTopologyObject where
  category : Type u
  hasTopologicalFunctor : Prop
  faithful : Prop
  reflectsIsomorphisms : Prop

def CategoricalWitnessClosed (O : CategoricalTopologyObject) : Prop :=
  O.faithful ∧ O.reflectsIsomorphisms

end CategoricalMethodsGeneralTopologyCanonicalLaneLean
end HautevilleHouse