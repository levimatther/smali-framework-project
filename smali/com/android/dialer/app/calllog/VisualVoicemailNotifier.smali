.class final Lcom/android/dialer/app/calllog/VisualVoicemailNotifier;
.super Ljava/lang/Object;
.source "VisualVoicemailNotifier.java"


# static fields
.field private static final NOTIFICATION_GROUP:Ljava/lang/String; = "VisualVoicemail"

.field private static final NOTIFICATION_ID:I = 0x1

.field private static final NOTIFICATION_TAG_PREFIX:Ljava/lang/String; = "VisualVoicemail_"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelAllVoicemailNotifications(Landroid/content/Context;)V
    .locals 6

    const-string v0, "VisualVoicemailNotifier.cancelAllVoicemailNotifications"

    .line 100
    invoke-static {v0}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    .line 101
    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 102
    invoke-virtual {p0}, Landroid/app/NotificationManager;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 103
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v5, "VisualVoicemail_"

    .line 104
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 105
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    invoke-virtual {p0, v4, v3}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static cancelSingleVoicemailNotification(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 8

    const-string v0, "VisualVoicemailNotifier.cancelSingleVoicemailNotification"

    .line 112
    invoke-static {v0}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-nez p1, :cond_0

    new-array p0, v1, [Ljava/lang/Object;

    const-string/jumbo p1, "uri is null"

    .line 114
    invoke-static {v0, p1, p0}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 117
    :cond_0
    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 118
    invoke-static {p1}, Lcom/android/dialer/app/calllog/VisualVoicemailNotifier;->getNotificationTagForUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 119
    invoke-static {}, Lcom/android/dialer/app/calllog/VisualVoicemailNotifier;->getNotificationTagForGroupSummary()Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-virtual {p0}, Landroid/app/NotificationManager;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    array-length v3, v2

    move v4, v1

    :goto_0
    if-ge v1, v3, :cond_4

    aget-object v5, v2, v1

    .line 123
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    goto :goto_1

    .line 127
    :cond_1
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 128
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v5

    invoke-virtual {p0, v6, v5}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    goto :goto_1

    :cond_2
    const-string v5, "VisualVoicemail_"

    .line 129
    invoke-virtual {v6, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    add-int/lit8 v4, v4, 0x1

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    if-nez v4, :cond_5

    const/4 p1, 0x1

    .line 136
    invoke-virtual {p0, v0, p1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    :cond_5
    return-void
.end method

.method private static createNotificationBuilder(Landroid/content/Context;)Landroid/app/Notification$Builder;
    .locals 2

    .line 153
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x108007e

    .line 154
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x7f0600be

    .line 155
    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object p0

    const-string v0, "VisualVoicemail"

    .line 156
    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object p0

    const/4 v0, 0x1

    .line 157
    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 158
    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object p0

    return-object p0
.end method

.method private static createNotificationForVoicemail(Landroid/content/Context;Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$NewCall;Ljava/util/Map;)Landroid/app/Notification;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$NewCall;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/dialer/phonenumbercache/ContactInfo;",
            ">;)",
            "Landroid/app/Notification;"
        }
    .end annotation

    .line 165
    invoke-static {p0, p1}, Lcom/android/dialer/app/calllog/VisualVoicemailNotifier;->getAccountForCall(Landroid/content/Context;Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$NewCall;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    .line 166
    iget-object v1, p1, Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$NewCall;->number:Ljava/lang/String;

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/dialer/phonenumbercache/ContactInfo;

    .line 169
    invoke-static {p0}, Lcom/android/dialer/app/calllog/VisualVoicemailNotifier;->createNotificationBuilder(Landroid/content/Context;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 172
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    .line 173
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const v5, 0x7f0f0004

    invoke-virtual {v2, v5, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 170
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 176
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p2, Lcom/android/dialer/phonenumbercache/ContactInfo;->name:Ljava/lang/String;

    const v4, 0x7f110373

    .line 175
    invoke-static {v2, v4, v3}, Lcom/android/contacts/common/util/ContactDisplayUtils;->getTtsSpannedPhoneNumber(Landroid/content/res/Resources;ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 174
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$NewCall;->dateMs:J

    .line 179
    invoke-virtual {v1, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 180
    invoke-static {p0, v0}, Lcom/android/dialer/app/calllog/VisualVoicemailNotifier;->getVoicemailRingtoneUri(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 181
    invoke-static {p0, v0}, Lcom/android/dialer/app/calllog/VisualVoicemailNotifier;->getNotificationDefaultFlags(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 183
    iget-object v2, p1, Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$NewCall;->voicemailUri:Landroid/net/Uri;

    if-eqz v2, :cond_0

    .line 184
    iget-object v2, p1, Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$NewCall;->voicemailUri:Landroid/net/Uri;

    .line 185
    invoke-static {p0, v2}, Lcom/android/dialer/app/calllog/CallLogNotificationsService;->createMarkSingleNewVoicemailAsOldIntent(Landroid/content/Context;Landroid/net/Uri;)Landroid/app/PendingIntent;

    move-result-object v2

    .line 184
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 189
    :cond_0
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastO()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 190
    invoke-static {p0, v0}, Lcom/android/dialer/notification/NotificationChannelManager;->getVoicemailChannelId(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 193
    :cond_1
    new-instance v0, Lcom/android/dialer/app/contactinfo/ContactPhotoLoader;

    invoke-direct {v0, p0, p2}, Lcom/android/dialer/app/contactinfo/ContactPhotoLoader;-><init>(Landroid/content/Context;Lcom/android/dialer/phonenumbercache/ContactInfo;)V

    .line 194
    invoke-virtual {v0}, Lcom/android/dialer/app/contactinfo/ContactPhotoLoader;->loadPhotoIcon()Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 196
    invoke-virtual {v1, p2}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 198
    :cond_2
    iget-object p2, p1, Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$NewCall;->transcription:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 199
    invoke-static {p0}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object p2

    sget-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_NOTIFICATION_CREATED_WITH_TRANSCRIPTION:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 200
    invoke-interface {p2, v0}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    .line 201
    new-instance p2, Landroid/app/Notification$BigTextStyle;

    invoke-direct {p2}, Landroid/app/Notification$BigTextStyle;-><init>()V

    iget-object v0, p1, Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$NewCall;->transcription:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 203
    :cond_3
    invoke-static {p0, p1}, Lcom/android/dialer/app/calllog/VisualVoicemailNotifier;->newVoicemailIntent(Landroid/content/Context;Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$NewCall;)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 204
    invoke-static {p0}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object p0

    sget-object p1, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_NOTIFICATION_CREATED:Lcom/android/dialer/logging/DialerImpression$Type;

    invoke-interface {p0, p1}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    .line 205
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method public static getAccountForCall(Landroid/content/Context;Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$NewCall;)Landroid/telecom/PhoneAccountHandle;
    .locals 1

    if-eqz p1, :cond_1

    .line 271
    iget-object p0, p1, Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$NewCall;->accountComponentName:Ljava/lang/String;

    if-eqz p0, :cond_1

    iget-object p0, p1, Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$NewCall;->accountId:Ljava/lang/String;

    if-nez p0, :cond_0

    goto :goto_0

    .line 274
    :cond_0
    new-instance p0, Landroid/telecom/PhoneAccountHandle;

    iget-object v0, p1, Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$NewCall;->accountComponentName:Ljava/lang/String;

    .line 275
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    iget-object p1, p1, Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$NewCall;->accountId:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Landroid/telecom/PhoneAccountHandle;-><init>(Landroid/content/ComponentName;Ljava/lang/String;)V

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getFallbackAccount(Landroid/content/Context;)Landroid/telecom/PhoneAccountHandle;
    .locals 2

    const-string v0, "tel"

    .line 285
    invoke-static {p0, v0}, Lcom/android/dialer/telecom/TelecomUtil;->getDefaultOutgoingPhoneAccount(Landroid/content/Context;Ljava/lang/String;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    if-nez v0, :cond_0

    .line 287
    invoke-static {p0}, Lcom/android/dialer/telecom/TelecomUtil;->getCallCapablePhoneAccounts(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    .line 288
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 289
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    :cond_0
    return-object v0
.end method

.method private static getNotificationDefaultFlags(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)I
    .locals 4

    .line 229
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, -0x1

    const/16 v2, 0x18

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    new-array p1, v0, [Ljava/lang/Object;

    const-string v2, "VisualVoicemailNotifier.getNotificationDefaultFlags"

    const-string v3, "null handle, getting fallback"

    .line 233
    invoke-static {v2, v3, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 235
    invoke-static {p0}, Lcom/android/dialer/app/calllog/VisualVoicemailNotifier;->getFallbackAccount(Landroid/content/Context;)Landroid/telecom/PhoneAccountHandle;

    move-result-object p1

    if-nez p1, :cond_1

    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "no fallback handle, using default vibration"

    .line 237
    invoke-static {v2, p1, p0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 243
    :cond_1
    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->isVoicemailVibrationEnabled(Landroid/telecom/PhoneAccountHandle;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    return v0
.end method

.method private static getNotificationTagForGroupSummary()Ljava/lang/String;
    .locals 1

    const-string v0, "VisualVoicemail_GroupSummary"

    return-object v0
.end method

.method private static getNotificationTagForUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VisualVoicemail_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getNotificationTagForVoicemail(Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$NewCall;)Ljava/lang/String;
    .locals 0

    .line 141
    iget-object p0, p0, Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$NewCall;->voicemailUri:Landroid/net/Uri;

    invoke-static {p0}, Lcom/android/dialer/app/calllog/VisualVoicemailNotifier;->getNotificationTagForUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getVoicemailRingtoneUri(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Landroid/net/Uri;
    .locals 4

    .line 211
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x18

    if-ge v0, v2, :cond_0

    return-object v1

    :cond_0
    if-nez p1, :cond_2

    const/4 p1, 0x0

    new-array v0, p1, [Ljava/lang/Object;

    const-string v2, "VisualVoicemailNotifier.getVoicemailRingtoneUri"

    const-string v3, "null handle, getting fallback"

    .line 215
    invoke-static {v2, v3, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 216
    invoke-static {p0}, Lcom/android/dialer/app/calllog/VisualVoicemailNotifier;->getFallbackAccount(Landroid/content/Context;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    if-nez v0, :cond_1

    new-array p0, p1, [Ljava/lang/Object;

    const-string p1, "no fallback handle, using null (default) ringtone"

    .line 218
    invoke-static {v2, p1, p0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_1
    move-object p1, v0

    .line 224
    :cond_2
    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getVoicemailRingtoneUri(Landroid/telecom/PhoneAccountHandle;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private static newVoicemailIntent(Landroid/content/Context;Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$NewCall;)Landroid/app/PendingIntent;
    .locals 2

    .line 254
    invoke-static {p0}, Lcom/android/voicemail/VVMMainActivity;->getShowIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 257
    iget-object p1, p1, Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$NewCall;->voicemailUri:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :cond_0
    const/4 p1, 0x1

    const-string v1, "EXTRA_CLEAR_NEW_VOICEMAILS"

    .line 259
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 p1, 0x0

    const/high16 v1, 0x8000000

    .line 260
    invoke-static {p0, p1, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static showNotifications(Landroid/content/Context;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$NewCall;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/dialer/phonenumbercache/ContactInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "VisualVoicemailNotifier.showNotifications"

    .line 65
    invoke-static {v0}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    .line 67
    invoke-static {p0}, Lcom/android/dialer/app/calllog/CallLogNotificationsService;->createMarkAllNewVoicemailsAsOldIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 70
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 72
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const v5, 0x7f0f0004

    .line 71
    invoke-virtual {v1, v5, v2, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 74
    invoke-static {p0}, Lcom/android/dialer/app/calllog/VisualVoicemailNotifier;->createNotificationBuilder(Landroid/content/Context;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 75
    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 76
    invoke-virtual {v1, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p3

    .line 77
    invoke-virtual {p3, v0}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p3

    .line 78
    invoke-virtual {p3, v3}, Landroid/app/Notification$Builder;->setGroupSummary(Z)Landroid/app/Notification$Builder;

    move-result-object p3

    const/4 v0, 0x0

    .line 79
    invoke-static {p0, v0}, Lcom/android/dialer/app/calllog/VisualVoicemailNotifier;->newVoicemailIntent(Landroid/content/Context;Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$NewCall;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p3

    .line 81
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastO()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 82
    invoke-virtual {p3, v0}, Landroid/app/Notification$Builder;->setGroupAlertBehavior(I)Landroid/app/Notification$Builder;

    .line 83
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$NewCall;

    invoke-static {p0, v0}, Lcom/android/dialer/app/calllog/VisualVoicemailNotifier;->getAccountForCall(Landroid/content/Context;Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$NewCall;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    .line 84
    invoke-static {p0, v0}, Lcom/android/dialer/notification/NotificationChannelManager;->getVoicemailChannelId(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 87
    :cond_0
    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 89
    invoke-static {}, Lcom/android/dialer/app/calllog/VisualVoicemailNotifier;->getNotificationTagForGroupSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p3

    .line 88
    invoke-virtual {v0, v1, v3, p3}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 91
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$NewCall;

    .line 93
    invoke-static {p3}, Lcom/android/dialer/app/calllog/VisualVoicemailNotifier;->getNotificationTagForVoicemail(Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$NewCall;)Ljava/lang/String;

    move-result-object v1

    .line 95
    invoke-static {p0, p3, p2}, Lcom/android/dialer/app/calllog/VisualVoicemailNotifier;->createNotificationForVoicemail(Landroid/content/Context;Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$NewCall;Ljava/util/Map;)Landroid/app/Notification;

    move-result-object p3

    .line 92
    invoke-virtual {v0, v1, v3, p3}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    goto :goto_0

    :cond_1
    return-void
.end method
