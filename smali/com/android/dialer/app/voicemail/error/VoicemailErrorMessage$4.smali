.class final Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$4;
.super Ljava/lang/Object;
.source "VoicemailErrorMessage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;->createSyncAction(Landroid/content/Context;Lcom/android/dialer/app/voicemail/error/VoicemailStatus;)Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$status:Lcom/android/dialer/app/voicemail/error/VoicemailStatus;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/dialer/app/voicemail/error/VoicemailStatus;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$4;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$4;->val$status:Lcom/android/dialer/app/voicemail/error/VoicemailStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 185
    iget-object p1, p0, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$4;->val$context:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object p1

    sget-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_USER_SYNC:Lcom/android/dialer/logging/DialerImpression$Type;

    invoke-interface {p1, v0}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    .line 186
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.provider.action.SYNC_VOICEMAIL"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$4;->val$status:Lcom/android/dialer/app/voicemail/error/VoicemailStatus;

    iget-object v0, v0, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->sourcePackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$4;->val$context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
