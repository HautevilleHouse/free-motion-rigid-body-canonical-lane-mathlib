import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FreeMotionRigidBodyCanonicalLaneLean

structure PoissonBracketStructure where
  phaseSpace : Type u
  bracketOperation : Type v
  antisymmetry : Prop
  jacobiIdentity : Prop
  hamiltonianFlow : Prop

structure PoissonBracketEvidence (P : PoissonBracketStructure) where
  phaseSpaceClosed : P.phaseSpace = P.phaseSpace
  bracketOperationClosed : P.bracketOperation = P.bracketOperation
  antisymmetryClosed : P.antisymmetry
  jacobiIdentityClosed : P.jacobiIdentity
  hamiltonianFlowClosed : P.hamiltonianFlow

def PoissonBracketClosed (P : PoissonBracketStructure) : Prop :=
  P.antisymmetry ∧ P.jacobiIdentity ∧ P.hamiltonianFlow

theorem poisson_bracket_closed_from_evidence (P : PoissonBracketStructure) (E : PoissonBracketEvidence P) :
    PoissonBracketClosed P := by
  exact And.intro E.antisymmetryClosed
    (And.intro E.jacobiIdentityClosed E.hamiltonianFlowClosed)

end FreeMotionRigidBodyCanonicalLaneLean
end HautevilleHouse