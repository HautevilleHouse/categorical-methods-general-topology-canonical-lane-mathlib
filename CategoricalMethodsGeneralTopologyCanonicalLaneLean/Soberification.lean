import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalMethodsGeneralTopologyCanonicalLaneLean

structure SoberificationPackage where
  topologicalSpace : Type u
  irreducibleClosedSet : Prop
  soberSpace : Prop
  soberificationFunctor : Type
  universalProperty : Prop
  monadicity : Prop
  idempotentMonad : Prop
  reflector : Prop
  equivalenceOnSoberSpaces : Prop

structure SoberificationEvidence (S : SoberificationPackage) where
  irreducibleClosedSetClosed : S.irreducibleClosedSet
  soberSpaceClosed : S.soberSpace
  soberificationFunctorClosed : S.soberificationFunctor
  universalPropertyClosed : S.universalProperty
  monadicityClosed : S.monadicity
  idempotentMonadClosed : S.idempotentMonad
  reflectorClosed : S.reflector
  equivalenceOnSoberSpacesClosed : S.equivalenceOnSoberSpaces

def SoberificationClosed (S : SoberificationPackage) : Prop :=
  S.irreducibleClosedSet ∧ S.soberSpace ∧ S.soberificationFunctor ∧
  S.universalProperty ∧ S.monadicity ∧ S.idempotentMonad ∧
  S.reflector ∧ S.equivalenceOnSoberSpaces

theorem soberification_closed_from_evidence (S : SoberificationPackage)
    (E : SoberificationEvidence S) : SoberificationClosed S := by
  exact And.intro E.irreducibleClosedSetClosed
    (And.intro E.soberSpaceClosed
      (And.intro E.soberificationFunctorClosed
        (And.intro E.universalPropertyClosed
          (And.intro E.monadicityClosed
            (And.intro E.idempotentMonadClosed
              (And.intro E.reflectorClosed E.equivalenceOnSoberSpacesClosed))))))

end CategoricalMethodsGeneralTopologyCanonicalLaneLean
end HautevilleHouse
