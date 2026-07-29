import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalMethodsGeneralTopologyCanonicalLaneLean

structure StoneDualityPackage where
  booleanAlgebra : Type u
  topologicalSpace : Type v
  stoneSpace : Prop
  ultraFilterFunctor : Type
  dualEquivalence : Prop
  homeomorphismViaBooleanAlgebra : Prop
  compactnessCondition : Prop
  hausdorffCondition : Prop
  zeroDimensionalCondition : Prop
  stoneRepresentation : Prop

structure StoneDualityEvidence (S : StoneDualityPackage) where
  stoneSpaceClosed : S.stoneSpace
  ultraFilterFunctorClosed : S.ultraFilterFunctor
  dualEquivalenceClosed : S.dualEquivalence
  homeomorphismViaBooleanAlgebraClosed : S.homeomorphismViaBooleanAlgebra
  compactnessConditionClosed : S.compactnessCondition
  hausdorffConditionClosed : S.hausdorffCondition
  zeroDimensionalConditionClosed : S.zeroDimensionalCondition
  stoneRepresentationClosed : S.stoneRepresentation

def StoneDualityClosed (S : StoneDualityPackage) : Prop :=
  S.stoneSpace ∧ S.ultraFilterFunctor ∧ S.dualEquivalence ∧
  S.homeomorphismViaBooleanAlgebra ∧ S.compactnessCondition ∧
  S.hausdorffCondition ∧ S.zeroDimensionalCondition ∧ S.stoneRepresentation

theorem stone_duality_closed_from_evidence (S : StoneDualityPackage)
    (E : StoneDualityEvidence S) : StoneDualityClosed S := by
  exact And.intro E.stoneSpaceClosed
    (And.intro E.ultraFilterFunctorClosed
      (And.intro E.dualEquivalenceClosed
        (And.intro E.homeomorphismViaBooleanAlgebraClosed
          (And.intro E.compactnessConditionClosed
            (And.intro E.hausdorffConditionClosed
              (And.intro E.zeroDimensionalConditionClosed E.stoneRepresentationClosed))))))

end CategoricalMethodsGeneralTopologyCanonicalLaneLean
end HautevilleHouse
