import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalMethodsGeneralTopologyCanonicalLaneLean

structure CategoricalDualityPackage where
  sourceCategory : Type u
  targetCategory : Type v
  functorForward : sourceCategory → targetCategory
  functorBackward : targetCategory → sourceCategory
  adjunction : Prop
  dualEquivalence : Prop

def CategoricalDualityClosed (P : CategoricalDualityPackage) : Prop :=
  P.adjunction ∧ P.dualEquivalence

end CategoricalMethodsGeneralTopologyCanonicalLaneLean
end HautevilleHouse