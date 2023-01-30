.class final Lcom/android/dialer/simulator/impl/SimulatorVoicemail;
.super Ljava/lang/Object;
.source "SimulatorVoicemail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/simulator/impl/SimulatorVoicemail$Voicemail;
    }
.end annotation


# static fields
.field private static final ACCOUNT_ID:Ljava/lang/String; = "ACCOUNT_ID"

.field private static final SIMPLE_VOICEMAILS:[Lcom/android/dialer/simulator/impl/SimulatorVoicemail$Voicemail$Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/dialer/simulator/impl/SimulatorVoicemail$Voicemail$Builder;

    .line 38
    invoke-static {}, Lcom/android/dialer/simulator/impl/SimulatorVoicemail$Voicemail;->builder()Lcom/android/dialer/simulator/impl/SimulatorVoicemail$Voicemail$Builder;

    move-result-object v1

    const-string v2, "+1-302-6365454"

    .line 39
    invoke-virtual {v1, v2}, Lcom/android/dialer/simulator/impl/SimulatorVoicemail$Voicemail$Builder;->setPhoneNumber(Ljava/lang/String;)Lcom/android/dialer/simulator/impl/SimulatorVoicemail$Voicemail$Builder;

    move-result-object v1

    const-string v3, "Hi, this is a very long voicemail. Please call me back at 650 253 0000. I hope you listen to all of it. This is very important. Hi, this is a very long voicemail. I hope you listen to all of it. It\'s very important."

    .line 40
    invoke-virtual {v1, v3}, Lcom/android/dialer/simulator/impl/SimulatorVoicemail$Voicemail$Builder;->setTranscription(Ljava/lang/String;)Lcom/android/dialer/simulator/impl/SimulatorVoicemail$Voicemail$Builder;

    move-result-object v1

    const-wide/16 v3, 0xa

    .line 45
    invoke-virtual {v1, v3, v4}, Lcom/android/dialer/simulator/impl/SimulatorVoicemail$Voicemail$Builder;->setDurationSeconds(J)Lcom/android/dialer/simulator/impl/SimulatorVoicemail$Voicemail$Builder;

    move-result-object v1

    const/4 v3, 0x0

    .line 46
    invoke-virtual {v1, v3}, Lcom/android/dialer/simulator/impl/SimulatorVoicemail$Voicemail$Builder;->setIsRead(Z)Lcom/android/dialer/simulator/impl/SimulatorVoicemail$Voicemail$Builder;

    move-result-object v1

    aput-object v1, v0, v3

    .line 48
    invoke-static {}, Lcom/android/dialer/simulator/impl/SimulatorVoicemail$Voicemail;->builder()Lcom/android/dialer/simulator/impl/SimulatorVoicemail$Voicemail$Builder;

    move-result-object v1

    .line 49
    invoke-virtual {v1, v2}, Lcom/android/dialer/simulator/impl/SimulatorVoicemail$Voicemail$Builder;->setPhoneNumber(Ljava/lang/String;)Lcom/android/dialer/simulator/impl/SimulatorVoicemail$Voicemail$Builder;

    move-result-object v1

    const-string/jumbo v3, "\u0647\u0632\u0627\u0631\u0627\u0646 \u062f\u0648\u0633\u062a \u06a9\u0645 \u0627\u0646\u062f \u0648 \u06cc\u06a9 \u062f\u0634\u0645\u0646 \u0632\u06cc\u0627\u062f"

    .line 50
    invoke-virtual {v1, v3}, Lcom/android/dialer/simulator/impl/SimulatorVoicemail$Voicemail$Builder;->setTranscription(Ljava/lang/String;)Lcom/android/dialer/simulator/impl/SimulatorVoicemail$Voicemail$Builder;

    move-result-object v1

    const-wide/16 v3, 0x3c

    .line 51
    invoke-virtual {v1, v3, v4}, Lcom/android/dialer/simulator/impl/SimulatorVoicemail$Voicemail$Builder;->setDurationSeconds(J)Lcom/android/dialer/simulator/impl/SimulatorVoicemail$Voicemail$Builder;

    move-result-object v1

    const/4 v5, 0x1

    .line 52
    invoke-virtual {v1, v5}, Lcom/android/dialer/simulator/impl/SimulatorVoicemail$Voicemail$Builder;->setIsRead(Z)Lcom/android/dialer/simulator/impl/SimulatorVoicemail$Voicemail$Builder;

    move-result-object v1

    aput-object v1, v0, v5

    .line 54
    invoke-static {}, Lcom/android/dialer/simulator/impl/SimulatorVoicemail$Voicemail;->builder()Lcom/android/dialer/simulator/impl/SimulatorVoicemail$Voicemail$Builder;

    move-result-object v1

    const-string v6, ""

    .line 55
    invoke-virtual {v1, v6}, Lcom/android/dialer/simulator/impl/SimulatorVoicemail$Voicemail$Builder;->setPhoneNumber(Ljava/lang/String;)Lcom/android/dialer/simulator/impl/SimulatorVoicemail$Voicemail$Builder;

    move-result-object v1

    .line 56
    invoke-virtual {v1, v6}, Lcom/android/dialer/simulator/impl/SimulatorVoicemail$Voicemail$Builder;->setTranscription(Ljava/lang/String;)Lcom/android/dialer/simulator/impl/SimulatorVoicemail$Voicemail$Builder;

    move-result-object v1

    .line 57
    invoke-virtual {v1, v3, v4}, Lcom/android/dialer/simulator/impl/SimulatorVoicemail$Voicemail$Builder;->setDurationSeconds(J)Lcom/android/dialer/simulator/impl/SimulatorVoicemail$Voicemail$Builder;

    move-result-object v1

    .line 58
    invoke-virtual {v1, v5}, Lcom/android/dialer/simulator/impl/SimulatorVoicemail$Voicemail$Builder;->setIsRead(Z)Lcom/android/dialer/simulator/impl/SimulatorVoicemail$Voicemail$Builder;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v0, v3

    .line 60
    invoke-static {}, Lcom/android/dialer/simulator/impl/SimulatorVoicemail$Voicemail;->builder()Lcom/android/dialer/simulator/impl/SimulatorVoicemail$Voicemail$Builder;

    move-result-object v1

    .line 61
    invoke-virtual {v1, v2}, Lcom/android/dialer/simulator/impl/SimulatorVoicemail$Voicemail$Builder;->setPhoneNumber(Ljava/lang/String;)Lcom/android/dialer/simulator/impl/SimulatorVoicemail$Voicemail$Builder;

    move-result-object v1

    .line 62
    invoke-virtual {v1, v6}, Lcom/android/dialer/simulator/impl/SimulatorVoicemail$Voicemail$Builder;->setTranscription(Ljava/lang/String;)Lcom/android/dialer/simulator/impl/SimulatorVoicemail$Voicemail$Builder;

    move-result-object v1

    const-wide/16 v2, 0x0

    .line 63
    invoke-virtual {v1, v2, v3}, Lcom/android/dialer/simulator/impl/SimulatorVoicemail$Voicemail$Builder;->setDurationSeconds(J)Lcom/android/dialer/simulator/impl/SimulatorVoicemail$Voicemail$Builder;

    move-result-object v1

    .line 64
    invoke-virtual {v1, v5}, Lcom/android/dialer/simulator/impl/SimulatorVoicemail$Voicemail$Builder;->setIsRead(Z)Lcom/android/dialer/simulator/impl/SimulatorVoicemail$Voicemail$Builder;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 66
    invoke-static {}, Lcom/android/dialer/simulator/impl/SimulatorVoicemail$Voicemail;->builder()Lcom/android/dialer/simulator/impl/SimulatorVoicemail$Voicemail$Builder;

    move-result-object v1

    const-string v2, "711"

    .line 67
    invoke-virtual {v1, v2}, Lcom/android/dialer/simulator/impl/SimulatorVoicemail$Voicemail$Builder;->setPhoneNumber(Ljava/lang/String;)Lcom/android/dialer/simulator/impl/SimulatorVoicemail$Voicemail$Builder;

    move-result-object v1

    const-string v2, "This is a short voicemail."

    .line 68
    invoke-virtual {v1, v2}, Lcom/android/dialer/simulator/impl/SimulatorVoicemail$Voicemail$Builder;->setTranscription(Ljava/lang/String;)Lcom/android/dialer/simulator/impl/SimulatorVoicemail$Voicemail$Builder;

    move-result-object v1

    const-wide/16 v2, 0xc

    .line 69
    invoke-virtual {v1, v2, v3}, Lcom/android/dialer/simulator/impl/SimulatorVoicemail$Voicemail$Builder;->setDurationSeconds(J)Lcom/android/dialer/simulator/impl/SimulatorVoicemail$Voicemail$Builder;

    move-result-object v1

    .line 70
    invoke-virtual {v1, v5}, Lcom/android/dialer/simulator/impl/SimulatorVoicemail$Voicemail$Builder;->setIsRead(Z)Lcom/android/dialer/simulator/impl/SimulatorVoicemail$Voicemail$Builder;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/dialer/simulator/impl/SimulatorVoicemail;->SIMPLE_VOICEMAILS:[Lcom/android/dialer/simulator/impl/SimulatorVoicemail$Voicemail$Builder;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static enableVoicemail(Landroid/content/Context;)V
    .locals 4

    .line 94
    new-instance v0, Landroid/telecom/PhoneAccountHandle;

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/android/dialer/simulator/impl/SimulatorVoicemail;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "ACCOUNT_ID"

    invoke-direct {v0, v1, v2}, Landroid/telecom/PhoneAccountHandle;-><init>(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 97
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 98
    invoke-virtual {v0}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "source_package"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "source_type"

    const-string/jumbo v3, "vvm_type_omtp"

    .line 99
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-virtual {v0}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "phone_account_component_name"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-virtual {v0}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v2, "phone_account_id"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 102
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "configuration_state"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "data_channel_state"

    .line 103
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "notification_channel_state"

    .line 104
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 105
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/provider/VoicemailContract$Status;->buildSourceUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    return-void
.end method

.method public static populateVoicemail(Landroid/content/Context;)V
    .locals 10

    .line 75
    invoke-static {}, Lcom/android/dialer/common/Assert;->isWorkerThread()V

    .line 76
    invoke-static {p0}, Lcom/android/dialer/simulator/impl/SimulatorVoicemail;->enableVoicemail(Landroid/content/Context;)V

    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x4

    if-ge v3, v4, :cond_1

    .line 81
    sget-object v4, Lcom/android/dialer/simulator/impl/SimulatorVoicemail;->SIMPLE_VOICEMAILS:[Lcom/android/dialer/simulator/impl/SimulatorVoicemail$Voicemail$Builder;

    array-length v5, v4

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_0

    aget-object v7, v4, v6

    .line 82
    invoke-virtual {v7, v0, v1}, Lcom/android/dialer/simulator/impl/SimulatorVoicemail$Voicemail$Builder;->setTimeMillis(J)Lcom/android/dialer/simulator/impl/SimulatorVoicemail$Voicemail$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/dialer/simulator/impl/SimulatorVoicemail$Voicemail$Builder;->build()Lcom/android/dialer/simulator/impl/SimulatorVoicemail$Voicemail;

    move-result-object v7

    .line 84
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 86
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/provider/VoicemailContract$Voicemails;->buildSourceUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 87
    invoke-virtual {v7, p0}, Lcom/android/dialer/simulator/impl/SimulatorVoicemail$Voicemail;->getAsContentValues(Landroid/content/Context;)Landroid/content/ContentValues;

    move-result-object v7

    .line 85
    invoke-virtual {v8, v9, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 88
    sget-object v7, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v8, 0x2

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v7

    sub-long/2addr v0, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
