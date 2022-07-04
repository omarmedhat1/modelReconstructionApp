import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

class SendImagesCall {
  static Future<ApiCallResponse> call({
    String file1 = '',
    String file2 = '',
    String file3 = '',
    String file4 = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'sendImages',
      apiUrl: '192.168.1.4:8000/img',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'file1': file1,
        'file2': file2,
        'file3': file3,
        'file4': file4,
      },
      bodyType: BodyType.NONE,
      returnBody: true,
    );
  }
}
