.class public interface abstract Lcom/android/voicemail/VoicemailClient;
.super Ljava/lang/Object;
.source "VoicemailClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/voicemail/VoicemailClient$ActivationStateListener;
    }
.end annotation


# static fields
.field public static final ACTION_SHOW_LEGACY_VOICEMAIL:Ljava/lang/String; = "com.android.voicemail.VoicemailClient.ACTION_SHOW_LEGACY_VOICEMAIL"

.field public static final ACTION_UPLOAD:Ljava/lang/String; = "com.android.voicemail.VoicemailClient.ACTION_UPLOAD"

.field public static final PARAM_PHONE_ACCOUNT_HANDLE:Ljava/lang/String; = "phone_account_handle"

.field public static final VOICEMAIL_SECRET_CODE:Ljava/lang/String; = "886266344"


# virtual methods
.method public abstract addActivationStateListener(Lcom/android/voicemail/VoicemailClient$ActivationStateListener;)V
.end method

.method public abstract appendOmtpVoicemailSelectionClause(Landroid/content/Context;Ljava/lang/StringBuilder;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract appendOmtpVoicemailStatusSelectionClause(Landroid/content/Context;Ljava/lang/StringBuilder;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract createPinChanger(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Lcom/android/voicemail/PinChanger;
.end method

.method public abstract getConfig(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Landroid/os/PersistableBundle;
.end method

.method public abstract getSetPinIntent(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Landroid/content/Intent;
.end method

.method public abstract getSettingsFragment()Ljava/lang/String;
.end method

.method public abstract hasCarrierSupport(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Z
.end method

.method public abstract isActivated(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Z
.end method

.method public abstract isVoicemailArchiveAvailable(Landroid/content/Context;)Z
.end method

.method public abstract isVoicemailArchiveEnabled(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Z
.end method

.method public abstract isVoicemailEnabled(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Z
.end method

.method public abstract isVoicemailModuleEnabled()Z
.end method

.method public abstract onBoot(Landroid/content/Context;)V
.end method

.method public abstract onShutdown(Landroid/content/Context;)V
.end method

.method public abstract removeActivationStateListener(Lcom/android/voicemail/VoicemailClient$ActivationStateListener;)V
.end method

.method public abstract setVoicemailArchiveEnabled(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Z)V
.end method

.method public abstract setVoicemailEnabled(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Z)V
.end method

.method public abstract showConfigUi(Landroid/content/Context;)V
.end method
