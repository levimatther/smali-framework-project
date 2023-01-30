.class public Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;
.super Landroidx/preference/PreferenceFragmentCompat;
.source "VoicemailSettingsFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/voicemail/VoicemailClient$ActivationStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment$VMSettingOrdering;
    }
.end annotation


# static fields
.field static final SUB_ID_EXTRA:Ljava/lang/String; = "com.android.phone.settings.SubscriptionInfoHelper.SubscriptionId"

.field static final SUB_LABEL_EXTRA:Ljava/lang/String; = "com.android.phone.settings.SubscriptionInfoHelper.SubscriptionLabel"

.field private static final TAG:Ljava/lang/String; = "VmSettingsActivity"


# instance fields
.field private alertDialogv2m:Landroid/app/AlertDialog;

.field private automaticallyDownloadVoicemailPreference:Landroidx/preference/Preference;

.field private changeGreetingPreference:Landroidx/preference/Preference;

.field private loadingDialogUtil:Lcom/android/dialer/voicemail/settings/LoadingDialogUtil;

.field private nativeVoicemailTranscribedPreference:Landroidx/preference/Preference;

.field private phoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

.field private voiceToMessageADbuild:Landroid/app/AlertDialog$Builder;

.field private voicemailChangePinPreference:Landroidx/preference/Preference;

.field private voicemailClient:Lcom/android/voicemail/VoicemailClient;

.field private voicemailMenuBar:Landroid/widget/MenuBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 94
    invoke-direct {p0}, Landroidx/preference/PreferenceFragmentCompat;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->showDialog()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;)Landroid/telecom/PhoneAccountHandle;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->phoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    return-object p0
.end method

