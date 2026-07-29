import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismConcordancePlTopologyFoundationCanonicalLaneLean

structure CobordismDualityPackage where
  poincareDuality : Prop
  spanierWhiteheadDuality : Prop
  alexanderDuality : Prop
  dualitySpectralSequence : Prop
  dualityInvariant : Prop

def CobordismDualityPackageClosed (D : CobordismDualityPackage) : Prop :=
  D.poincareDuality ∧ D.spanierWhiteheadDuality ∧ D.alexanderDuality ∧ D.dualitySpectralSequence ∧ D.dualityInvariant

end CobordismConcordancePlTopologyFoundationCanonicalLaneLean
end HautevilleHouse