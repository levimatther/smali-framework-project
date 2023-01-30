.class public Lcom/android/dialer/app/settings/DialerSettingsActivity;
.super Lcom/android/dialer/app/settings/AppCompatPreferenceActivity;
.source "DialerSettingsActivity.java"


# instance fields
.field protected mPreferences:Landroid/content/SharedPreferences;

.field private migrationStatusOnBuildHeaders:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/android/dialer/app/settings/AppCompatPreferenceActivity;-><init>()V

    return-void
.end method

.method private addVoicemailSettings(Ljava/util/List;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "DialerSettingsActivity.addVoicemailSettings"

    if-nez p2, :cond_0

    new-array p1, v0, [Ljava/lang/Object;

    const-string/jumbo p2, "user not primary user"

    .line 155
    invoke-static {v1, p2, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 159
    :cond_0
    invoke-static {p0}, Lcom/android/voicemail/VoicemailComponent;->get(Landroid/content/Context;)Lcom/android/voicemail/VoicemailComponent;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/voicemail/VoicemailComponent;->getVoicemailClient()Lcom/android/voicemail/VoicemailClient;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/voicemail/VoicemailClient;->getSettingsFragment()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "VoicemailClient does not provide settings"

    .line 161
    invoke-static {v1, p2, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, "adding voicemail settings"

    .line 167
    invoke-static {v1, v3, v2}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    new-instance v2, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v2}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    const v3, 0x7f11055d

    .line 169
    iput v3, v2, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    .line 170
    invoke-direct {p0}, Lcom/android/dialer/app/settings/DialerSettingsActivity;->getSoleSimAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v4

    const-string v5, "phone_account_handle"

    if-nez v4, :cond_2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v4, "showing multi-SIM voicemail settings"

    .line 172
    invoke-static {v1, v4, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    const-class v0, Lcom/android/dialer/app/settings/PhoneAccountSelectionFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 175
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "target_fragment"

    .line 176
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "phone_account_handle_key"

    .line 178
    invoke-virtual {v0, p2, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v1, "arguments"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string p2, "target_title_res"

    .line 182
    invoke-virtual {v0, p2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 184
    iput-object v0, v2, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 185
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "showing single-SIM voicemail settings"

    .line 187
    invoke-static {v1, v3, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    iput-object p2, v2, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 190
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 191
    invoke-virtual {p2, v5, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 192
    iput-object p2, v2, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 193
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method private getSoleSimAccount()Landroid/telecom/PhoneAccountHandle;
    .locals 8

    .line 204
    const-class v0, Landroid/telecom/TelecomManager;

    invoke-virtual {p0, v0}, Lcom/android/dialer/app/settings/DialerSettingsActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    .line 206
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/PhoneAccountHandle;

    .line 207
    invoke-virtual {v0, v4}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v5

    const/4 v6, 0x4

    .line 208
    invoke-virtual {v5, v6}, Landroid/telecom/PhoneAccount;->hasCapabilities(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 209
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

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    move-object v3, v4

    goto :goto_0

    :cond_2
    return-object v3
.end method

.method private isPrimaryUser()Z
    .locals 1

    .line 275
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Lcom/android/dialer/app/settings/DialerSettingsActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isSystemUser()Z

    move-result v0

    return v0
.end method

.method private showDisplayOptions()Z
    .locals 2

    .line 228
    invoke-virtual {p0}, Lcom/android/dialer/app/settings/DialerSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {p0}, Lcom/android/dialer/app/settings/DialerSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onBackPressed()V
    .locals 1

    .line 262
    invoke-virtual {p0}, Lcom/android/dialer/app/settings/DialerSettingsActivity;->isSafeToCommitTransactions()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 265
    :cond_0
    invoke-super {p0}, Lcom/android/dialer/app/settings/AppCompatPreferenceActivity;->onBackPressed()V

    return-void
.end method

.method public onBuildHeaders(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .line 73
    invoke-direct {p0}, Lcom/android/dialer/app/settings/DialerSettingsActivity;->showDisplayOptions()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    new-instance v0, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v0}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    const v1, 0x7f110208

    .line 75
    iput v1, v0, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    .line 76
    const-class v1, Lcom/android/dialer/app/settings/DisplayOptionsSettingsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 77
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    :cond_0
    new-instance v0, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v0}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    const v1, 0x7f11045d

    .line 81
    iput v1, v0, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    .line 82
    const-class v1, Lcom/android/dialer/app/settings/SoundSettingsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    const-wide/32 v1, 0x7f0902b1    # 1.0530006016E-314

    .line 83
    iput-wide v1, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    .line 84
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    new-instance v0, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v0}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 87
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.telecom.action.SHOW_RESPOND_VIA_SMS_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v2, 0x7f1103ef

    .line 89
    iput v2, v0, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    .line 90
    iput-object v1, v0, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    .line 91
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    new-instance v0, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v0}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 94
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/dialer/app/settings/SpeedDialListActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x4000000

    .line 95
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const v3, 0x7f110482

    .line 97
    iput v3, v0, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    .line 98
    iput-object v1, v0, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    .line 99
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "phone"

    .line 102
    invoke-virtual {p0, v0}, Lcom/android/dialer/app/settings/DialerSettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 108
    invoke-direct {p0}, Lcom/android/dialer/app/settings/DialerSettingsActivity;->isPrimaryUser()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 109
    invoke-static {v0}, Lcom/android/contacts/common/compat/TelephonyManagerCompat;->getPhoneCount(Landroid/telephony/TelephonyManager;)I

    move-result v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_1

    .line 110
    new-instance v3, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v3}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 111
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.telecom.action.SHOW_CALL_SETTINGS"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v4, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const v2, 0x7f1100eb

    .line 114
    iput v2, v3, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    .line 115
    iput-object v4, v3, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    .line 116
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 117
    :cond_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-ge v3, v4, :cond_2

    if-eqz v1, :cond_3

    .line 118
    :cond_2
    new-instance v3, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v3}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 119
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.telecom.action.CHANGE_PHONE_ACCOUNTS"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v4, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const v2, 0x7f1103a4

    .line 122
    iput v2, v3, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    .line 123
    iput-object v4, v3, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    .line 124
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    :cond_3
    :goto_0
    invoke-static {p0}, Lcom/android/dialer/blocking/FilteredNumberCompat;->canCurrentUserOpenBlockSettings(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 127
    new-instance v2, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v2}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    const v3, 0x7f1102ec

    .line 128
    iput v3, v2, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    .line 129
    invoke-static {p0}, Lcom/android/dialer/blocking/FilteredNumberCompat;->createManageBlockedNumbersIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v3

    iput-object v3, v2, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    .line 130
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    invoke-static {p0}, Lcom/android/dialer/blocking/FilteredNumberCompat;->hasMigratedToNewBlocking(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/dialer/app/settings/DialerSettingsActivity;->migrationStatusOnBuildHeaders:Z

    .line 134
    :cond_4
    invoke-direct {p0, p1, v1}, Lcom/android/dialer/app/settings/DialerSettingsActivity;->addVoicemailSettings(Ljava/util/List;Z)V

    if-eqz v1, :cond_6

    .line 137
    invoke-static {v0}, Lcom/android/contacts/common/compat/TelephonyManagerCompat;->isTtyModeSupported(Landroid/telephony/TelephonyManager;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 138
    invoke-static {v0}, Lcom/android/contacts/common/compat/TelephonyManagerCompat;->isHearingAidCompatibilitySupported(Landroid/telephony/TelephonyManager;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 139
    :cond_5
    new-instance v0, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v0}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 140
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.telecom.action.SHOW_CALL_ACCESSIBILITY_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v2, 0x7f110041

    .line 142
    iput v2, v0, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    .line 143
    iput-object v1, v0, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    .line 144
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    :cond_6
    new-instance v0, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v0}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    const v1, 0x7f11003e

    .line 148
    iput v1, v0, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    .line 149
    const-class v1, Lcom/android/dialer/about/AboutPhoneFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 150
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 55
    invoke-super {p0, p1}, Lcom/android/dialer/app/settings/AppCompatPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/app/settings/DialerSettingsActivity;->mPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method public onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V
    .locals 4

    .line 234
    iget-wide v0, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0902b1    # 1.0530006016E-314

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 238
    invoke-static {p0}, Landroid/provider/Settings$System;->canWrite(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 241
    invoke-virtual {p0}, Lcom/android/dialer/app/settings/DialerSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f1104a1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 239
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 243
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 244
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.SOUND_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/dialer/app/settings/DialerSettingsActivity;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 248
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/dialer/app/settings/AppCompatPreferenceActivity;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 253
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_0

    .line 254
    invoke-virtual {p0}, Lcom/android/dialer/app/settings/DialerSettingsActivity;->onBackPressed()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected onResume()V
    .locals 2

    .line 61
    invoke-super {p0}, Lcom/android/dialer/app/settings/AppCompatPreferenceActivity;->onResume()V

    .line 66
    iget-boolean v0, p0, Lcom/android/dialer/app/settings/DialerSettingsActivity;->migrationStatusOnBuildHeaders:Z

    invoke-static {p0}, Lcom/android/dialer/blocking/FilteredNumberCompat;->hasMigratedToNewBlocking(Landroid/content/Context;)Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/android/dialer/app/settings/DialerSettingsActivity;->invalidateHeaders()V

    :cond_0
    return-void
.end method
