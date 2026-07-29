import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalMethodsGeneralTopologyCanonicalLaneLean

structure CategoricalTopologyObject where
  underlyingCategory : Type u
  categoryStructure : Type v
  topologicalFunctor : underlyingCategory → Type w
  functorialityAxioms : Prop
  functorialityAxiomsTerm : functorialityAxioms

structure CategoricalTopologyEvidence (O : CategoricalTopologyObject) where
  underlyingCategoryClosed : True
  categoryStructureClosed : True
  topologicalFunctorClosed : O.functorialityAxioms
  functorialityAxiomsClosed : O.functorialityAxiomsTerm

def CategoricalTopologyClosed (O : CategoricalTopologyObject) : Prop :=
  O.functorialityAxioms

theorem categorical_topology_closed_from_evidence (O : CategoricalTopologyObject)
    (E : CategoricalTopologyEvidence O) : CategoricalTopologyClosed O := by
  exact E.functorialityAxiomsClosed

end CategoricalMethodsGeneralTopologyCanonicalLaneLean
end HautevilleHouse