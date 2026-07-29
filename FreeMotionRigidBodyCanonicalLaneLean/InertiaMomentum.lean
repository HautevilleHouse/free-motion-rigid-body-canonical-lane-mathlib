import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FreeMotionRigidBodyCanonicalLaneLean

structure InertiaMomentumPackage where
  inertiaTensor : Type
  angularMomentum : Type
  principalAxes : Prop
  conservationAngularMomentum : Prop
  kineticEnergyExpression : Prop

structure InertiaMomentumEvidence (I : InertiaMomentumPackage) where
  principalAxesClosed : I.principalAxes
  conservationAngularMomentumClosed : I.conservationAngularMomentum
  kineticEnergyExpressionClosed : I.kineticEnergyExpression

def InertiaMomentumClosed (I : InertiaMomentumPackage) : Prop :=
  I.principalAxes ∧ I.conservationAngularMomentum ∧ I.kineticEnergyExpression

theorem inertia_momentum_closed_from_evidence (I : InertiaMomentumPackage)
    (Ev : InertiaMomentumEvidence I) : InertiaMomentumClosed I :=
  And.intro Ev.principalAxesClosed
    (And.intro Ev.conservationAngularMomentumClosed Ev.kineticEnergyExpressionClosed)

end FreeMotionRigidBodyCanonicalLaneLean
end HautevilleHouse