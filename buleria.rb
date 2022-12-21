use_bpm 240

define :palma_fuerte do
  sample :perc_snap
end

define :palma_debil do
  sample :perc_snap2
end

live_loop :compas do
  palma_fuerte
  sleep 1
  palma_debil
  sleep 0.5
  palma_debil
  sleep 0.5
  palma_debil
  sleep 1
  palma_fuerte
  sleep 1
  palma_fuerte
  sleep 2
  palma_fuerte
  sleep 2
  palma_fuerte
  sleep 1
  palma_debil
  sleep 1
  palma_fuerte
  sleep 2
end

live_loop :improv do
  play_pattern_timed scale(:E4, :phrygian).shuffle.take(12), 0.5
  sleep 6
end

live_loop :cierre do
  sleep 8
  play_pattern_timed scale(:E3, :phrygian).take(4), 1
  sleep 8
  play_pattern_timed scale(:E3, :phrygian).reverse.take(4), 1
end

live_loop :armonia do
  play_pattern_timed [
    choose([chord(:A, :minor), chord(:C, :major)]),
    choose([chord(:G, :major), chord(:E, :minor)]),
    choose([chord(:F, :major), chord(:D, :minor)]),
    chord(:E, :major)
  ], 12
end
