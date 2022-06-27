use_bpm 100

in_thread do
  loop do
    sample :elec_tick, amp: 0.5
    sleep 1
  end
end
in_thread do
  4.times do
    play chord(:A3, :major7), release: 2.5, attack: 0.5, sustain: 9
    sleep 12
    play :B4, release: 2.5, attack: 0.5, sustain: 9
    play chord(:E4, '5'), release: 2.5, attack: 0.5, sustain: 9
    sleep 12
  end
  2.times do
    use_synth :saw
    play chord(:A3, :major7), release: 2.5, attack: 0.5, sustain: 9, amp: 3.5
    sleep 12
    play chord(:A3, '6'), release: 2.5, attack: 0.5, sustain: 9, amp: 3.5
    sleep 12
  end
end
in_thread do
  
  4.times do
    sleep 12
  end
  1.times do
    use_synth :dsaw
    play :E5, release: 2, attack: 0.25
    sleep 3
    play :Fs5, release: 2, attack: 0.25
    sleep 2
    play :Cs5, release: 2, attack: 0.25
    sleep 1
    play :E5, release: 5, attack: 0.25
    sleep 6
    play :B5, release: 5, attack: 0.25
    sleep 6
    play :Ab5, release: 5, attack: 0.25
    sleep 6
    play :E5, release: 2, attack: 0.25
    sleep 3
    play :Fs5, release: 2, attack: 0.25
    sleep 2
    play :Cs5, release: 2, attack: 0.25
    sleep 1
    play :E5, release: 5, attack: 0.25
    sleep 5
    play :B5, release: 2, attack: 0.25
    sleep 1
    play :Ab5, release: 2, attack: 0.25
    sleep 2
    play :E6, release: 2, attack: 0.25
    sleep 1
    play :Cs6, release: 2, attack: 0.25
    sleep 2
    play :Ab6, release: 2, attack: 0.25
    sleep 1
    play :E6, release: 6, attack: 0.25
    sleep 12
  end
  4.times do
    use_synth :subpulse
    play :A2, sustain: 6, release: 5.5
    play :A3, sustain: 6, release: 5.5
    sleep 12
  end
end