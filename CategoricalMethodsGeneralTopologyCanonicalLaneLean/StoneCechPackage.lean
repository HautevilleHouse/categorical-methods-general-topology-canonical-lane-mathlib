import canonicalLaneMathlib.AdmissibleClass
import CategoricalMethodsGeneralTopologyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalMethodsGeneralTopologyCanonicalLaneLean

structure StoneCechPackage (A : AdmissibleClass) where
  stoneCechCompactification : Prop
  universalProperty : Prop
  compactHausdorffCodomain : Prop

structure StoneCechEvidence (A : AdmissibleClass) (S : StoneCechPackage A) where
  stoneCechCompactificationClosed : S.stoneCechCompactification
  universalPropertyClosed : S.universalProperty
  compactHausdorffCodomainClosed : S.compactHausdorffCodomain

def StoneCechClosed (A : AdmissibleClass) (S : StoneCechPackage A) : Prop :=
  S.stoneCechCompactification ∧ S.universalProperty ∧ S.compactHausdorffCodomain

theorem stone_cech_closed_from_evidence (A : AdmissibleClass) (S : StoneCechPackage A) (E : StoneCechEvidence A S) :
    StoneCechClosed A S := by
  exact And.intro E.stoneCechCompactificationClosed (And.intro E.universalPropertyClosed E.compactHausdorffCodomainClosed)

end CategoricalMethodsGeneralTopologyCanonicalLaneLean
end HautevilleHouse