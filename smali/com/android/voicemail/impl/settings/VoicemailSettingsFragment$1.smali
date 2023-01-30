.class Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment$1;
.super Ljava/lang/Object;
.source "VoicemailSettingsFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->setupVoicemailChangePinPreference()V
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

    .line 237
    iput-object p1, p0, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment$1;->this$0:Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    .line 240
    iget-object p1, p0, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment$1;->this$0:Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;

    invoke-virtual {p1}, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object p1

    sget-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_CHANGE_PIN_CLICKED:Lcom/android/dialer/logging/DialerImpression$Type;

    invoke-interface {p1, v0}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    const/4 p1, 0x0

    return p1
.end method
