// Copyright © 2022 IT ENGINEERING MANAGEMENT INC, <https://github.com/team113>
//
// This program is free software: you can redistribute it and/or modify it under
// the terms of the GNU Affero General Public License v3.0 as published by the
// Free Software Foundation, either version 3 of the License, or (at your
// option) any later version.
//
// This program is distributed in the hope that it will be useful, but WITHOUT
// ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
// FOR A PARTICULAR PURPOSE. See the GNU Affero General Public License v3.0 for
// more details.
//
// You should have received a copy of the GNU Affero General Public License v3.0
// along with this program. If not, see
// <https://www.gnu.org/licenses/agpl-3.0.html>.

// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;
import 'dart:typed_data';

import 'package:video_player/video_player.dart';

/// Extension adding [VideoPlayerController] constructor from [Uint8List].
extension VideoPlayerControllerExt on VideoPlayerController {
  /// Creates a [VideoPlayerController] from the provided [bytes].
  static VideoPlayerController bytes(Uint8List bytes) {
    final blob = html.Blob([bytes], 'video');
    final url = html.Url.createObjectUrlFromBlob(blob);
    return VideoPlayerController.network(url);
  }
}
