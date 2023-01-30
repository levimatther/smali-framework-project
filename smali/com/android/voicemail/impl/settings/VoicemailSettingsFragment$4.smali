.class Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment$4;
.super Ljava/lang/Object;
.source "VoicemailSettingsFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->setupAutomaticallyDownloadVoicemailPreference()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;)V
    .locals 0

    .line 298
    iput-object p1, p0, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment$4;->this$0:Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 301
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment$4;->this$0:Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;

    invoke-virtual {v0}, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/android/voicemail/impl/settings/VoiceMailAutoDownloadActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 302
    iget-object v0, p0, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment$4;->this$0:Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;

    invoke-static {v0}, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->access$100(Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    const-string v1, "phone_account_handle"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 303
    iget-object v0, p0, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment$4;->this$0:Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;

    invoke-virtual {v0}, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1
.end method
