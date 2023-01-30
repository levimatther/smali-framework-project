.class public Lcom/android/incallui/NotificationBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NotificationBroadcastReceiver.java"


# static fields
.field public static final ACTION_ACCEPT_VIDEO_UPGRADE_REQUEST:Ljava/lang/String; = "com.android.incallui.ACTION_ACCEPT_VIDEO_UPGRADE_REQUEST"

.field public static final ACTION_ANSWER_VIDEO_INCOMING_CALL:Ljava/lang/String; = "com.android.incallui.ACTION_ANSWER_VIDEO_INCOMING_CALL"

.field public static final ACTION_ANSWER_VOICE_INCOMING_CALL:Ljava/lang/String; = "com.android.incallui.ACTION_ANSWER_VOICE_INCOMING_CALL"

.field public static final ACTION_DECLINE_INCOMING_CALL:Ljava/lang/String; = "com.android.incallui.ACTION_DECLINE_INCOMING_CALL"

.field public static final ACTION_DECLINE_VIDEO_UPGRADE_REQUEST:Ljava/lang/String; = "com.android.incallui.ACTION_DECLINE_VIDEO_UPGRADE_REQUEST"

.field public static final ACTION_HANG_UP_ONGOING_CALL:Ljava/lang/String; = "com.android.incallui.ACTION_HANG_UP_ONGOING_CALL"

.field public static final ACTION_PULL_EXTERNAL_CALL:Ljava/lang/String; = "com.android.incallui.ACTION_PULL_EXTERNAL_CALL"

