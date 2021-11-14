class InputFileOptions {
  String? all_proxy;
  String? all_proxy_passwd;
  String? all_proxy_user;
  String? allow_overwrite;
  String? allow_piece_length_change;
  String? always_resume;
  String? async_dns;
  String? auto_file_renaming;
  String? bt_enable_hook_after_hash_check;
  String? bt_enable_lpd;
  String? bt_exclude_tracker;
  String? bt_external_ip;
  String? bt_force_encryption;
  String? bt_hash_check_seed;
  String? bt_load_saved_metadata;
  String? bt_max_peers;
  String? bt_metadata_only;
  String? bt_min_crypto_level;
  String? bt_prioritize_piece;
  String? bt_remove_unselected_file;
  String? bt_request_peer_speed_limit;
  String? bt_require_crypto;
  String? bt_save_metadata;
  String? bt_seed_unverified;
  String? bt_stop_timeout;
  String? bt_tracker;
  String? bt_tracker_connect_timeout;
  String? bt_tracker_interval;
  String? bt_tracker_timeout;
  String? check_integrity;
  String? checksum;
  String? conditional_get;
  String? connect_timeout;
  String? content_disposition_default_utf8;
  String? continue_;
  String? dir;
  String? dry_run;
  String? enable_http_keep_alive;
  String? enable_http_pipelining;
  String? enable_mmap;
  String? enable_peer_exchange;
  String? file_allocation;
  String? follow_metalink;
  String? follow_torrent;
  String? force_save;
  String? ftp_passwd;
  String? ftp_pasv;
  String? ftp_proxy;
  String? ftp_proxy_passwd;
  String? ftp_proxy_user;
  String? ftp_reuse_connection;
  String? ftp_type;
  String? ftp_user;
  String? gid;
  String? hash_check_only;
  String? header;
  String? http_accept_gzip;
  String? http_auth_challenge;
  String? http_no_cache;
  String? http_passwd;
  String? http_proxy;
  String? http_proxy_passwd;
  String? http_proxy_user;
  String? http_user;
  String? https_proxy;
  String? https_proxy_passwd;
  String? https_proxy_user;
  String? index_out;
  String? lowest_speed_limit;
  String? max_connection_per_server;
  String? max_download_limit;
  String? max_file_not_found;
  String? max_mmap_limit;
  String? max_resume_failure_tries;
  String? max_tries;
  String? max_upload_limit;
  String? metalink_base_uri;
  String? metalink_enable_unique_protocol;
  String? metalink_language;
  String? metalink_location;
  String? metalink_os;
  String? metalink_preferred_protocol;
  String? metalink_version;
  String? min_split_size;
  String? no_file_allocation_limit;
  String? no_netrc;
  String? no_proxy;
  String? out;
  String? parameterized_uri;
  String? pause;
  String? pause_metadata;
  String? piece_length;
  String? proxy_method;
  String? realtime_chunk_checksum;
  String? referer;
  String? remote_time;
  String? remove_control_file;
  String? retry_wait;
  String? reuse_uri;
  String? rpc_save_upload_metadata;
  String? seed_ratio;
  String? seed_time;
  String? select_file;
  String? split;
  String? ssh_host_key_md;
  String? stream_piece_selector;
  String? timeout;
  String? uri_selector;
  String? use_head;
  String? user_agent;

  Map evaluate() {
    return {
      if (all_proxy != null) 'all-proxy': all_proxy,
      if (all_proxy_passwd != null) 'all-proxy-passwd': all_proxy_passwd,
      if (all_proxy_user != null) 'all-proxy_user': all_proxy_user,
      if (allow_overwrite != null) 'allow-overwrite': allow_overwrite,
      if (allow_piece_length_change != null) 'allow-piece-length-change': allow_piece_length_change,
      if (always_resume != null) 'always-resume': always_resume,
      if (async_dns != null) 'async-dns': async_dns,
      if (auto_file_renaming != null) 'auto-file-renaming': auto_file_renaming,
      if (bt_enable_hook_after_hash_check != null) 'bt-enable-hook-after-hash-check': bt_enable_hook_after_hash_check,
      if (bt_enable_lpd != null) 'bt-enable-lpd': bt_enable_lpd,
      if (bt_exclude_tracker != null) 'bt-exclude-tracker': bt_exclude_tracker,
      if (bt_external_ip != null) 'bt-external-ip': bt_external_ip,
      if (bt_force_encryption != null) 'bt-force-encryption': bt_force_encryption,
      if (bt_hash_check_seed != null) 'bt-hash-check_seed': bt_hash_check_seed,
      if (bt_load_saved_metadata != null) 'bt-load-saved-metadata': bt_load_saved_metadata,
      if (bt_max_peers != null) 'bt-max-peers': bt_max_peers,
      if (bt_metadata_only != null) 'bt-metadata-only': bt_metadata_only,
      if (bt_min_crypto_level != null) 'bt-min-crypto-level': bt_min_crypto_level,
      if (bt_prioritize_piece != null) 'bt-prioritize-piece': bt_prioritize_piece,
      if (bt_remove_unselected_file != null) 'bt-remove-unselected-file': bt_remove_unselected_file,
      if (bt_request_peer_speed_limit != null) 'bt_request_peer_speed_limit': bt_request_peer_speed_limit,
      if (bt_require_crypto != null) 'bt_require_crypto': bt_require_crypto,
      if (bt_save_metadata != null) 'bt_save_metadata': bt_save_metadata,
      if (bt_seed_unverified != null) 'bt_seed_unverified': bt_seed_unverified,
      if (bt_stop_timeout != null) 'bt_stop_timeout': bt_stop_timeout,
      if (bt_tracker != null) 'bt_tracker': bt_tracker,
      if (bt_tracker_connect_timeout != null) 'bt_tracker_connect_timeout': bt_tracker_connect_timeout,
      if (bt_tracker_interval != null) 'bt_tracker_interval': bt_tracker_interval,
      if (bt_tracker_timeout != null) 'bt_tracker_timeout': bt_tracker_timeout,
      if (check_integrity != null) 'check_integrity': check_integrity,
      if (checksum != null) 'checksum': checksum,
      if (conditional_get != null) 'conditional_get': conditional_get,
      if (connect_timeout != null) 'connect_timeout': connect_timeout,
      if (content_disposition_default_utf8 != null) 'content_disposition_default_utf8': content_disposition_default_utf8,
      if (continue_ != null) 'continue': continue_,
      if (dir != null) 'dir': dir,
      if (dry_run != null) 'dry_run': dry_run,
      if (enable_http_keep_alive != null) 'enable_http_keep_alive': enable_http_keep_alive,
      if (enable_http_pipelining != null) 'enable_http_pipelining': enable_http_pipelining,
      if (enable_mmap != null) 'enable_mmap': enable_mmap,
      if (enable_peer_exchange != null) 'enable_peer_exchange': enable_peer_exchange,
      if (file_allocation != null) 'file-allocation': file_allocation,
      if (follow_metalink != null) 'follow_metalink': follow_metalink,
      if (follow_torrent != null) 'follow_torrent': follow_torrent,
      if (force_save != null) 'force_save': force_save,
      if (ftp_passwd != null) 'ftp_passwd': ftp_passwd,
      if (ftp_pasv != null) 'ftp_pasv': ftp_pasv,
      if (ftp_proxy != null) 'ftp_proxy': ftp_proxy,
      if (ftp_proxy_passwd != null) 'ftp_proxy_passwd': ftp_proxy_passwd,
      if (ftp_proxy_user != null) 'ftp_proxy_user': ftp_proxy_user,
      if (ftp_reuse_connection != null) 'ftp_reuse_connection': ftp_reuse_connection,
      if (ftp_type != null) 'ftp_type': ftp_type,
      if (ftp_user != null) 'ftp_user': ftp_user,
      if (gid != null) 'gid': gid,
      if (hash_check_only != null) 'hash-check-only': hash_check_only,
      if (header != null) 'header': header,
      if (http_accept_gzip != null) 'http-accept-gzip': http_accept_gzip,
      if (http_auth_challenge != null) 'http-auth-challenge': http_auth_challenge,
      if (http_no_cache != null) 'http-no-cache': http_no_cache,
      if (http_passwd != null) 'http_passwd': http_passwd,
      if (http_proxy != null) 'http_proxy': http_proxy,
      if (http_proxy_passwd != null) 'http_proxy_passwd': http_proxy_passwd,
      if (http_proxy_user != null) 'http_proxy_user': http_proxy_user,
      if (http_user != null) 'http_user': http_user,
      if (https_proxy != null) 'https_proxy': https_proxy,
      if (https_proxy_passwd != null) 'https_proxy_passwd': https_proxy_passwd,
      if (https_proxy_user != null) 'https_proxy_user': https_proxy_user,
      if (index_out != null) 'index_out': index_out,
      if (lowest_speed_limit != null) 'lowest_speed_limit': lowest_speed_limit,
      if (max_connection_per_server != null) 'max-connection-per-server': max_connection_per_server,
      if (max_download_limit != null) 'max_download_limit': max_download_limit,
      if (max_file_not_found != null) 'max_file_not_found': max_file_not_found,
      if (max_mmap_limit != null) 'max_mmap_limit': max_mmap_limit,
      if (max_resume_failure_tries != null) 'max-resume_failure_tries': max_resume_failure_tries,
      if (max_tries != null) 'max-tries': max_tries,
      if (max_upload_limit != null) 'max-upload-limit': max_upload_limit,
      if (metalink_base_uri != null) 'metalink_base_uri': metalink_base_uri,
      if (metalink_enable_unique_protocol != null) 'metalink_enable_unique_protocol': metalink_enable_unique_protocol,
      if (metalink_language != null) 'metalink_language': metalink_language,
      if (metalink_location != null) 'metalink_location': metalink_location,
      if (metalink_os != null) 'metalink_os': metalink_os,
      if (metalink_preferred_protocol != null) 'metalink_preferred_protocol': metalink_preferred_protocol,
      if (metalink_version != null) 'metalink_version': metalink_version,
      if (min_split_size != null) 'min_split_size': min_split_size,
      if (no_file_allocation_limit != null) 'no_file_allocation_limit': no_file_allocation_limit,
      if (no_netrc != null) 'no_netrc': no_netrc,
      if (no_proxy != null) 'no_proxy': no_proxy,
      if (out != null) 'out': out,
      if (parameterized_uri != null) 'parameterized_uri': parameterized_uri,
      if (pause != null) 'pause': pause,
      if (pause_metadata != null) 'pause_metadata': pause_metadata,
      if (piece_length != null) 'piece_length': piece_length,
      if (proxy_method != null) 'proxy_method': proxy_method,
      if (realtime_chunk_checksum != null) 'realtime_chunk_checksum': realtime_chunk_checksum,
      if (referer != null) 'referer': referer,
      if (remote_time != null) 'remote_time': remote_time,
      if (remove_control_file != null) 'remove_control_file': remove_control_file,
      if (retry_wait != null) 'retry_wait': retry_wait,
      if (reuse_uri != null) 'reuse_uri': reuse_uri,
      if (rpc_save_upload_metadata != null) 'rpc_save_upload_metadata': rpc_save_upload_metadata,
      if (seed_ratio != null) 'seed_ratio': seed_ratio,
      if (seed_time != null) 'seed_time': seed_time,
      if (select_file != null) 'select_file': select_file,
      if (split != null) 'split': split,
      if (ssh_host_key_md != null) 'ssh_host_key_md': ssh_host_key_md,
      if (stream_piece_selector != null) 'stream_piece_selector': stream_piece_selector,
      if (timeout != null) 'timeout': timeout,
      if (uri_selector != null) 'uri_selector': uri_selector,
      if (use_head != null) 'use_head': use_head,
      if (user_agent != null) 'user_agent': user_agent,
    };
  }
}

