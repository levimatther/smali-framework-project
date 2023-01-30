.class public Lcom/android/dialer/app/settings/SoundSettingsFragment;
.super Landroid/preference/PreferenceFragment;
.source "SoundSettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final DO_VIBRATION_FOR_CALLS:I = 0x1

.field private static final DTMF_TONE_TYPE_NORMAL:I = 0x0

.field private static final MSG_UPDATE_RINGTONE_SUMMARY:I = 0x1

.field private static final NO_DTMF_TONE:I = 0x0

.field private static final NO_VIBRATION_FOR_CALLS:I = 0x0

.field private static final PLAY_DTMF_TONE:I = 0x1


# instance fields
.field private mDtmfToneLength:Landroid/preference/ListPreference;

.field private mPlayDtmfTone:Landroid/preference/SwitchPreference;

.field private final mRingtoneLookupComplete:Landroid/os/Handler;

.field private final mRingtoneLookupRunnable:Ljava/lang/Runnable;

.field private mRingtonePreference:Landroid/preference/Preference;

.field private mVibrateWhenRinging:Landroid/preference/SwitchPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 53
    new-instance v0, Lcom/android/dialer/app/settings/SoundSettingsFragment$1;

    invoke-direct {v0, p0}, Lcom/android/dialer/app/settings/SoundSettingsFragment$1;-><init>(Lcom/android/dialer/app/settings/SoundSettingsFragment;)V

    iput-object v0, p0, Lcom/android/dialer/app/settings/SoundSettingsFragment;->mRingtoneLookupComplete:Landroid/os/Handler;

    .line 64
    new-instance v0, Lcom/android/dialer/app/settings/SoundSettingsFragment$2;

    invoke-direct {v0, p0}, Lcom/android/dialer/app/settings/SoundSettingsFragment$2;-><init>(Lcom/android/dialer/app/settings/SoundSettingsFragment;)V

    iput-object v0, p0, Lcom/android/dialer/app/settings/SoundSettingsFragment;->mRingtoneLookupRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/dialer/app/settings/SoundSettingsFragment;)Landroid/preference/Preference;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/dialer/app/settings/SoundSettingsFragment;->mRingtonePreference:Landroid/preference/Preference;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/dialer/app/settings/SoundSettingsFragment;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/android/dialer/app/settings/SoundSettingsFragment;->updateRingtonePreferenceSummary()V

    return-void
.end method

.method private hasVibrator()Z
    .locals 2

    .line 231
    invoke-virtual {p0}, Lcom/android/dialer/app/settings/SoundSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private shouldHideCarrierSettings()Z
    .locals 2

    .line 237
    invoke-virtual {p0}, Lcom/android/dialer/app/settings/SoundSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 239
    invoke-virtual {v0}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object v0

    const-string v1, "hide_carrier_network_settings_bool"

    .line 240
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private shouldPlayDtmfTone()Z
    .locals 3

    .line 223
    invoke-virtual {p0}, Lcom/android/dialer/app/settings/SoundSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dtmf_tone"

    const/4 v2, 0x1

    .line 222
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private shouldVibrateWhenRinging()Z
    .locals 4

    .line 213
    invoke-virtual {p0}, Lcom/android/dialer/app/settings/SoundSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "vibrate_when_ringing"

    const/4 v2, 0x0

    .line 212
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 216
    invoke-direct {p0}, Lcom/android/dialer/app/settings/SoundSettingsFragment;->hasVibrator()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    if-ne v0, v3, :cond_0

    move v2, v3

    :cond_0
    return v2
.end method

