import FreeMotionRigidBodyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace FreeMotionRigidBodyCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  RigidBodyWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end FreeMotionRigidBodyCanonicalLaneLean
end HautevilleHouse