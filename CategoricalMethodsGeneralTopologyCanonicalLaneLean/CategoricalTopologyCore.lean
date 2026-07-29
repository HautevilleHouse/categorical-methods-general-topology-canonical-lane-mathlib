import CategoricalMethodsGeneralTopologyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalMethodsGeneralTopologyCanonicalLaneLean

structure StoneCechPackage (A : AdmissibleClass) where
  compactificationSpace : Type
  compactificationTopology : TopologicalSpace compactificationSpace
  compactHausdorff : Prop
  embedding : A.object.space → compactificationSpace
  denseImage : Prop
  extensionProperty : Prop
  compactificationExists : Prop

structure StoneCechEvidence {A : AdmissibleClass} (P : StoneCechPackage A) where
  compactHausdorffClosed : P.compactHausdorff
  denseImageClosed : P.denseImage
  extensionPropertyClosed : P.extensionProperty
  compactificationExistsClosed : P.compactificationExists

def StoneCechClosed {A : AdmissibleClass} (P : StoneCechPackage A) : Prop :=
  P.compactHausdorff ∧ P.denseImage ∧ P.extensionProperty ∧ P.compactificationExists

theorem stone_cech_closed_from_evidence {A : AdmissibleClass} (P : StoneCechPackage A) (E : StoneCechEvidence P) :
    StoneCechClosed P := by
  exact And.intro E.compactHausdorffClosed
    (And.intro E.denseImageClosed
      (And.intro E.extensionPropertyClosed E.compactificationExistsClosed))

end CategoricalMethodsGeneralTopologyCanonicalLaneLean
end HautevilleHouse