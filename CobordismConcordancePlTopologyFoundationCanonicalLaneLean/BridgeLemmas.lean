import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismConcordancePlTopologyFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CobordismWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A :=
  exact A.object.conclusion

end CobordismConcordancePlTopologyFoundationCanonicalLaneLean
end HautevilleHouse
