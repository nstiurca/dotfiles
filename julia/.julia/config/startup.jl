#if isinteractive()
atreplinit() do repl

    # Numbered prompt
    # https://docs.julialang.org/en/v1/stdlib/REPL/#Numbered-prompt
    @eval import REPL
    if !isdefined(repl, :interface)
        repl.interface = REPL.setup_interface(repl)
    end
    REPL.numbered_prompt!(repl)

    for mod in [:OhMyREPL, :Revise]
        try
            @eval import $mod
            @info "$mod loaded."
        catch e
            @warn "Error initializing $mod" exception=(e, catch_backtrace())
        end
    end

    """ Locate a module's defining .jl file """
    moduleloc_src(mm::Module) = first(functionloc(mm.eval, (Any,)))

    """ Locate the directory defining a module, eg, the one containing a Project.toml file"""
    moduleloc_dir(mm::Module) = begin
	src = pathof(mm)
	isnothing(src) && return nothing
	dir = splitdir(src)[1]
	isfile(joinpath(dir, "Project.toml")) && return dir
	dir = joinpath(dir, "..") |> normpath
	isfile(joinpath(dir, "Project.toml")) && return dir
	return nothing
    end

end

# if !haskey(ENV, "OPENAI_API_KEY")
#     @info "Loading OPENAI_API_KEY from file..."
#     try
#         ENV["OPENAI_API_KEY"] = readchomp(expanduser("~/.openai_api_key"))
#     catch e
#         @warn "Error reading key from file" exception=(e, catch_backtrace())
#     end
# end


# if isfile("Project.toml") && isfile("Manifest.toml")
#     @info "Detected toml files. Activating directory [$(pwd())]."
#     import Pkg
#     Pkg.activate(".")
# end

