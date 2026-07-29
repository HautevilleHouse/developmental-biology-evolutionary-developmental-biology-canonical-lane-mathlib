import DevelopmentalBiologyEvolutionaryDevelopmentalBiologyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyEvolutionaryDevelopmentalBiologyCanonicalLaneLean

structure MorphogenesisModelPackage where
  cellAdhesion : Prop
  signalingGradient : Prop
  tissueSheet : Prop
  patternFormation : Prop

structure MorphogenesisModelEvidence (M : MorphogenesisModelPackage) where
  cellAdhesionClosed : M.cellAdhesion
  signalingGradientClosed : M.signalingGradient
  tissueSheetClosed : M.tissueSheet
  patternFormationClosed : M.patternFormation

def MorphogenesisModelClosed (M : MorphogenesisModelPackage) : Prop :=
  M.cellAdhesion ∧ M.signalingGradient ∧ M.tissueSheet ∧ M.patternFormation

theorem morphogenesis_model_closed_from_evidence (M : MorphogenesisModelPackage) (E : MorphogenesisModelEvidence M) :
    MorphogenesisModelClosed M := by
  exact And.intro E.cellAdhesionClosed (And.intro E.signalingGradientClosed (And.intro E.tissueSheetClosed E.patternFormationClosed))

end DevelopmentalBiologyEvolutionaryDevelopmentalBiologyCanonicalLaneLean
end HautevilleHouse