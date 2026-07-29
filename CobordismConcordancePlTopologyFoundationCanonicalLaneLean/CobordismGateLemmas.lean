import CobordismConcordancePlTopologyFoundationCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace CobordismConcordancePlTopologyFoundationCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

end CobordismConcordancePlTopologyFoundationCanonicalLaneLean
end HautevilleHouse
