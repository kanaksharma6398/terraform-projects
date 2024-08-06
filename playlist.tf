resource "spotify_playlist" "Kanak_Terraform_playlist"{
    name= "Kanak Terraform playlist"
    public = false
    tracks = [
    data.spotify_track.Fireflies.id,
    data.spotify_track.Unwritten.id,
    data.spotify_track.Behappy.id,
  ]
}

data "spotify_track" "Fireflies" {
  url = "https://open.spotify.com/track/3DamFFqW32WihKkTVlwTYQ"
}
data "spotify_track" "Unwritten" {
  url = "https://open.spotify.com/track/3U5JVgI2x4rDyHGObzJfNf"
}
data "spotify_track" "Behappy" {
  url = "https://open.spotify.com/track/4hObp5bmIJ3PP3cKA9K9GY"
} 


resource "spotify_playlist" "Arctic_Monkeys" {
  name        = "My Arctic Monkeys Playlist"

  tracks = flatten([
    data.spotify_search_track.Arctic_Monkeys.tracks[*].id,
  ])
}
data "spotify_search_track" "Arctic_Monkeys" {
  artist = "Arctic Monkeys"
  limit = 20
}