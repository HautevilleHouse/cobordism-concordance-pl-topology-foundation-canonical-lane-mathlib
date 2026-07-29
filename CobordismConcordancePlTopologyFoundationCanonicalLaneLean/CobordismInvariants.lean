import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismConcordancePlTopologyFoundationCanonicalLaneLean

structure CobordismInvariants where
  signature : Type u
  eulerCharacteristic : Type v
  genus : Type w
  signatureWellDefined : Prop
  eulerCharacteristicWellDefined : Prop
  genusWellDefined : Prop
  signatureWellDefinedTerm : signatureWellDefined
  eulerCharacteristicWellDefinedTerm : eulerCharacteristicWellDefined
  genusWellDefinedTerm : genusWellDefined

structure CobordismInvariantsClosed (I : CobordismInvariants) : Prop :=
  I.signatureWellDefined ∧ I.eulerCharacteristicWellDefined ∧ I.genusWellDefined

theorem cobordism_invariants_closed (I : CobordismInvariants) : CobordismInvariantsClosed I :=
  And.intro I.signatureWellDefinedTerm (And.intro I.eulerCharacteristicWellDefinedTerm I.genusWellDefinedTerm)

end CobordismConcordancePlTopologyFoundationCanonicalLaneLean
end HautevilleHouse