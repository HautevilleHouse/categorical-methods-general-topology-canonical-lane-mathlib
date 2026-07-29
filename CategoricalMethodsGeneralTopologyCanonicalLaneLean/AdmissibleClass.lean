import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalMethodsGeneralTopologyCanonicalLaneLean

structure CategoricalAdmittedObject where
  source : Type u
  topology : TopologicalSpace source
  categoricalProperty : Prop
  conclusion : categoricalProperty

structure AdmissibleClass where
  object : CategoricalAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  TopologicalClosure A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CategoricalMethodsGeneralTopologyCanonicalLaneLean
end HautevilleHouse