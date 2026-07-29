import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalMethodsGeneralTopologyCanonicalLaneLean

structure PointfreeTopologyPackage (A : AdmissibleClass) where
  frame : Type u
  frameStructure : OrderedSemiring frame
  spectrum : Type v
  spectrumTopology : TopologicalSpace spectrum
  isomorphismFrame : Prop
  pointsOpen : Prop

structure PointfreeTopologyEvidence (A : AdmissibleClass) (P : PointfreeTopologyPackage A) where
  isomorphismFrameClosed : P.isomorphismFrame
  pointsOpenClosed : P.pointsOpen

def PointfreeTopologyClosed (A : AdmissibleClass) (P : PointfreeTopologyPackage A) : Prop :=
  P.isomorphismFrame ∧ P.pointsOpen

theorem pointfree_topology_closed_from_evidence
    (A : AdmissibleClass) (P : PointfreeTopologyPackage A) (E : PointfreeTopologyEvidence A P) :
    PointfreeTopologyClosed A P := by
  exact And.intro E.isomorphismFrameClosed E.pointsOpenClosed

end CategoricalMethodsGeneralTopologyCanonicalLaneLean
end HautevilleHouse
