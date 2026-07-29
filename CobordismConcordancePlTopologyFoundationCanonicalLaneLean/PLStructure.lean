import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismConcordancePlTopologyFoundationCanonicalLaneLean

structure PLStructurePackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  plAtlas : Type v
  plCompatible : Prop
  dimensionDefined : Prop
  triangulationExists : Prop

structure PLStructureEvidence (G : PLStructurePackage) where
  plCompatibleClosed : G.plCompatible
  dimensionDefinedClosed : G.dimensionDefined
  triangulationExistsClosed : G.triangulationExists

def PLStructureClosed (G : PLStructurePackage) : Prop :=
  G.plCompatible ∧ G.dimensionDefined ∧ G.triangulationExists

theorem pl_structure_closed_from_evidence (G : PLStructurePackage) (E : PLStructureEvidence G) :
    PLStructureClosed G := by
  exact And.intro E.plCompatibleClosed (And.intro E.dimensionDefinedClosed E.triangulationExistsClosed)

end CobordismConcordancePlTopologyFoundationCanonicalLaneLean
end HautevilleHouse
