.class final Lcom/android/dialer/notification/VoicemailChannelUtils;
.super Ljava/lang/Object;
.source "VoicemailChannelUtils.java"


# static fields
.field public static final GLOBAL_VOICEMAIL_CHANNEL_ID:Ljava/lang/String; = "phone_voicemail"

.field private static final PER_ACCOUNT_VOICEMAIL_CHANNEL_ID_PREFIX:Ljava/lang/String; = "phone_voicemail_account_"

.field public static VOICEMAIL_IS_VIBRATION:Z

.field public static VOICEMAIL_SOUND_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/dialer/notification/VoicemailChannelUtils;->VOICEMAIL_SOUND_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    .line 51
    sput-boolean v0, Lcom/android/dialer/notification/VoicemailChannelUtils;->VOICEMAIL_IS_VIBRATION:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createAllChannels(Landroid/content/Context;)V
    .locals 2

    .line 69
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastO()Z

    move-result v0

    invoke-static {v0}, Lcom/android/dialer/common/Assert;->checkArgument(Z)V

    .line 70
    invoke-static {p0}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    invoke-static {p0}, Lcom/android/dialer/notification/VoicemailChannelUtils;->isSingleSimDevice(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-static {p0}, Lcom/android/dialer/notification/VoicemailChannelUtils;->createGlobalVoicemailChannel(Landroid/content/Context;)V

    goto :goto_1

    .line 75
    :cond_0
    invoke-static {p0}, Lcom/android/dialer/notification/VoicemailChannelUtils;->getAllEligableAccounts(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/PhoneAccountHandle;

    .line 76
    invoke-static {p0, v1}, Lcom/android/dialer/notification/VoicemailChannelUtils;->createVoicemailChannelForAccount(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private static createGlobalVoicemailChannel(Landroid/content/Context;)V
    .locals 5

    const-string v0, "phone_voicemail"

    const/4 v1, 0x0

    .line 135
    invoke-static {p0, v0, v1}, Lcom/android/dialer/notification/VoicemailChannelUtils;->newChannel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/app/NotificationChannel;

    move-result-object v0

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create voice mail channel = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "VoicemailChannelUtils.createGlobalVoicemailChannel"

    invoke-static {v4, v1, v3}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    const-class v1, Landroid/telecom/TelecomManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/TelecomManager;

    const-string v3, "tel"

    .line 141
    invoke-virtual {v1, v3}, Landroid/telecom/TelecomManager;->getDefaultOutgoingPhoneAccount(Ljava/lang/String;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v1

    if-nez v1, :cond_0

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "phone account is null, not migrating sound settings"

    .line 143
    invoke-static {v4, v2, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 146
    :cond_0
    invoke-static {p0, v1}, Lcom/android/dialer/notification/VoicemailChannelUtils;->isChannelAllowedForAccount(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Z

    move-result v3

    if-nez v3, :cond_1

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "phone account is not eligable, not migrating sound settings"

    .line 147
    invoke-static {v4, v2, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 151
    :cond_1
    invoke-static {p0, v0, v1}, Lcom/android/dialer/notification/VoicemailChannelUtils;->migrateVoicemailSoundSettings(Landroid/content/Context;Landroid/app/NotificationChannel;Landroid/telecom/PhoneAccountHandle;)V

    .line 153
    :goto_0
    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-void
.end method

.method private static createVoicemailChannelForAccount(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)V
    .locals 2

    .line 169
    const-class v0, Landroid/telecom/TelecomManager;

    .line 170
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    invoke-virtual {v0, p1}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 173
    :goto_0
    invoke-static {p1}, Lcom/android/dialer/notification/VoicemailChannelUtils;->getChannelIdForAccount(Landroid/telecom/PhoneAccountHandle;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/android/dialer/notification/VoicemailChannelUtils;->newChannel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/app/NotificationChannel;

    move-result-object v0

    .line 174
    invoke-static {p0, v0, p1}, Lcom/android/dialer/notification/VoicemailChannelUtils;->migrateVoicemailSoundSettings(Landroid/content/Context;Landroid/app/NotificationChannel;Landroid/telecom/PhoneAccountHandle;)V

    .line 175
    const-class p1, Landroid/app/NotificationManager;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-void
.end method

.method private static doesChannelExist(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 121
    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static getAllChannelIds(Landroid/content/Context;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 54
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastO()Z

    move-result v0

    invoke-static {v0}, Lcom/android/dialer/common/Assert;->checkArgument(Z)V

    .line 55
    invoke-static {p0}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 58
    invoke-static {p0}, Lcom/android/dialer/notification/VoicemailChannelUtils;->isSingleSimDevice(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "phone_voicemail"

    .line 59
    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 61
    :cond_0
    invoke-static {p0}, Lcom/android/dialer/notification/VoicemailChannelUtils;->getAllEligableAccounts(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/PhoneAccountHandle;

    .line 62
    invoke-static {v1}, Lcom/android/dialer/notification/VoicemailChannelUtils;->getChannelIdForAccount(Landroid/telecom/PhoneAccountHandle;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method private static getAllEligableAccounts(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;"
        }
    .end annotation

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 158
    const-class v1, Landroid/telecom/TelecomManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/TelecomManager;

    .line 159
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/PhoneAccountHandle;

    .line 160
    invoke-static {p0, v2}, Lcom/android/dialer/notification/VoicemailChannelUtils;->isChannelAllowedForAccount(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 161
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method static getChannelId(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Ljava/lang/String;
    .locals 4

    .line 83
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastO()Z

    move-result v0

    invoke-static {v0}, Lcom/android/dialer/common/Assert;->checkArgument(Z)V

    .line 84
    invoke-static {p0}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    invoke-static {p0}, Lcom/android/dialer/notification/VoicemailChannelUtils;->isSingleSimDevice(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "phone_voicemail"

    return-object p0

    :cond_0
    const-string v0, "phone_default"

    const/4 v1, 0x0

    const-string v2, "VoicemailChannelUtils.getChannelId"

    if-nez p1, :cond_1

    new-array p0, v1, [Ljava/lang/Object;

    const-string p1, "no phone account on a multi-SIM device, using default channel"

    .line 95
    invoke-static {v2, p1, p0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 102
    :cond_1
    invoke-static {p0, p1}, Lcom/android/dialer/notification/VoicemailChannelUtils;->isChannelAllowedForAccount(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Z

    move-result v3

    if-nez v3, :cond_2

    new-array p0, v1, [Ljava/lang/Object;

    const-string p1, "phone account is not for a SIM, using default channel"

    .line 103
    invoke-static {v2, p1, p0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 110
    :cond_2
    invoke-static {p1}, Lcom/android/dialer/notification/VoicemailChannelUtils;->getChannelIdForAccount(Landroid/telecom/PhoneAccountHandle;)Ljava/lang/String;

    move-result-object v0

    .line 111
    invoke-static {p0, v0}, Lcom/android/dialer/notification/VoicemailChannelUtils;->doesChannelExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v3, "voicemail channel not found for phone account (possible SIM swap?), creating a new one"

    .line 112
    invoke-static {v2, v3, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    invoke-static {p0, p1}, Lcom/android/dialer/notification/VoicemailChannelUtils;->createVoicemailChannelForAccount(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)V

    :cond_3
    return-object v0
.end method

.method private static getChannelIdForAccount(Landroid/telecom/PhoneAccountHandle;)Ljava/lang/String;
    .locals 2

    .line 126
    invoke-static {p0}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "phone_voicemail_account_:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static isChannelAllowedForAccount(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Z
    .locals 1

    .line 191
    const-class v0, Landroid/telecom/TelecomManager;

    .line 192
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telecom/TelecomManager;

    invoke-virtual {p0, p1}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return p1

    :cond_0
    const/4 v0, 0x4

    .line 196
    invoke-virtual {p0, v0}, Landroid/telecom/PhoneAccount;->hasCapabilities(I)Z

    move-result p0

    if-nez p0, :cond_1

    return p1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private static isSingleSimDevice(Landroid/content/Context;)Z
    .locals 1

    .line 232
    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result p0

    const/4 v0, 0x1

    if-gt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static migrateVoicemailSoundSettings(Landroid/content/Context;Landroid/app/NotificationChannel;Landroid/telecom/PhoneAccountHandle;)V
    .locals 1

    .line 182
    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 183
    invoke-virtual {p0, p2}, Landroid/telephony/TelephonyManager;->isVoicemailVibrationEnabled(Landroid/telecom/PhoneAccountHandle;)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 185
    invoke-virtual {p0, p2}, Landroid/telephony/TelephonyManager;->getVoicemailRingtoneUri(Landroid/telecom/PhoneAccountHandle;)Landroid/net/Uri;

    move-result-object p0

    new-instance p2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {p2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v0, 0x5

    .line 186
    invoke-virtual {p2, v0}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p2

    .line 184
    invoke-virtual {p1, p0, p2}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    return-void
.end method

.method private static newChannel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/app/NotificationChannel;
    .locals 4

    const v0, 0x7f110358

    .line 204
    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    .line 206
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    aput-object p0, v0, v3

    const-string p0, ": "

    aput-object p0, v0, v2

    const/4 p0, 0x2

    aput-object p2, v0, p0

    .line 207
    invoke-static {v0}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    .line 210
    :cond_0
    new-instance p2, Landroid/app/NotificationChannel;

    invoke-direct {p2, p1, p0, v1}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 212
    invoke-virtual {p2, v2}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 213
    invoke-virtual {p2, v2}, Landroid/app/NotificationChannel;->enableLights(Z)V

    new-array p0, v1, [J

    .line 215
    fill-array-data p0, :array_0

    .line 216
    invoke-virtual {p2, p0}, Landroid/app/NotificationChannel;->setVibrationPattern([J)V

    const-string p0, "phone_voicemail"

    .line 218
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 p1, 0x5

    if-eqz p0, :cond_1

    .line 219
    sget-boolean p0, Lcom/android/dialer/notification/VoicemailChannelUtils;->VOICEMAIL_IS_VIBRATION:Z

    invoke-virtual {p2, p0}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 220
    sget-object p0, Lcom/android/dialer/notification/VoicemailChannelUtils;->VOICEMAIL_SOUND_URI:Landroid/net/Uri;

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 221
    invoke-virtual {v0, p1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p1

    .line 220
    invoke-virtual {p2, p0, p1}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    goto :goto_0

    .line 223
    :cond_1
    invoke-virtual {p2, v2}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 224
    sget-object p0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 226
    invoke-virtual {v0, p1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p1

    .line 224
    invoke-virtual {p2, p0, p1}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    :goto_0
    return-object p2

    nop

    :array_0
    .array-data 8
        0x3e8
        0x0
        0x0
    .end array-data
.end method
