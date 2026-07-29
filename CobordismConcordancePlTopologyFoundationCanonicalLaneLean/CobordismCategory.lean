import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismConcordancePlTopologyFoundationCanonicalLaneLean

structure CobordismCategory where
  sourceDimension : Nat
  targetDimension : Nat
  manifolds : Type u
  cobordisms : Type v
  compositionLaw : Prop
  identityCobordism : Prop
  compositionLawTerm : compositionLaw
  identityCobordismTerm : identityCobordism

structure CobordismCategoryClosed (C : CobordismCategory) : Prop :=
  C.compositionLaw ∧ C.identityCobordism

theorem cobordism_category_closed (C : CobordismCategory) : CobordismCategoryClosed C :=
  And.intro C.compositionLawTerm C.identityCobordismTerm

end CobordismConcordancePlTopologyFoundationCanonicalLaneLean
end HautevilleHouse