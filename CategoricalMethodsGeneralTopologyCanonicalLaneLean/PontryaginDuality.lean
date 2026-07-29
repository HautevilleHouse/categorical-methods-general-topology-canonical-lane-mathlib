import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalMethodsGeneralTopologyCanonicalLaneLean

structure PontryaginDualityEvidence where
  abelianGroup : Type u
  compactAbelianGroup : Type v
  characterGroup : abelianGroup → compactAbelianGroup
  dualIsomorphism : Prop
  categoricalClosure : Prop

def PontryaginDualityClosed (P : PontryaginDualityEvidence) : Prop :=
  P.dualIsomorphism ∧ P.categoricalClosure

end CategoricalMethodsGeneralTopologyCanonicalLaneLean
end HautevilleHouse