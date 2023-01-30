.class public Lcom/android/dialer/app/calllog/CallLogNotificationsService;
.super Landroid/app/IntentService;
.source "CallLogNotificationsService.java"


# static fields
.field public static final ACTION_CALL_BACK_FROM_MISSED_CALL_NOTIFICATION:Ljava/lang/String; = "com.android.dialer.calllog.CALL_BACK_FROM_MISSED_CALL_NOTIFICATION"

.field static final ACTION_CANCEL_ALL_MISSED_CALLS:Ljava/lang/String; = "com.android.dialer.calllog.ACTION_CANCEL_ALL_MISSED_CALLS"

.field private static final ACTION_CANCEL_SINGLE_MISSED_CALL:Ljava/lang/String; = "com.android.dialer.calllog.ACTION_CANCEL_SINGLE_MISSED_CALL"

.field private static final ACTION_INCOMING_POST_CALL:Ljava/lang/String; = "com.android.dialer.calllog.INCOMING_POST_CALL"

.field private static final ACTION_MARK_ALL_NEW_VOICEMAILS_AS_OLD:Ljava/lang/String; = "com.android.dialer.calllog.ACTION_MARK_ALL_NEW_VOICEMAILS_AS_OLD"

.field private static final ACTION_MARK_SINGLE_NEW_VOICEMAIL_AS_OLD:Ljava/lang/String; = "com.android.dialer.calllog.ACTION_MARK_SINGLE_NEW_VOICEMAIL_AS_OLD "

.field private static final EXTRA_POST_CALL_NOTE:Ljava/lang/String; = "POST_CALL_NOTE"

.field private static final EXTRA_POST_CALL_NUMBER:Ljava/lang/String; = "POST_CALL_NUMBER"

