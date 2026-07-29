import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismConcordancePlTopologyFoundationCanonicalLaneLean

def ConstrainedCobordismClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_cobordism_endgame (A : AdmissibleClass) :
    ConstrainedCobordismClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CobordismConcordancePlTopologyFoundationCanonicalLaneLean
end HautevilleHouse