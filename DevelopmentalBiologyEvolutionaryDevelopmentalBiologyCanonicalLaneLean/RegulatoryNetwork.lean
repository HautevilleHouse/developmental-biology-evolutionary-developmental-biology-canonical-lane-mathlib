import DevelopmentalBiologyEvolutionaryDevelopmentalBiologyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyEvolutionaryDevelopmentalBiologyCanonicalLaneLean

structure RegulatoryNetworkPackage where
  transcriptionFactors : List String
  targetGenes : List String
  feedbackLoops : Prop
  networkRobustness : Prop

structure RegulatoryNetworkEvidence (R : RegulatoryNetworkPackage) where
  feedbackLoopsClosed : R.feedbackLoops
  networkRobustnessClosed : R.networkRobustness

def RegulatoryNetworkClosed (R : RegulatoryNetworkPackage) : Prop :=
  R.feedbackLoops ∧ R.networkRobustness

theorem regulatory_network_closed_from_evidence (R : RegulatoryNetworkPackage) (E : RegulatoryNetworkEvidence R) :
    RegulatoryNetworkClosed R := by
  exact And.intro E.feedbackLoopsClosed E.networkRobustnessClosed

end DevelopmentalBiologyEvolutionaryDevelopmentalBiologyCanonicalLaneLean
end HautevilleHouse