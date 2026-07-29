import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismConcordancePlTopologyFoundationCanonicalLaneLean

structure PLStructuresPackage where
  targetManifold : Type u
  targetTopology : TopologicalSpace targetManifold
  smoothStructure : Prop
  plStructureExists : Prop
  hauptvermutungLocal : Prop

structure PLStructuresEvidence (P : PLStructuresPackage) where
  smoothStructureClosed : P.smoothStructure
  plStructureExistsClosed : P.plStructureExists
  hauptvermutungLocalClosed : P.hauptvermutungLocal

def PLStructuresClosed (P : PLStructuresPackage) : Prop :=
  P.smoothStructure ∧ P.plStructureExists ∧ P.hauptvermutungLocal

theorem pl_structures_closed_from_evidence (P : PLStructuresPackage)
    (E : PLStructuresEvidence P) : PLStructuresClosed P := by
  exact And.intro E.smoothStructureClosed
    (And.intro E.plStructureExistsClosed E.hauptvermutungLocalClosed)

end CobordismConcordancePlTopologyFoundationCanonicalLaneLean
end HautevilleHouse