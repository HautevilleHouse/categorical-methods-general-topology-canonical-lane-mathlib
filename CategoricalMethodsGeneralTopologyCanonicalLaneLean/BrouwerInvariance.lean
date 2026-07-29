import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalMethodsGeneralTopologyCanonicalLaneLean

structure BrouwerInvarianceEvidence where
  topologicalSpace : Type u
  openMap : topologicalSpace → topologicalSpace
  invarianceProperty : Prop
  categoricalFunctoriality : Prop

def BrouwerInvarianceClosed (B : BrouwerInvarianceEvidence) : Prop :=
  B.invarianceProperty ∧ B.categoricalFunctoriality

end CategoricalMethodsGeneralTopologyCanonicalLaneLean
end HautevilleHouse