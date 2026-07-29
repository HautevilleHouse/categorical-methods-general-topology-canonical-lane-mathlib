import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalMethodsGeneralTopologyCanonicalLaneLean

structure FunctorialConstructionPackage (C D : CategoryOfSpacesPackage) where
  objectMap : C.objects → D.objects
  morphismMap : {X Y : C.objects} → C.morphisms X Y → D.morphisms (objectMap X) (objectMap Y)
  preservesIdentity : ∀ (X : C.objects), morphismMap (C.identity X) = D.identity (objectMap X)
  preservesComposition : ∀ {X Y Z : C.objects} (f : C.morphisms X Y) (g : C.morphisms Y Z),
    morphismMap (C.compose f g) = D.compose (morphismMap f) (morphismMap g)
  naturalTransformation : Prop

structure FunctorialConstructionEvidence {C D : CategoryOfSpacesPackage}
    (F : FunctorialConstructionPackage C D) where
  preservesIdentityClosed : ∀ (X : C.objects), F.morphismMap (C.identity X) = D.identity (F.objectMap X)
  preservesCompositionClosed : ∀ {X Y Z : C.objects} (f : C.morphisms X Y) (g : C.morphisms Y Z),
    F.morphismMap (C.compose f g) = D.compose (F.morphismMap f) (F.morphismMap g)
  naturalTransformationClosed : F.naturalTransformation

def FunctorialConstructionClosed {C D : CategoryOfSpacesPackage}
    (F : FunctorialConstructionPackage C D) : Prop :=
  (∀ (X : C.objects), F.morphismMap (C.identity X) = D.identity (F.objectMap X)) ∧
  (∀ {X Y Z : C.objects} (f : C.morphisms X Y) (g : C.morphisms Y Z),
    F.morphismMap (C.compose f g) = D.compose (F.morphismMap f) (F.morphismMap g)) ∧
  F.naturalTransformation

theorem functorial_construction_closed_from_evidence {C D : CategoryOfSpacesPackage}
    (F : FunctorialConstructionPackage C D) (E : FunctorialConstructionEvidence F) :
    FunctorialConstructionClosed F := by
  exact And.intro E.preservesIdentityClosed (And.intro E.preservesCompositionClosed E.naturalTransformationClosed)

end CategoricalMethodsGeneralTopologyCanonicalLaneLean
end HautevilleHouse