import CobordismConcordancePlTopologyFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CobordismConcordancePlTopologyFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.cobordismLevelwise ∧ A.object.concordanceCondition

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.object.conclusion

end CobordismConcordancePlTopologyFoundationCanonicalLaneLean
end HautevilleHouse
