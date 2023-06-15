using Documenter, DiffEqOperators

cp("./docs/Manifest.toml", "./docs/src/assets/Manifest.toml", force = true)
cp("./docs/Project.toml", "./docs/src/assets/Project.toml", force = true)

include("pages.jl")

makedocs(sitename = "DiffEqOperators.jl",
         authors = "Chris Rackauckas et al.",
         clean = true,
         doctest = false,
         modules = [DiffEqOperators],
         format = Documenter.HTML(analytics = "UA-90474609-3",
                                  assets = ["assets/favicon.ico"],
                                  canonical = "https://docs.sciml.ai/DiffEqOperators/stable/"),
         pages = pages)

deploydocs(repo = "github.com/SciML/DiffEqOperators.jl";
           push_preview = true)
