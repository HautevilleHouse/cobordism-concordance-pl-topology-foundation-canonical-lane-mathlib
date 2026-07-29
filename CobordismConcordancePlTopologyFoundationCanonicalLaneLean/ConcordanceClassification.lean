import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismConcordancePlTopologyFoundationCanonicalLaneLean

structure ConcordanceClassificationPackage where
  manifold : Type
  dimension : ℕ
  concordanceGroup : Type
  groupStructure : Prop
  classificationTheorem : Prop

structure ConcordanceClassificationEvidence
    (C : ConcordanceClassificationPackage) where
  groupStructureClosed : C.groupStructure
  classificationTheoremClosed : C.classificationTheorem

def ConcordanceClassificationClosed (C : ConcordanceClassificationPackage) : Prop :=
  C.groupStructure ∧ C.classificationTheorem

theorem concordance_classification_closed_from_evidence
    (C : ConcordanceClassificationPackage)
    (E : ConcordanceClassificationEvidence C) :
    ConcordanceClassificationClosed C :=
  And.intro E.groupStructureClosed E.classificationTheoremClosed

end CobordismConcordancePlTopologyFoundationCanonicalLaneLean
end HautevilleHouse
