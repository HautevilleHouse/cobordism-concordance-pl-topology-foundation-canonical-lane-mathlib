import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismConcordancePlTopologyFoundationCanonicalLaneLean

structure CobordismPackage where
  targetManifold : Type u
  codomainManifold : Type v
  cobordismClass : Type w
  cobordismRelation : Prop
  cobordismInvariant : Prop
  plStructure : Prop
  equivalenceRelation : Prop
  groupStructure : Prop

def CobordismPackageClosed (C : CobordismPackage) : Prop :=
  C.cobordismRelation ∧ C.cobordismInvariant ∧ C.plStructure ∧ C.equivalenceRelation ∧ C.groupStructure

end CobordismConcordancePlTopologyFoundationCanonicalLaneLean
end HautevilleHouse