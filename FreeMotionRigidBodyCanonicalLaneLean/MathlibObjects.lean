import FreeMotionRigidBodyCanonicalLaneLean.AdmissibleClass
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace FreeMotionRigidBodyCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure RigidBodySpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure RigidBodyAdmittedObject where
  space : RigidBodySpace
  inertiaTensorDefined : Prop
  eulerEquationsSatisfied : Prop
  freeMotionModel : Prop
  conclusion : freeMotionModel

structure RigidBodyEndgameState where
  object : RigidBodyAdmittedObject

def RigidBodyWitnessClosed (O : RigidBodyAdmittedObject) : Prop :=
  O.freeMotionModel

end FreeMotionRigidBodyCanonicalLaneLean
end HautevilleHouse