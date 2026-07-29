import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismConcordancePlTopologyFoundationCanonicalLaneLean

structure PLTopologyFoundationPackage where
  polyhedron : Type
  triangulation : Prop
  combinatorialEquivalence : Prop
  subdivision : Prop

structure PLTopologyFoundationEvidence
    (P : PLTopologyFoundationPackage) where
  triangulationClosed : P.triangulation
  combinatorialEquivalenceClosed : P.combinatorialEquivalence
  subdivisionClosed : P.subdivision

def PLTopologyFoundationClosed (P : PLTopologyFoundationPackage) : Prop :=
  P.triangulation ∧ P.combinatorialEquivalence ∧ P.subdivision

theorem pl_topology_foundation_closed_from_evidence
    (P : PLTopologyFoundationPackage)
    (E : PLTopologyFoundationEvidence P) :
    PLTopologyFoundationClosed P :=
  And.intro E.triangulationClosed
    (And.intro E.combinatorialEquivalenceClosed E.subdivisionClosed)

end CobordismConcordancePlTopologyFoundationCanonicalLaneLean
end HautevilleHouse
