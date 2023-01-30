.class public Lcom/android/voicemail/impl/VoicemailStatus;
.super Ljava/lang/Object;
.source "VoicemailStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/voicemail/impl/VoicemailStatus$DeferredEditor;,
        Lcom/android/voicemail/impl/VoicemailStatus$Editor;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VvmStatus"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deferredEdit(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Lcom/android/voicemail/impl/VoicemailStatus$DeferredEditor;
    .locals 2

    .line 158
    new-instance v0, Lcom/android/voicemail/impl/VoicemailStatus$DeferredEditor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/voicemail/impl/VoicemailStatus$DeferredEditor;-><init>(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Lcom/android/voicemail/impl/VoicemailStatus$1;)V

    return-object v0
.end method

.method public static disable(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)V
    .locals 0

    .line 149
    invoke-static {p0, p1}, Lcom/android/voicemail/impl/VoicemailStatus;->edit(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Lcom/android/voicemail/impl/VoicemailStatus$Editor;

    move-result-object p0

    const/4 p1, 0x1

    .line 150
    invoke-virtual {p0, p1}, Lcom/android/voicemail/impl/VoicemailStatus$Editor;->setConfigurationState(I)Lcom/android/voicemail/impl/VoicemailStatus$Editor;

    move-result-object p0

    .line 151
    invoke-virtual {p0, p1}, Lcom/android/voicemail/impl/VoicemailStatus$Editor;->setDataChannelState(I)Lcom/android/voicemail/impl/VoicemailStatus$Editor;

    move-result-object p0

    .line 152
    invoke-virtual {p0, p1}, Lcom/android/voicemail/impl/VoicemailStatus$Editor;->setNotificationChannelState(I)Lcom/android/voicemail/impl/VoicemailStatus$Editor;

    move-result-object p0

    .line 153
    invoke-virtual {p0}, Lcom/android/voicemail/impl/VoicemailStatus$Editor;->apply()Z

    return-void
.end method

.method public static edit(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Lcom/android/voicemail/impl/VoicemailStatus$Editor;
    .locals 2

    .line 141
    new-instance v0, Lcom/android/voicemail/impl/VoicemailStatus$Editor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/voicemail/impl/VoicemailStatus$Editor;-><init>(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Lcom/android/voicemail/impl/VoicemailStatus$1;)V

    return-object v0
.end method