class TellStatusKeys {
  /// GID of the download.
  final gid;

  /// active for currently downloading/seeding downloads. waiting for downloads in the queue; download is not started. paused for paused downloads. error for downloads that were stopped because of error. complete for stopped and completed downloads. removed for the downloads removed by user.
  final status;

  /// Total length of the download in bytes.
  final totalLength;

  /// Completed length of the download in bytes.
  final completedLength;

  /// Uploaded length of the download in bytes.
  final uploadLength;

  /// Hexadecimal representation of the download progress. The highest bit corresponds to the piece at index 0. Any set bits indicate loaded pieces, while unset bits indicate not yet loaded and/or missing pieces. Any overflow bits at the end are set to zero. When the download was not started yet, this key will not be included in the response.
  final bitfield;

  /// Download speed of this download measured in bytes/sec.
  final downloadSpeed;

  /// Upload speed of this download measured in bytes/sec.
  final uploadSpeed;

  /// InfoHash. BitTorrent only.
  final infoHash;

  /// The number of seeders aria2 has connected to. BitTorrent only.
  final numSeeders;

  /// true if the local endpoint is a seeder. Otherwise false. BitTorrent only.
  final seeder;

  /// Piece length in bytes.
  final pieceLength;

  /// The number of pieces.
  final numPieces;

