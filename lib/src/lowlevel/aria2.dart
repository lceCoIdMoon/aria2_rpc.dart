import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'dart:typed_data';

import 'package:web_socket_channel/web_socket_channel.dart';

import 'options.dart';

import 'package:json_rpc_2/json_rpc_2.dart';

const aria2Path = 'aria2c.exe';
const requestBase = {
  'jsonrpc': '2.0',
};

class Aria2 {
  final WebSocketChannel socket;
  final Client client;
  final String secret;

  final _inController = StreamController<Map<String, dynamic>>.broadcast();

  Aria2._(this.socket, this.client, this.secret, bool listenStdin) {
    if (listenStdin) {
      stdin.transform(Utf8Decoder()).transform(LineSplitter()).listen((event) {
        final params = event.split(' ');
        _call(params.first, params.sublist(1));
      });
    }
  }

  static Aria2 create({String host = 'localhost', String port = '6800', required String secret, bool listenStdin = false}) {
    final socket = WebSocketChannel.connect(Uri.parse('ws://$host:$port/jsonrpc'));
    final client = Client(socket.cast<String>());
    client.listen();

    return Aria2._(socket, client, secret, listenStdin);
  }

  Future<Map<String, dynamic>> _call(String method, [List<dynamic>? params]) async {
    final result = await client.sendRequest(
      method,
      params == null
          ? {'token:$secret'}
          : (params
            ..removeWhere((e) => e == null)
            ..insert(0, 'token:$secret')),
    );
    return result is Map ? result.cast<String, dynamic>() : <String, dynamic>{'result': result};
  }

  // #region Add Methods

  Future<Map<String, dynamic>> addUri(List<String> uris, [InputFileOptions? options, int? position]) => _call(
        'aria2.addUri',
        [
          uris,
          options != null ? options.evaluate() : null,
          position,
        ],
      );

  Future<Map<String, dynamic>> addTorrent(Uint8List torrent, [List<String>? uris, InputFileOptions? options, int? position]) => _call(
        'aria2.addTorrent',
        [
          base64.encode(torrent),
          uris,
          options != null ? options.evaluate() : null,
          position,
        ],
      );

  Future<Map<String, dynamic>> addMetalink(Uint8List metalink, [InputFileOptions? options, int? position]) => _call(
        'aria2.addMetalink',
        [
          base64.encode(metalink),
          options != null ? options.evaluate() : null,
          position,
        ],
      );

  // #endregion

  // #region Operation Specific

  Future<Map<String, dynamic>> remove(String gid) => _call(
        'aria2.remove',
        [
          gid,
        ],
      );

  Future<Map<String, dynamic>> forceRemove(String gid) => _call(
        'aria2.forceRemove',
        [
          gid,
        ],
      );

  Future<Map<String, dynamic>> pause(String gid) => _call(
        'aria2.pause',
        [
          gid,
        ],
      );

  Future<Map<String, dynamic>> pauseAll() => _call(
        'aria2.pauseAll',
        [],
      );

  Future<Map<String, dynamic>> forcePause(String gid) => _call(
        'aria2.forcePause',
        [
          gid,
        ],
      );

  Future<Map<String, dynamic>> forcePauseAll() => _call(
        'aria2.forcePauseAll',
        [],
      );

  Future<Map<String, dynamic>> unpause(String gid) => _call(
        'aria2.unpause',
        [
          gid,
        ],
      );

  Future<Map<String, dynamic>> unpauseAll() => _call(
        'aria2.unpauseAll',
        [],
      );

  Future<Map<String, dynamic>> tellStatus(String gid, [TellStatusKeys? keys]) => _call(
        'aria2.tellStatus',
        [
          gid,
          keys != null ? keys.evaluate() : null,
        ],
      );

  Future<Map<String, dynamic>> getUris(String gid) => _call(
        'aria2.getUris',
        [
          gid,
        ],
      );

  Future<Map<String, dynamic>> getFiles(String gid) => _call(
        'aria2.getFiles',
        [
          gid,
        ],
      );

  Future<Map<String, dynamic>> getPeers(String gid) => _call(
        'aria2.getPeers',
        [
          gid,
        ],
      );

  Future<Map<String, dynamic>> getServers(String gid) => _call(
        'aria2.getServers',
        [
          gid,
        ],
      );

  // TODO: make how an enum
  Future<Map<String, dynamic>> changePosition(String gid, int position, String how) => _call(
        'aria2.changePosition',
        [
          gid,
          position,
          how,
        ],
      );

  Future<Map<String, dynamic>> changeUri(String gid, int fileIndex, List<String> delUris, List<String> addUris, [int? position]) => _call(
        'aria2.changeUri',
        [
          gid,
          fileIndex,
          delUris,
          addUris,
          position,
        ],
      );

  Future<Map<String, dynamic>> getOption(String gid) => _call(
        'aria2.getOption',
        [
          gid,
        ],
      );

  Future<Map<String, dynamic>> changeOption(String gid, InputFileOptions options) => _call(
        'aria2.changeOption',
        [
          gid,
          options,
        ],
      );

  Future<Map<String, dynamic>> changeGlobalOption(InputFileOptions options) => _call(
        'aria2.changeGlobalOption',
        [
          options,
        ],
      );

  Future<Map<String, dynamic>> purgeDownloadResult() => _call(
        'aria2.purgeDownloadResult',
        [],
      );

  Future<Map<String, dynamic>> removeDownloadResult(String gid) => _call(
        'aria2.removeDownloadResult',
        [
          gid,
        ],
      );

  // #endregion

  // #region Event Requests

  Future<Map<String, dynamic>> tellActive([List<String>? keys]) => _call(
        'aria2.tellActive',
        [
          keys,
        ],
      );

  Future<Map<String, dynamic>> tellWaiting(int offset, int num_, [List<String>? keys]) => _call(
        'aria2.tellWaiting',
        [
          offset,
          num_,
          keys,
        ],
      );

  Future<Map<String, dynamic>> tellStopped(int offset, int num_, [List<String>? keys]) => _call(
        'aria2.tellStopped',
        [
          offset,
          num_,
          keys,
        ],
      );

  // #endregion

  // #region Info & Session

  Future<Map<String, dynamic>> getGlobalStat() => _call(
        'aria2.getGlobalStat',
        [],
      );

  Future<Map<String, dynamic>> getVersion() => _call(
        'aria2.getVersion',
        [],
      );

  Future<Map<String, dynamic>> getSessionInfo() => _call(
        'aria2.getSessionInfo',
        [],
      );

  Future<Map<String, dynamic>> shutdown() => _call(
        'aria2.shutdown',
        [],
      );

  Future<Map<String, dynamic>> forceShutdown() => _call(
        'aria2.forceShutdown',
        [],
      );

  Future<Map<String, dynamic>> saveSession() => _call(
        'aria2.saveSession',
        [],
      );

  // #endregion
}

const _chars = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
Random _rnd = Random();
String _getRandomString(int length) => String.fromCharCodes(Iterable.generate(length, (_) => _chars.codeUnitAt(_rnd.nextInt(_chars.length))));
