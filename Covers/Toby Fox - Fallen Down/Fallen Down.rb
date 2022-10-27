# Toby Fox - Fallen Down
#
# Alex Chimi
# Oct 2022
# tiktok:

use_bpm 110

# function definition of chord
define :arpeggio do |root, third|
  release = 1
  amplitude = 0.5
  use_synth :saw
  play root, amp: amplitude
  sleep 0.5
  play root+third, amp: amplitude
  sleep 0.5
  play root+7, amp: amplitude
  sleep 0.5
  play root+third, amp: amplitude
  sleep 0.5
  play root+7, amp: amplitude
  sleep 0.5
  play root+third, amp: amplitude
  sleep 0.5
end

define :shortarpeggio do |root,third|
  use_synth :saw
  amplitude = 0.5
  
  play root, amp: amplitude
  sleep 0.5
  play root+third, amp: amplitude
  sleep 0.5
  play root+7, amp: amplitude
  sleep 0.5
end

# main accompaniment
in_thread do
  3.times do
    # D
    2.times do
      arpeggio :D4, 4
    end
    # B
    2.times do
      arpeggio :B3, 4
    end
    # G
    arpeggio :G3, 4
    # Gm
    arpeggio :G3, 3
    # D
    arpeggio :D4, 4
    # A
    arpeggio :A3, 4
  end
  # outro
  # D
  2.times do
    arpeggio :D4, 4
  end
  # B
  2.times do
    arpeggio :B3, 4
  end
  # G
  arpeggio :G3, 4
  # Gm
  arpeggio :G3, 3
  # D
  2.times do
    arpeggio :D4, 4
  end
  2.times do
    arpeggio :D4, 4
  end
  # B
  shortarpeggio :B3, 4
end



# main melody
in_thread do
  amplitude = 0.5
  use_synth :saw
  
  3.times do
    6.times do
      play :Fs5, release: 1, amp: amplitude
      sleep 0.5
      play :Cs5, release: 1, amp: amplitude
      sleep 0.5
    end
    play :B4, release: 1, amp: amplitude
    sleep 0.5
    play :A4, release: 1, amp: amplitude
    sleep 0.5
    play :Cs5, release: 1, amp: amplitude
    sleep 1
    play :A4, release: 1, amp: amplitude
    sleep 0.5
    play :B4, release: 1, amp: amplitude
    sleep 0.5
    play :E5, release: 1, amp: amplitude
    sleep 0.5
    play :Ds5, release: 1, amp: amplitude
    sleep 0.5
    play :E5, release: 1, amp: amplitude
    sleep 0.5
    play :Fs5, release: 1, amp: amplitude
    sleep 0.5
    play :Ds5, release: 1, amp: amplitude
    sleep 0.5
    play :B4, release: 1, amp: amplitude
    sleep 0.5
    3.times do
      play :Fs5, release: 1, amp: amplitude
      sleep 0.5
      play :B4, release: 1, amp: amplitude
      sleep 0.5
    end
    2.times do
      play :Fs5, release: 1, amp: amplitude
      sleep 0.5
      play :As4, release: 1, amp: amplitude
      sleep 0.5
    end
    play :G5, release: 1, amp: amplitude
    sleep 1
    play :Fs5, release: 1, amp: amplitude
    sleep 0.5
    play :D5, release: 1, amp: amplitude
    sleep 0.5
    play :Fs5, release: 1, amp: amplitude
    sleep 0.5
    play :D5, release: 1, amp: amplitude
    sleep 0.5
    play :E5, release: 1, amp: amplitude
    sleep 0.5
    play :Fs5, release: 1, amp: amplitude
    sleep 0.5
    play :E5, release: 1, amp: amplitude
    sleep 1
    play :D5, release: 1, amp: amplitude
    sleep 1
    play :Cs5, release: 1, amp: amplitude
    sleep 1
  end
  # outro
  6.times do
    play :Fs5, release: 1, amp: amplitude
    sleep 0.5
    play :Cs5, release: 1, amp: amplitude
    sleep 0.5
  end
  play :B4, release: 1, amp: amplitude
  sleep 0.5
  play :A4, release: 1, amp: amplitude
  sleep 0.5
  play :Cs5, release: 1, amp: amplitude
  sleep 1
  play :A4, release: 1, amp: amplitude
  sleep 0.5
  play :B4, release: 1, amp: amplitude
  sleep 0.5
  play :E5, release: 1, amp: amplitude
  sleep 0.5
  play :Ds5, release: 1, amp: amplitude
  sleep 0.5
  play :E5, release: 1, amp: amplitude
  sleep 0.5
  play :Fs5, release: 1, amp: amplitude
  sleep 0.5
  play :Ds5, release: 1, amp: amplitude
  sleep 0.5
  play :B4, release: 1, amp: amplitude
  sleep 0.5
  3.times do
    play :Fs5, release: 1, amp: amplitude
    sleep 0.5
    play :B4, release: 1, amp: amplitude
    sleep 0.5
  end
  2.times do
    play :Fs5, release: 1, amp: amplitude
    sleep 0.5
    play :As4, release: 1, amp: amplitude
    sleep 0.5
  end
  play :G5, release: 1, amp: amplitude
  sleep 1
  play :Fs5, release: 1, amp: amplitude
  sleep 0.5
  play :D5, release: 1, amp: amplitude
  sleep 0.5
  play :Fs5, release: 1, amp: amplitude
  sleep 0.5
  play :D5, release: 1, amp: amplitude
  sleep 0.5
  play :E5, release: 1, amp: amplitude
  sleep 0.5
  play :Fs5, release: 1, amp: amplitude
  sleep 0.5
  play :Cs5, release: 1, amp: amplitude
  sleep 1
  play :Fs5, release: 1, amp: amplitude
  sleep 1
  play :Cs5, release: 1, amp: amplitude
  sleep 1
  6.times do
    play :Fs5, release: 1, amp: amplitude
    sleep 0.5
    play :Cs5, release: 1, amp: amplitude
    sleep 0.5
  end
  play :B4, release: 1, amp: amplitude
  sleep 0.5
  play :A4, release: 1, amp: amplitude
  sleep 0.5
  play :Cs5, release: 1, amp: amplitude
  sleep 1
