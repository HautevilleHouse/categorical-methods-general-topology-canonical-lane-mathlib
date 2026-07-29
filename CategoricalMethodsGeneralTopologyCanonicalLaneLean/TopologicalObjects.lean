import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace CategoricalMethodsGeneralTopologyCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure TopologicalSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure TopologicalAdmittedObject where
  space : TopologicalSpace
  isCompact : Prop
  isHausdorff : Prop
  isSecondCountable : Prop
  invariantModel : Type
  invariantTopology : TopologicalSpace invariantModel
  invariantSatisfied : Prop
  conclusion : invariantSatisfied

structure TopologicalEndgameState where
  object : TopologicalAdmittedObject

def TopologicalWitnessClosed (O : TopologicalAdmittedObject) : Prop :=
  O.invariantSatisfied

end CategoricalMethodsGeneralTopologyCanonicalLaneLean
end HautevilleHouse
