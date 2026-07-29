import CobordismConcordancePlTopologyFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CobordismConcordancePlTopologyFoundationCanonicalLaneLean

structure PLTriangulationPackage where
  manifold : Type u
  plAtlas : Type v
  triangulationCompatible : Prop
  combinatorialConsistency : Prop
  subsurfaceStructure : Prop

structure ConcordancePackage (T : PLTriangulationPackage) where
  sourceTriangulation : T.manifold
  targetTriangulation : T.manifold
  concordanceLevel : Prop
  levelPreserving : Prop

structure CobordismInvariancePackage (T : PLTriangulationPackage) (C : ConcordancePackage T) where
  invarianceUnderCobordism : Prop
  invarianceUnderConcordance : Prop
  homotopyEquivalenceClosed : Prop
  signatureInvariant : Prop

structure PLSurgeryPackage (T : PLTriangulationPackage) (C : ConcordancePackage T) (I : CobordismInvariancePackage T C) where
  surgeryOnPLManifold : Prop
  handleDecomposition : Prop
  normalBundles : Prop
  smoothingCompatibility : Prop

def SurgeryClosed {T : PLTriangulationPackage} {C : ConcordancePackage T} {I : CobordismInvariancePackage T C} (S : PLSurgeryPackage T C I) : Prop :=
  S.surgeryOnPLManifold ∧ S.handleDecomposition ∧ S.normalBundles ∧ S.smoothingCompatibility

end CobordismConcordancePlTopologyFoundationCanonicalLaneLean
end HautevilleHouse
