using Documenter, CuthillMcKee

makedocs(;
    modules=[CuthillMcKee],
    format=Documenter.HTML(),
    pages=[
        "Home" => "index.md",
    ],
    repo="https://github.com/rleegates/CuthillMcKee.jl/blob/{commit}{path}#L{line}",
    sitename="CuthillMcKee.jl",
    authors="Robert Lee Gates (robert.gates@gmail.com)",
    assets=[],
)

deploydocs(;
    repo="github.com/rleegates/CuthillMcKee.jl",
)
