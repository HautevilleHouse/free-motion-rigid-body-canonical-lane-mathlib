import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FreeMotionRigidBodyCanonicalLaneLean

def ConstrainedRigidBodyClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_rigid_body_endgame (A : AdmissibleClass) :
    ConstrainedRigidBodyClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FreeMotionRigidBodyCanonicalLaneLean
end HautevilleHouse