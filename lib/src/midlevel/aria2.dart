import 'dart:async';

import 'package:aria2_rpc/aria2_rpc_lowlevel.dart';

extension Aria2QuickFunctions on Aria2 {
  Future<Aria2Op> startOp(String uri, {InputFileOptions? options, int? position, Function(Aria2OpStatus)? onUpdate, Function(Aria2OpStatus)? onDone, Duration? checkInterval}) async {
    final gid = (await addUri([uri], options, position))['result'];
    return Aria2Op(this, gid, onUpdate, onDone, checkInterval ?? Duration(seconds: 1));
  }
}

class Aria2Op {
  final Aria2 aria2;
  final String gid;
  final Function(Aria2OpStatus)? onUpdate;
  final Function(Aria2OpStatus)? onDone;
  final Duration checkInterval;

  Aria2Op(this.aria2, this.gid, this.onUpdate, this.onDone, this.checkInterval) {
    Timer.periodic(checkInterval, (timer) async {
      final info = await quickInfo();
      onUpdate??(info);
      if (info.status == 'completed' || info.status == 'error' || info.status == 'removed' || info.progress >= 1) {
        timer.cancel();
        onDone??(info);
      }
    });
  }

  Future<Map<String, dynamic>> tellStatus([TellStatusKeys? keys]) => aria2.tellStatus(gid, keys);

  Future<Aria2OpStatus> quickInfo() async => Aria2OpStatus.fromMap(await aria2.tellStatus(
      gid,
      TellStatusKeys(
        status: true,
        downloadSpeed: true,
        completedLength: true,
        totalLength: true,
      )));

  Future pause() => aria2.pause(gid);
  Future unpause() => aria2.unpause(gid);
  Future cancel() => aria2.remove(gid);
}

class Aria2OpStatus {
  final String status;
  final int downloadSpeed;
  final int completedLength;
  final int totalLength;
  late double progress;

  Aria2OpStatus(this.status, this.downloadSpeed, this.completedLength, this.totalLength) {
    progress = completedLength / totalLength;
  }

  Aria2OpStatus.fromMap(Map<String, dynamic> map)
      : status = map['status'],
        downloadSpeed = int.parse(map['downloadSpeed']),
        completedLength = int.parse(map['completedLength']),
        totalLength = int.parse(map['totalLength']) {
    progress = completedLength / totalLength;
  }

  bool isCanceledOrError () => status == 'error' || status == 'removed';
}
