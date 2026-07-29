import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CobordismConcordancePlTopologyFoundationCanonicalLaneLean.PLStructure

namespace HautevilleHouse
namespace CobordismConcordancePlTopologyFoundationCanonicalLaneLean

structure ManifoldCategoryPackage {G : PLStructurePackage} where
  objects : Type u
  morphisms : Type v
  compositionDefined : Prop
  identitiesExist : Prop
  mCobordismIsIsomorphism : Prop
  hCobordismInverse : Prop

structure ManifoldCategoryEvidence {G : PLStructurePackage} (M : ManifoldCategoryPackage G) where
  compositionDefinedClosed : M.compositionDefined
  identitiesExistClosed : M.identitiesExist
  mCobordismIsIsomorphismClosed : M.mCobordismIsIsomorphism
  hCobordismInverseClosed : M.hCobordismInverse

def ManifoldCategoryClosed {G : PLStructurePackage} (M : ManifoldCategoryPackage G) : Prop :=
  M.compositionDefined ∧ M.identitiesExist ∧ M.mCobordismIsIsomorphism ∧ M.hCobordismInverse

theorem manifold_category_closed_from_evidence
    {G : PLStructurePackage} (M : ManifoldCategoryPackage G) (E : ManifoldCategoryEvidence M) :
    ManifoldCategoryClosed M := by
  exact And.intro E.compositionDefinedClosed
    (And.intro E.identitiesExistClosed
      (And.intro E.mCobordismIsIsomorphismClosed E.hCobordismInverseClosed))

end CobordismConcordancePlTopologyFoundationCanonicalLaneLean
end HautevilleHouse
