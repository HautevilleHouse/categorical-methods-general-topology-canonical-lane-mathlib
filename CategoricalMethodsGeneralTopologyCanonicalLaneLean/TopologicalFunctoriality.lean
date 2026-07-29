import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalMethodsGeneralTopologyCanonicalLaneLean

structure TopologicalFunctorPackage where
  sourceCategory : Type u
  targetCategory : Type v
  functor : sourceCategory → targetCategory
  continuityAxiom : Prop
  functorialityPreservation : Prop
  continuityAxiomClosed : continuityAxiom
  functorialityPreservationClosed : functorialityPreservation

structure TopologicalFunctorEvidence (P : TopologicalFunctorPackage) where
  continuityAxiomClosed : P.continuityAxiom
  functorialityPreservationClosed : P.functorialityPreservation

def TopologicalFunctorClosed (P : TopologicalFunctorPackage) : Prop :=
  P.continuityAxiom ∧ P.functorialityPreservation

theorem topological_functor_closed_from_evidence (P : TopologicalFunctorPackage)
    (E : TopologicalFunctorEvidence P) : TopologicalFunctorClosed P := by
  exact And.intro E.continuityAxiomClosed E.functorialityPreservationClosed

end CategoricalMethodsGeneralTopologyCanonicalLaneLean
end HautevilleHouse