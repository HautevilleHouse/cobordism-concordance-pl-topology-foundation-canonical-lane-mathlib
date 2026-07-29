import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismConcordancePlTopologyFoundationCanonicalLaneLean

structure CobordismClassificationPackage {G : PLStructurePackage} (M : ManifoldCategoryPackage G) where
  embeddingCobordism : Prop
  cobordismGroupComputed : Prop
  classificationUpToHConcordance : Prop
  hCobordismTheoremApplied : Prop

structure CobordismClassificationEvidence {G : PLStructurePackage} {M : ManifoldCategoryPackage G}
    (C : CobordismClassificationPackage M) where
  embeddingCobordismClosed : C.embeddingCobordism
  cobordismGroupComputedClosed : C.cobordismGroupComputed
  classificationUpToHConcordanceClosed : C.classificationUpToHConcordance
  hCobordismTheoremAppliedClosed : C.hCobordismTheoremApplied

def CobordismClassificationClosed {G : PLStructurePackage} {M : ManifoldCategoryPackage G}
    (C : CobordismClassificationPackage M) : Prop :=
  C.embeddingCobordism ∧ C.cobordismGroupComputed ∧ C.classificationUpToHConcordance ∧ C.hCobordismTheoremApplied

theorem cobordism_classification_closed_from_evidence
    {G : PLStructurePackage} {M : ManifoldCategoryPackage G}
    (C : CobordismClassificationPackage M) (E : CobordismClassificationEvidence C) :
    CobordismClassificationClosed C := by
  exact And.intro E.embeddingCobordismClosed
    (And.intro E.cobordismGroupComputedClosed
      (And.intro E.classificationUpToHConcordanceClosed E.hCobordismTheoremAppliedClosed))

end CobordismConcordancePlTopologyFoundationCanonicalLaneLean
end HautevilleHouse
