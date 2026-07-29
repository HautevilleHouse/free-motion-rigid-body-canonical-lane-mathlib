import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FreeMotionRigidBodyCanonicalLaneLean

structure ConservationLawGate where
  angularMomentumConstant : Prop
  energyConstant : Prop
  closed : angularMomentumConstant ∧ energyConstant

def gateClosed (G : ConservationLawGate) : Prop :=
  G.angularMomentumConstant ∨ G.energyConstant

theorem gate_from_evidence (G : ConservationLawGate) : gateClosed G :=
  match G.closed with
  | And.intro h _ => Or.inl h

end FreeMotionRigidBodyCanonicalLaneLean
end HautevilleHouse