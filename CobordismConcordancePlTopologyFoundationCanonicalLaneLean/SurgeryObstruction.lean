import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismConcordancePlTopologyFoundationCanonicalLaneLean

structure SurgeryObstructionPackage where
  targetManifold : Type u
  targetTopology : TopologicalSpace targetManifold
  normalInvariant : Prop
  surgeryObstructionGroup : Prop
  vanishingCondition : Prop

structure SurgeryObstructionEvidence (S : SurgeryObstructionPackage) where
  normalInvariantClosed : S.normalInvariant
  surgeryObstructionGroupClosed : S.surgeryObstructionGroup
  vanishingConditionClosed : S.vanishingCondition

def SurgeryObstructionClosed (S : SurgeryObstructionPackage) : Prop :=
  S.normalInvariant ∧ S.surgeryObstructionGroup ∧ S.vanishingCondition

theorem surgery_obstruction_closed_from_evidence (S : SurgeryObstructionPackage)
    (E : SurgeryObstructionEvidence S) : SurgeryObstructionClosed S := by
  exact And.intro E.normalInvariantClosed
    (And.intro E.surgeryObstructionGroupClosed E.vanishingConditionClosed)

end CobordismConcordancePlTopologyFoundationCanonicalLaneLean
end HautevilleHouse