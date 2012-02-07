import System.Random

threeCoins :: StdGen -> (Bool, Bool, Bool)
threeCoins gen =
    let (fc, newGen)   = random gen
        (sc, newGen')  = random newGen
        (tc, newGen'') = random newGen'
    in (fc, sc, tc)





