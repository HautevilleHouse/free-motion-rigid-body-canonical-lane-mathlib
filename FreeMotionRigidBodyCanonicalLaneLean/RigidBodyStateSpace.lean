import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FreeMotionRigidBodyCanonicalLaneLean

structure RigidBodyState where
  position : Type u
  orientation : Type v
  linearMomentum : Type w
  angularMomentum : Type x
  configurationManifold : Type y
  positionSmooth : Prop
  orientationSmooth : Prop
  momentumWellDefined : Prop
  configurationManifoldSmooth : Prop

structure RigidBodyStateEvidence (S : RigidBodyState) where
  positionSmoothClosed : S.positionSmooth
  orientationSmoothClosed : S.orientationSmooth
  momentumWellDefinedClosed : S.momentumWellDefined
  configurationManifoldSmoothClosed : S.configurationManifoldSmooth

def RigidBodyStateClosed (S : RigidBodyState) : Prop :=
  S.positionSmooth ∧ S.orientationSmooth ∧ S.momentumWellDefined ∧ S.configurationManifoldSmooth

theorem rigid_body_state_closed_from_evidence (S : RigidBodyState) (E : RigidBodyStateEvidence S) :
    RigidBodyStateClosed S := by
  exact And.intro E.positionSmoothClosed
    (And.intro E.orientationSmoothClosed
      (And.intro E.momentumWellDefinedClosed E.configurationManifoldSmoothClosed))

end FreeMotionRigidBodyCanonicalLaneLean
end HautevilleHouse