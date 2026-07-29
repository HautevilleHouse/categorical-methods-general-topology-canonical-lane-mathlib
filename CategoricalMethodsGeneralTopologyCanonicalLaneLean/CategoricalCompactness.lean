import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalMethodsGeneralTopologyCanonicalLaneLean

structure CategoricalCompactnessPackage where
  properMapDefinition : Prop
  closedMapOfCompact : Prop
  finiteIntersectionClosed : Prop

def CategoricalCompactnessClosed (P : CategoricalCompactnessPackage) : Prop :=
  P.properMapDefinition ∧ P.closedMapOfCompact ∧ P.finiteIntersectionClosed

structure CategoricalCompactnessEvidence (P : CategoricalCompactnessPackage) where
  properMapDefinitionClosed : P.properMapDefinition
  closedMapOfCompactClosed : P.closedMapOfCompact
  finiteIntersectionClosedClosed : P.finiteIntersectionClosed

theorem categorical_compactness_closed_from_evidence
    (P : CategoricalCompactnessPackage) (E : CategoricalCompactnessEvidence P) :
    CategoricalCompactnessClosed P := by
  exact And.intro E.properMapDefinitionClosed
    (And.intro E.closedMapOfCompactClosed E.finiteIntersectionClosedClosed)

end CategoricalMethodsGeneralTopologyCanonicalLaneLean
end HautevilleHouse