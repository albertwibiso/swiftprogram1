import SwiftUI

struct AlbumDetail: View {
	var album: Album

	var body: some View {
		List(album.songs) { song in 
			HStack {
				Image(album.cover)
				VStack(alignment: .leading) {
					Text(song.title)
					Text(song.artist.name)
						.foregroundStyle(.secondary)
				}
			}
		}
	}
}