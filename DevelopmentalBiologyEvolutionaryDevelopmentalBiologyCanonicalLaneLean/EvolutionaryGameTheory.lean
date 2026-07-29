import DevelopmentalBiologyEvolutionaryDevelopmentalBiologyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyEvolutionaryDevelopmentalBiologyCanonicalLaneLean

structure EvolutionaryGameTheoryPackage where
  payoffMatrix : ℝ → ℝ → ℝ
  replicatorDynamics : Prop
  evolutionaryStableState : ℝ
  essStability : Prop

structure EvolutionaryGameTheoryEvidence (G : EvolutionaryGameTheoryPackage) where
  replicatorDynamicsClosed : G.replicatorDynamics
  essStabilityClosed : G.essStability

def EvolutionaryGameTheoryClosed (G : EvolutionaryGameTheoryPackage) : Prop :=
  G.replicatorDynamics ∧ G.essStability

theorem evolutionary_game_theory_closed_from_evidence (G : EvolutionaryGameTheoryPackage) (E : EvolutionaryGameTheoryEvidence G) :
    EvolutionaryGameTheoryClosed G := by
  exact And.intro E.replicatorDynamicsClosed E.essStabilityClosed

end DevelopmentalBiologyEvolutionaryDevelopmentalBiologyCanonicalLaneLean
end HautevilleHouse