import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalMethodsGeneralTopologyCanonicalLaneLean

structure LimitCone (F : J ⥤ C) where
  apex : C
  projections : ∀ j : J, apex ⟶ F.obj j
  universal : ∀ (A : C) (f : ∀ j : J, A ⟶ F.obj j), ∃! h : A ⟶ apex, ∀ j, projections j ∘ h = f j

def LimitClosed (F : J ⥤ C) (L : LimitCone F) : Prop := True

structure ColimitCocone (F : J ⥤ C) where
  apex : C
  injections : ∀ j : J, F.obj j ⟶ apex
  universal : ∀ (A : C) (f : ∀ j : J, F.obj j ⟶ A), ∃! h : apex ⟶ A, ∀ j, h ∘ injections j = f j

def ColimitClosed (F : J ⥤ C) (Cocone : ColimitCocone F) : Prop := True

end CategoricalMethodsGeneralTopologyCanonicalLaneLean
end HautevilleHouse