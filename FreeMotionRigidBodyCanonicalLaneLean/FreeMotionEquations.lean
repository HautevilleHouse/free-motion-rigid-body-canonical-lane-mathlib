import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FreeMotionRigidBodyCanonicalLaneLean

structure FreeMotionEquations where
  linearMomentumConservation : Prop
  angularMomentumConservation : Prop
  kineticEnergyConservation : Prop
  eulerEquations : Prop
  poissonBracketStructure : Prop

structure FreeMotionEquationsEvidence (E : FreeMotionEquations) where
  linearMomentumConservationClosed : E.linearMomentumConservation
  angularMomentumConservationClosed : E.angularMomentumConservation
  kineticEnergyConservationClosed : E.kineticEnergyConservation
  eulerEquationsClosed : E.eulerEquations
  poissonBracketStructureClosed : E.poissonBracketStructure

def FreeMotionEquationsClosed (E : FreeMotionEquations) : Prop :=
  E.linearMomentumConservation ∧ E.angularMomentumConservation ∧
  E.kineticEnergyConservation ∧ E.eulerEquations ∧ E.poissonBracketStructure

theorem free_motion_equations_closed_from_evidence (E : FreeMotionEquations) (Ev : FreeMotionEquationsEvidence E) :
    FreeMotionEquationsClosed E := by
  exact And.intro Ev.linearMomentumConservationClosed
    (And.intro Ev.angularMomentumConservationClosed
      (And.intro Ev.kineticEnergyConservationClosed
        (And.intro Ev.eulerEquationsClosed Ev.poissonBracketStructureClosed)))

end FreeMotionRigidBodyCanonicalLaneLean
end HautevilleHouse