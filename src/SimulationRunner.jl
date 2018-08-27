module SimulationRunner

abstract type AbstractSimulation

mutable struct MonteCarloSimulation <: AbstractSimulation
    dyn_parameters::Dict{Symbol,Any}    # passed into dynamics
    sim_parameters::Dict{Symbol,Any}
    dynamics    # fn that mutates state w/ (;state,dyn_parameter...,callback,abort)
    setup       # fn that sets up state between runs (state)
    observables # (state,t)->observables(state,t), see ObservableCollector



end



end # module
