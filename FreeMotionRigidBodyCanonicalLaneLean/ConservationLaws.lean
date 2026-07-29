import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FreeMotionRigidBodyCanonicalLaneLean

structure ConservationLawsPackage where
  angularMomentumVector : Type u
  kineticEnergy : Type u
  angularMomentumConserved : Prop
  kineticEnergyConserved : Prop
  integrableSystem : Prop

structure ConservationLawsEvidence (C : ConservationLawsPackage) where
  angularMomentumConservedClosed : C.angularMomentumConserved
  kineticEnergyConservedClosed : C.kineticEnergyConserved
  integrableSystemClosed : C.integrableSystem

def ConservationLawsClosed (C : ConservationLawsPackage) : Prop :=
  C.angularMomentumConserved ∧ C.kineticEnergyConserved ∧ C.integrableSystem

theorem conservation_laws_closed_from_evidence (C : ConservationLawsPackage) (ev : ConservationLawsEvidence C) : ConservationLawsClosed C :=
  And.intro ev.angularMomentumConservedClosed (And.intro ev.kineticEnergyConservedClosed ev.integrableSystemClosed)

end FreeMotionRigidBodyCanonicalLaneLean
end HautevilleHouse
