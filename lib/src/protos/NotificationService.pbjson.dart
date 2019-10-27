///
//  Generated code. Do not modify.
//  source: NotificationService.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const IsReadPushType$json = const {
  '1': 'IsReadPushType',
  '2': const [
    const {'1': 'UNKNOWN_IS_READ_PUSH_TYPE', '2': 0},
    const {'1': 'NOT_READ_IS_READ_PUSH_TYPE', '2': 1},
    const {'1': 'READ_IS_READ_PUSH_TYPE', '2': 2},
    const {'1': 'ALL_IS_READ_PUSH_TYPE', '2': 3},
  ],
};

const PostNoticeRequest$json = const {
  '1': 'PostNoticeRequest',
  '2': const [
    const {'1': 'notice', '3': 1, '4': 1, '5': 11, '6': '.Notice', '10': 'notice'},
  ],
};

const GetPushListRequest$json = const {
  '1': 'GetPushListRequest',
  '2': const [
    const {'1': 'is_read_push_type', '3': 1, '4': 1, '5': 14, '6': '.IsReadPushType', '10': 'isReadPushType'},
  ],
};

const ReadPushRequest$json = const {
  '1': 'ReadPushRequest',
  '2': const [
    const {'1': 'push_id', '3': 1, '4': 1, '5': 5, '10': 'pushId'},
  ],
};

const TransmitFCMRequest$json = const {
  '1': 'TransmitFCMRequest',
  '2': const [
    const {'1': 'fcm', '3': 1, '4': 1, '5': 11, '6': '.FCM', '10': 'fcm'},
  ],
};

const Notice$json = const {
  '1': 'Notice',
  '2': const [
    const {'1': 'title', '3': 1, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'content', '3': 2, '4': 1, '5': 9, '10': 'content'},
  ],
};

const Push$json = const {
  '1': 'Push',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    const {'1': 'content', '3': 2, '4': 1, '5': 9, '10': 'content'},
    const {'1': 'is_read', '3': 3, '4': 1, '5': 8, '10': 'isRead'},
    const {'1': 'created_at', '3': 4, '4': 1, '5': 11, '6': '.Datetime', '10': 'createdAt'},
  ],
};

const FCM$json = const {
  '1': 'FCM',
  '2': const [
    const {'1': 'fcm_key', '3': 1, '4': 1, '5': 9, '10': 'fcmKey'},
  ],
};

const PostNoticeResponse$json = const {
  '1': 'PostNoticeResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.CommonResult', '10': 'result'},
  ],
};

const CountNoReadPushResponse$json = const {
  '1': 'CountNoReadPushResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.CommonResult', '10': 'result'},
    const {'1': 'count', '3': 2, '4': 1, '5': 5, '10': 'count'},
  ],
};

const GetPushListResponse$json = const {
  '1': 'GetPushListResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.CommonResult', '10': 'result'},
    const {'1': 'push_list', '3': 2, '4': 3, '5': 11, '6': '.Push', '10': 'pushList'},
  ],
};

const ReadPushResponse$json = const {
  '1': 'ReadPushResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.CommonResult', '10': 'result'},
  ],
};

const TransmitFCMResponse$json = const {
  '1': 'TransmitFCMResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.CommonResult', '10': 'result'},
  ],
};

