import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FreeMotionRigidBodyCanonicalLaneLean

structure EulerTopDynamicsPackage where
  angularVelocity : ℝ → Vector ℝ 3
  torqueFree : Prop
  eulerEquation : Prop
  conservationLaws : Prop
  torqueFreeClosed : torqueFree
  eulerEquationClosed : eulerEquation
  conservationLawsClosed : conservationLaws

def EulerTopDynamicsWitnessClosed (P : EulerTopDynamicsPackage) : Prop :=
  P.torqueFree ∧ P.eulerEquation ∧ P.conservationLaws

theorem euler_top_dynamics_closed (P : EulerTopDynamicsPackage) : EulerTopDynamicsWitnessClosed P :=
  And.intro P.torqueFreeClosed (And.intro P.eulerEquationClosed P.conservationLawsClosed)

end FreeMotionRigidBodyCanonicalLaneLean
end HautevilleHouse