import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalMethodsGeneralTopologyCanonicalLaneLean

structure CategoryOfSpacesPackage where
  objects : Type u
  morphisms : objects → objects → Type v
  identity : (X : objects) → morphisms X X
  compose : {X Y Z : objects} → morphisms X Y → morphisms Y Z → morphisms X Z
  identityLeft : ∀ {X Y : objects} (f : morphisms X Y), compose (identity X) f = f
  identityRight : ∀ {X Y : objects} (f : morphisms X Y), compose f (identity Y) = f
  associativity : ∀ {W X Y Z : objects} (f : morphisms W X) (g : morphisms X Y) (h : morphisms Y Z),
    compose (compose f g) h = compose f (compose g h)
  topologicalStructure : Prop

structure CategoryOfSpacesEvidence (C : CategoryOfSpacesPackage) where
  identityLeftClosed : ∀ {X Y : C.objects} (f : C.morphisms X Y), C.compose (C.identity X) f = f
  identityRightClosed : ∀ {X Y : C.objects} (f : C.morphisms X Y), C.compose f (C.identity Y) = f
  associativityClosed : ∀ {W X Y Z : C.objects} (f : C.morphisms W X) (g : C.morphisms X Y) (h : C.morphisms Y Z),
    C.compose (C.compose f g) h = C.compose f (C.compose g h)
  topologicalStructureClosed : C.topologicalStructure

def CategoryOfSpacesClosed (C : CategoryOfSpacesPackage) : Prop :=
  (∀ {X Y : C.objects} (f : C.morphisms X Y), C.compose (C.identity X) f = f) ∧
  (∀ {X Y : C.objects} (f : C.morphisms X Y), C.compose f (C.identity Y) = f) ∧
  (∀ {W X Y Z : C.objects} (f : C.morphisms W X) (g : C.morphisms X Y) (h : C.morphisms Y Z),
    C.compose (C.compose f g) h = C.compose f (C.compose g h)) ∧
  C.topologicalStructure

theorem category_of_spaces_closed_from_evidence (C : CategoryOfSpacesPackage)
    (E : CategoryOfSpacesEvidence C) : CategoryOfSpacesClosed C := by
  exact And.intro E.identityLeftClosed (And.intro E.identityRightClosed (And.intro E.associativityClosed E.topologicalStructureClosed))

end CategoricalMethodsGeneralTopologyCanonicalLaneLean
end HautevilleHouse