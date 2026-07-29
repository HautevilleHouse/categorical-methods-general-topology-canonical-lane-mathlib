import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalMethodsGeneralTopologyCanonicalLaneLean

structure KleisliTopologyPackage where
  monad : Type u → Type u
  kleisliCategory : Type v
  comparisonFunctor : kleisliCategory → Type w
  barycentricCompactness : Prop
  epiMonoFactorization : Prop
  barycentricCompactnessClosed : barycentricCompactness
  epiMonoFactorizationClosed : epiMonoFactorization

structure KleisliTopologyEvidence (P : KleisliTopologyPackage) where
  barycentricCompactnessClosed : P.barycentricCompactness
  epiMonoFactorizationClosed : P.epiMonoFactorization

def KleisliTopologyClosed (P : KleisliTopologyPackage) : Prop :=
  P.barycentricCompactness ∧ P.epiMonoFactorization

theorem kleisli_topology_closed_from_evidence (P : KleisliTopologyPackage)
    (E : KleisliTopologyEvidence P) : KleisliTopologyClosed P := by
  exact And.intro E.barycentricCompactnessClosed E.epiMonoFactorizationClosed

end CategoricalMethodsGeneralTopologyCanonicalLaneLean
end HautevilleHouse