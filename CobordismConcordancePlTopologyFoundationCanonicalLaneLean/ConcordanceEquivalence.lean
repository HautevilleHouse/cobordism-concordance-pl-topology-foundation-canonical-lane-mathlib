import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismConcordancePlTopologyFoundationCanonicalLaneLean

structure ConcordanceEquivalence where
  sourceManifold : Type u
  targetManifold : Type v
  concordanceExists : Prop
  transitivity : Prop
  symmetry : Prop
  concordanceExistsTerm : concordanceExists
  transitivityTerm : transitivity
  symmetryTerm : symmetry

structure ConcordanceEquivalenceClosed (C : ConcordanceEquivalence) : Prop :=
  C.concordanceExists ∧ C.transitivity ∧ C.symmetry

theorem concordance_equivalence_closed (C : ConcordanceEquivalence) : ConcordanceEquivalenceClosed C :=
  And.intro C.concordanceExistsTerm (And.intro C.transitivityTerm C.symmetryTerm)

end CobordismConcordancePlTopologyFoundationCanonicalLaneLean
end HautevilleHouse