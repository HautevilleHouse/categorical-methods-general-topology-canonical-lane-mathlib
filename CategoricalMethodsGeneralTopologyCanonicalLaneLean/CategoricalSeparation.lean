import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalMethodsGeneralTopologyCanonicalLaneLean

structure CategoricalSeparationPackage where
  hausdorffViaEqualizers : Prop
  regularViaFactorization : Prop
  tychonoffViaEmbeddings : Prop

def CategoricalSeparationClosed (S : CategoricalSeparationPackage) : Prop :=
  S.hausdorffViaEqualizers ∧ S.regularViaFactorization ∧ S.tychonoffViaEmbeddings

structure CategoricalSeparationEvidence (S : CategoricalSeparationPackage) where
  hausdorffViaEqualizersClosed : S.hausdorffViaEqualizers
  regularViaFactorizationClosed : S.regularViaFactorization
  tychonoffViaEmbeddingsClosed : S.tychonoffViaEmbeddings

theorem categorical_separation_closed_from_evidence
    (S : CategoricalSeparationPackage) (E : CategoricalSeparationEvidence S) :
    CategoricalSeparationClosed S := by
  exact And.intro E.hausdorffViaEqualizersClosed
    (And.intro E.regularViaFactorizationClosed E.tychonoffViaEmbeddingsClosed)

end CategoricalMethodsGeneralTopologyCanonicalLaneLean
end HautevilleHouse