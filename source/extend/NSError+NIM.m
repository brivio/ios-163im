#import "NSError+NIM.h"
#import "NIMGlobalDefs.h"

@implementation NSError (NIM)
- (NSString *)getNIMErrorInfo {
    switch (self.code) {
        case NIMLocalErrorCodeInvalidParam :
            return @"错误的参数";
        case NIMLocalErrorCodeInvalidMedia:
            return @"多媒体文件异常";
        case NIMLocalErrorCodeInvalidPicture:
            return @"图片异常";
        case NIMLocalErrorCodeInvalidUrl:
            return @"url异常";
        case NIMLocalErrorCodeIOError:
            return @"读取/写入文件失败";
        case NIMLocalErrorCodeInvalidToken:
            return @"无效的token";
        case NIMLocalErrorCodeHttpReqeustFailed:
            return @"Http请求失败";
        case NIMLocalErrorCodeAudioRecordErrorNoPermission:
            return @"无录音权限";
        case NIMLocalErrorCodeAudioRecordErrorInitFailed:
            return @"录音初始化失败";
        case NIMLocalErrorCodeAudioRecordErrorRecordFailed:
            return @"录音失败";
        case NIMLocalErrorCodeAudioPlayErrorInitFailed:
            return @"播放初始化失败";
        case NIMLocalErrorCodeNetCallBusy:
            return @"有正在进行的网络通话";
        case NIMLocalErrorCodeNetCallOtherHandled:
            return @"这一通网络通话已经被其他端处理过了";
        case NIMLocalErrorCodeSQLFailed:
            return @"SQL语句执行失败";
        case NIMLocalErrorCodeAudioDeviceInitFailed:
            return @"音频设备初始化失败";
        case NIMLocalErrorCodeUserInfoNeeded:
            return @"用户信息缺失 (未登录 或 未提供用户资料)";
        case NIMLocalErrorCodeRecordInvalidFilePath:
            return @"无法开始录制, 因为文件路径不合法";
        case NIMLocalErrorCodeRecordStartFailed   :
            return @"开始本地录制失败";
        case NIMLocalErrorCodeRecordCreateFileFailed      :
            return @"创建录制文件失败";
        case NIMLocalErrorCodeRecordInitAudioFailed       :
            return @"初始化录制音频失败";
        case NIMLocalErrorCodeRecordInitVideoFailed       :
            return @"初始化录制视频失败";
        case NIMLocalErrorCodeRecordStartWritingFailed   :
            return @"开始写录制文件失败";
        case NIMLocalErrorCodeRecordStopFailed            :
            return @"结束本地录制失败";
        case NIMLocalErrorCodeRecordWritingFileFailed     :
            return @"写录制文件失败";
        case NIMLocalErrorCodeRecordWillStopForLackSpace  :
            return @"空间不足，录制即将结束";
        case NIMLocalErrorChatroomNotExists              :
            return @"聊天室不存在";
        case NIMRemoteErrorCodeInvalidVersion       :
            return @"客户端版本错误";
        case NIMRemoteErrorCodeInvalidPass         :
            return @"密码错误";
        case NIMRemoteErrorCodeInvalidCRC          :
            return @"CheckSum校验失败";
        case NIMRemoteErrorCodeForbidden            :
            return @"非法操作或没有权限";
        case NIMRemoteErrorCodeNotExist            :
            return @"请求的目标（用户或对象）不存在";
        case NIMRemoteErrorCodeReadOnly            :
            return @"对象只读";
        case NIMRemoteErrorCodeTimeoutError        :
            return @"请求过程超时";
        case NIMRemoteErrorCodeParameterError      :
            return @"参数错误";
        case NIMRemoteErrorCodeConnectionError      :
            return @"网络连接出现错误";
        case NIMRemoteErrorCodeFrequently          :
            return @"操作太过频繁";
        case NIMRemoteErrorCodeExist                :
            return @"对象已经存在";
        case NIMRemoteErrorCodeUnknownError        :
            return @"未知错误，或者不方便告诉你";
        case NIMRemoteErrorCodeServerDataError    :
            return @"服务器数据错误";
        case NIMRemoteErrorCodeNotEnough           :
            return @"不足";
        case NIMRemoteErrorCodeDomainExpireOld     :
            return @"超过期限";
        case NIMRemoteErrorCodeInvalidProtocol      :
            return @"无效协议";
        case NIMRemoteErrorCodeUserNotExist        :
            return @"用户不存在";
        case NIMRemoteErrorCodeServiceUnavailable  :
            return @"服务不可用";
        case NIMRemoteErrorCodeTeamAccessError     :
            return @"没有操作群的权限";
        case NIMRemoteErrorCodeTeamNotExists      :
            return @"群组不存在";
        case NIMRemoteErrorCodeNotInTeam          :
            return @"用户不在兴趣组内";
        case NIMRemoteErrorCodeTeamInvaildType     :
            return @"群类型错误";
        case NIMRemoteErrorCodeTeamMemberLimit     :
            return @"超出群成员个数限制";
        case NIMRemoteErrorCodeTeamAlreadyIn      :
            return @"已经在群里";
        case NIMRemoteErrorCodeTeamNotMember       :
            return @"不是群成员";
        case NIMRemoteErrorCodeTeamBlackList     :
            return @"在群黑名单中";
        case NIMRemoteErrorCodeEUnpacket          :
            return @"解包错误";
        case NIMRemoteErrorCodeEPacket          :
            return @"打包错误";
        case NIMRemoteErrorCodeCalleeOffline       :
            return @"被叫离线(无可送达的被叫方)";
        case 0:
            return @"操作成功";
        default:
            return nil;
    }
}

@end