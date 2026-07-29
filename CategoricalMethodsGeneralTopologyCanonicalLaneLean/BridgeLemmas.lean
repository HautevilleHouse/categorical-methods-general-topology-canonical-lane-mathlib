import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalMethodsGeneralTopologyCanonicalLaneLean

def TopologicalClosure (O : CategoricalAdmittedObject) : Prop :=
  O.categoricalProperty

def bridgeClosed (A : AdmissibleClass) : Prop :=
  TopologicalClosure A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

end CategoricalMethodsGeneralTopologyCanonicalLaneLean
end HautevilleHouse