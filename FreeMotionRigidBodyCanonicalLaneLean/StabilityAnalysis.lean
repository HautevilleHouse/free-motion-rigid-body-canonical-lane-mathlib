import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FreeMotionRigidBodyCanonicalLaneLean

structure StabilityAnalysisPackage where
  equilibriumSet : Type u
  lyapunovFunction : Type u
  energyCasimirMethod : Prop
  nonlinearStability : Prop
  almostGlobalStability : Prop

structure StabilityAnalysisEvidence (S : StabilityAnalysisPackage) where
  energyCasimirMethodClosed : S.energyCasimirMethod
  nonlinearStabilityClosed : S.nonlinearStability
  almostGlobalStabilityClosed : S.almostGlobalStability

def StabilityAnalysisClosed (S : StabilityAnalysisPackage) : Prop :=
  S.energyCasimirMethod ∧ S.nonlinearStability ∧ S.almostGlobalStability

theorem stability_analysis_closed_from_evidence (S : StabilityAnalysisPackage) (ev : StabilityAnalysisEvidence S) : StabilityAnalysisClosed S :=
  And.intro ev.energyCasimirMethodClosed (And.intro ev.nonlinearStabilityClosed ev.almostGlobalStabilityClosed)

end FreeMotionRigidBodyCanonicalLaneLean
end HautevilleHouse
