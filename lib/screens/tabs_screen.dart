import 'package:flutter/material.dart';
import 'package:melody_music/screens/now_playing_screen.dart';
import 'package:melody_music/cards/artist_card.dart';
import 'package:melody_music/cards/genre_card.dart';
import 'package:melody_music/cards/playlist_card.dart';
import 'package:melody_music/cards/album_card.dart';
import 'package:melody_music/cards/track_card.dart';
import 'package:melody_music/cards/folder_card.dart';
import 'package:melody_music/screens/sidebar_menu.dart';

class TabsScreen extends StatelessWidget {
  const TabsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        backgroundColor: Color(0xFF232323),
        drawer: SidebarMenu(),
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('Mello-D Music'),
          bottom: TabBar(
            isScrollable: true,
            tabs: [
              Tab(text: 'Tracks'),
              Tab(text: 'Albums'),
              Tab(text: 'Favorites'),
              Tab(text: 'Playlists'),
              Tab(text: 'Artists'),
              Tab(text: 'Genres'),
              Tab(text: 'Folders')
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ListView(
              children: [
                TrackCard(),
                TrackCard(),
                TrackCard(),
                TrackCard(),
                TrackCard(),
                TrackCard(),
                TrackCard(),
                TrackCard(),
                TrackCard(),
                TrackCard(),
                TrackCard(),
                TrackCard(),
              ],
            ),
            ListView(
              children: [
                Wrap(
                  children: [
                    AlbumCard(),
                    AlbumCard(),
                    AlbumCard(),
                    AlbumCard(),
                    AlbumCard(),
                    AlbumCard(),
                    AlbumCard(),
                    AlbumCard(),
                    AlbumCard(),
                    AlbumCard(),
                    AlbumCard(),
                    AlbumCard(),
                    AlbumCard(),
                    AlbumCard(),
                    AlbumCard(),
                  ],
                ),
              ],
            ),
            Placeholder(),
            ListView(
              children: [
                PlaylistCard(),
                PlaylistCard(),
                PlaylistCard(),
              ],
            ),
            ListView(
              children: [
                Wrap(
                  children: [
                    ArtistCard(),
                    ArtistCard(),
                    ArtistCard(),
                    ArtistCard(),
                  ],
                )
              ],
            ),
            ListView(
              children: [
                Wrap(
                  children: [
                    GenreCard(),
                    GenreCard(),
                    GenreCard(),
                  ],
                ),
              ],
            ),
            ListView(
              children: [
                FolderCard(),
                FolderCard(),
                FolderCard(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
