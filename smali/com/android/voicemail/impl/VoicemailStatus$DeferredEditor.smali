.class public Lcom/android/voicemail/impl/VoicemailStatus$DeferredEditor;
.super Lcom/android/voicemail/impl/VoicemailStatus$Editor;
.source "VoicemailStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/voicemail/impl/VoicemailStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeferredEditor"
.end annotation


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)V
    .locals 1

    const/4 v0, 0x0

    .line 126
    invoke-direct {p0, p1, p2, v0}, Lcom/android/voicemail/impl/VoicemailStatus$Editor;-><init>(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Lcom/android/voicemail/impl/VoicemailStatus$1;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Lcom/android/voicemail/impl/VoicemailStatus$1;)V
    .locals 0

    .line 123
    invoke-direct {p0, p1, p2}, Lcom/android/voicemail/impl/VoicemailStatus$DeferredEditor;-><init>(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)V

    return-void
.end method


# virtual methods
.method public apply()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public deferredApply()V
    .locals 0

    .line 136
    invoke-super {p0}, Lcom/android/voicemail/impl/VoicemailStatus$Editor;->apply()Z

    return-void
.end method
