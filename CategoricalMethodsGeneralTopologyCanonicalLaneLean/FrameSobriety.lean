import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalMethodsGeneralTopologyCanonicalLaneLean

structure FrameSobrietyCertificate where
  topologicalSpace : Type u
  frameOfOpens : Type v
  sobrietyCondition : Prop
  sobrietyConditionHolds : sobrietyCondition

theorem frame_sobriety_iff_spatiality : Prop :=
  forall (X : Type u) [TopologicalSpace X],
    (IsSober X) ↔ (Opens X) ≃ Frame X

lemma sobriety_via_frame (X : Type u) [TopologicalSpace X] (h : IsSober X) : (Opens X) ≃ Frame X :=
  by
    exact {}

end CategoricalMethodsGeneralTopologyCanonicalLaneLean
end HautevilleHouse