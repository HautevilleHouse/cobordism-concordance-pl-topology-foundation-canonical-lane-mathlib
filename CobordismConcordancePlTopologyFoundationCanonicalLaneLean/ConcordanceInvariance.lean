import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CobordismConcordancePlTopologyFoundationCanonicalLaneLean.PLStructure
import HautevilleHouse.CobordismConcordancePlTopologyFoundationCanonicalLaneLean.ManifoldCategory

namespace HautevilleHouse
namespace CobordismConcordancePlTopologyFoundationCanonicalLaneLean

structure ConcordanceInvariancePackage {G : PLStructurePackage} {M : ManifoldCategoryPackage G} (C : CobordismClassificationPackage M) where
  concordanceEquivalence : Prop
  homotopyEquivalenceInducesConcordance : Prop
  plStructureConcordanceInvariant : Prop
  hCobordismTheoremConcordance : Prop

structure ConcordanceInvarianceEvidence {G : PLStructurePackage} {M : ManifoldCategoryPackage G}
    {C : CobordismClassificationPackage M} (I : ConcordanceInvariancePackage C) where
  concordanceEquivalenceClosed : I.concordanceEquivalence
  homotopyEquivalenceInducesConcordanceClosed : I.homotopyEquivalenceInducesConcordance
  plStructureConcordanceInvariantClosed : I.plStructureConcordanceInvariant
  hCobordismTheoremConcordanceClosed : I.hCobordismTheoremConcordance

def ConcordanceInvarianceClosed {G : PLStructurePackage} {M : ManifoldCategoryPackage G}
    {C : CobordismClassificationPackage M} (I : ConcordanceInvariancePackage C) : Prop :=
  I.concordanceEquivalence ∧ I.homotopyEquivalenceInducesConcordance ∧
  I.plStructureConcordanceInvariant ∧ I.hCobordismTheoremConcordance

theorem concordance_invariance_closed_from_evidence
    {G : PLStructurePackage} {M : ManifoldCategoryPackage G}
    {C : CobordismClassificationPackage M} (I : ConcordanceInvariancePackage C)
    (E : ConcordanceInvarianceEvidence I) : ConcordanceInvarianceClosed I := by
  exact And.intro E.concordanceEquivalenceClosed
    (And.intro E.homotopyEquivalenceInducesConcordanceClosed
      (And.intro E.plStructureConcordanceInvariantClosed E.hCobordismTheoremConcordanceClosed))

end CobordismConcordancePlTopologyFoundationCanonicalLaneLean
end HautevilleHouse
