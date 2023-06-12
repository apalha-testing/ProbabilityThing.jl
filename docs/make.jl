using ProbabilityThing
using Documenter

DocMeta.setdocmeta!(ProbabilityThing, :DocTestSetup, :(using ProbabilityThing); recursive=true)

makedocs(;
    modules=[ProbabilityThing],
    authors="Artur Palha <artur.palha@gmail.com> and contributors",
    repo="https://github.com/apalha/ProbabilityThing.jl/blob/{commit}{path}#{line}",
    sitename="ProbabilityThing.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://apalha.github.io/ProbabilityThing.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/apalha/ProbabilityThing.jl",
    devbranch="main",
)