  /// The number of peers/servers aria2 has connected to.
  final connections;

  /// The code of the last error for this item, if any. The value is a string. The error codes are defined in the EXIT STATUS section. This value is only available for stopped/completed downloads.
  final errorCode;

  /// The (hopefully) human readable error message associated to errorCode.
  final errorMessage;

  /// List of GIDs which are generated as the result of this download. For example, when aria2 downloads a Metalink file, it generates downloads described in the Metalink (see the --follow-metalink option). This value is useful to track auto-generated downloads. If there are no such downloads, this key will not be included in the response.
  final followedBy;

  /// The reverse link for followedBy. A download included in followedBy has this object's GID in its following value.
  final following;

  /// GID of a parent download. Some downloads are a part of another download. For example, if a file in a Metalink has BitTorrent resources, the downloads of ".torrent" files are parts of that parent. If this download has no parent, this key will not be included in the response.
  final belongsTo;

  /// Directory to save files.
  final dir;

  /// Returns the list of files. The elements of this list are the same structs used in aria2.getFiles() method.
  final files;

  /// Struct which contains information retrieved from the .torrent (file). BitTorrent only. It contains following keys.
  ///
  /// announceList
  /// List of lists of announce URIs. If the torrent contains announce and no announce-list, announce is converted to the announce-list format.
  ///
  /// comment
  /// The comment of the torrent. comment.utf-8 is used if available.
  ///
  /// creationDate
  /// The creation time of the torrent. The value is an integer since the epoch, measured in seconds.
  ///
  /// mode
  /// File mode of the torrent. The value is either single or multi.
  ///
  /// info
  /// Struct which contains data from Info dictionary. It contains following keys.
  ///
  /// name
  /// name in info dictionary. name.utf-8 is used if available.
  final bittorrent;

