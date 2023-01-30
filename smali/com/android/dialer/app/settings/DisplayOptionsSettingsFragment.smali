.class public Lcom/android/dialer/app/settings/DisplayOptionsSettingsFragment;
.super Landroid/preference/PreferenceFragment;
.source "DisplayOptionsSettingsFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 27
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f140002

    .line 28
    invoke-virtual {p0, p1}, Lcom/android/dialer/app/settings/DisplayOptionsSettingsFragment;->addPreferencesFromResource(I)V

    return-void
.end method
