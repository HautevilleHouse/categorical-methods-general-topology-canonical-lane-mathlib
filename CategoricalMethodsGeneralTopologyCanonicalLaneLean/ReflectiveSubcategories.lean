import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalMethodsGeneralTopologyCanonicalLaneLean

structure ReflectiveSubcategoryPackage where
  ambientCategory : Type u
  subcategory : Type v
  inclusionFunctor : ambientCategory → Type w
  reflector : ambientCategory → Type x
  unitNaturalTransformation : Prop
  reflectionAdjunction : Prop
  unitNaturalTransformationClosed : unitNaturalTransformation
  reflectionAdjunctionClosed : reflectionAdjunction

structure ReflectiveSubcategoryEvidence (P : ReflectiveSubcategoryPackage) where
  unitNaturalTransformationClosed : P.unitNaturalTransformation
  reflectionAdjunctionClosed : P.reflectionAdjunction

def ReflectiveSubcategoryClosed (P : ReflectiveSubcategoryPackage) : Prop :=
  P.unitNaturalTransformation ∧ P.reflectionAdjunction

theorem reflective_subcategory_closed_from_evidence (P : ReflectiveSubcategoryPackage)
    (E : ReflectiveSubcategoryEvidence P) : ReflectiveSubcategoryClosed P := by
  exact And.intro E.unitNaturalTransformationClosed E.reflectionAdjunctionClosed

end CategoricalMethodsGeneralTopologyCanonicalLaneLean
end HautevilleHouse