.method private getNotificationSettingsIntent()Landroid/content/Intent;
    .locals 3

    .line 491
    invoke-virtual {p0}, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->phoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-static {v0, v1}, Lcom/android/dialer/notification/NotificationChannelManager;->getVoicemailChannelId(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Ljava/lang/String;

    move-result-object v0

    .line 492
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.CHANNEL_NOTIFICATION_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.provider.extra.CHANNEL_ID"

    .line 493
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 494
    invoke-virtual {p0}, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.provider.extra.APP_PACKAGE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private getSoleSimAccount()Landroid/telecom/PhoneAccountHandle;
    .locals 8

    .line 164
    invoke-virtual {p0}, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Landroid/telecom/TelecomManager;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    .line 166
    invoke-virtual {p0}, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-static {v1, v2}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 176
    :cond_0
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v3, v2

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/PhoneAccountHandle;

    .line 177
    invoke-virtual {v0, v4}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v5

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    const/4 v6, 0x4

    .line 181
    invoke-virtual {v5, v6}, Landroid/telecom/PhoneAccount;->hasCapabilities(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 182
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " is a SIM account"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "DialerSettingsActivity.getSoleSimAccount"

    invoke-static {v7, v5, v6}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v3, :cond_3

    return-object v2

    :cond_3
    move-object v3, v4

    goto :goto_0

    :cond_4
    return-object v3
.end method

.method private initializeXmlPreferences()V
    .locals 2

    const v0, 0x7f110558

    .line 195
    invoke-virtual {p0, v0}, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->changeGreetingPreference:Landroidx/preference/Preference;

    const/16 v1, 0x8

    .line 196
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOrder(I)V

    const v0, 0x7f110520

    .line 198
    invoke-virtual {p0, v0}, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->voicemailChangePinPreference:Landroidx/preference/Preference;

    const/4 v1, 0x5

    .line 199
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOrder(I)V

    const v0, 0x7f110559

    .line 202
    invoke-virtual {p0, v0}, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->nativeVoicemailTranscribedPreference:Landroidx/preference/Preference;

    const/16 v1, 0x9

    .line 203
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOrder(I)V

    const v0, 0x7f110557

    .line 206
    invoke-virtual {p0, v0}, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->automaticallyDownloadVoicemailPreference:Landroidx/preference/Preference;

    const/16 v1, 0xa

    .line 207
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOrder(I)V

    return-void
.end method

.method private logArchiveToggle(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 455
    invoke-virtual {p0}, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object p1

    sget-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_USER_TURNED_ARCHIVE_ON_FROM_SETTINGS:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 456
    invoke-interface {p1, v0}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    goto :goto_0

    .line 458
    :cond_0
    invoke-virtual {p0}, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object p1

    sget-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_USER_TURNED_ARCHIVE_OFF_FROM_SETTINGS:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 459
    invoke-interface {p1, v0}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    :goto_0
    return-void
.end method

.method private logDonationToggle(Z)V
    .locals 0

    return-void
.end method

.method private removeAllVisualVoicemailPreferences()V
    .locals 2

    .line 214
    invoke-virtual {p0}, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 216
    iget-object v1, p0, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->voicemailChangePinPreference:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    .line 218
    iget-object v1, p0, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->changeGreetingPreference:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    .line 219
    iget-object v1, p0, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->nativeVoicemailTranscribedPreference:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    .line 220
    iget-object v1, p0, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->automaticallyDownloadVoicemailPreference:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method private setupAutomaticallyDownloadVoicemailPreference()V
    .locals 2

    .line 292
    invoke-virtual {p0}, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->hasSimCard(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/manager/OperatorManager;->getInstance()Lcom/android/operatorutils/IOperatorManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/operatorutils/IOperatorManager;->isTmoActivate()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->automaticallyDownloadVoicemailPreference:Landroidx/preference/Preference;

    new-instance v1, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment$4;

    invoke-direct {v1, p0}, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment$4;-><init>(Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 310
    invoke-direct {p0}, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->updateAutomaticallyDownloadPreference()V

    return-void

    .line 293
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->automaticallyDownloadVoicemailPreference:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method private setupChangeGreetingPreference()V
    .locals 3

    .line 323
    invoke-virtual {p0}, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->hasSimCard(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/manager/OperatorManager;->getInstance()Lcom/android/operatorutils/IOperatorManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/operatorutils/IOperatorManager;->isTmoActivate()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 329
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 330
    iget-object v1, p0, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->changeGreetingPreference:Landroidx/preference/Preference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 331
    invoke-direct {p0}, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->updateChangeGreetingPreference()V

    return-void

    .line 324
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->changeGreetingPreference:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method private setupNativeVoicemailTranscribedPreference()V
    .locals 2

    .line 251
    invoke-virtual {p0}, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->hasSimCard(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/manager/OperatorManager;->getInstance()Lcom/android/operatorutils/IOperatorManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/operatorutils/IOperatorManager;->isTmoActivate()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->nativeVoicemailTranscribedPreference:Landroidx/preference/Preference;

    new-instance v1, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment$2;

    invoke-direct {v1, p0}, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment$2;-><init>(Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 274
    invoke-direct {p0}, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->updateNativeVoicemailTranscribedPreference()V

    return-void

    .line 253
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->nativeVoicemailTranscribedPreference:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method private setupVoicemailChangePinPreference()V
    .locals 3

    .line 227
    invoke-static {}, Lcom/android/manager/OperatorManager;->getInstance()Lcom/android/operatorutils/IOperatorManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/operatorutils/IOperatorManager;->isTmoActivate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    .line 230
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 233
    :goto_0
    iget-object v1, p0, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->phoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    const-string v2, "phone_account_handle"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 235
    iget-object v1, p0, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->voicemailChangePinPreference:Landroidx/preference/Preference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 236
    iget-object v0, p0, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->voicemailChangePinPreference:Landroidx/preference/Preference;

    new-instance v1, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment$1;

    invoke-direct {v1, p0}, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment$1;-><init>(Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 245
    iget-object v0, p0, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->voicemailChangePinPreference:Landroidx/preference/Preference;

    const v1, 0x7f110523

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    .line 246
    invoke-direct {p0}, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->updateChangePinPreference()V

    return-void
.end method

.method private showDialog()V
    .locals 3

    .line 279
    new-instance v0, Landroid/app/TctDialog;

    invoke-virtual {p0}, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/TctDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f11056d

    .line 280
    invoke-virtual {v0, v1}, Landroid/app/TctDialog;->setMessage(I)Landroid/app/TctDialog;

    .line 281
    new-instance v1, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment$3;

    invoke-direct {v1, p0, v0}, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment$3;-><init>(Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;Landroid/app/TctDialog;)V

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Landroid/app/TctDialog;->setCenterButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/TctDialog;

    .line 287
    invoke-virtual {v0}, Landroid/app/TctDialog;->show()V

    return-void
.end method

.method private updateAutomaticallyDownloadPreference()V
    .locals 4

    .line 443
    iget-object v0, p0, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->voicemailClient:Lcom/android/voicemail/VoicemailClient;

    invoke-virtual {p0}, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->phoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-interface {v0, v1, v2}, Lcom/android/voicemail/VoicemailClient;->isVoicemailEnabled(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->automaticallyDownloadVoicemailPreference:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 445
    :cond_0
    iget-object v0, p0, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->voicemailClient:Lcom/android/voicemail/VoicemailClient;

    invoke-virtual {p0}, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->phoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-interface {v0, v2, v3}, Lcom/android/voicemail/VoicemailClient;->isActivated(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 446
    iget-object v0, p0, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->automaticallyDownloadVoicemailPreference:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 448
    :cond_1
    iget-object v0, p0, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->automaticallyDownloadVoicemailPreference:Landroidx/preference/Preference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method private updateChangeGreetingPreference()V
    .locals 4

    .line 433
    iget-object v0, p0, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->voicemailClient:Lcom/android/voicemail/VoicemailClient;

    invoke-virtual {p0}, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->phoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-interface {v0, v1, v2}, Lcom/android/voicemail/VoicemailClient;->isVoicemailEnabled(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->changeGreetingPreference:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 435
    :cond_0
    iget-object v0, p0, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->voicemailClient:Lcom/android/voicemail/VoicemailClient;

    invoke-virtual {p0}, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->phoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-interface {v0, v2, v3}, Lcom/android/voicemail/VoicemailClient;->isActivated(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 436
    iget-object v0, p0, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->changeGreetingPreference:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 438
    :cond_1
    iget-object v0, p0, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->changeGreetingPreference:Landroidx/preference/Preference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method private updateChangePinPreference()V
    .locals 4

    .line 407
    iget-object v0, p0, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->voicemailClient:Lcom/android/voicemail/VoicemailClient;

    invoke-virtual {p0}, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->phoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-interface {v0, v1, v2}, Lcom/android/voicemail/VoicemailClient;->isVoicemailEnabled(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->voicemailChangePinPreference:Landroidx/preference/Preference;

    const v2, 0x7f110521

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(I)V

    .line 410
    iget-object v0, p0, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->voicemailChangePinPreference:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->voicemailClient:Lcom/android/voicemail/VoicemailClient;

    invoke-virtual {p0}, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->phoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-interface {v0, v2, v3}, Lcom/android/voicemail/VoicemailClient;->isActivated(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 412
    iget-object v0, p0, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->voicemailChangePinPreference:Landroidx/preference/Preference;

    const v2, 0x7f110522

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(I)V

    .line 414
    iget-object v0, p0, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->voicemailChangePinPreference:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 416
    :cond_1
    iget-object v0, p0, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->voicemailChangePinPreference:Landroidx/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 417
    iget-object v0, p0, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->voicemailChangePinPreference:Landroidx/preference/Preference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method private updateNativeVoicemailTranscribedPreference()V
    .locals 4

    .line 423
    iget-object v0, p0, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->voicemailClient:Lcom/android/voicemail/VoicemailClient;

    invoke-virtual {p0}, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->phoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-interface {v0, v1, v2}, Lcom/android/voicemail/VoicemailClient;->isVoicemailEnabled(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->nativeVoicemailTranscribedPreference:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->voicemailClient:Lcom/android/voicemail/VoicemailClient;

    invoke-virtual {p0}, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->phoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-interface {v0, v2, v3}, Lcom/android/voicemail/VoicemailClient;->isActivated(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 426
    iget-object v0, p0, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->nativeVoicemailTranscribedPreference:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 428
    :cond_1
    iget-object v0, p0, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->nativeVoicemailTranscribedPreference:Landroidx/preference/Preference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public hasSimCard(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "phone"

    .line 337
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    .line 338
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    if-eq p1, v1, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method public onActivationStateChanged(Landroid/telecom/PhoneAccountHandle;Z)V
    .locals 2

    .line 476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivationStateChanged:isActivated:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "VmSettingsActivity"

    invoke-static {v0, p2}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    iget-object p2, p0, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->loadingDialogUtil:Lcom/android/dialer/voicemail/settings/LoadingDialogUtil;

    invoke-virtual {p2}, Lcom/android/dialer/voicemail/settings/LoadingDialogUtil;->dismiss()V

    .line 478
    iget-object p2, p0, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->phoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {p2, p1}, Landroid/telecom/PhoneAccountHandle;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 479
    invoke-direct {p0}, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->updateChangePinPreference()V

    .line 480
    invoke-direct {p0}, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->updateChangeGreetingPreference()V

    .line 481
    invoke-direct {p0}, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->updateNativeVoicemailTranscribedPreference()V

    .line 482
    invoke-direct {p0}, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->updateAutomaticallyDownloadPreference()V

    goto :goto_0

    :cond_0
    const-string p1, "onActivationStateChanged:phoneAccount mismatch"

    .line 484
    invoke-static {v0, p1}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 123
    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->onCreate(Landroid/os/Bundle;)V

    .line 124
    new-instance p1, Lcom/android/dialer/voicemail/settings/LoadingDialogUtil;

    invoke-virtual {p0}, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/dialer/voicemail/settings/LoadingDialogUtil;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->loadingDialogUtil:Lcom/android/dialer/voicemail/settings/LoadingDialogUtil;

    .line 125
    invoke-direct {p0}, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->getSoleSimAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object p1

    iput-object p1, p0, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->phoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    .line 128
    invoke-virtual {p0}, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/voicemail/VoicemailComponent;->get(Landroid/content/Context;)Lcom/android/voicemail/VoicemailComponent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/voicemail/VoicemailComponent;->getVoicemailClient()Lcom/android/voicemail/VoicemailClient;

    move-result-object p1

    iput-object p1, p0, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->voicemailClient:Lcom/android/voicemail/VoicemailClient;

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)V
    .locals 0

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    .line 534
    iget-object p1, p0, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->alertDialogv2m:Landroid/app/AlertDialog;

    if-eqz p1, :cond_0

    const-string p1, "VmSettingsActivity"

    const-string p2, "close v2g dialog"

    .line 535
    invoke-static {p1, p2}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    iget-object p1, p0, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->alertDialogv2m:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    const/4 p1, 0x0

    .line 537
    iput-object p1, p0, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->alertDialogv2m:Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->voicemailClient:Lcom/android/voicemail/VoicemailClient;

    invoke-interface {v0, p0}, Lcom/android/voicemail/VoicemailClient;->removeActivationStateListener(Lcom/android/voicemail/VoicemailClient$ActivationStateListener;)V

    .line 355
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onPause()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPreferenceChange: \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\" changed to \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "VmSettingsActivity"

    invoke-static {v2, v0, v1}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 367
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->automaticallyDownloadVoicemailPreference:Landroidx/preference/Preference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 368
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->logDonationToggle(Z)V

    .line 370
    invoke-virtual {p0}, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->phoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 369
    invoke-static {p1, v0, p2}, Lcom/android/voicemail/impl/settings/VisualVoicemailSettingsUtil;->setNativeVoicemailAutomaticallyDownloadEnabled(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Z)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onResume()V
    .locals 2

    .line 137
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onResume()V

    .line 138
    invoke-virtual {p0}, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object v0

    sget-object v1, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_SETTINGS_VIEWED:Lcom/android/dialer/logging/DialerImpression$Type;

    invoke-interface {v0, v1}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    .line 139
    iget-object v0, p0, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->voicemailClient:Lcom/android/voicemail/VoicemailClient;

    invoke-interface {v0, p0}, Lcom/android/voicemail/VoicemailClient;->addActivationStateListener(Lcom/android/voicemail/VoicemailClient$ActivationStateListener;)V

    .line 140
    invoke-virtual {p0}, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {v0}, Landroidx/preference/PreferenceScreen;->removeAll()V

    :cond_0
    const v0, 0x7f140007

    .line 145
    invoke-virtual {p0, v0}, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->addPreferencesFromResource(I)V

    .line 147
    invoke-direct {p0}, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->initializeXmlPreferences()V

    .line 149
    invoke-direct {p0}, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->setupChangeGreetingPreference()V

    .line 151
    invoke-direct {p0}, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->setupNativeVoicemailTranscribedPreference()V

    .line 152
    invoke-direct {p0}, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->setupAutomaticallyDownloadVoicemailPreference()V

    .line 153
    invoke-direct {p0}, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->setupVoicemailChangePinPreference()V

    return-void
.end method

.method public updatePreference(Z)V
    .locals 2

    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updatePreference:isEnable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VmSettingsActivity"

    invoke-static {v0, p1}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    invoke-direct {p0}, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->updateChangePinPreference()V

    .line 401
    invoke-direct {p0}, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->updateChangeGreetingPreference()V

    .line 402
    invoke-direct {p0}, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->updateNativeVoicemailTranscribedPreference()V

    .line 403
    invoke-direct {p0}, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->updateAutomaticallyDownloadPreference()V

    return-void
.end method

.method public updateVoicemailEnabled(Z)V
    .locals 3

    .line 383
    iget-object v0, p0, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->loadingDialogUtil:Lcom/android/dialer/voicemail/settings/LoadingDialogUtil;

    invoke-virtual {v0}, Lcom/android/dialer/voicemail/settings/LoadingDialogUtil;->show()V

    .line 384
    iget-object v0, p0, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->voicemailClient:Lcom/android/voicemail/VoicemailClient;

    invoke-virtual {p0}, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->phoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-interface {v0, v1, v2, p1}, Lcom/android/voicemail/VoicemailClient;->setVoicemailEnabled(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Z)V

    if-eqz p1, :cond_0

    .line 386
    invoke-virtual {p0}, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object v0

    sget-object v1, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_USER_ENABLED_IN_SETTINGS:Lcom/android/dialer/logging/DialerImpression$Type;

    invoke-interface {v0, v1}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    goto :goto_0

    .line 388
    :cond_0
    invoke-virtual {p0}, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object v0

    sget-object v1, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_USER_DISABLED_IN_SETTINGS:Lcom/android/dialer/logging/DialerImpression$Type;

    invoke-interface {v0, v1}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    .line 390
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->updatePreference(Z)V

    return-void
.end method
