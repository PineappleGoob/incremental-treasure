if (!audio_is_playing(cavenoise)) {
    // Arguments: sound_index, priority, loop, [gain], [offset], [pitch]
    bgm_instance = audio_play_sound(cavenoise, 100, true);
}