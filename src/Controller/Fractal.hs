module Controller.Fractal where

import Model.Fractal
import Model.Progression
import View.Fractal

regen :: FractalProgression -> FractalModel -> Double -> Double -> Double -> Double -> Double -> Integer -> IO FractalModel
regen p m w h x y z mi = do
  case m of
    IterFrame _ -> return $ mkIterFrame p w h x y z mi
