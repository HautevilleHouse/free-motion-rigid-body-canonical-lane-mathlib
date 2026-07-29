import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FreeMotionRigidBodyCanonicalLaneLean

structure AdmissibleClass where
  object : RigidBodyAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  RigidBodyWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end FreeMotionRigidBodyCanonicalLaneLean
end HautevilleHouse