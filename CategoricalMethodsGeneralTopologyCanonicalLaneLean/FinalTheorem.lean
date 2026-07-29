import canonicalLaneMathlib.AdmissibleClass
import CategoricalMethodsGeneralTopologyCanonicalLaneLean.CategoricalFoundations
import CategoricalMethodsGeneralTopologyCanonicalLaneLean.StoneDuality
import CategoricalMethodsGeneralTopologyCanonicalLaneLean.Soberification

namespace HautevilleHouse
namespace CategoricalMethodsGeneralTopologyCanonicalLaneLean

def ConstrainedCategoricalTopologyClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_categorical_topology_endgame (A : AdmissibleClass) :
    ConstrainedCategoricalTopologyClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CategoricalMethodsGeneralTopologyCanonicalLaneLean
end HautevilleHouse
