module UnitsToValue

import Unitful: upreferred, @u_str
import PhysicalConstants: CODATA2018

macro with_unit(arg1, arg2)
    arg2 = @eval @u_str $arg2
    return convert(Float64, upreferred(eval(arg1) .* arg2).val)
end
export @with_unit

const gS    = 2.0023193043617
# const μX    = 1e-6 * 1.465 * (1e-21 / c) / h; # for CaOH, in MHz

const c     = CODATA2018.SpeedOfLightInVacuum.val
const h     = CODATA2018.h.val
const ħ     = CODATA2018.ħ.val
const μ_B   = CODATA2018.μ_B.val
const ε_0   = CODATA2018.ε_0.val
const μ_0   = CODATA2018.μ_0.val

export c, gS, μ_B, h, ħ, ε_0, μ_0 #, μX

end
