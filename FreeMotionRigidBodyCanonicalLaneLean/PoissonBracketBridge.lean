import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FreeMotionRigidBodyCanonicalLaneLean

structure PoissonBracketEvidence (P : RigidBodyPhaseSpace) where
  bracketDefined : P.poissonBracket
  symplecticCondition : P.symplecticForm
  leibnizIdentity : Prop
  leibnizIdentityClosed : leibnizIdentity

def PoissonBracketBridgeClosed (P : RigidBodyPhaseSpace) : Prop :=
  P.poissonBracket ∧ P.symplecticForm

theorem poisson_bracket_bridge_from_evidence (P : RigidBodyPhaseSpace) (E : PoissonBracketEvidence P) : PoissonBracketBridgeClosed P :=
  And.intro E.bracketDefined E.symplecticCondition

end FreeMotionRigidBodyCanonicalLaneLean
end HautevilleHouse