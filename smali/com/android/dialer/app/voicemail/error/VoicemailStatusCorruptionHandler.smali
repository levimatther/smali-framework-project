.class public Lcom/android/dialer/app/voicemail/error/VoicemailStatusCorruptionHandler;
.super Ljava/lang/Object;
.source "VoicemailStatusCorruptionHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/app/voicemail/error/VoicemailStatusCorruptionHandler$Source;
    }
.end annotation


# static fields
.field private static final CONFIG_VVM_STATUS_FIX_DISABLED:Ljava/lang/String; = "vvm_status_fix_disabled"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static maybeFixVoicemailStatus(Landroid/content/Context;Landroid/database/Cursor;Lcom/android/dialer/app/voicemail/error/VoicemailStatusCorruptionHandler$Source;)V
    .locals 5

    .line 50
    invoke-static {p0}, Lcom/android/dialer/configprovider/ConfigProviderBindings;->get(Landroid/content/Context;)Lcom/android/dialer/configprovider/ConfigProvider;

    move-result-object v0

    const-string/jumbo v1, "vvm_status_fix_disabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/dialer/configprovider/ConfigProvider;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 54
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-eq v0, v1, :cond_1

    return-void

    .line 59
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 63
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 64
    new-instance v0, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;

    invoke-direct {v0, p0, p1}, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 65
    new-instance p1, Landroid/telecom/PhoneAccountHandle;

    iget-object v1, v0, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->phoneAccountComponentName:Ljava/lang/String;

    .line 67
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    iget-object v3, v0, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->phoneAccountId:Ljava/lang/String;

    invoke-direct {p1, v1, v3}, Landroid/telecom/PhoneAccountHandle;-><init>(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 70
    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 73
    invoke-static {v1, p1}, Lcom/android/contacts/common/compat/TelephonyManagerCompat;->isVisualVoicemailEnabled(Landroid/telephony/TelephonyManager;Landroid/telecom/PhoneAccountHandle;)Z

    move-result p1

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Source="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", CONFIGURATION_STAIE="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->configurationState:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", visualVoicemailEnabled="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "VoicemailStatusCorruptionHandler.maybeFixVoicemailStatus"

    invoke-static {v4, v1, v3}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    iget v0, v0, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->configurationState:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_5

    if-eqz p1, :cond_5

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "VVM3 voicemail status corrupted"

    .line 89
    invoke-static {v4, v0, p1}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    sget-object p1, Lcom/android/dialer/app/voicemail/error/VoicemailStatusCorruptionHandler$1;->$SwitchMap$com$android$dialer$app$voicemail$error$VoicemailStatusCorruptionHandler$Source:[I

    invoke-virtual {p2}, Lcom/android/dialer/app/voicemail/error/VoicemailStatusCorruptionHandler$Source;->ordinal()I

    move-result p2

    aget p1, p1, p2

    if-eq p1, v1, :cond_4

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3

    const-string p0, "this should never happen"

    .line 107
    invoke-static {p0}, Lcom/android/dialer/common/Assert;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 101
    :cond_3
    invoke-static {p0}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object p0

    sget-object p1, Lcom/android/dialer/logging/DialerImpression$Type;->VOICEMAIL_CONFIGURATION_STATE_CORRUPTION_DETECTED_FROM_NOTIFICATION:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 102
    invoke-interface {p0, p1}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    goto :goto_0

    .line 95
    :cond_4
    invoke-static {p0}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object p0

    sget-object p1, Lcom/android/dialer/logging/DialerImpression$Type;->VOICEMAIL_CONFIGURATION_STATE_CORRUPTION_DETECTED_FROM_ACTIVITY:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 96
    invoke-interface {p0, p1}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    :cond_5
    :goto_0
    return-void
.end method
