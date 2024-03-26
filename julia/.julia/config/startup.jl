#if isinteractive()
atreplinit() do repl
    #for mod in [:JuliaSyntax, :OhMyREPL, :Revise]
    for mod in [:OhMyREPL, :Revise]
        try
            @eval import $mod
            @info "$mod loaded."
	    mod == :JuliaSyntax && Base.invokelatest(JuliaSyntax.enable_in_core!, true)
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

if !haskey(ENV, "OPENAI_API_KEY")
    @info "Loading OPENAI_API_KEY from file..."
    try
        ENV["OPENAI_API_KEY"] = readchomp(expanduser("~/.openai_api_key"))
    catch e
        @warn "Error reading key from file" exception=(e, catch_backtrace())
    end
end


# if isfile("Project.toml") && isfile("Manifest.toml")
#     @info "Detected toml files. Activating directory [$(pwd())]."
#     import Pkg
#     Pkg.activate(".")
# end

