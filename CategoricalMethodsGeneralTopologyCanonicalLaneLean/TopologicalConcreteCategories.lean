import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalMethodsGeneralTopologyCanonicalLaneLean

structure ConcreteCategoryPackage where
  forgetfulFunctorDefined : Prop
  initialStructures : Prop
  finalStructures : Prop

def ConcreteCategoryClosed (C : ConcreteCategoryPackage) : Prop :=
  C.forgetfulFunctorDefined ∧ C.initialStructures ∧ C.finalStructures

structure ConcreteCategoryEvidence (C : ConcreteCategoryPackage) where
  forgetfulFunctorDefinedClosed : C.forgetfulFunctorDefined
  initialStructuresClosed : C.initialStructures
  finalStructuresClosed : C.finalStructures

theorem concrete_category_closed_from_evidence
    (C : ConcreteCategoryPackage) (E : ConcreteCategoryEvidence C) :
    ConcreteCategoryClosed C := by
  exact And.intro E.forgetfulFunctorDefinedClosed
    (And.intro E.initialStructuresClosed E.finalStructuresClosed)

end CategoricalMethodsGeneralTopologyCanonicalLaneLean
end HautevilleHouse