import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalMethodsGeneralTopologyCanonicalLaneLean

structure HoffmannMisloveCertificate where
  topologicalSpace : Type u
  compactSaturatedSets : Type v
  scottOpenFilters : Type w
  bijection : compactSaturatedSets ↔ scottOpenFilters
  bijectionProof : bijection

theorem hoffmann_mislove_bijection (X : Type u) [TopologicalSpace X] :
  Nonempty (CompactSaturatedSets X ≃ ScottOpenFilters X) :=
  by
    apply Nonempty.intro
    exact {}

end CategoricalMethodsGeneralTopologyCanonicalLaneLean
end HautevilleHouse