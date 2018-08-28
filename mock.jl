@setup "mysim" begin
    @study_parameter :sp1   itr
    @study_parameter :sp2   itr

    nworker --> Sys.CPU_THREADS
    runs --> 1000
    abort_on --> <map>(s,t)::Bool
    path --> "../../data/test"

    prehook --> <map>
    posthook --> <map>

    @observations begin
        ⋮
    end

    @setup <map>(s,t)
    @dynamics <map>(s;obs_callback=[], abort_on=[], kwargs...)
end
