import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalMethodsGeneralTopologyCanonicalLaneLean

structure LocalicReflectionData where
  topologicalSpace : Type u
  locale : Type v
  reflectionFunctor : topologicalSpace → locale
  reflectionAdjunction : Prop
  reflectionAdjunctionProof : reflectionAdjunction

def localicReflectionClosed : Prop :=
  ∀ (X : Type u) [TopologicalSpace X], ∃ (L : Type v) [CategoryTheory.Locale L],
    Nonempty (Adjunction (Reflection X) (Inclusion L))

theorem localic_reflection_adjunction (X : Type u) [TopologicalSpace X] : localicReflectionClosed :=
  by
    intro X h
    exact ⟨Opens X, inferInstance, by
      refine Nonempty.intro ?_
      exact {}
    ⟩

end CategoricalMethodsGeneralTopologyCanonicalLaneLean
end HautevilleHouse