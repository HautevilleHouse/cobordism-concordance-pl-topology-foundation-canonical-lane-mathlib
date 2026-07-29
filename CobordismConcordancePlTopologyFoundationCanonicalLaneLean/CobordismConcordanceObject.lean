import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismConcordancePlTopologyFoundationCanonicalLaneLean

structure CobordismConcordanceObject where
  source : Type u
  target : Type v
  structure : Prop
  invariant : Prop
  conclusion : invariant

def CobordismConcordanceWitnessClosed (O : CobordismConcordanceObject) : Prop :=
  O.invariant

end CobordismConcordancePlTopologyFoundationCanonicalLaneLean
end HautevilleHouse