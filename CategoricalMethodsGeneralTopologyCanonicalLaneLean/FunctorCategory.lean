import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalMethodsGeneralTopologyCanonicalLaneLean

structure FunctorCategory (C D : Type u) [Category.{v} C] [Category.{w} D] where
  objects : (C ⥤ D)
  morphisms : ∀ F G : (C ⥤ D), Type (max v w) := NatTrans F G
  composition : ∀ {F G H} (α : NatTrans F G) (β : NatTrans G H), NatTrans F H
  identities : ∀ F : (C ⥤ D), NatTrans F F
  associativity : ∀ {F G H I} (α : NatTrans F G) (β : NatTrans G H) (γ : NatTrans H I), (comp (comp α β) γ) = comp α (comp β γ)
  identityLaw : ∀ {F G} (α : NatTrans F G), comp α (id G) = α ∧ comp (id F) α = α

def FunctorCategoryClosed (C D : Type u) [Category.{v} C] [Category.{w} D] (FC : FunctorCategory C D) : Prop := True

end CategoricalMethodsGeneralTopologyCanonicalLaneLean
end HautevilleHouse