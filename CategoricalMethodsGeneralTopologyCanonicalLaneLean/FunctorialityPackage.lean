import canonicalLaneMathlib.AdmissibleClass
import CategoricalMethodsGeneralTopologyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalMethodsGeneralTopologyCanonicalLaneLean

structure FunctorialityPackage (A : AdmissibleClass) where
  categoryTopDefined : Prop
  continuousMapsClosed : Prop
  productCoproductAdjoint : Prop
  limitColimitPreserved : Prop

structure FunctorialityEvidence (A : AdmissibleClass) (F : FunctorialityPackage A) where
  categoryTopDefinedClosed : F.categoryTopDefined
  continuousMapsClosedClosed : F.continuousMapsClosed
  productCoproductAdjointClosed : F.productCoproductAdjoint
  limitColimitPreservedClosed : F.limitColimitPreserved

def FunctorialityClosed (A : AdmissibleClass) (F : FunctorialityPackage A) : Prop :=
  F.categoryTopDefined ∧ F.continuousMapsClosed ∧ F.productCoproductAdjoint ∧ F.limitColimitPreserved

theorem functoriality_closed_from_evidence (A : AdmissibleClass) (F : FunctorialityPackage A) (E : FunctorialityEvidence A F) :
    FunctorialityClosed A F := by
  exact And.intro E.categoryTopDefinedClosed (And.intro E.continuousMapsClosedClosed (And.intro E.productCoproductAdjointClosed E.limitColimitPreservedClosed))

end CategoricalMethodsGeneralTopologyCanonicalLaneLean
end HautevilleHouse