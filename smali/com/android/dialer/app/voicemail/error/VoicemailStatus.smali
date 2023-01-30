.class public Lcom/android/dialer/app/voicemail/error/VoicemailStatus;
.super Ljava/lang/Object;
.source "VoicemailStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/app/voicemail/error/VoicemailStatus$Builder;
    }
.end annotation


# instance fields
.field public final configurationState:I

.field public final dataChannelState:I

.field public final isAirplaneMode:Z

.field public final notificationChannelState:I

.field public final phoneAccountComponentName:Ljava/lang/String;

.field public final phoneAccountId:Ljava/lang/String;

.field public final quotaOccupied:I

.field public final quotaTotal:I

.field public final settingsUri:Landroid/net/Uri;

.field public final sourcePackage:Ljava/lang/String;

.field public final type:Ljava/lang/String;

.field public final voicemailAccessUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 6

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const-string v1, ""

    .line 65
    invoke-static {p2, v0, v1}, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->getString(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->sourcePackage:Ljava/lang/String;

    const/4 v2, 0x1

    .line 67
    invoke-static {p2, v2}, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->getUri(Landroid/database/Cursor;I)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->settingsUri:Landroid/net/Uri;

    const/4 v3, 0x2

    .line 68
    invoke-static {p2, v3}, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->getUri(Landroid/database/Cursor;I)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->voicemailAccessUri:Landroid/net/Uri;

    .line 70
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string/jumbo v4, "vvm_type_omtp"

    const/16 v5, 0x19

    if-lt v3, v5, :cond_0

    const/16 v3, 0xa

    .line 72
    invoke-static {p2, v3, v4}, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->getString(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->type:Ljava/lang/String;

    const/16 v3, 0x8

    .line 75
    invoke-static {p2, v3, v1}, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->getString(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->phoneAccountComponentName:Ljava/lang/String;

    const/16 v3, 0x9

    .line 76
    invoke-static {p2, v3, v1}, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->getString(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->phoneAccountId:Ljava/lang/String;

    goto :goto_0

    .line 78
    :cond_0
    iput-object v4, p0, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->type:Ljava/lang/String;

    .line 79
    iput-object v1, p0, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->phoneAccountComponentName:Ljava/lang/String;

    .line 80
    iput-object v1, p0, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->phoneAccountId:Ljava/lang/String;

    :goto_0
    const/4 v1, 0x3

    .line 84
    invoke-static {p2, v1, v2}, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->getInt(Landroid/database/Cursor;II)I

    move-result v1

    iput v1, p0, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->configurationState:I

    const/4 v1, 0x4

    .line 89
    invoke-static {p2, v1, v2}, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->getInt(Landroid/database/Cursor;II)I

    move-result v1

    iput v1, p0, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->dataChannelState:I

    .line 100
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastO()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->sourcePackage:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 102
    invoke-virtual {p0}, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->getPhoneAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->getNotificationChannelStateFormTelephony(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)I

    move-result v1

    iput v1, p0, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->notificationChannelState:I

    goto :goto_1

    :cond_1
    const/4 v1, 0x5

    .line 105
    invoke-static {p2, v1, v2}, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->getInt(Landroid/database/Cursor;II)I

    move-result v1

    iput v1, p0, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->notificationChannelState:I

    .line 111
    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "airplane_mode_on"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_2

    move v0, v2

    :cond_2
    iput-boolean v0, p0, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->isAirplaneMode:Z

    .line 113
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    const/4 v1, -0x1

    if-lt p1, v0, :cond_3

    const/4 p1, 0x6

    .line 115
    invoke-static {p2, p1, v1}, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->getInt(Landroid/database/Cursor;II)I

    move-result p1

    iput p1, p0, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->quotaOccupied:I

    const/4 p1, 0x7

    .line 117
    invoke-static {p2, p1, v1}, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->getInt(Landroid/database/Cursor;II)I

    move-result p1

    iput p1, p0, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->quotaTotal:I

    goto :goto_2

    .line 119
    :cond_3
    iput v1, p0, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->quotaOccupied:I

    .line 120
    iput v1, p0, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->quotaTotal:I

    :goto_2
    return-void
.end method

.method private constructor <init>(Lcom/android/dialer/app/voicemail/error/VoicemailStatus$Builder;)V
    .locals 1

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    invoke-static {p1}, Lcom/android/dialer/app/voicemail/error/VoicemailStatus$Builder;->access$000(Lcom/android/dialer/app/voicemail/error/VoicemailStatus$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->sourcePackage:Ljava/lang/String;

    .line 145
    invoke-static {p1}, Lcom/android/dialer/app/voicemail/error/VoicemailStatus$Builder;->access$100(Lcom/android/dialer/app/voicemail/error/VoicemailStatus$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->phoneAccountComponentName:Ljava/lang/String;

    .line 146
    invoke-static {p1}, Lcom/android/dialer/app/voicemail/error/VoicemailStatus$Builder;->access$200(Lcom/android/dialer/app/voicemail/error/VoicemailStatus$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->phoneAccountId:Ljava/lang/String;

    .line 147
    invoke-static {p1}, Lcom/android/dialer/app/voicemail/error/VoicemailStatus$Builder;->access$300(Lcom/android/dialer/app/voicemail/error/VoicemailStatus$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->type:Ljava/lang/String;

    .line 148
    invoke-static {p1}, Lcom/android/dialer/app/voicemail/error/VoicemailStatus$Builder;->access$400(Lcom/android/dialer/app/voicemail/error/VoicemailStatus$Builder;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->settingsUri:Landroid/net/Uri;

    .line 149
    invoke-static {p1}, Lcom/android/dialer/app/voicemail/error/VoicemailStatus$Builder;->access$500(Lcom/android/dialer/app/voicemail/error/VoicemailStatus$Builder;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->voicemailAccessUri:Landroid/net/Uri;

    .line 150
    invoke-static {p1}, Lcom/android/dialer/app/voicemail/error/VoicemailStatus$Builder;->access$600(Lcom/android/dialer/app/voicemail/error/VoicemailStatus$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->configurationState:I

    .line 151
    invoke-static {p1}, Lcom/android/dialer/app/voicemail/error/VoicemailStatus$Builder;->access$700(Lcom/android/dialer/app/voicemail/error/VoicemailStatus$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->dataChannelState:I

    .line 152
    invoke-static {p1}, Lcom/android/dialer/app/voicemail/error/VoicemailStatus$Builder;->access$800(Lcom/android/dialer/app/voicemail/error/VoicemailStatus$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->notificationChannelState:I

    .line 153
    invoke-static {p1}, Lcom/android/dialer/app/voicemail/error/VoicemailStatus$Builder;->access$900(Lcom/android/dialer/app/voicemail/error/VoicemailStatus$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->quotaOccupied:I

    .line 154
    invoke-static {p1}, Lcom/android/dialer/app/voicemail/error/VoicemailStatus$Builder;->access$1000(Lcom/android/dialer/app/voicemail/error/VoicemailStatus$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->quotaTotal:I

    .line 155
    invoke-static {p1}, Lcom/android/dialer/app/voicemail/error/VoicemailStatus$Builder;->access$1100(Lcom/android/dialer/app/voicemail/error/VoicemailStatus$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->isAirplaneMode:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/dialer/app/voicemail/error/VoicemailStatus$Builder;Lcom/android/dialer/app/voicemail/error/VoicemailStatus$1;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;-><init>(Lcom/android/dialer/app/voicemail/error/VoicemailStatus$Builder;)V

    return-void
.end method

.method private static getInt(Landroid/database/Cursor;II)I
    .locals 1

    .line 304
    invoke-interface {p0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return p2

    .line 307
    :cond_0
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    return p0
.end method

.method private static getNotificationChannelStateFormTelephony(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)I
    .locals 2

    .line 126
    const-class v0, Landroid/telephony/TelephonyManager;

    .line 128
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 129
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->createForPhoneAccountHandle(Landroid/telecom/PhoneAccountHandle;)Landroid/telephony/TelephonyManager;

    move-result-object p0

    const/4 p1, 0x1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    new-array p0, v0, [Ljava/lang/Object;

    const-string v0, "VoicemailStatus.constructor"

    const-string v1, "invalid PhoneAccountHandle"

    .line 131
    invoke-static {v0, v1, p0}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1

    .line 134
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getState()I

    move-result p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    return p1
.end method

.method private static getString(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 311
    invoke-interface {p0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    .line 314
    :cond_0
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getUri(Landroid/database/Cursor;I)Landroid/net/Uri;
    .locals 1

    .line 297
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 298
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getPhoneAccountHandle()Landroid/telecom/PhoneAccountHandle;
    .locals 3

    .line 318
    new-instance v0, Landroid/telecom/PhoneAccountHandle;

    iget-object v1, p0, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->phoneAccountComponentName:Ljava/lang/String;

    .line 319
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->phoneAccountId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/telecom/PhoneAccountHandle;-><init>(Landroid/content/ComponentName;Ljava/lang/String;)V

    return-object v0
.end method

.method public isActive(Landroid/content/Context;)Z
    .locals 4

    .line 244
    invoke-static {p1}, Lcom/android/voicemail/VoicemailComponent;->get(Landroid/content/Context;)Lcom/android/voicemail/VoicemailComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/voicemail/VoicemailComponent;->getVoicemailClient()Lcom/android/voicemail/VoicemailClient;

    move-result-object v0

    .line 245
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->sourcePackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 246
    invoke-interface {v0}, Lcom/android/voicemail/VoicemailClient;->isVoicemailModuleEnabled()Z

    move-result v1

    const-string v3, "VoicemailStatus.isActive"

    if-nez v1, :cond_0

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "module disabled"

    .line 247
    invoke-static {v3, v0, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    .line 250
    :cond_0
    invoke-virtual {p0}, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->getPhoneAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/voicemail/VoicemailClient;->hasCarrierSupport(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Z

    move-result v1

    if-nez v1, :cond_1

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "carrier not supported"

    .line 251
    invoke-static {v3, v0, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    .line 254
    :cond_1
    invoke-virtual {p0}, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->getPhoneAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/voicemail/VoicemailClient;->isVoicemailEnabled(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Z

    move-result p1

    if-nez p1, :cond_2

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "VVM disabled"

    .line 255
    invoke-static {v3, v0, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    .line 259
    :cond_2
    iget p1, p0, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->configurationState:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v1, 0x5

    if-eq p1, v1, :cond_3

    return v0

    :cond_3
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VoicemailStatus[sourcePackage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->sourcePackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", settingsUri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->settingsUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", voicemailAccessUri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->voicemailAccessUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", configurationState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->configurationState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dataChannelState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->dataChannelState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", notificationChannelState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->notificationChannelState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", quotaOccupied: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->quotaOccupied:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", quotaTotal: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->quotaTotal:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isAirplaneMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->isAirplaneMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
