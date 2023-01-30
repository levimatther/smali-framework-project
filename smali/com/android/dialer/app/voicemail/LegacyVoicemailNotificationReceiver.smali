.class public Lcom/android/dialer/app/voicemail/LegacyVoicemailNotificationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LegacyVoicemailNotificationReceiver.java"


# static fields
.field private static final EXTRA_IS_REFRESH:Ljava/lang/String; = "is_refresh"

.field private static final EXTRA_SUB_ID:Ljava/lang/String; = "sub_id"

.field private static final LEGACY_VOICEMAIL_COUNT:Ljava/lang/String; = "legacy_voicemail_count"

.field private static final MAX_VOICEMAILS_COUNT:I = 0xff


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static hasVoicemailCountChanged(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;I)Z
    .locals 5

    .line 152
    invoke-static {p0}, Landroidx/core/os/UserManagerCompat;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    new-array p0, v1, [Ljava/lang/Object;

    const-string p1, "LegacyVoicemailNotificationReceiver.onReceive"

    const-string p2, "User locked, bypassing voicemail count check"

    .line 153
    invoke-static {p1, p2, p0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    return v2

    .line 164
    :cond_1
    new-instance v3, Lcom/android/dialer/common/PerAccountSharedPreferences;

    .line 166
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-direct {v3, p0, p1, v4}, Lcom/android/dialer/common/PerAccountSharedPreferences;-><init>(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Landroid/content/SharedPreferences;)V

    const-string p0, "legacy_voicemail_count"

    if-eqz p2, :cond_2

    .line 168
    invoke-virtual {v3, p0, v0}, Lcom/android/dialer/common/PerAccountSharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-ne p2, p1, :cond_2

    return v1

    .line 171
    :cond_2
    invoke-virtual {v3}, Lcom/android/dialer/common/PerAccountSharedPreferences;->edit()Lcom/android/dialer/common/PerAccountSharedPreferences$Editor;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lcom/android/dialer/common/PerAccountSharedPreferences$Editor;->putInt(Ljava/lang/String;I)Lcom/android/dialer/common/PerAccountSharedPreferences$Editor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/dialer/common/PerAccountSharedPreferences$Editor;->apply()V

    return v2
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "LegacyVoicemailNotificationReceiver.onReceive"

    const-string v3, "received legacy voicemail notification"

    .line 75
    invoke-static {v2, v3, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastO()Z

    move-result v1

    if-nez v1, :cond_0

    .line 78
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "SDK not finalized: SDK_INT="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", PREVIEW_SDK_INT="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p2, Landroid/os/Build$VERSION;->PREVIEW_SDK_INT:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", RELEASE="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {v2, p1, p2}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string v1, "android.telephony.extra.PHONE_ACCOUNT_HANDLE"

    .line 90
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/telecom/PhoneAccountHandle;

    const-string v1, "android.telephony.extra.NOTIFICATION_COUNT"

    const/4 v3, -0x1

    .line 91
    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 92
    sget-object v5, Lcom/android/contacts/common/compat/TelephonyManagerCompat;->EXTRA_IS_REFRESH:Ljava/lang/String;

    invoke-virtual {p2, v5, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    const-string v5, "sub_id"

    .line 93
    invoke-virtual {p2, v5, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    if-nez v9, :cond_1

    const/16 v5, 0xff

    if-eq v1, v5, :cond_1

    .line 96
    invoke-static {p1, v4, v1}, Lcom/android/dialer/app/voicemail/LegacyVoicemailNotificationReceiver;->hasVoicemailCountChanged(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;I)Z

    move-result v5

    if-nez v5, :cond_1

    new-array p1, v0, [Ljava/lang/Object;

    const-string/jumbo p2, "voicemail count hasn\'t changed, ignoring"

    .line 97
    invoke-static {v2, p2, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    if-ne v1, v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    move v5, v1

    if-nez v5, :cond_3

    new-array p2, v0, [Ljava/lang/Object;

    const-string v0, "clearing notification"

    .line 111
    invoke-static {v2, v0, p2}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    invoke-static {p1, v10}, Lcom/android/dialer/app/calllog/LegacyVoicemailNotifier;->cancelNotification(Landroid/content/Context;I)V

    return-void

    .line 116
    :cond_3
    invoke-static {p1}, Lcom/android/voicemail/VoicemailComponent;->get(Landroid/content/Context;)Lcom/android/voicemail/VoicemailComponent;

    move-result-object v1

    .line 117
    invoke-virtual {v1}, Lcom/android/voicemail/VoicemailComponent;->getVoicemailClient()Lcom/android/voicemail/VoicemailClient;

    move-result-object v1

    .line 118
    invoke-interface {v1, p1, v4}, Lcom/android/voicemail/VoicemailClient;->isActivated(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/android/dialer/util/SettingsUtil;->isVVMEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 120
    new-instance p2, Landroid/content/Intent;

    const-string v1, "android.provider.action.SYNC_DELTA_VOICEMAIL"

    invoke-direct {p2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 121
    new-instance v1, Landroid/content/ComponentName;

    const-class v3, Lcom/android/voicemail/impl/sync/OmtpVvmDeltaSyncReceiver;

    invoke-direct {v1, p1, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 122
    invoke-virtual {p2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 123
    invoke-virtual {p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    new-array p1, v0, [Ljava/lang/Object;

    const-string/jumbo p2, "visual voicemail is activated, ignoring notification"

    .line 125
    invoke-static {v2, p2, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_4
    const-string v1, "android.telephony.extra.VOICEMAIL_NUMBER"

    .line 131
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "android.telephony.extra.CALL_VOICEMAIL_INTENT"

    .line 133
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/app/PendingIntent;

    const-string v1, "android.telephony.extra.LAUNCH_VOICEMAIL_SETTINGS_INTENT"

    .line 135
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    move-object v8, p2

    check-cast v8, Landroid/app/PendingIntent;

    new-array p2, v0, [Ljava/lang/Object;

    const-string v0, "sending notification"

    .line 137
    invoke-static {v2, v0, p2}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v3, p1

    .line 138
    invoke-static/range {v3 .. v10}, Lcom/android/dialer/app/calllog/LegacyVoicemailNotifier;->showNotification(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;ILjava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZI)V

    return-void
.end method
