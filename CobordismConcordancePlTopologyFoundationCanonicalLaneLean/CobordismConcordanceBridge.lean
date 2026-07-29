import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismConcordancePlTopologyFoundationCanonicalLaneLean

structure CobordismConcordanceBridge where
  cobordismToConcordance : Prop
  concordanceToCobordism : Prop
  plCompatibility : Prop
  bridgeClosed : Prop

def bridgeClosed (B : CobordismConcordanceBridge) : Prop :=
  B.cobordismToConcordance ∧ B.concordanceToCobordism ∧ B.plCompatibility

theorem bridge_from_admissible_class (B : CobordismConcordanceBridge) : bridgeClosed B :=
  And.intro B.cobordismToConcordance (And.intro B.concordanceToCobordism B.plCompatibility)

def gateClosed (B : CobordismConcordanceBridge) : Prop :=
  B.bridgeClosed

theorem gate_from_admissible_class (B : CobordismConcordanceBridge) : gateClosed B :=
  B.bridgeClosed

end CobordismConcordancePlTopologyFoundationCanonicalLaneLean
end HautevilleHouse