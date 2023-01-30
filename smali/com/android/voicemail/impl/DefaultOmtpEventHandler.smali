.class public Lcom/android/voicemail/impl/DefaultOmtpEventHandler;
.super Ljava/lang/Object;
.source "DefaultOmtpEventHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DefErrorCodeHandler"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static handleConfigurationEvent(Landroid/content/Context;Lcom/android/voicemail/impl/VoicemailStatus$Editor;Lcom/android/voicemail/impl/OmtpEvents;)V
    .locals 2

    .line 53
    sget-object p0, Lcom/android/voicemail/impl/DefaultOmtpEventHandler$1;->$SwitchMap$com$android$voicemail$impl$OmtpEvents:[I

    invoke-virtual {p2}, Lcom/android/voicemail/impl/OmtpEvents;->ordinal()I

    move-result v0

    aget p0, p0, v0

    const/4 v0, 0x4

    const/4 v1, 0x0

    packed-switch p0, :pswitch_data_0

    .line 85
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "invalid configuration event "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DefErrorCodeHandler"

    invoke-static {p1, p0}, Lcom/android/voicemail/impl/VvmLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 82
    :pswitch_0
    invoke-virtual {p1, v0}, Lcom/android/voicemail/impl/VoicemailStatus$Editor;->setConfigurationState(I)Lcom/android/voicemail/impl/VoicemailStatus$Editor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/voicemail/impl/VoicemailStatus$Editor;->apply()Z

    goto :goto_0

    .line 79
    :pswitch_1
    invoke-virtual {p1, v0}, Lcom/android/voicemail/impl/VoicemailStatus$Editor;->setConfigurationState(I)Lcom/android/voicemail/impl/VoicemailStatus$Editor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/voicemail/impl/VoicemailStatus$Editor;->apply()Z

    goto :goto_0

    .line 73
    :pswitch_2
    invoke-virtual {p1, v1}, Lcom/android/voicemail/impl/VoicemailStatus$Editor;->setConfigurationState(I)Lcom/android/voicemail/impl/VoicemailStatus$Editor;

    move-result-object p0

    .line 74
    invoke-virtual {p0, v1}, Lcom/android/voicemail/impl/VoicemailStatus$Editor;->setNotificationChannelState(I)Lcom/android/voicemail/impl/VoicemailStatus$Editor;

    move-result-object p0

    .line 75
    invoke-virtual {p0, v1}, Lcom/android/voicemail/impl/VoicemailStatus$Editor;->setDataChannelState(I)Lcom/android/voicemail/impl/VoicemailStatus$Editor;

    move-result-object p0

    .line 76
    invoke-virtual {p0}, Lcom/android/voicemail/impl/VoicemailStatus$Editor;->apply()Z

    goto :goto_0

    :pswitch_3
    const/4 p0, 0x3

    .line 66
    invoke-virtual {p1, p0}, Lcom/android/voicemail/impl/VoicemailStatus$Editor;->setConfigurationState(I)Lcom/android/voicemail/impl/VoicemailStatus$Editor;

    move-result-object p0

    .line 67
    invoke-virtual {p0, v1}, Lcom/android/voicemail/impl/VoicemailStatus$Editor;->setNotificationChannelState(I)Lcom/android/voicemail/impl/VoicemailStatus$Editor;

    move-result-object p0

    .line 68
    invoke-virtual {p0, v1}, Lcom/android/voicemail/impl/VoicemailStatus$Editor;->setDataChannelState(I)Lcom/android/voicemail/impl/VoicemailStatus$Editor;

    move-result-object p0

    .line 69
    invoke-virtual {p0}, Lcom/android/voicemail/impl/VoicemailStatus$Editor;->apply()Z

    goto :goto_0

    .line 58
    :pswitch_4
    invoke-virtual {p1, v1}, Lcom/android/voicemail/impl/VoicemailStatus$Editor;->setConfigurationState(I)Lcom/android/voicemail/impl/VoicemailStatus$Editor;

    move-result-object p0

    .line 59
    invoke-virtual {p0, v1}, Lcom/android/voicemail/impl/VoicemailStatus$Editor;->setNotificationChannelState(I)Lcom/android/voicemail/impl/VoicemailStatus$Editor;

    move-result-object p0

    .line 60
    invoke-virtual {p0}, Lcom/android/voicemail/impl/VoicemailStatus$Editor;->apply()Z

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static handleDataChannelEvent(Landroid/content/Context;Lcom/android/voicemail/impl/VoicemailStatus$Editor;Lcom/android/voicemail/impl/OmtpEvents;)V
    .locals 1

    .line 91
    sget-object p0, Lcom/android/voicemail/impl/DefaultOmtpEventHandler$1;->$SwitchMap$com$android$voicemail$impl$OmtpEvents:[I

    invoke-virtual {p2}, Lcom/android/voicemail/impl/OmtpEvents;->ordinal()I

    move-result v0

    aget p0, p0, v0

    const/4 v0, 0x3

    packed-switch p0, :pswitch_data_0

    .line 149
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "invalid data channel event "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DefErrorCodeHandler"

    invoke-static {p1, p0}, Lcom/android/voicemail/impl/VvmLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    const/4 p0, 0x5

    .line 144
    invoke-virtual {p1, p0}, Lcom/android/voicemail/impl/VoicemailStatus$Editor;->setDataChannelState(I)Lcom/android/voicemail/impl/VoicemailStatus$Editor;

    move-result-object p0

    .line 145
    invoke-virtual {p0}, Lcom/android/voicemail/impl/VoicemailStatus$Editor;->apply()Z

    goto :goto_0

    .line 134
    :pswitch_1
    invoke-virtual {p1, v0}, Lcom/android/voicemail/impl/VoicemailStatus$Editor;->setDataChannelState(I)Lcom/android/voicemail/impl/VoicemailStatus$Editor;

    move-result-object p0

    .line 135
    invoke-virtual {p0}, Lcom/android/voicemail/impl/VoicemailStatus$Editor;->apply()Z

    goto :goto_0

    :pswitch_2
    const/4 p0, 0x4

    .line 122
    invoke-virtual {p1, p0}, Lcom/android/voicemail/impl/VoicemailStatus$Editor;->setDataChannelState(I)Lcom/android/voicemail/impl/VoicemailStatus$Editor;

    move-result-object p0

    .line 123
    invoke-virtual {p0}, Lcom/android/voicemail/impl/VoicemailStatus$Editor;->apply()Z

    goto :goto_0

    :pswitch_3
    const/4 p0, 0x6

    .line 113
    invoke-virtual {p1, p0}, Lcom/android/voicemail/impl/VoicemailStatus$Editor;->setDataChannelState(I)Lcom/android/voicemail/impl/VoicemailStatus$Editor;

    move-result-object p0

    .line 115
    invoke-virtual {p0}, Lcom/android/voicemail/impl/VoicemailStatus$Editor;->apply()Z

    goto :goto_0

    .line 108
    :pswitch_4
    invoke-virtual {p1, v0}, Lcom/android/voicemail/impl/VoicemailStatus$Editor;->setDataChannelState(I)Lcom/android/voicemail/impl/VoicemailStatus$Editor;

    move-result-object p0

    .line 109
    invoke-virtual {p0}, Lcom/android/voicemail/impl/VoicemailStatus$Editor;->apply()Z

    goto :goto_0

    :pswitch_5
    const/4 p0, 0x2

    .line 103
    invoke-virtual {p1, p0}, Lcom/android/voicemail/impl/VoicemailStatus$Editor;->setDataChannelState(I)Lcom/android/voicemail/impl/VoicemailStatus$Editor;

    move-result-object p0

    .line 104
    invoke-virtual {p0}, Lcom/android/voicemail/impl/VoicemailStatus$Editor;->apply()Z

    goto :goto_0

    :pswitch_6
    const/4 p0, 0x1

    .line 98
    invoke-virtual {p1, p0}, Lcom/android/voicemail/impl/VoicemailStatus$Editor;->setDataChannelState(I)Lcom/android/voicemail/impl/VoicemailStatus$Editor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/voicemail/impl/VoicemailStatus$Editor;->apply()Z

    goto :goto_0

    :pswitch_7
    const/4 p0, 0x0

    .line 94
    invoke-virtual {p1, p0}, Lcom/android/voicemail/impl/VoicemailStatus$Editor;->setDataChannelState(I)Lcom/android/voicemail/impl/VoicemailStatus$Editor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/voicemail/impl/VoicemailStatus$Editor;->apply()Z

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static handleEvent(Landroid/content/Context;Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;Lcom/android/voicemail/impl/VoicemailStatus$Editor;Lcom/android/voicemail/impl/OmtpEvents;)V
    .locals 2

    .line 33
    invoke-virtual {p3}, Lcom/android/voicemail/impl/OmtpEvents;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 p1, 0x4

    if-eq v0, p1, :cond_0

    .line 47
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "invalid event type "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/android/voicemail/impl/OmtpEvents;->getType()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DefErrorCodeHandler"

    invoke-static {p1, p0}, Lcom/android/voicemail/impl/VvmLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 44
    :cond_0
    invoke-static {p0, p2, p3}, Lcom/android/voicemail/impl/DefaultOmtpEventHandler;->handleOtherEvent(Landroid/content/Context;Lcom/android/voicemail/impl/VoicemailStatus$Editor;Lcom/android/voicemail/impl/OmtpEvents;)V

    goto :goto_0

    .line 41
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lcom/android/voicemail/impl/DefaultOmtpEventHandler;->handleNotificationChannelEvent(Landroid/content/Context;Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;Lcom/android/voicemail/impl/VoicemailStatus$Editor;Lcom/android/voicemail/impl/OmtpEvents;)V

    goto :goto_0

    .line 38
    :cond_2
    invoke-static {p0, p2, p3}, Lcom/android/voicemail/impl/DefaultOmtpEventHandler;->handleDataChannelEvent(Landroid/content/Context;Lcom/android/voicemail/impl/VoicemailStatus$Editor;Lcom/android/voicemail/impl/OmtpEvents;)V

    goto :goto_0

    .line 35
    :cond_3
    invoke-static {p0, p2, p3}, Lcom/android/voicemail/impl/DefaultOmtpEventHandler;->handleConfigurationEvent(Landroid/content/Context;Lcom/android/voicemail/impl/VoicemailStatus$Editor;Lcom/android/voicemail/impl/OmtpEvents;)V

    :goto_0
    return-void
.end method

.method private static handleNotificationChannelEvent(Landroid/content/Context;Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;Lcom/android/voicemail/impl/VoicemailStatus$Editor;Lcom/android/voicemail/impl/OmtpEvents;)V
    .locals 1

    .line 158
    sget-object p0, Lcom/android/voicemail/impl/DefaultOmtpEventHandler$1;->$SwitchMap$com$android$voicemail$impl$OmtpEvents:[I

    invoke-virtual {p3}, Lcom/android/voicemail/impl/OmtpEvents;->ordinal()I

    move-result v0

    aget p0, p0, v0

    const/16 v0, 0x1f

    if-eq p0, v0, :cond_2

    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    .line 175
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "invalid notification channel event "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DefErrorCodeHandler"

    invoke-static {p1, p0}, Lcom/android/voicemail/impl/VvmLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    .line 168
    invoke-virtual {p2, p0}, Lcom/android/voicemail/impl/VoicemailStatus$Editor;->setNotificationChannelState(I)Lcom/android/voicemail/impl/VoicemailStatus$Editor;

    .line 169
    invoke-virtual {p1}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->isCellularDataRequired()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x2

    .line 170
    invoke-virtual {p2, p0}, Lcom/android/voicemail/impl/VoicemailStatus$Editor;->setDataChannelState(I)Lcom/android/voicemail/impl/VoicemailStatus$Editor;

    .line 172
    :cond_1
    invoke-virtual {p2}, Lcom/android/voicemail/impl/VoicemailStatus$Editor;->apply()Z

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    .line 161
    invoke-virtual {p2, p0}, Lcom/android/voicemail/impl/VoicemailStatus$Editor;->setNotificationChannelState(I)Lcom/android/voicemail/impl/VoicemailStatus$Editor;

    move-result-object p1

    .line 164
    invoke-virtual {p1, p0}, Lcom/android/voicemail/impl/VoicemailStatus$Editor;->setDataChannelState(I)Lcom/android/voicemail/impl/VoicemailStatus$Editor;

    move-result-object p0

    .line 165
    invoke-virtual {p0}, Lcom/android/voicemail/impl/VoicemailStatus$Editor;->apply()Z

    :goto_0
    return-void
.end method

.method private static handleOtherEvent(Landroid/content/Context;Lcom/android/voicemail/impl/VoicemailStatus$Editor;Lcom/android/voicemail/impl/OmtpEvents;)V
    .locals 1

    .line 181
    sget-object p0, Lcom/android/voicemail/impl/DefaultOmtpEventHandler$1;->$SwitchMap$com$android$voicemail$impl$OmtpEvents:[I

    invoke-virtual {p2}, Lcom/android/voicemail/impl/OmtpEvents;->ordinal()I

    move-result v0

    aget p0, p0, v0

    const/16 v0, 0x21

    if-eq p0, v0, :cond_0

    .line 190
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "invalid other event "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DefErrorCodeHandler"

    invoke-static {p1, p0}, Lcom/android/voicemail/impl/VvmLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    .line 184
    invoke-virtual {p1, p0}, Lcom/android/voicemail/impl/VoicemailStatus$Editor;->setConfigurationState(I)Lcom/android/voicemail/impl/VoicemailStatus$Editor;

    move-result-object p1

    .line 185
    invoke-virtual {p1, p0}, Lcom/android/voicemail/impl/VoicemailStatus$Editor;->setNotificationChannelState(I)Lcom/android/voicemail/impl/VoicemailStatus$Editor;

    move-result-object p1

    .line 186
    invoke-virtual {p1, p0}, Lcom/android/voicemail/impl/VoicemailStatus$Editor;->setDataChannelState(I)Lcom/android/voicemail/impl/VoicemailStatus$Editor;

    move-result-object p0

    .line 187
    invoke-virtual {p0}, Lcom/android/voicemail/impl/VoicemailStatus$Editor;->apply()Z

    :goto_0
    return-void
.end method
