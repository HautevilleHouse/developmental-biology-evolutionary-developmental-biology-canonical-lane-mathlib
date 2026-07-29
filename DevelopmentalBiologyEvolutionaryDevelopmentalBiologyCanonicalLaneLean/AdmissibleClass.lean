import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyEvolutionaryDevelopmentalBiologyCanonicalLaneLean

structure DevelopmentalObject where
  system : Type
u
  topology : TopologicalSpace system
  viable : Prop
  stable : Prop
  patternFormation : Prop
  conclusion : patternFormation

structure AdmissibleClass where
  object : DevelopmentalObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DevelopmentalWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DevelopmentalBiologyEvolutionaryDevelopmentalBiologyCanonicalLaneLean
end HautevilleHouse