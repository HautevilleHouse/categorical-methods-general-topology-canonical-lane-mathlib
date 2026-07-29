import CategoricalMethodsGeneralTopologyCanonicalLaneLean.CategoricalTopologyObjects

namespace HautevilleHouse
namespace CategoricalMethodsGeneralTopologyCanonicalLaneLean

structure SeparationAxiomsPackage (O : CategoricalTopologyObject) where
  t0Separated : Prop
  t1Separated : Prop
  t2Separated : Prop
  regular : Prop
  completelyRegular : Prop
  normal : Prop

structure SeparationAxiomsEvidence (O : CategoricalTopologyObject) (P : SeparationAxiomsPackage O) where
  t0SeparatedClosed : P.t0Separated
  t1SeparatedClosed : P.t1Separated
  t2SeparatedClosed : P.t2Separated
  regularClosed : P.regular
  completelyRegularClosed : P.completelyRegular
  normalClosed : P.normal

def SeparationAxiomsClosed (O : CategoricalTopologyObject) (P : SeparationAxiomsPackage O) : Prop :=
  P.t0Separated ∧ P.t1Separated ∧ P.t2Separated ∧ P.regular ∧ P.completelyRegular ∧ P.normal

theorem separation_axioms_closed_from_evidence (O : CategoricalTopologyObject) (P : SeparationAxiomsPackage O)
    (E : SeparationAxiomsEvidence O P) : SeparationAxiomsClosed O P := by
  exact And.intro E.t0SeparatedClosed
    (And.intro E.t1SeparatedClosed
      (And.intro E.t2SeparatedClosed
        (And.intro E.regularClosed
          (And.intro E.completelyRegularClosed E.normalClosed))))

end CategoricalMethodsGeneralTopologyCanonicalLaneLean
end HautevilleHouse