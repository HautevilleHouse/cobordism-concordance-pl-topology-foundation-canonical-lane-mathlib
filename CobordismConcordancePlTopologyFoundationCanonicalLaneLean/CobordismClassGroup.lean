import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismConcordancePlTopologyFoundationCanonicalLaneLean

structure CobordismClassPackage where
  targetManifold : Type u
  targetTopology : TopologicalSpace targetManifold
  orientedClosedSmooth : Prop
  cobordismGroup : Prop
  additionByDisjointUnion : Prop
  zeroCobordant : Prop

structure CobordismClassEvidence (C : CobordismClassPackage) where
  orientedClosedSmoothClosed : C.orientedClosedSmooth
  cobordismGroupClosed : C.cobordismGroup
  additionByDisjointUnionClosed : C.additionByDisjointUnion
  zeroCobordantClosed : C.zeroCobordant

def CobordismClassClosed (C : CobordismClassPackage) : Prop :=
  C.orientedClosedSmooth ∧ C.cobordismGroup ∧ C.additionByDisjointUnion ∧ C.zeroCobordant

theorem cobordism_class_closed_from_evidence (C : CobordismClassPackage)
    (E : CobordismClassEvidence C) : CobordismClassClosed C := by
  exact And.intro E.orientedClosedSmoothClosed
    (And.intro E.cobordismGroupClosed
      (And.intro E.additionByDisjointUnionClosed E.zeroCobordantClosed))

end CobordismConcordancePlTopologyFoundationCanonicalLaneLean
end HautevilleHouse