import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FreeMotionRigidBodyCanonicalLaneLean

structure LagrangianFormulationPackage where
  configurationSpace : Type
  kineticEnergy : Type
  potentialEnergy : Type
  lagrangian : Type
  eulerLagrangeEquations : Prop
  conservationLaws : Prop

structure LagrangianFormulationEvidence (L : LagrangianFormulationPackage) where
  eulerLagrangeEquationsClosed : L.eulerLagrangeEquations
  conservationLawsClosed : L.conservationLaws

def LagrangianFormulationClosed (L : LagrangianFormulationPackage) : Prop :=
  L.eulerLagrangeEquations ∧ L.conservationLaws

theorem lagrangian_formulation_closed_from_evidence (L : LagrangianFormulationPackage)
    (Ev : LagrangianFormulationEvidence L) : LagrangianFormulationClosed L :=
  And.intro Ev.eulerLagrangeEquationsClosed Ev.conservationLawsClosed

end FreeMotionRigidBodyCanonicalLaneLean
end HautevilleHouse