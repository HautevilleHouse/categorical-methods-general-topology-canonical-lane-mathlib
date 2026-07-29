import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalMethodsGeneralTopologyCanonicalLaneLean

structure CategoricalHomotopyPackage where
  modelCategory : Type u
  weakEquivalences : Prop
  fibrations : Prop
  cofibrations : Prop
  homotopyCategory : Type v
  modelAxioms : Prop
  homotopyFunctor : modelCategory → homotopyCategory
  weakEquivalencesClosed : weakEquivalences
  fibrationsClosed : fibrations
  cofibrationsClosed : cofibrations
  modelAxiomsClosed : modelAxioms
  homotopyFunctorPreserves : Prop
  homotopyFunctorPreservesClosed : homotopyFunctorPreserves

structure CategoricalHomotopyEvidence (P : CategoricalHomotopyPackage) where
  weakEquivalencesClosed : P.weakEquivalences
  fibrationsClosed : P.fibrations
  cofibrationsClosed : P.cofibrations
  modelAxiomsClosed : P.modelAxioms
  homotopyFunctorPreservesClosed : P.homotopyFunctorPreserves

def CategoricalHomotopyClosed (P : CategoricalHomotopyPackage) : Prop :=
  P.weakEquivalences ∧ P.fibrations ∧ P.cofibrations ∧ P.modelAxioms ∧ P.homotopyFunctorPreserves

theorem categorical_homotopy_closed_from_evidence (P : CategoricalHomotopyPackage)
    (E : CategoricalHomotopyEvidence P) : CategoricalHomotopyClosed P := by
  exact And.intro E.weakEquivalencesClosed
    (And.intro E.fibrationsClosed
      (And.intro E.cofibrationsClosed
        (And.intro E.modelAxiomsClosed E.homotopyFunctorPreservesClosed)))

end CategoricalMethodsGeneralTopologyCanonicalLaneLean
end HautevilleHouse