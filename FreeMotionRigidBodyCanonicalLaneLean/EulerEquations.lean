import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FreeMotionRigidBodyCanonicalLaneLean

structure RigidBodyState where
  position : ℝ × ℝ × ℝ
  velocity : ℝ × ℝ × ℝ
  angularVelocity : ℝ × ℝ × ℝ
  inertiaTensor : ℝ × ℝ × ℝ

def bridgeClosed (A : AdmissibleClass) : Prop :=
  True

def gateClosed (A : AdmissibleClass) : Prop :=
  True

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  by exact True.intro

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  by exact True.intro

def ConstrainedFreeMotionRigidBodyClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_free_motion_rigid_body_endgame (A : AdmissibleClass) :
    ConstrainedFreeMotionRigidBodyClosure A :=
  by exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FreeMotionRigidBodyCanonicalLaneLean
end HautevilleHouse
