import DevelopmentalBiologyEvolutionaryDevelopmentalBiologyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyEvolutionaryDevelopmentalBiologyCanonicalLaneLean

structure PopulationDynamicsPackage where
  reproductionRate : ℝ
  carryingCapacity : ℝ
  steadyState : ℝ
  logisticGrowthModel : Prop
  steadyStateStable : Prop

structure PopulationDynamicsEvidence (P : PopulationDynamicsPackage) where
  logisticGrowthModelClosed : P.logisticGrowthModel
  steadyStateStableClosed : P.steadyStateStable

def PopulationDynamicsClosed (P : PopulationDynamicsPackage) : Prop :=
  P.logisticGrowthModel ∧ P.steadyStateStable

theorem population_dynamics_closed_from_evidence (P : PopulationDynamicsPackage) (E : PopulationDynamicsEvidence P) :
    PopulationDynamicsClosed P := by
  exact And.intro E.logisticGrowthModelClosed E.steadyStateStableClosed

end DevelopmentalBiologyEvolutionaryDevelopmentalBiologyCanonicalLaneLean
end HautevilleHouse