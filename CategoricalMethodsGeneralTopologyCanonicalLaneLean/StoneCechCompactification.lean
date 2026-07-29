import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalMethodsGeneralTopologyCanonicalLaneLean

structure StoneCechPackage (A : AdmissibleClass) where
  space : A.object.space.carrier
  isTychonoff : Prop
  compactification : Type u
  compactificationTopology : TopologicalSpace compactification
  universalProperty : Prop
  isCompact : Prop
  isHausdorff : Prop
  embeddingDense : Prop

structure StoneCechEvidence (A : AdmissibleClass) (P : StoneCechPackage A) where
  isTychonoffClosed : P.isTychonoff
  universalPropertyClosed : P.universalProperty
  isCompactClosed : P.isCompact
  isHausdorffClosed : P.isHausdorff
  embeddingDenseClosed : P.embeddingDense

def StoneCechClosed (A : AdmissibleClass) (P : StoneCechPackage A) : Prop :=
  P.isTychonoff ∧ P.universalProperty ∧ P.isCompact ∧ P.isHausdorff ∧ P.embeddingDense

theorem stone_cech_closed_from_evidence
    (A : AdmissibleClass) (P : StoneCechPackage A) (E : StoneCechEvidence A P) :
    StoneCechClosed A P := by
  exact And.intro E.isTychonoffClosed
    (And.intro E.universalPropertyClosed
      (And.intro E.isCompactClosed
        (And.intro E.isHausdorffClosed E.embeddingDenseClosed)))

end CategoricalMethodsGeneralTopologyCanonicalLaneLean
end HautevilleHouse
