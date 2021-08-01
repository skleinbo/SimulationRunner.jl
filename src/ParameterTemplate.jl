parameter_template = Dict(
	:global => Dict(
		:ROOT => "",
	),
	:dyn => Dict(
		:fitness => (s, gold, gnew) -> 1.0,
		:T => 0,
		:mu => 0.0,
		:d => 0.0,
		:s => 0.0,
		:N => 0,
		:f => 0.0,
		:constraint => true,
		:prune_period => 0,
		:weight_params => Dict(
			:rCell=>0.5f0/sqrt(1),
			:sigma=>1.5f0/sqrt(1),
			:max_density=>Float32(2pi*1.5^2)
			)
		),
	:simulation => Dict(
		:dynamics => :die_or_proliferate,
		:obs => (s,t)->nothing,
		:sweep => 0,
		:abort => s->false,
		:on_abort => s->@info("Run aborted at $(s.t)"),
		:verbosity => 0,
		:prefix => "",
		:desc => """
		"""
	 )
)
