.class public final Lcom/android/dialer/app/calllog/LegacyVoicemailNotifier;
.super Ljava/lang/Object;
.source "LegacyVoicemailNotifier.java"


# static fields
.field private static final NOTIFICATION_ID:I = 0x1

.field private static final NOTIFICATION_TAG:Ljava/lang/String; = "LegacyVoicemail"

.field private static isEnableVibration:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelNotification(Landroid/content/Context;I)V
    .locals 2

    const-string v0, "LegacyVoicemailNotifier.cancelNotification"

    .line 184
    invoke-static {v0}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    .line 185
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastO()Z

    move-result v0

    invoke-static {v0}, Lcom/android/dialer/common/Assert;->checkArgument(Z)V

    .line 186
    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LegacyVoicemail"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    return-void
.end method

.method private static createNotification(Landroid/content/Context;Landroid/telephony/TelephonyManager;Landroid/telecom/PhoneAccountHandle;ILjava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Z)Landroid/app/Notification;
    .locals 5

    .line 113
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    .line 114
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f0f0004

    invoke-virtual {v0, v3, p3, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 117
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getCarrierConfig()Landroid/os/PersistableBundle;

    move-result-object v0

    const-string/jumbo v2, "voicemail_notification_persistent_bool"

    .line 118
    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 122
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz p5, :cond_0

    .line 123
    invoke-static {p0, p2, p4}, Lcom/android/dialer/app/calllog/LegacyVoicemailNotifier;->getNotificationText(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    goto :goto_0

    :cond_0
    const p4, 0x7f11037f

    .line 126
    invoke-virtual {p0, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    move-object p5, p6

    .line 131
    :goto_0
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result p6

    const v2, 0x108007e

    if-le p6, v1, :cond_2

    .line 132
    new-instance p6, Lcom/android/voicemail/impl/SubscriptionInfoHelper;

    invoke-direct {p6, p0, p2}, Lcom/android/voicemail/impl/SubscriptionInfoHelper;-><init>(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)V

    .line 134
    invoke-virtual {p6}, Lcom/android/voicemail/impl/SubscriptionInfoHelper;->getSimSlotIndex()I

    move-result p6

    if-nez p6, :cond_1

    const p6, 0x7f080230

    :goto_1
    move v2, p6

    goto :goto_2

    :cond_1
    if-ne p6, v1, :cond_2

    const p6, 0x7f080231

    goto :goto_1

    .line 140
    :cond_2
    :goto_2
    new-instance p6, Landroid/app/Notification$Builder;

    invoke-direct {p6, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 142
    invoke-virtual {p6, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p6

    const v1, 0x7f0600be

    .line 143
    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {p6, v1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object p6

    .line 144
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p6, v1, v2}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object p6

    .line 145
    invoke-virtual {p6, p3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p3

    .line 146
    invoke-virtual {p3, p4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p3

    .line 147
    invoke-virtual {p3, p5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p3

    .line 148
    invoke-virtual {p1, p2}, Landroid/telephony/TelephonyManager;->getVoicemailRingtoneUri(Landroid/telecom/PhoneAccountHandle;)Landroid/net/Uri;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    move-result-object p3

    .line 149
    invoke-virtual {p3, v0}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object p3

    .line 150
    invoke-virtual {p3, p7}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object p3

    .line 151
    invoke-static {p0, p2}, Lcom/android/dialer/notification/NotificationChannelManager;->getVoicemailChannelId(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object p3

    const-string p4, "notification"

    .line 153
    invoke-virtual {p0, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    const-string p4, "phone_voicemail"

    .line 154
    invoke-virtual {p0, p4}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 156
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->shouldVibrate()Z

    move-result p0

    sput-boolean p0, Lcom/android/dialer/app/calllog/LegacyVoicemailNotifier;->isEnableVibration:Z

    .line 158
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "isEnableVibration = "

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p4, Lcom/android/dialer/app/calllog/LegacyVoicemailNotifier;->isEnableVibration:Z

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p4, v4, [Ljava/lang/Object;

    const-string p5, "LegacyVoicemailNotifier.createNotification"

    invoke-static {p5, p0, p4}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    invoke-virtual {p1, p2}, Landroid/telephony/TelephonyManager;->isVoicemailVibrationEnabled(Landroid/telecom/PhoneAccountHandle;)Z

    move-result p0

    if-eqz p0, :cond_4

    sget-boolean p0, Lcom/android/dialer/app/calllog/LegacyVoicemailNotifier;->isEnableVibration:Z

    if-eqz p0, :cond_4

    new-array p0, v4, [Ljava/lang/Object;

    const-string/jumbo p1, "userdebug"

    .line 160
    invoke-static {p5, p1, p0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x2

    .line 162
    invoke-virtual {p3, p0}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 165
    :cond_4
    invoke-virtual {p3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method private static getNotificationText(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 171
    invoke-static {p0}, Lcom/android/dialer/calllogutils/PhoneAccountUtils;->getSubscriptionPhoneAccounts(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 172
    const-class p2, Landroid/telecom/TelecomManager;

    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telecom/TelecomManager;

    .line 173
    invoke-virtual {p0, p1}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object p0

    .line 174
    invoke-virtual {p0}, Landroid/telecom/PhoneAccount;->getShortDescription()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const p1, 0x7f110380

    .line 177
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 178
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v0

    .line 176
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static showNotification(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;ILjava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZI)V
    .locals 13

    move-object v8, p0

    move-object v9, p1

    const-string v10, "LegacyVoicemailNotifier.showNotification"

    .line 67
    invoke-static {v10}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    .line 68
    invoke-static {p1}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastO()Z

    move-result v0

    invoke-static {v0}, Lcom/android/dialer/common/Assert;->checkArgument(Z)V

    .line 71
    const-class v0, Landroid/telephony/TelephonyManager;

    .line 72
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->createForPhoneAccountHandle(Landroid/telecom/PhoneAccountHandle;)Landroid/telephony/TelephonyManager;

    move-result-object v11

    const/4 v12, 0x0

    if-nez v11, :cond_0

    new-array v0, v12, [Ljava/lang/Object;

    const-string v1, "invalid PhoneAccountHandle"

    .line 74
    invoke-static {v10, v1, v0}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    move-object v0, p0

    move-object v1, v11

    move-object v2, p1

    move v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    .line 79
    invoke-static/range {v0 .. v7}, Lcom/android/dialer/app/calllog/LegacyVoicemailNotifier;->createNotification(Landroid/content/Context;Landroid/telephony/TelephonyManager;Landroid/telecom/PhoneAccountHandle;ILjava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Z)Landroid/app/Notification;

    move-result-object v0

    .line 88
    const-class v1, Landroid/app/NotificationManager;

    .line 89
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LegacyVoicemail"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, p7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 90
    invoke-virtual {v1, v2, v3, v0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 92
    sget-boolean v0, Lcom/android/dialer/app/calllog/LegacyVoicemailNotifier;->isEnableVibration:Z

    if-nez v0, :cond_1

    invoke-virtual {v11, p1}, Landroid/telephony/TelephonyManager;->isVoicemailVibrationEnabled(Landroid/telecom/PhoneAccountHandle;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "vibrator"

    .line 93
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    new-array v1, v12, [Ljava/lang/Object;

    const-string/jumbo v2, "user"

    .line 94
    invoke-static {v10, v2, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x4

    new-array v1, v1, [J

    .line 95
    fill-array-data v1, :array_0

    const/4 v2, -0x1

    .line 96
    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    :cond_1
    return-void

    nop

    :array_0
    .array-data 8
        0x0
        0x15e
        0xfa
        0x15e
    .end array-data
.end method
