.class public Lcom/android/voicemail/impl/VoicemailStatus$Editor;
.super Ljava/lang/Object;
.source "VoicemailStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/voicemail/impl/VoicemailStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Editor"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

.field private mValues:Landroid/content/ContentValues;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/android/voicemail/impl/VoicemailStatus$Editor;->mValues:Landroid/content/ContentValues;

    .line 40
    iput-object p1, p0, Lcom/android/voicemail/impl/VoicemailStatus$Editor;->mContext:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcom/android/voicemail/impl/VoicemailStatus$Editor;->mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    if-nez p2, :cond_0

    const-string p1, "VvmStatus"

    const-string p2, "VoicemailStatus.Editor created with null phone account, status will not be written"

    .line 43
    invoke-static {p1, p2}, Lcom/android/voicemail/impl/VvmLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Lcom/android/voicemail/impl/VoicemailStatus$1;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/android/voicemail/impl/VoicemailStatus$Editor;-><init>(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)V

    return-void
.end method


# virtual methods
.method public apply()Z
    .locals 4

    .line 92
    iget-object v0, p0, Lcom/android/voicemail/impl/VoicemailStatus$Editor;->mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 95
    :cond_0
    iget-object v2, p0, Lcom/android/voicemail/impl/VoicemailStatus$Editor;->mValues:Landroid/content/ContentValues;

    .line 97
    invoke-virtual {v0}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "phone_account_component_name"

    .line 95
    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/android/voicemail/impl/VoicemailStatus$Editor;->mValues:Landroid/content/ContentValues;

    iget-object v2, p0, Lcom/android/voicemail/impl/VoicemailStatus$Editor;->mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v2}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "phone_account_id"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/android/voicemail/impl/VoicemailStatus$Editor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 100
    iget-object v2, p0, Lcom/android/voicemail/impl/VoicemailStatus$Editor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/VoicemailContract$Status;->buildSourceUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 102
    :try_start_0
    iget-object v3, p0, Lcom/android/voicemail/impl/VoicemailStatus$Editor;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    iget-object v0, p0, Lcom/android/voicemail/impl/VoicemailStatus$Editor;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const-string v2, "VvmStatus"

    const-string v3, "apply :: failed to insert content resolver "

    .line 104
    invoke-static {v2, v3, v0}, Lcom/android/voicemail/impl/VvmLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 105
    iget-object v0, p0, Lcom/android/voicemail/impl/VoicemailStatus$Editor;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    return v1
.end method

.method public getPhoneAccountHandle()Landroid/telecom/PhoneAccountHandle;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/android/voicemail/impl/VoicemailStatus$Editor;->mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    return-object v0
.end method

.method public getValues()Landroid/content/ContentValues;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/android/voicemail/impl/VoicemailStatus$Editor;->mValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method public setConfigurationState(I)Lcom/android/voicemail/impl/VoicemailStatus$Editor;
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/android/voicemail/impl/VoicemailStatus$Editor;->mValues:Landroid/content/ContentValues;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "configuration_state"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object p0
.end method

.method public setDataChannelState(I)Lcom/android/voicemail/impl/VoicemailStatus$Editor;
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/android/voicemail/impl/VoicemailStatus$Editor;->mValues:Landroid/content/ContentValues;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "data_channel_state"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object p0
.end method

.method public setNotificationChannelState(I)Lcom/android/voicemail/impl/VoicemailStatus$Editor;
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/android/voicemail/impl/VoicemailStatus$Editor;->mValues:Landroid/content/ContentValues;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "notification_channel_state"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object p0
.end method

.method public setQuota(II)Lcom/android/voicemail/impl/VoicemailStatus$Editor;
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    if-ne p2, v0, :cond_0

    return-object p0

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/android/voicemail/impl/VoicemailStatus$Editor;->mValues:Landroid/content/ContentValues;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "quota_occupied"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 82
    iget-object p1, p0, Lcom/android/voicemail/impl/VoicemailStatus$Editor;->mValues:Landroid/content/ContentValues;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "quota_total"

    invoke-virtual {p1, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/android/voicemail/impl/VoicemailStatus$Editor;
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/android/voicemail/impl/VoicemailStatus$Editor;->mValues:Landroid/content/ContentValues;

    const-string v1, "source_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method
