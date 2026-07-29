import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalMethodsGeneralTopologyCanonicalLaneLean

structure CategoricalTopologyPackage where
  objectCategory : Type u
  targetTopos : Type v
  classifyingTopos : Type w
  geometricMorphism : Type
  sheafCondition : Prop
  representablePresheaf : Prop
  etaleSpace : Prop
  localHomeomorphismClassifier : Prop
  descentCondition : Prop
  classifyingToposExists : Prop

structure CategoricalTopologyEvidence (C : CategoricalTopologyPackage) where
  sheafConditionClosed : C.sheafCondition
  representablePresheafClosed : C.representablePresheaf
  etaleSpaceClosed : C.etaleSpace
  localHomeomorphismClassifierClosed : C.localHomeomorphismClassifier
  descentConditionClosed : C.descentCondition
  classifyingToposExistsClosed : C.classifyingToposExists

def CategoricalTopologyClosed (C : CategoricalTopologyPackage) : Prop :=
  C.sheafCondition ∧ C.representablePresheaf ∧ C.etaleSpace ∧
  C.localHomeomorphismClassifier ∧ C.descentCondition ∧ C.classifyingToposExists

theorem categorical_topology_closed_from_evidence (C : CategoricalTopologyPackage)
    (E : CategoricalTopologyEvidence C) : CategoricalTopologyClosed C := by
  exact And.intro E.sheafConditionClosed
    (And.intro E.representablePresheafClosed
      (And.intro E.etaleSpaceClosed
        (And.intro E.localHomeomorphismClassifierClosed
          (And.intro E.descentConditionClosed E.classifyingToposExistsClosed))))

end CategoricalMethodsGeneralTopologyCanonicalLaneLean
end HautevilleHouse
