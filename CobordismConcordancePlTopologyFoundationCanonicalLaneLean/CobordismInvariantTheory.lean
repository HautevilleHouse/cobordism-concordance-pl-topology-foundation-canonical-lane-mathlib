import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismConcordancePlTopologyFoundationCanonicalLaneLean

structure CobordismInvariantTheory where
  signature : Prop
  genus : Prop
  pontryaginNumbers : Prop
  stiefelWhitneyNumbers : Prop
  characteristicClasses : Prop
  indexTheorem : Prop

def CobordismInvariantTheoryClosed (I : CobordismInvariantTheory) : Prop :=
  I.signature ∧ I.genus ∧ I.pontryaginNumbers ∧ I.stiefelWhitneyNumbers ∧ I.characteristicClasses ∧ I.indexTheorem

end CobordismConcordancePlTopologyFoundationCanonicalLaneLean
end HautevilleHouse