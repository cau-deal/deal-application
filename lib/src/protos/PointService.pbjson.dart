///
//  Generated code. Do not modify.
//  source: PointService.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const PointAlterReason$json = const {
  '1': 'PointAlterReason',
  '2': const [
    const {'1': 'UNKNOWN_POINT_ALTER_REASON', '2': 0},
    const {'1': 'DEPOSIT', '2': 1},
    const {'1': 'WITHDRAW', '2': 2},
    const {'1': 'COMPLETED_MISSION', '2': 3},
    const {'1': 'REQUEST_MISSION', '2': 4},
    const {'1': 'PLUS_EVENT', '2': 5},
    const {'1': 'MINUS_EVENT', '2': 6},
  ],
};

const DepositType$json = const {
  '1': 'DepositType',
  '2': const [
    const {'1': 'UNKNOWN_DEPOSIT_TYPE', '2': 0},
    const {'1': 'DEPOSIT_WITHOUT_BANKBOOK', '2': 1},
    const {'1': 'KAKAO_PAY', '2': 2},
  ],
};

const DepositResult$json = const {
  '1': 'DepositResult',
  '2': const [
    const {'1': 'UNKNOWN_DEPOSIT_RESULT', '2': 0},
    const {'1': 'SUCCESS_DEPOSIT_RESULT', '2': 1},
    const {'1': 'FAIL_DEPOSIT_RESULT', '2': 2},
  ],
};

const WithdrawResult$json = const {
  '1': 'WithdrawResult',
  '2': const [
    const {'1': 'UNKNOWN_WITHDRAW_RESUTL', '2': 0},
    const {'1': 'SUCCESS_WITHDRAW_RESULT', '2': 1},
    const {'1': 'FAIL_WITHDRAW_RESULT', '2': 2},
  ],
};

const LookUpPointHistoryRequest$json = const {
  '1': 'LookUpPointHistoryRequest',
  '2': const [
    const {'1': 'last_days', '3': 1, '4': 1, '5': 5, '10': 'lastDays'},
  ],
};

const DepositRequest$json = const {
  '1': 'DepositRequest',
  '2': const [
    const {'1': 'deposit', '3': 1, '4': 1, '5': 11, '6': '.Deposit', '10': 'deposit'},
  ],
};

const WithdrawRequest$json = const {
  '1': 'WithdrawRequest',
  '2': const [
    const {'1': 'withdraw', '3': 1, '4': 1, '5': 11, '6': '.Withdraw', '10': 'withdraw'},
  ],
};

const Deposit$json = const {
  '1': 'Deposit',
  '2': const [
    const {'1': 'val', '3': 1, '4': 1, '5': 3, '10': 'val'},
    const {'1': 'deposit_type', '3': 2, '4': 1, '5': 14, '6': '.DepositType', '10': 'depositType'},
  ],
};

const Withdraw$json = const {
  '1': 'Withdraw',
  '2': const [
    const {'1': 'val', '3': 1, '4': 1, '5': 3, '10': 'val'},
  ],
};

const PointHistory$json = const {
  '1': 'PointHistory',
  '2': const [
    const {'1': 'val', '3': 1, '4': 1, '5': 3, '10': 'val'},
    const {'1': 'point_alter_reason', '3': 2, '4': 1, '5': 14, '6': '.PointAlterReason', '10': 'pointAlterReason'},
    const {'1': 'created_at', '3': 3, '4': 1, '5': 11, '6': '.Datetime', '10': 'createdAt'},
  ],
};

const LookUpBalanceResponse$json = const {
  '1': 'LookUpBalanceResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.CommonResult', '10': 'result'},
    const {'1': 'balance', '3': 2, '4': 1, '5': 3, '10': 'balance'},
  ],
};

const LookUpPointHistoryResponse$json = const {
  '1': 'LookUpPointHistoryResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.CommonResult', '10': 'result'},
    const {'1': 'point_histories', '3': 2, '4': 3, '5': 11, '6': '.PointHistory', '10': 'pointHistories'},
  ],
};

const DepositResponse$json = const {
  '1': 'DepositResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.CommonResult', '10': 'result'},
    const {'1': 'deposit_result', '3': 2, '4': 1, '5': 14, '6': '.DepositResult', '10': 'depositResult'},
    const {'1': 'kakaopay_url', '3': 3, '4': 1, '5': 9, '10': 'kakaopayUrl'},
  ],
};

const WithdrawResponse$json = const {
  '1': 'WithdrawResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.CommonResult', '10': 'result'},
    const {'1': 'withdraw_result', '3': 2, '4': 1, '5': 14, '6': '.WithdrawResult', '10': 'withdrawResult'},
  ],
};

const LookUpEarnForADayResponse$json = const {
  '1': 'LookUpEarnForADayResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.CommonResult', '10': 'result'},
    const {'1': 'val', '3': 2, '4': 1, '5': 3, '10': 'val'},
  ],
};

