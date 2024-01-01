using ttjl
using Documenter

DocMeta.setdocmeta!(ttjl, :DocTestSetup, :(using ttjl); recursive=true)

makedocs(;
    modules=[ttjl],
    authors="Tretyak0ID",
    repo="https://github.com/Tretyak0ID/ttjl.jl/blob/{commit}{path}#{line}",
    sitename="ttjl.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://Tretyak0ID.github.io/ttjl.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/Tretyak0ID/ttjl.jl",
    devbranch="main",
)
