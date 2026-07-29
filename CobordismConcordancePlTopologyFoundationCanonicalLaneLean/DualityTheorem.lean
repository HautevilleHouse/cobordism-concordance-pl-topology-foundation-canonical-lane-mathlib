import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismConcordancePlTopologyFoundationCanonicalLaneLean

structure DualityTheorem where
  manifolds : Type u
  poincareDualityHolds : Prop
  lefschetzDualityHolds : Prop
  poincareDualityTerm : poincareDualityHolds
  lefschetzDualityTerm : lefschetzDualityHolds

structure DualityTheoremClosed (D : DualityTheorem) : Prop :=
  D.poincareDualityHolds ∧ D.lefschetzDualityHolds

theorem duality_theorem_closed (D : DualityTheorem) : DualityTheoremClosed D :=
  And.intro D.poincareDualityTerm D.lefschetzDualityTerm

end CobordismConcordancePlTopologyFoundationCanonicalLaneLean
end HautevilleHouse