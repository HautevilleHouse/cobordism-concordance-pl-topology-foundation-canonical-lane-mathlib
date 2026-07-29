import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismConcordancePlTopologyFoundationCanonicalLaneLean

structure CobordismAdmittedObject where
  sourceManifold : Type u
  targetManifold : Type v
  cobordism : Type w
  sourceClosed : Prop
  targetClosed : Prop
  cobordismLevelwise : Prop
  concordanceCondition : Prop
  conclusion : cobordismLevelwise ∧ concordanceCondition

structure AdmissibleClass where
  object : CobordismAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.cobordismLevelwise ∧ A.object.concordanceCondition) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CobordismConcordancePlTopologyFoundationCanonicalLaneLean
end HautevilleHouse
