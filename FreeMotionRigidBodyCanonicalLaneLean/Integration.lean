import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FreeMotionRigidBodyCanonicalLaneLean

structure IntegrationPackage where
  analyticSolution : Prop
  numericalScheme : Prop
  symplecticIntegrator : Prop
  energyConservation : Prop
  convergenceOrder : Prop

structure IntegrationEvidence (I : IntegrationPackage) where
  analyticSolutionClosed : I.analyticSolution
  numericalSchemeClosed : I.numericalScheme
  symplecticIntegratorClosed : I.symplecticIntegrator
  energyConservationClosed : I.energyConservation
  convergenceOrderClosed : I.convergenceOrder

def IntegrationClosed (I : IntegrationPackage) : Prop :=
  I.analyticSolution ∧ I.numericalScheme ∧ I.symplecticIntegrator ∧
  I.energyConservation ∧ I.convergenceOrder

theorem integration_closed_from_evidence (I : IntegrationPackage) (E : IntegrationEvidence I) :
    IntegrationClosed I := by
  exact And.intro E.analyticSolutionClosed
    (And.intro E.numericalSchemeClosed
      (And.intro E.symplecticIntegratorClosed
        (And.intro E.energyConservationClosed E.convergenceOrderClosed)))

end FreeMotionRigidBodyCanonicalLaneLean
end HautevilleHouse