import canonicalLaneMathlib.AdmissibleClass
import CategoricalMethodsGeneralTopologyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalMethodsGeneralTopologyCanonicalLaneLean

structure CompactnessPackage (A : AdmissibleClass) where
  tychonoffTheorem : Prop
  finiteIntersectionProperty : Prop
  productCompactness : Prop

structure CompactnessEvidence (A : AdmissibleClass) (C : CompactnessPackage A) where
  tychonoffTheoremClosed : C.tychonoffTheorem
  finiteIntersectionPropertyClosed : C.finiteIntersectionProperty
  productCompactnessClosed : C.productCompactness

def CompactnessClosed (A : AdmissibleClass) (C : CompactnessPackage A) : Prop :=
  C.tychonoffTheorem ∧ C.finiteIntersectionProperty ∧ C.productCompactness

theorem compactness_closed_from_evidence (A : AdmissibleClass) (C : CompactnessPackage A) (E : CompactnessEvidence A C) :
    CompactnessClosed A C := by
  exact And.intro E.tychonoffTheoremClosed (And.intro E.finiteIntersectionPropertyClosed E.productCompactnessClosed)

end CategoricalMethodsGeneralTopologyCanonicalLaneLean
end HautevilleHouse