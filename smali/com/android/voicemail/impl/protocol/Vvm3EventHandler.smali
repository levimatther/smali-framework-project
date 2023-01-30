.class public Lcom/android/voicemail/impl/protocol/Vvm3EventHandler;
.super Ljava/lang/Object;
.source "Vvm3EventHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/voicemail/impl/protocol/Vvm3EventHandler$ErrorCode;
    }
.end annotation


# static fields
.field public static final IMAP_ERROR:I = -0x270f

.field public static final IMAP_GETQUOTA_ERROR:I = -0x270d

.field public static final IMAP_SELECT_ERROR:I = -0x2705

.field public static final INVALID_PASSWORD:I = -0x2709

.field public static final MAILBOX_NOT_INITIALIZED:I = -0x270a

.field public static final PIN_NOT_SET:I = -0x64

.field public static final SERVICE_NOT_ACTIVATED:I = -0x270c

.field public static final SERVICE_NOT_PROVISIONED:I = -0x270b

.field public static final SPG_DNS_FAILURE:I = -0x232b

.field public static final SPG_NO_CELLULAR:I = -0x232e

.field public static final SPG_URL_NOT_FOUND:I = -0x12d

.field public static final STATUS_SMS_TIMEOUT:I = -0x2331

.field public static final SUBSCRIBER_BLOCKED:I = -0x2706

.field public static final SUBSCRIBER_UNKNOWN:I = -0x63

.field private static final TAG:Ljava/lang/String; = "Vvm3EventHandler"

.field public static final UNKNOWN_DEVICE:I = -0x2708

.field public static final UNKNOWN_USER:I = -0x2707

.field public static final USER_BLOCKED:I = -0x270e

.field public static final VMG_COMMUNICATION_ERROR:I = -0x67

.field public static final VMG_DB_ERROR:I = -0x66

.field public static final VMG_DNS_FAILURE:I = -0x232a

.field public static final VMG_INTERNAL_ERROR:I = -0x65

.field public static final VMG_NO_CELLULAR:I = -0x232d

.field public static final VMG_TIMEOUT:I = -0x2330

.field public static final VMG_UNKNOWN_ERROR:I = -0x1

.field public static final VMS_DNS_FAILURE:I = -0x2329

.field public static final VMS_NO_CELLULAR:I = -0x232c

