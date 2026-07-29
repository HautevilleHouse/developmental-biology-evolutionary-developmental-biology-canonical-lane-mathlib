import DevelopmentalBiologyEvolutionaryDevelopmentalBiologyCanonicalLaneLean.AdmissibleClass
import DevelopmentalBiologyEvolutionaryDevelopmentalBiologyCanonicalLaneLean.PopulationDynamics
import DevelopmentalBiologyEvolutionaryDevelopmentalBiologyCanonicalLaneLean.EvolutionaryGameTheory
import DevelopmentalBiologyEvolutionaryDevelopmentalBiologyCanonicalLaneLean.RegulatoryNetwork
import DevelopmentalBiologyEvolutionaryDevelopmentalBiologyCanonicalLaneLean.MorphogenesisModel

namespace HautevilleHouse
namespace DevelopmentalBiologyEvolutionaryDevelopmentalBiologyCanonicalLaneLean

structure DevelopmentalFoundation where
  population : PopulationDynamicsPackage
  gameTheory : EvolutionaryGameTheoryPackage
  network : RegulatoryNetworkPackage
  morphogenesis : MorphogenesisModelPackage
  populationEvidence : PopulationDynamicsEvidence population
  gameTheoryEvidence : EvolutionaryGameTheoryEvidence gameTheory
  networkEvidence : RegulatoryNetworkEvidence network
  morphogenesisEvidence : MorphogenesisModelEvidence morphogenesis

def DevelopmentalFoundationClosed (F : DevelopmentalFoundation) : Prop :=
  PopulationDynamicsClosed F.population ∧
  EvolutionaryGameTheoryClosed F.gameTheory ∧
  RegulatoryNetworkClosed F.network ∧
  MorphogenesisModelClosed F.morphogenesis

theorem developmental_foundation_closed_from_evidence (F : DevelopmentalFoundation) :
    DevelopmentalFoundationClosed F := by
  exact And.intro (population_dynamics_closed_from_evidence F.population F.populationEvidence)
    (And.intro (evolutionary_game_theory_closed_from_evidence F.gameTheory F.gameTheoryEvidence)
      (And.intro (regulatory_network_closed_from_evidence F.network F.networkEvidence)
        (morphogenesis_model_closed_from_evidence F.morphogenesis F.morphogenesisEvidence)))

structure DevelopmentalRoute (A : AdmissibleClass) where
  foundation : DevelopmentalFoundation
  foundationClosed : DevelopmentalFoundationClosed foundation
  bridgeClosedFromRoute : bridgeClosed A
  gateClosedFromRoute : gateClosed A

theorem developmental_route_yields_constrained_closure (A : AdmissibleClass) (R : DevelopmentalRoute A) :
    ConstrainedDevelopmentalClosure A := by
  exact And.intro R.bridgeClosedFromRoute R.gateClosedFromRoute

end DevelopmentalBiologyEvolutionaryDevelopmentalBiologyCanonicalLaneLean
end HautevilleHouse