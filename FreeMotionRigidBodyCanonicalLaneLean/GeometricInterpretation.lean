import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FreeMotionRigidBodyCanonicalLaneLean

structure GeometricInterpretationPackage where
  groupManifold : Type u
  phaseSpace : Type u
  poissonBracket : Prop
  geodesicFlow : Prop
  groupSymmetry : Prop

structure GeometricInterpretationEvidence (G : GeometricInterpretationPackage) where
  poissonBracketClosed : G.poissonBracket
  geodesicFlowClosed : G.geodesicFlow
  groupSymmetryClosed : G.groupSymmetry

def GeometricInterpretationClosed (G : GeometricInterpretationPackage) : Prop :=
  G.poissonBracket ∧ G.geodesicFlow ∧ G.groupSymmetry

theorem geometric_interpretation_closed_from_evidence (G : GeometricInterpretationPackage) (ev : GeometricInterpretationEvidence G) : GeometricInterpretationClosed G :=
  And.intro ev.poissonBracketClosed (And.intro ev.geodesicFlowClosed ev.groupSymmetryClosed)

end FreeMotionRigidBodyCanonicalLaneLean
end HautevilleHouse