  /// The number of verified number of bytes while the files are being hash checked. This key exists only when this download is being hash checked.
  final verifiedLength;

  /// true if this download is waiting for the hash check in a queue. This key exists only when this download is in the queue.
  final verifyIntegrityPending;

  TellStatusKeys({
    this.gid = false,
    this.status = false,
    this.totalLength = false,
    this.completedLength = false,
    this.uploadLength = false,
    this.bitfield = false,
    this.downloadSpeed = false,
    this.uploadSpeed = false,
    this.infoHash = false,
    this.numSeeders = false,
    this.seeder = false,
    this.pieceLength = false,
    this.numPieces = false,
    this.connections = false,
    this.errorCode = false,
    this.errorMessage = false,
    this.followedBy = false,
    this.following = false,
    this.belongsTo = false,
    this.dir = false,
    this.files = false,
    this.bittorrent = false,
    this.verifiedLength = false,
    this.verifyIntegrityPending = false,
  });

  List<String> evaluate() {
    final keys = <String>[];

    if (gid) keys.add('gid');
    if (status) keys.add('status');
    if (totalLength) keys.add('totalLength');
    if (completedLength) keys.add('completedLength');
    if (uploadLength) keys.add('uploadLength');
    if (bitfield) keys.add('bitfield');
    if (downloadSpeed) keys.add('downloadSpeed');
    if (uploadSpeed) keys.add('uploadSpeed');
    if (infoHash) keys.add('infoHash');
    if (numSeeders) keys.add('numSeeders');
    if (seeder) keys.add('seeder');
    if (pieceLength) keys.add('pieceLength');
    if (numPieces) keys.add('numPieces');
    if (connections) keys.add('connections');
    if (errorCode) keys.add('errorCode');
    if (errorMessage) keys.add('errorMessage');
    if (followedBy) keys.add('followedBy');
    if (following) keys.add('following');
    if (belongsTo) keys.add('belongsTo');
    if (dir) keys.add('dir');
    if (files) keys.add('files');
    if (bittorrent) keys.add('bittorrent');
    if (verifiedLength) keys.add('verifiedLength');
    if (verifyIntegrityPending) keys.add('verifyIntegrityPending');

    return keys;
  }
}
