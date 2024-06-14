import 'package:path_provider/path_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'dart:io';
part 'video_provider.g.dart';

@riverpod
class VideoProvider extends _$VideoProvider {
  @override
  Future<List<FileSystemEntity>> build() async {
    Directory? directory = await getExternalStorageDirectory();
    List<FileSystemEntity> files = directory!
        .listSync()
        .where((entity) => entity.path.endsWith('.mp4'))
        .toList();
    return files;
  }
}