.field public static final EXTRA_NOTIFICATION_ID:Ljava/lang/String; = "com.android.incallui.extra.EXTRA_NOTIFICATION_ID"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private acceptUpgradeRequest(Landroid/content/Context;)V
    .locals 2

    .line 92
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getCallList()Lcom/android/incallui/call/CallList;

    move-result-object v0

    if-nez v0, :cond_0

    .line 94
    invoke-static {p1}, Lcom/android/incallui/StatusBarNotifier;->clearAllCallNotifications(Landroid/content/Context;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "NotificationBroadcastReceiver.acceptUpgradeRequest"

    const-string v1, "call list is empty"

    .line 95
    invoke-static {v0, v1, p1}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 97
    :cond_0
    invoke-virtual {v0}, Lcom/android/incallui/call/CallList;->getVideoUpgradeRequestCall()Lcom/android/incallui/call/DialerCall;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 98
    invoke-static {}, Lcom/android/incallui/InCallLowBatteryListener;->getInstance()Lcom/android/incallui/InCallLowBatteryListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallLowBatteryListener;->onChangeToVideoCall(Lcom/android/incallui/call/DialerCall;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 99
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getVideoTech()Lcom/android/incallui/videotech/VideoTech;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/incallui/videotech/VideoTech;->acceptVideoRequest()V

    :cond_1
    :goto_0
    return-void
.end method

.method private answerIncomingCall(Landroid/content/Context;)V
    .locals 2

    .line 153
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getCallList()Lcom/android/incallui/call/CallList;

    move-result-object v0

    if-nez v0, :cond_0

    .line 155
    invoke-static {p1}, Lcom/android/incallui/StatusBarNotifier;->clearAllCallNotifications(Landroid/content/Context;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "NotificationBroadcastReceiver.answerIncomingCall"

    const-string v1, "call list is empty"

    .line 156
    invoke-static {v0, v1, p1}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 158
    :cond_0
    invoke-virtual {v0}, Lcom/android/incallui/call/CallList;->getIncomingCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 160
    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->getVideoState()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/NotificationBroadcastReceiver;->answerIncomingCall(Landroid/content/Context;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private answerIncomingCall(Landroid/content/Context;I)V
    .locals 2

    .line 136
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getCallList()Lcom/android/incallui/call/CallList;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 138
    invoke-static {p1}, Lcom/android/incallui/StatusBarNotifier;->clearAllCallNotifications(Landroid/content/Context;)V

    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "NotificationBroadcastReceiver.answerIncomingCall"

    const-string v0, "call list is empty"

    .line 139
    invoke-static {p2, v0, p1}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 141
    :cond_0
    invoke-virtual {v0}, Lcom/android/incallui/call/CallList;->getIncomingCall()Lcom/android/incallui/call/DialerCall;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 142
    invoke-static {}, Lcom/android/incallui/InCallLowBatteryListener;->getInstance()Lcom/android/incallui/InCallLowBatteryListener;

    move-result-object v0

    .line 143
    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/InCallLowBatteryListener;->onAnswerIncomingCall(Lcom/android/incallui/call/DialerCall;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 144
    invoke-virtual {p1, p2}, Lcom/android/incallui/call/DialerCall;->answer(I)V

    .line 147
    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object p1

    .line 148
    invoke-virtual {p1, v1, v1, v1}, Lcom/android/incallui/InCallPresenter;->showInCall(ZZZ)V

    :goto_0
    return-void
.end method

.method private declineIncomingCall(Landroid/content/Context;)V
    .locals 2

    .line 166
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getCallList()Lcom/android/incallui/call/CallList;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 168
    invoke-static {p1}, Lcom/android/incallui/StatusBarNotifier;->clearAllCallNotifications(Landroid/content/Context;)V

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "NotificationBroadcastReceiver.declineIncomingCall"

    const-string v1, "call list is empty"

    .line 169
    invoke-static {v0, v1, p1}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 171
    :cond_0
    invoke-virtual {v0}, Lcom/android/incallui/call/CallList;->getIncomingCall()Lcom/android/incallui/call/DialerCall;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 173
    invoke-virtual {p1, v1, v0}, Lcom/android/incallui/call/DialerCall;->reject(ZLjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private declineUpgradeRequest(Landroid/content/Context;)V
    .locals 2

    .line 105
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getCallList()Lcom/android/incallui/call/CallList;

    move-result-object v0

    if-nez v0, :cond_0

    .line 107
    invoke-static {p1}, Lcom/android/incallui/StatusBarNotifier;->clearAllCallNotifications(Landroid/content/Context;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "NotificationBroadcastReceiver.declineUpgradeRequest"

    const-string v1, "call list is empty"

    .line 108
    invoke-static {v0, v1, p1}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 110
    :cond_0
    invoke-virtual {v0}, Lcom/android/incallui/call/CallList;->getVideoUpgradeRequestCall()Lcom/android/incallui/call/DialerCall;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 112
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getVideoTech()Lcom/android/incallui/videotech/VideoTech;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/incallui/videotech/VideoTech;->declineVideoRequest()V

    :cond_1
    :goto_0
    return-void
.end method

.method private hangUpOngoingCall(Landroid/content/Context;)V
    .locals 4

    .line 118
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getCallList()Lcom/android/incallui/call/CallList;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "NotificationBroadcastReceiver.hangUpOngoingCall"

    if-nez v0, :cond_0

    .line 120
    invoke-static {p1}, Lcom/android/incallui/StatusBarNotifier;->clearAllCallNotifications(Landroid/content/Context;)V

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "call list is empty"

    .line 121
    invoke-static {v2, v0, p1}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 123
    :cond_0
    invoke-virtual {v0}, Lcom/android/incallui/call/CallList;->getOutgoingCall()Lcom/android/incallui/call/DialerCall;

    move-result-object p1

    if-nez p1, :cond_1

    .line 125
    invoke-virtual {v0}, Lcom/android/incallui/call/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/call/DialerCall;

    move-result-object p1

    .line 127
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disconnecting call, call: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_2

    .line 130
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->disconnect()V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 65
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Broadcast from Notification: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "NotificationBroadcastReceiver.onReceive"

    invoke-static {v4, v1, v3}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "com.android.incallui.ACTION_ANSWER_VIDEO_INCOMING_CALL"

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    invoke-direct {p0, p1}, Lcom/android/incallui/NotificationBroadcastReceiver;->answerIncomingCall(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_0
    const-string v1, "com.android.incallui.ACTION_ANSWER_VOICE_INCOMING_CALL"

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 72
    invoke-direct {p0, p1, v2}, Lcom/android/incallui/NotificationBroadcastReceiver;->answerIncomingCall(Landroid/content/Context;I)V

    goto :goto_0

    :cond_1
    const-string v1, "com.android.incallui.ACTION_DECLINE_INCOMING_CALL"

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 74
    invoke-static {p1}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object p2

    sget-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->REJECT_INCOMING_CALL_FROM_NOTIFICATION:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 75
    invoke-interface {p2, v0}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    .line 76
    invoke-direct {p0, p1}, Lcom/android/incallui/NotificationBroadcastReceiver;->declineIncomingCall(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    const-string v1, "com.android.incallui.ACTION_HANG_UP_ONGOING_CALL"

    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 78
    invoke-direct {p0, p1}, Lcom/android/incallui/NotificationBroadcastReceiver;->hangUpOngoingCall(Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    const-string v1, "com.android.incallui.ACTION_ACCEPT_VIDEO_UPGRADE_REQUEST"

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 80
    invoke-direct {p0, p1}, Lcom/android/incallui/NotificationBroadcastReceiver;->acceptUpgradeRequest(Landroid/content/Context;)V

    .line 81
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/incallui/InCallPresenter;->bringToForeground(Z)V

    goto :goto_0

    :cond_4
    const-string v1, "com.android.incallui.ACTION_DECLINE_VIDEO_UPGRADE_REQUEST"

    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 83
    invoke-direct {p0, p1}, Lcom/android/incallui/NotificationBroadcastReceiver;->declineUpgradeRequest(Landroid/content/Context;)V

    goto :goto_0

    :cond_5
    const-string v1, "com.android.incallui.ACTION_PULL_EXTERNAL_CALL"

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 85
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 p1, -0x1

    const-string v0, "com.android.incallui.extra.EXTRA_NOTIFICATION_ID"

    .line 86
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 87
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/incallui/InCallPresenter;->getExternalCallNotifier()Lcom/android/incallui/ExternalCallNotifier;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/incallui/ExternalCallNotifier;->pullExternalCall(I)V

    :cond_6
    :goto_0
    return-void
.end method
