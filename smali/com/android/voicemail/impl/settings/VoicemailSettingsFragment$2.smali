.class Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment$2;
.super Ljava/lang/Object;
.source "VoicemailSettingsFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->setupNativeVoicemailTranscribedPreference()V
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

    .line 258
    iput-object p1, p0, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment$2;->this$0:Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 265
    invoke-static {}, Lcom/android/manager/OperatorManager;->getInstance()Lcom/android/operatorutils/IOperatorManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment$2;->this$0:Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;

    invoke-virtual {v0}, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/operatorutils/IOperatorManager;->isNativeVoicemailTranscriptionEnabled(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 266
    iget-object p1, p0, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment$2;->this$0:Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;

    invoke-static {p1}, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->access$000(Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;)V

    goto :goto_0

    .line 268
    :cond_0
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment$2;->this$0:Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;

    invoke-virtual {v0}, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/android/voicemail/impl/settings/VoiceMailToMessageActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 269
    iget-object v0, p0, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment$2;->this$0:Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;

    invoke-virtual {v0}, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method
