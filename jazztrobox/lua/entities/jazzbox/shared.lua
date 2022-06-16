ENT.type = "anim"
ENT.Base = "base_gmodentity"

ENT.PrintName = "Jazztronauts jukebox"

ENT.Spawnable = true

sound.Add( {
	name = "allspicejazztronauts",
	channel = CHAN_STATIC,
	volume = 1.0,
	level = 80,
	pitch = {0, 0},
	sound = "moosic/sound_jazztronauts_music_events_allspice.mp3"
} )

--messin with tables
Jazz_Songs_jukebox = {
	[1] = "moosic/sound_jazztronauts_music_events_allspice.mp3",
	[2] = "moosic/sound_jazztronauts_music_events_54321.mp3",
	[3] = "moosic/sound_jazztronauts_music_events_band_outro.mp3",
	[4] = "moosic/sound_jazztronauts_music_events_bartender_song.mp3",
	[5] = "moosic/sound_jazztronauts_music_events_bigbang_funk.mp3",
	[6] = "moosic/sound_jazztronauts_music_events_dangersong.mp3",
	[7] = "moosic/sound_jazztronauts_music_events_drumthunder.mp3",
	[8] = "moosic/sound_jazztronauts_music_events_loveaffair.mp3",
	[9] = "moosic/sound_jazztronauts_music_events_pariah.mp3",
	[10] = "moosic/sound_jazztronauts_music_events_pianist_song.mp3",
	[11] = "moosic/sound_jazztronauts_music_events_plumskinzz.mp3",
	[12] = "moosic/sound_jazztronauts_music_events_pocket.mp3",
	[13] = "moosic/sound_jazztronauts_music_events_singer_song.mp3",
	[14] = "moosic/sound_jazztronauts_music_events_warm_song.mp3",
	[15] = "moosic/sound_jazztronauts_music_events_youdiditagain.mp3",
	[16] = "moosic/sound_jazztronauts_music_intermission_music.mp3",
	[17] = "moosic/sound_jazztronauts_music_que_chevere_travel.mp3",
	[18] = "moosic/trash_chute_music_loop.wav",
	[19] = "moosic/quecheverefull.mp3",
	[20] = "moosic/sound_jazztronauts_music_lastheist.mp3",
}


		
