live_loop :notes do
  play_pattern_timed [:A, :G, :E], 0.5
end

live_loop :beats do
  sample :bd_haus, rate: 5
  sleep 1
  sample :bd_haus, rate: 5
  sleep 0.5
end

live_loop :chords do
  play chord(:A, :minor), release: 1
  play_pattern_timed chord(:C3, :major), 0.5
  sleep 1.5
  play chord(:G, :major), release: 1
  play_pattern_timed chord(:E3, :minor), 0.5
  sleep 1.5
  play chord(:F, :major), release: 1
  play_pattern_timed chord(:D3, :minor), 0.5
  sleep 1.5
  play chord(:E, :major), release: 1
  play_pattern_timed chord(:E3, :major), 0.5
  sleep 1.5
end