.field public static final UNKNOWN_MISSED_CALL_COUNT:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "CallLogNotificationsService"

    .line 85
    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static cancelAllMissedCalls(Landroid/content/Context;)V
    .locals 2

    const-string v0, "CallLogNotificationsService.cancelAllMissedCalls"

    .line 126
    invoke-static {v0}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    .line 127
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/dialer/app/calllog/CallLogNotificationsService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.android.dialer.calllog.ACTION_CANCEL_ALL_MISSED_CALLS"

    .line 128
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public static createCancelAllMissedCallsPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 2

    .line 133
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/dialer/app/calllog/CallLogNotificationsService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.android.dialer.calllog.ACTION_CANCEL_ALL_MISSED_CALLS"

    .line 134
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    .line 135
    invoke-static {p0, v1, v0, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static createCancelSingleMissedCallPendingIntent(Landroid/content/Context;Landroid/net/Uri;)Landroid/app/PendingIntent;
    .locals 2

    .line 140
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/dialer/app/calllog/CallLogNotificationsService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.android.dialer.calllog.ACTION_CANCEL_SINGLE_MISSED_CALL"

    .line 141
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 p1, 0x0

    .line 143
    invoke-static {p0, p1, v0, p1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static createMarkAllNewVoicemailsAsOldIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 2

    .line 112
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/dialer/app/calllog/CallLogNotificationsService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.android.dialer.calllog.ACTION_MARK_ALL_NEW_VOICEMAILS_AS_OLD"

    .line 113
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    .line 114
    invoke-static {p0, v1, v0, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static createMarkSingleNewVoicemailAsOldIntent(Landroid/content/Context;Landroid/net/Uri;)Landroid/app/PendingIntent;
    .locals 2

    .line 119
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/dialer/app/calllog/CallLogNotificationsService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.android.dialer.calllog.ACTION_MARK_SINGLE_NEW_VOICEMAIL_AS_OLD "

    .line 120
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 p1, 0x0

    .line 122
    invoke-static {p0, p1, v0, p1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static insertPostCallNote(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 89
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/dialer/app/calllog/CallLogNotificationsService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.android.dialer.calllog.INCOMING_POST_CALL"

    .line 90
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "POST_CALL_NUMBER"

    .line 91
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "POST_CALL_NOTE"

    .line 92
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public static markAllNewVoicemailsAsOld(Landroid/content/Context;)V
    .locals 2

    const-string v0, "CallLogNotificationsService.markAllNewVoicemailsAsOld"

    .line 97
    invoke-static {v0}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    .line 98
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/dialer/app/calllog/CallLogNotificationsService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.android.dialer.calllog.ACTION_MARK_ALL_NEW_VOICEMAILS_AS_OLD"

    .line 99
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public static markSingleNewVoicemailAsOld(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2

    const-string v0, "CallLogNotificationsService.markSingleNewVoicemailAsOld"

    .line 104
    invoke-static {v0}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    .line 105
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/dialer/app/calllog/CallLogNotificationsService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.android.dialer.calllog.ACTION_MARK_SINGLE_NEW_VOICEMAIL_AS_OLD "

    .line 106
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 108
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 10

    const-string v0, "CallLogNotificationsService.onHandleIntent"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "could not handle null intent"

    .line 149
    invoke-static {v0, v1, p1}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string v2, "android.permission.READ_CALL_LOG"

    .line 153
    invoke-static {p0, v2}, Lcom/android/dialer/util/PermissionsUtil;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "android.permission.WRITE_CALL_LOG"

    .line 154
    invoke-static {p0, v2}, Lcom/android/dialer/util/PermissionsUtil;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_2

    .line 159
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 160
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "action: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v3, -0x1

    .line 161
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v4, "com.android.dialer.calllog.ACTION_MARK_ALL_NEW_VOICEMAILS_AS_OLD"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v3, v1

    goto :goto_0

    :sswitch_1
    const-string v4, "com.android.dialer.calllog.ACTION_CANCEL_ALL_MISSED_CALLS"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v3, v7

    goto :goto_0

    :sswitch_2
    const-string v4, "com.android.dialer.calllog.CALL_BACK_FROM_MISSED_CALL_NOTIFICATION"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v3, v5

    goto :goto_0

    :sswitch_3
    const-string v4, "com.android.dialer.calllog.INCOMING_POST_CALL"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v3, v8

    goto :goto_0

    :sswitch_4
    const-string v4, "com.android.dialer.calllog.ACTION_MARK_SINGLE_NEW_VOICEMAIL_AS_OLD "

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v3, v9

    goto :goto_0

    :sswitch_5
    const-string v4, "com.android.dialer.calllog.ACTION_CANCEL_SINGLE_MISSED_CALL"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v3, v6

    :cond_2
    :goto_0
    if-eqz v3, :cond_8

    if-eq v3, v9, :cond_7

    if-eq v3, v8, :cond_6

    if-eq v3, v7, :cond_5

    if-eq v3, v6, :cond_4

    if-eq v3, v5, :cond_3

    .line 195
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no handler for action: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 188
    :cond_3
    invoke-static {p0}, Lcom/android/dialer/app/calllog/MissedCallNotifier;->getIstance(Landroid/content/Context;)Lcom/android/dialer/app/calllog/MissedCallNotifier;

    move-result-object v0

    const-string v1, "android.telecom.extra.NOTIFICATION_PHONE_NUMBER"

    .line 190
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 192
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 189
    invoke-virtual {v0, v1, p1}, Lcom/android/dialer/app/calllog/MissedCallNotifier;->callBackFromMissedCall(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_1

    .line 182
    :cond_4
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 183
    invoke-static {p0, p1}, Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper;->markSingleMissedCallInCallLogAsRead(Landroid/content/Context;Landroid/net/Uri;)V

    .line 184
    invoke-static {p0, p1}, Lcom/android/dialer/app/calllog/MissedCallNotifier;->cancelSingleMissedCallNotification(Landroid/content/Context;Landroid/net/Uri;)V

    .line 185
    invoke-static {p0}, Lcom/android/dialer/telecom/TelecomUtil;->cancelMissedCallsNotification(Landroid/content/Context;)V

    goto :goto_1

    .line 177
    :cond_5
    invoke-static {p0}, Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper;->markAllMissedCallsInCallLogAsRead(Landroid/content/Context;)V

    .line 178
    invoke-static {p0}, Lcom/android/dialer/app/calllog/MissedCallNotifier;->cancelAllMissedCallNotifications(Landroid/content/Context;)V

    .line 179
    invoke-static {p0}, Lcom/android/dialer/telecom/TelecomUtil;->cancelMissedCallsNotification(Landroid/content/Context;)V

    goto :goto_1

    :cond_6
    const-string v0, "POST_CALL_NOTE"

    .line 172
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "POST_CALL_NUMBER"

    .line 173
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 174
    invoke-static {p0}, Lcom/android/dialer/app/calllog/MissedCallNotifier;->getIstance(Landroid/content/Context;)Lcom/android/dialer/app/calllog/MissedCallNotifier;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/android/dialer/app/calllog/MissedCallNotifier;->insertPostCallNotification(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 167
    :cond_7
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 168
    invoke-static {p0, p1}, Lcom/android/dialer/app/calllog/VoicemailQueryHandler;->markSingleNewVoicemailAsRead(Landroid/content/Context;Landroid/net/Uri;)V

    .line 169
    invoke-static {p0, p1}, Lcom/android/dialer/app/calllog/VisualVoicemailNotifier;->cancelSingleVoicemailNotification(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_1

    .line 163
    :cond_8
    invoke-static {p0}, Lcom/android/dialer/app/calllog/VoicemailQueryHandler;->markAllNewVoicemailsAsRead(Landroid/content/Context;)V

    .line 164
    invoke-static {p0}, Lcom/android/dialer/app/calllog/VisualVoicemailNotifier;->cancelAllVoicemailNotifications(Landroid/content/Context;)V

    :goto_1
    return-void

    :cond_9
    :goto_2
    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "no READ_CALL_LOG permission"

    .line 155
    invoke-static {v0, v1, p1}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x686db24c -> :sswitch_5
        -0x3a7e3b50 -> :sswitch_4
        -0x357a46ef -> :sswitch_3
        -0xdde8d87 -> :sswitch_2
        0x26a354f8 -> :sswitch_1
        0x7c6cd13c -> :sswitch_0
    .end sparse-switch
.end method
