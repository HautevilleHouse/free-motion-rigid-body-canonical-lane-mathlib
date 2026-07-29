import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FreeMotionRigidBodyCanonicalLaneLean

structure RigidBodyPhaseSpace where
  Q : Type u
  TStarQ : Type v
  configManifold : Q
  cotangentBundle : TStarQ
  symplecticForm : Prop
  poissonBracket : Prop
  symplecticFormClosed : symplecticForm
  poissonBracketClosed : poissonBracket

structure FreeMotionRigidBodyPackage where
  phaseSpace : RigidBodyPhaseSpace
  mass : ℝ
  inertiaTensor : LinearMap ℝ (Vector ℝ 3) (Vector ℝ 3)
  lagrangian : ℝ → RigidBodyPhaseSpace.TStarQ → ℝ
  hamiltonian : ℝ → RigidBodyPhaseSpace.TStarQ → ℝ
  eulerLagrangeEquations : Prop
  hamiltonEquations : Prop

def RigidBodyAdmittedObject : Type 1 := Σ (P : FreeMotionRigidBodyPackage), P.eulerLagrangeEquations ∧ P.hamiltonEquations

end FreeMotionRigidBodyCanonicalLaneLean
end HautevilleHouse