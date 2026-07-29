import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismConcordancePlTopologyFoundationCanonicalLaneLean

structure ConcordanceGroupPackage where
  targetManifold : Type u
  targetTopology : TopologicalSpace targetManifold
  framedOrRibbon : Prop
  groupStructure : Prop
  zeroConcordant : Prop

structure ConcordanceGroupEvidence (C : ConcordanceGroupPackage) where
  framedOrRibbonClosed : C.framedOrRibbon
  groupStructureClosed : C.groupStructure
  zeroConcordantClosed : C.zeroConcordant

def ConcordanceGroupClosed (C : ConcordanceGroupPackage) : Prop :=
  C.framedOrRibbon ∧ C.groupStructure ∧ C.zeroConcordant

theorem concordance_group_closed_from_evidence (C : ConcordanceGroupPackage)
    (E : ConcordanceGroupEvidence C) : ConcordanceGroupClosed C := by
  exact And.intro E.framedOrRibbonClosed
    (And.intro E.groupStructureClosed E.zeroConcordantClosed)

end CobordismConcordancePlTopologyFoundationCanonicalLaneLean
end HautevilleHouse