.method private updateRingtonePreferenceSummary()V
    .locals 4

    .line 197
    invoke-virtual {p0}, Lcom/android/dialer/app/settings/SoundSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/app/settings/SoundSettingsFragment;->mRingtoneLookupComplete:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/dialer/app/settings/SoundSettingsFragment;->mRingtonePreference:Landroid/preference/Preference;

    .line 200
    invoke-virtual {v2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 196
    invoke-static {v0, v1, v3, v2, v3}, Lcom/android/dialer/util/SettingsUtil;->updateRingtoneName(Landroid/content/Context;Landroid/os/Handler;ILjava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .line 77
    invoke-virtual {p0}, Lcom/android/dialer/app/settings/SoundSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 82
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f140006

    .line 84
    invoke-virtual {p0, p1}, Lcom/android/dialer/app/settings/SoundSettingsFragment;->addPreferencesFromResource(I)V

    .line 86
    invoke-virtual {p0}, Lcom/android/dialer/app/settings/SoundSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const v0, 0x7f1103f1

    .line 88
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/dialer/app/settings/SoundSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/app/settings/SoundSettingsFragment;->mRingtonePreference:Landroid/preference/Preference;

    const v0, 0x7f1104de

    .line 90
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/dialer/app/settings/SoundSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/dialer/app/settings/SoundSettingsFragment;->mVibrateWhenRinging:Landroid/preference/SwitchPreference;

    const v0, 0x7f1103ab

    .line 92
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/dialer/app/settings/SoundSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/dialer/app/settings/SoundSettingsFragment;->mPlayDtmfTone:Landroid/preference/SwitchPreference;

    const v0, 0x7f110210

    .line 95
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/dialer/app/settings/SoundSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/dialer/app/settings/SoundSettingsFragment;->mDtmfToneLength:Landroid/preference/ListPreference;

    .line 97
    invoke-direct {p0}, Lcom/android/dialer/app/settings/SoundSettingsFragment;->hasVibrator()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/android/dialer/app/settings/SoundSettingsFragment;->mVibrateWhenRinging:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0

    .line 100
    :cond_0
    invoke-virtual {p0}, Lcom/android/dialer/app/settings/SoundSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/android/dialer/app/settings/SoundSettingsFragment;->mVibrateWhenRinging:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 101
    iput-object v1, p0, Lcom/android/dialer/app/settings/SoundSettingsFragment;->mVibrateWhenRinging:Landroid/preference/SwitchPreference;

    .line 104
    :goto_0
    iget-object v0, p0, Lcom/android/dialer/app/settings/SoundSettingsFragment;->mPlayDtmfTone:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 105
    iget-object v0, p0, Lcom/android/dialer/app/settings/SoundSettingsFragment;->mPlayDtmfTone:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/dialer/app/settings/SoundSettingsFragment;->shouldPlayDtmfTone()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 108
    invoke-virtual {p0}, Lcom/android/dialer/app/settings/SoundSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const/16 v2, 0x17

    .line 109
    invoke-static {v2}, Lcom/android/dialer/compat/SdkVersionOverride;->getSdkVersion(I)I

    move-result v3

    if-lt v3, v2, :cond_2

    .line 110
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->canChangeDtmfToneLength()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 111
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isWorldPhone()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/dialer/app/settings/SoundSettingsFragment;->shouldHideCarrierSettings()Z

    move-result v0

    if-nez v0, :cond_2

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/android/dialer/app/settings/SoundSettingsFragment;->mDtmfToneLength:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 113
    iget-object v0, p0, Lcom/android/dialer/app/settings/SoundSettingsFragment;->mDtmfToneLength:Landroid/preference/ListPreference;

    .line 115
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v1, 0x0

    const-string v2, "dtmf_tone_type"

    .line 114
    invoke-static {p1, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 113
    invoke-virtual {v0, p1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_1

    .line 119
    :cond_2
    invoke-virtual {p0}, Lcom/android/dialer/app/settings/SoundSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/android/dialer/app/settings/SoundSettingsFragment;->mDtmfToneLength:Landroid/preference/ListPreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 120
    iput-object v1, p0, Lcom/android/dialer/app/settings/SoundSettingsFragment;->mDtmfToneLength:Landroid/preference/ListPreference;

    :goto_1
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 151
    invoke-virtual {p0}, Lcom/android/dialer/app/settings/SoundSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Settings$System;->canWrite(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/android/dialer/app/settings/SoundSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 155
    invoke-virtual {p0}, Lcom/android/dialer/app/settings/SoundSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f1104a1

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    .line 153
    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 157
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return v1

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/app/settings/SoundSettingsFragment;->mVibrateWhenRinging:Landroid/preference/SwitchPreference;

    if-ne p1, v0, :cond_1

    .line 161
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 163
    invoke-virtual {p0}, Lcom/android/dialer/app/settings/SoundSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string/jumbo v0, "vibrate_when_ringing"

    .line 162
    invoke-static {p2, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/android/dialer/app/settings/SoundSettingsFragment;->mDtmfToneLength:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_2

    .line 167
    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p1

    .line 169
    invoke-virtual {p0}, Lcom/android/dialer/app/settings/SoundSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "dtmf_tone_type"

    .line 168
    invoke-static {p2, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    :goto_0
    return v1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2

    .line 177
    invoke-virtual {p0}, Lcom/android/dialer/app/settings/SoundSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/provider/Settings$System;->canWrite(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 179
    invoke-virtual {p0}, Lcom/android/dialer/app/settings/SoundSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 180
    invoke-virtual {p0}, Lcom/android/dialer/app/settings/SoundSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f1104a1

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    .line 178
    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 182
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return v0

    .line 185
    :cond_0
    iget-object p1, p0, Lcom/android/dialer/app/settings/SoundSettingsFragment;->mPlayDtmfTone:Landroid/preference/SwitchPreference;

    if-ne p2, p1, :cond_1

    .line 187
    invoke-virtual {p0}, Lcom/android/dialer/app/settings/SoundSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p2, p0, Lcom/android/dialer/app/settings/SoundSettingsFragment;->mPlayDtmfTone:Landroid/preference/SwitchPreference;

    .line 189
    invoke-virtual {p2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result p2

    const-string v1, "dtmf_tone"

    .line 186
    invoke-static {p1, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    return v0
.end method

.method public onResume()V
    .locals 2

    .line 126
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 128
    invoke-virtual {p0}, Lcom/android/dialer/app/settings/SoundSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Settings$System;->canWrite(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/android/dialer/app/settings/SoundSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/app/settings/SoundSettingsFragment;->mVibrateWhenRinging:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_1

    .line 136
    invoke-direct {p0}, Lcom/android/dialer/app/settings/SoundSettingsFragment;->shouldVibrateWhenRinging()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 140
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/dialer/app/settings/SoundSettingsFragment;->mRingtoneLookupRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
