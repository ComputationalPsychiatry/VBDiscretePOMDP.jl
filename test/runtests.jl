using Test
using Aqua
using JET
using VBDiscretePOMDP

@testset verbose = true "VBDiscretePOMDP tests" begin
    @testset "Code linting" begin
        JET.test_package(VBDiscretePOMDP; target_modules = (VBDiscretePOMDP,))
    end

    @testset "Code quality" begin
        Aqua.test_all(
            VBDiscretePOMDP;
            ambiguities = false,
            deps_compat = (check_extras = false,),
        )
    end

    # for name in (
    #     ".." # Add test names here"
    # )
    #     include("testsuite/test_$name.jl")
    # end
end