.field public static final VMS_TIMEOUT:I = -0x232f


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static handleConfigurationEvent(Landroid/content/Context;Lcom/android/voicemail/impl/VoicemailStatus$Editor;Lcom/android/voicemail/impl/OmtpEvents;)Z
    .locals 4

    .line 137
    sget-object v0, Lcom/android/voicemail/impl/protocol/Vvm3EventHandler$1;->$SwitchMap$com$android$voicemail$impl$OmtpEvents:[I

    invoke-virtual {p2}, Lcom/android/voicemail/impl/OmtpEvents;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    const/16 v1, -0x64

    const/4 v2, 0x0

    if-eq p2, v0, :cond_4

    const/4 v3, 0x2

    if-eq p2, v3, :cond_2

    const/4 p0, 0x3

    if-eq p2, p0, :cond_1

    const/4 p0, 0x4

    if-eq p2, p0, :cond_0

    return v2

    :cond_0
    const/16 p0, -0x2331

    .line 160
    invoke-static {p1, p0}, Lcom/android/voicemail/impl/protocol/Vvm3EventHandler;->postError(Lcom/android/voicemail/impl/VoicemailStatus$Editor;I)V

    goto :goto_1

    .line 157
    :cond_1
    invoke-static {p1, v1}, Lcom/android/voicemail/impl/protocol/Vvm3EventHandler;->postError(Lcom/android/voicemail/impl/VoicemailStatus$Editor;I)V

    goto :goto_1

    .line 146
    :cond_2
    invoke-virtual {p1}, Lcom/android/voicemail/impl/VoicemailStatus$Editor;->getPhoneAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/android/voicemail/impl/protocol/Vvm3EventHandler;->isPinRandomized(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 147
    invoke-virtual {p1, v1}, Lcom/android/voicemail/impl/VoicemailStatus$Editor;->setConfigurationState(I)Lcom/android/voicemail/impl/VoicemailStatus$Editor;

    goto :goto_0

    .line 149
    :cond_3
    invoke-virtual {p1, v2}, Lcom/android/voicemail/impl/VoicemailStatus$Editor;->setConfigurationState(I)Lcom/android/voicemail/impl/VoicemailStatus$Editor;

    .line 152
    :goto_0
    invoke-virtual {p1, v2}, Lcom/android/voicemail/impl/VoicemailStatus$Editor;->setNotificationChannelState(I)Lcom/android/voicemail/impl/VoicemailStatus$Editor;

    move-result-object p0

    .line 153
    invoke-virtual {p0, v2}, Lcom/android/voicemail/impl/VoicemailStatus$Editor;->setDataChannelState(I)Lcom/android/voicemail/impl/VoicemailStatus$Editor;

    move-result-object p0

    .line 154
    invoke-virtual {p0}, Lcom/android/voicemail/impl/VoicemailStatus$Editor;->apply()Z

    goto :goto_1

    .line 139
    :cond_4
    invoke-virtual {p1}, Lcom/android/voicemail/impl/VoicemailStatus$Editor;->getPhoneAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/android/voicemail/impl/protocol/Vvm3EventHandler;->isPinRandomized(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Z

    move-result p0

    if-nez p0, :cond_5

    return v2

    .line 142
    :cond_5
    invoke-static {p1, v1}, Lcom/android/voicemail/impl/protocol/Vvm3EventHandler;->postError(Lcom/android/voicemail/impl/VoicemailStatus$Editor;I)V

    :goto_1
    return v0
.end method

.method private static handleDataChannelEvent(Lcom/android/voicemail/impl/VoicemailStatus$Editor;Lcom/android/voicemail/impl/OmtpEvents;)Z
    .locals 1

    .line 169
    sget-object v0, Lcom/android/voicemail/impl/protocol/Vvm3EventHandler$1;->$SwitchMap$com$android$voicemail$impl$OmtpEvents:[I

    invoke-virtual {p1}, Lcom/android/voicemail/impl/OmtpEvents;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/16 v0, -0x270f

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    .line 210
    :pswitch_0
    invoke-static {p0, v0}, Lcom/android/voicemail/impl/protocol/Vvm3EventHandler;->postError(Lcom/android/voicemail/impl/VoicemailStatus$Editor;I)V

    goto :goto_0

    :pswitch_1
    const/16 p1, -0x270e

    .line 205
    invoke-static {p0, p1}, Lcom/android/voicemail/impl/protocol/Vvm3EventHandler;->postError(Lcom/android/voicemail/impl/VoicemailStatus$Editor;I)V

    goto :goto_0

    :pswitch_2
    const/16 p1, -0x270c

    .line 202
    invoke-static {p0, p1}, Lcom/android/voicemail/impl/protocol/Vvm3EventHandler;->postError(Lcom/android/voicemail/impl/VoicemailStatus$Editor;I)V

    goto :goto_0

    :pswitch_3
    const/16 p1, -0x270b

    .line 199
    invoke-static {p0, p1}, Lcom/android/voicemail/impl/protocol/Vvm3EventHandler;->postError(Lcom/android/voicemail/impl/VoicemailStatus$Editor;I)V

    goto :goto_0

    :pswitch_4
    const/16 p1, -0x270a

    .line 196
    invoke-static {p0, p1}, Lcom/android/voicemail/impl/protocol/Vvm3EventHandler;->postError(Lcom/android/voicemail/impl/VoicemailStatus$Editor;I)V

    goto :goto_0

    :pswitch_5
    const/16 p1, -0x2709

    .line 193
    invoke-static {p0, p1}, Lcom/android/voicemail/impl/protocol/Vvm3EventHandler;->postError(Lcom/android/voicemail/impl/VoicemailStatus$Editor;I)V

    goto :goto_0

    :pswitch_6
    const/16 p1, -0x2708

    .line 190
    invoke-static {p0, p1}, Lcom/android/voicemail/impl/protocol/Vvm3EventHandler;->postError(Lcom/android/voicemail/impl/VoicemailStatus$Editor;I)V

    goto :goto_0

    :pswitch_7
    const/16 p1, -0x2707

    .line 187
    invoke-static {p0, p1}, Lcom/android/voicemail/impl/protocol/Vvm3EventHandler;->postError(Lcom/android/voicemail/impl/VoicemailStatus$Editor;I)V

    goto :goto_0

    .line 184
    :pswitch_8
    invoke-static {p0, v0}, Lcom/android/voicemail/impl/protocol/Vvm3EventHandler;->postError(Lcom/android/voicemail/impl/VoicemailStatus$Editor;I)V

    goto :goto_0

    :pswitch_9
    const/16 p1, -0x2329

    .line 181
    invoke-static {p0, p1}, Lcom/android/voicemail/impl/protocol/Vvm3EventHandler;->postError(Lcom/android/voicemail/impl/VoicemailStatus$Editor;I)V

    goto :goto_0

    :pswitch_a
    const/16 p1, -0x232f

    .line 178
    invoke-static {p0, p1}, Lcom/android/voicemail/impl/protocol/Vvm3EventHandler;->postError(Lcom/android/voicemail/impl/VoicemailStatus$Editor;I)V

    goto :goto_0

    :pswitch_b
    const/16 p1, -0x232c

    .line 173
    invoke-static {p0, p1}, Lcom/android/voicemail/impl/protocol/Vvm3EventHandler;->postError(Lcom/android/voicemail/impl/VoicemailStatus$Editor;I)V

    :goto_0
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static handleEvent(Landroid/content/Context;Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;Lcom/android/voicemail/impl/VoicemailStatus$Editor;Lcom/android/voicemail/impl/OmtpEvents;)V
    .locals 2

    .line 114
    invoke-virtual {p3}, Lcom/android/voicemail/impl/OmtpEvents;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid event type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/android/voicemail/impl/OmtpEvents;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Vvm3EventHandler"

    invoke-static {v1, v0}, Lcom/android/voicemail/impl/VvmLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0

    .line 125
    :cond_0
    invoke-static {p2, p3}, Lcom/android/voicemail/impl/protocol/Vvm3EventHandler;->handleOtherEvent(Lcom/android/voicemail/impl/VoicemailStatus$Editor;Lcom/android/voicemail/impl/OmtpEvents;)Z

    move-result v0

    goto :goto_0

    .line 122
    :cond_1
    invoke-static {p2, p3}, Lcom/android/voicemail/impl/protocol/Vvm3EventHandler;->handleNotificationChannelEvent(Lcom/android/voicemail/impl/VoicemailStatus$Editor;Lcom/android/voicemail/impl/OmtpEvents;)Z

    move-result v0

    goto :goto_0

    .line 119
    :cond_2
    invoke-static {p2, p3}, Lcom/android/voicemail/impl/protocol/Vvm3EventHandler;->handleDataChannelEvent(Lcom/android/voicemail/impl/VoicemailStatus$Editor;Lcom/android/voicemail/impl/OmtpEvents;)Z

    move-result v0

    goto :goto_0

    .line 116
    :cond_3
    invoke-static {p0, p2, p3}, Lcom/android/voicemail/impl/protocol/Vvm3EventHandler;->handleConfigurationEvent(Landroid/content/Context;Lcom/android/voicemail/impl/VoicemailStatus$Editor;Lcom/android/voicemail/impl/OmtpEvents;)Z

    move-result v0

    :goto_0
    if-nez v0, :cond_4

    .line 131
    invoke-static {p0, p1, p2, p3}, Lcom/android/voicemail/impl/DefaultOmtpEventHandler;->handleEvent(Landroid/content/Context;Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;Lcom/android/voicemail/impl/VoicemailStatus$Editor;Lcom/android/voicemail/impl/OmtpEvents;)V

    :cond_4
    return-void
.end method

.method private static handleNotificationChannelEvent(Lcom/android/voicemail/impl/VoicemailStatus$Editor;Lcom/android/voicemail/impl/OmtpEvents;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private static handleOtherEvent(Lcom/android/voicemail/impl/VoicemailStatus$Editor;Lcom/android/voicemail/impl/OmtpEvents;)Z
    .locals 1

    .line 224
    sget-object v0, Lcom/android/voicemail/impl/protocol/Vvm3EventHandler$1;->$SwitchMap$com$android$voicemail$impl$OmtpEvents:[I

    invoke-virtual {p1}, Lcom/android/voicemail/impl/OmtpEvents;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/16 p1, -0x63

    .line 250
    invoke-static {p0, p1}, Lcom/android/voicemail/impl/protocol/Vvm3EventHandler;->postError(Lcom/android/voicemail/impl/VoicemailStatus$Editor;I)V

    goto :goto_0

    :pswitch_1
    const/16 p1, -0x2706

    .line 247
    invoke-static {p0, p1}, Lcom/android/voicemail/impl/protocol/Vvm3EventHandler;->postError(Lcom/android/voicemail/impl/VoicemailStatus$Editor;I)V

    goto :goto_0

    :pswitch_2
    const/16 p1, -0x270c

    .line 244
    invoke-static {p0, p1}, Lcom/android/voicemail/impl/protocol/Vvm3EventHandler;->postError(Lcom/android/voicemail/impl/VoicemailStatus$Editor;I)V

    goto :goto_0

    :pswitch_3
    const/16 p1, -0x2330

    .line 241
    invoke-static {p0, p1}, Lcom/android/voicemail/impl/protocol/Vvm3EventHandler;->postError(Lcom/android/voicemail/impl/VoicemailStatus$Editor;I)V

    goto :goto_0

    :pswitch_4
    const/16 p1, -0x232e

    .line 238
    invoke-static {p0, p1}, Lcom/android/voicemail/impl/protocol/Vvm3EventHandler;->postError(Lcom/android/voicemail/impl/VoicemailStatus$Editor;I)V

    goto :goto_0

    :pswitch_5
    const/16 p1, -0x232d

    .line 235
    invoke-static {p0, p1}, Lcom/android/voicemail/impl/protocol/Vvm3EventHandler;->postError(Lcom/android/voicemail/impl/VoicemailStatus$Editor;I)V

    goto :goto_0

    :pswitch_6
    const/16 p1, -0x232b

    .line 232
    invoke-static {p0, p1}, Lcom/android/voicemail/impl/protocol/Vvm3EventHandler;->postError(Lcom/android/voicemail/impl/VoicemailStatus$Editor;I)V

    goto :goto_0

    :pswitch_7
    const/16 p1, -0x232a

    .line 229
    invoke-static {p0, p1}, Lcom/android/voicemail/impl/protocol/Vvm3EventHandler;->postError(Lcom/android/voicemail/impl/VoicemailStatus$Editor;I)V

    goto :goto_0

    :pswitch_8
    const/16 p1, -0x270a

    .line 226
    invoke-static {p0, p1}, Lcom/android/voicemail/impl/protocol/Vvm3EventHandler;->postError(Lcom/android/voicemail/impl/VoicemailStatus$Editor;I)V

    :goto_0
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static isPinRandomized(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Z
    .locals 0

    if-nez p1, :cond_0

    const-string p0, "Vvm3EventHandler"

    const-string p1, "status editor has null phone account handle"

    .line 302
    invoke-static {p0, p1}, Lcom/android/voicemail/impl/VvmLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 305
    :cond_0
    invoke-static {p0, p1}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->isDefaultOldPinSet(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Z

    move-result p0

    return p0
.end method

.method private static postError(Lcom/android/voicemail/impl/VoicemailStatus$Editor;I)V
    .locals 2

    const/16 v0, -0x12d

    if-eq p1, v0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown error code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Vvm3EventHandler"

    invoke-static {v0, p1}, Lcom/android/voicemail/impl/VvmLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 291
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/android/voicemail/impl/VoicemailStatus$Editor;->setNotificationChannelState(I)Lcom/android/voicemail/impl/VoicemailStatus$Editor;

    goto :goto_0

    .line 288
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/android/voicemail/impl/VoicemailStatus$Editor;->setDataChannelState(I)Lcom/android/voicemail/impl/VoicemailStatus$Editor;

    goto :goto_0

    .line 280
    :cond_0
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/android/voicemail/impl/VoicemailStatus$Editor;->setConfigurationState(I)Lcom/android/voicemail/impl/VoicemailStatus$Editor;

    .line 296
    :goto_0
    invoke-virtual {p0}, Lcom/android/voicemail/impl/VoicemailStatus$Editor;->apply()Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x270f
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x2331
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch -0x67
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
