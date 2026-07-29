import CategoricalMethodsGeneralTopologyCanonicalLaneLean.CategoricalTopologyObjects

namespace HautevilleHouse
namespace CategoricalMethodsGeneralTopologyCanonicalLaneLean

structure LimitsColimitsPackage (O : CategoricalTopologyObject) where
  hasLimits : Prop
  hasColimits : Prop
  limitsDistributeOverProducts : Prop
  colimitsDistributeOverCoproducts : Prop

structure LimitsColimitsEvidence (O : CategoricalTopologyObject) (P : LimitsColimitsPackage O) where
  hasLimitsClosed : P.hasLimits
  hasColimitsClosed : P.hasColimits
  limitsDistributeOverProductsClosed : P.limitsDistributeOverProducts
  colimitsDistributeOverCoproductsClosed : P.colimitsDistributeOverCoproducts

def LimitsColimitsClosed (O : CategoricalTopologyObject) (P : LimitsColimitsPackage O) : Prop :=
  P.hasLimits ∧ P.hasColimits ∧ P.limitsDistributeOverProducts ∧ P.colimitsDistributeOverCoproducts

theorem limits_colimits_closed_from_evidence (O : CategoricalTopologyObject) (P : LimitsColimitsPackage O)
    (E : LimitsColimitsEvidence O P) : LimitsColimitsClosed O P := by
  exact And.intro E.hasLimitsClosed
    (And.intro E.hasColimitsClosed
      (And.intro E.limitsDistributeOverProductsClosed E.colimitsDistributeOverCoproductsClosed))

end CategoricalMethodsGeneralTopologyCanonicalLaneLean
end HautevilleHouse