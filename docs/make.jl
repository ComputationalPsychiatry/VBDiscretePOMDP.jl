using Documenter

open(joinpath(joinpath(@__DIR__, "src"), "index.md"), "w") do io
    println(
        io,
        """
```@meta
        EditURL = "https://github.com/ComputationalPsychiatry/VBDiscretePOMDP.jl/blob/main/README.md"
```
        """,
    )
    for line in eachline(joinpath(dirname(@__DIR__), "README.md"))
        println(io, line)
    end
end

pages = [
    "Home" => "index.md",
]

fmt = Documenter.HTML(;
    prettyurls=get(ENV, "CI", "false") == "true",
    repolink="https://github.com/ComputationalPsychiatry/VBDiscretePOMDP.jl",
    canonical="https://ComputationalPsychiatry.github.io/VBDiscretePOMDP.jl",
    assets=String[],
    collapselevel=1,
    description="A Julia package for VBDiscretePOMDP",
)

makedocs(;
    sitename="VBDiscretePOMDP.jl",
    authors="Your Name",
    format=fmt,
    pages=pages,
    pagesonly=true,
)

deploydocs(;
    repo="github.com/ComputationalPsychiatry/VBDiscretePOMDP.jl.git",
    devbranch="main",
)