end

# bass
in_thread do
  use_synth :organ_tonewheel
  amplitude = 2
  
  # silence
  15.times do
    sleep 3
  end
  sleep 2
  
  #first loop
  play :Cs3, release: 1, amp: amplitude
  sleep 1
  play :D3, release: 1.5, amp: amplitude
  sleep 1.5
  play :D2, release: 1.5, amp: amplitude
  sleep 1.5
  play :A2, release: 2, amp: amplitude
  sleep 2
  play :Cs3, release: 1, amp: amplitude
  sleep 1
  play :B2, release: 3, amp: amplitude
  sleep 3
  play :Fs2, release: 3, amp: amplitude
  sleep 3
  play :G2, release: 1, amp: amplitude
  sleep 1
  play :D3, release: 2, amp: amplitude
  sleep 2
  play :D3, release: 1, amp: amplitude
  sleep 1
  play :Bb2, release: 2, amp: amplitude
  sleep 2
  play :A2, release: 4, amp: amplitude
  sleep 4
  play :G2, release: 1, amp: amplitude
  sleep 1
  play :Cs3, release: 1, amp: amplitude
  sleep 1
  #second loop
  play :D3, release: 1.5, amp: amplitude
  sleep 1.5
  play :D2, release: 1.5, amp: amplitude
  sleep 1.5
  play :A2, release: 2, amp: amplitude
  sleep 2
  play :Cs3, release: 1, amp: amplitude
  sleep 1
  play :B2, release: 3, amp: amplitude
  sleep 3
  play :Fs2, release: 3, amp: amplitude
  sleep 3
  play :G2, release: 1, amp: amplitude
  sleep 1
  play :D3, release: 2, amp: amplitude
  sleep 2
  play :D3, release: 1, amp: amplitude
  sleep 1
  play :Bb2, release: 2, amp: amplitude
  sleep 2
  play :D2, release: 5, amp: amplitude
  sleep 5
  play :A2, release: 1, amp: amplitude
  sleep 1
  
end

# pad
in_thread do
  amplitude = 5
  use_synth :dark_ambience
  
  # silence
  16.times do
    sleep 3
  end
  
  play :D5, release: 3.5, amp: amplitude
  sleep 1.5
  play :D4, release: 3.5, amp: amplitude
  sleep 1.5
  play :A4, release: 4, amp: amplitude
  sleep 2
  play :Cs5, release: 3, amp: amplitude
  sleep 1
  play :B4, release: 5, amp: amplitude
  sleep 3
  play :Fs4, release: 5, amp: amplitude
  sleep 3
  play :G4, release: 3, amp: amplitude
  sleep 1
  play :D5, release: 4, amp: amplitude
  sleep 2
  play :D5, release: 3, amp: amplitude
  sleep 1
  play :Bb4, release: 4, amp: amplitude
  sleep 2
  play :A4, release: 6, amp: amplitude
  sleep 4
  play :G4, release: 3, amp: amplitude
  sleep 1
  play :Cs5, release: 3, amp: amplitude
  sleep 1
  play :D5, release: 3.5, amp: amplitude
  sleep 1.5
  play :D4, release: 3.5, amp: amplitude
  sleep 1.5
  play :A4, release: 4, amp: amplitude
  sleep 2
  play :Cs5, release: 3, amp: amplitude
  sleep 1
  play :B4, release: 5, amp: amplitude
  sleep 3
  play :Fs4, release: 5, amp: amplitude
  sleep 3
  play :G4, release: 3, amp: amplitude
  sleep 1
  play :D5, release: 4, amp: amplitude
  sleep 2
  play :D5, release: 3, amp: amplitude
  sleep 1
  play :Bb4, release: 4, amp: amplitude
  sleep 2
  play :A4, release: 6, amp: amplitude
  sleep 6
  
end





