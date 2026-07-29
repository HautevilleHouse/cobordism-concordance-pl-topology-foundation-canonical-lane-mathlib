import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismConcordancePlTopologyFoundationCanonicalLaneLean

structure SignatureTheoremPackage where
  targetManifold : Type u
  targetTopology : TopologicalSpace targetManifold
  orientedClosedFourk : Prop
  signatureIsCobordismInvariant : Prop
  signatureMultiplicativeUnderDisjointUnion : Prop

structure SignatureTheoremEvidence (S : SignatureTheoremPackage) where
  orientedClosedFourkClosed : S.orientedClosedFourk
  signatureIsCobordismInvariantClosed : S.signatureIsCobordismInvariant
  signatureMultiplicativeUnderDisjointUnionClosed : S.signatureMultiplicativeUnderDisjointUnion

def SignatureTheoremClosed (S : SignatureTheoremPackage) : Prop :=
  S.orientedClosedFourk ∧ S.signatureIsCobordismInvariant ∧ S.signatureMultiplicativeUnderDisjointUnion

theorem signature_theorem_closed_from_evidence (S : SignatureTheoremPackage)
    (E : SignatureTheoremEvidence S) : SignatureTheoremClosed S := by
  exact And.intro E.orientedClosedFourkClosed
    (And.intro E.signatureIsCobordismInvariantClosed E.signatureMultiplicativeUnderDisjointUnionClosed)

end CobordismConcordancePlTopologyFoundationCanonicalLaneLean
end HautevilleHouse