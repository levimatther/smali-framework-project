.class final Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$6;
.super Ljava/lang/Object;
.source "VoicemailErrorMessage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;->createTurnArchiveOnAction(Landroid/content/Context;Lcom/android/dialer/logging/DialerImpression$Type;Lcom/android/dialer/app/voicemail/error/VoicemailStatus;Lcom/android/dialer/app/voicemail/error/VoicemailStatusReader;Lcom/android/voicemail/VoicemailClient;Landroid/telecom/PhoneAccountHandle;)Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$impressionToLog:Lcom/android/dialer/logging/DialerImpression$Type;

.field final synthetic val$phoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

.field final synthetic val$status:Lcom/android/dialer/app/voicemail/error/VoicemailStatus;

.field final synthetic val$statusReader:Lcom/android/dialer/app/voicemail/error/VoicemailStatusReader;

.field final synthetic val$voicemailClient:Lcom/android/voicemail/VoicemailClient;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/dialer/logging/DialerImpression$Type;Lcom/android/voicemail/VoicemailClient;Landroid/telecom/PhoneAccountHandle;Lcom/android/dialer/app/voicemail/error/VoicemailStatus;Lcom/android/dialer/app/voicemail/error/VoicemailStatusReader;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$6;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$6;->val$impressionToLog:Lcom/android/dialer/logging/DialerImpression$Type;

    iput-object p3, p0, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$6;->val$voicemailClient:Lcom/android/voicemail/VoicemailClient;

    iput-object p4, p0, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$6;->val$phoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    iput-object p5, p0, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$6;->val$status:Lcom/android/dialer/app/voicemail/error/VoicemailStatus;

    iput-object p6, p0, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$6;->val$statusReader:Lcom/android/dialer/app/voicemail/error/VoicemailStatusReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 221
    iget-object p1, p0, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$6;->val$context:Landroid/content/Context;

    .line 222
    invoke-static {p1}, Lcom/android/voicemail/VoicemailComponent;->get(Landroid/content/Context;)Lcom/android/voicemail/VoicemailComponent;

    move-result-object p1

    .line 223
    invoke-virtual {p1}, Lcom/android/voicemail/VoicemailComponent;->getVoicemailClient()Lcom/android/voicemail/VoicemailClient;

    move-result-object p1

    iget-object v0, p0, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$6;->val$context:Landroid/content/Context;

    .line 224
    invoke-interface {p1, v0}, Lcom/android/voicemail/VoicemailClient;->isVoicemailArchiveAvailable(Landroid/content/Context;)Z

    move-result p1

    .line 221
    invoke-static {p1}, Lcom/android/dialer/common/Assert;->checkArgument(Z)V

    .line 225
    iget-object p1, p0, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$6;->val$context:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object p1

    iget-object v0, p0, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$6;->val$impressionToLog:Lcom/android/dialer/logging/DialerImpression$Type;

    invoke-interface {p1, v0}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    .line 226
    iget-object p1, p0, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$6;->val$voicemailClient:Lcom/android/voicemail/VoicemailClient;

    iget-object v0, p0, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$6;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$6;->val$phoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    const/4 v2, 0x1

    invoke-interface {p1, v0, v1, v2}, Lcom/android/voicemail/VoicemailClient;->setVoicemailArchiveEnabled(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Z)V

    .line 227
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.provider.action.SYNC_VOICEMAIL"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$6;->val$status:Lcom/android/dialer/app/voicemail/error/VoicemailStatus;

    iget-object v0, v0, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->sourcePackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$6;->val$context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 230
    iget-object p1, p0, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$6;->val$statusReader:Lcom/android/dialer/app/voicemail/error/VoicemailStatusReader;

    invoke-interface {p1}, Lcom/android/dialer/app/voicemail/error/VoicemailStatusReader;->refresh()V

    return-void
.end method
