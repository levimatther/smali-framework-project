.class final Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$7;
.super Ljava/lang/Object;
.source "VoicemailErrorMessage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;->createDismissTurnArchiveOnAction(Landroid/content/Context;Lcom/android/dialer/logging/DialerImpression$Type;Lcom/android/dialer/app/voicemail/error/VoicemailStatusReader;Lcom/android/dialer/common/PerAccountSharedPreferences;Ljava/lang/String;)Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$impressionToLog:Lcom/android/dialer/logging/DialerImpression$Type;

.field final synthetic val$preferenceKeyToUpdate:Ljava/lang/String;

.field final synthetic val$sharedPreferenceForAccount:Lcom/android/dialer/common/PerAccountSharedPreferences;

.field final synthetic val$statusReader:Lcom/android/dialer/app/voicemail/error/VoicemailStatusReader;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/dialer/logging/DialerImpression$Type;Lcom/android/dialer/common/PerAccountSharedPreferences;Ljava/lang/String;Lcom/android/dialer/app/voicemail/error/VoicemailStatusReader;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$7;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$7;->val$impressionToLog:Lcom/android/dialer/logging/DialerImpression$Type;

    iput-object p3, p0, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$7;->val$sharedPreferenceForAccount:Lcom/android/dialer/common/PerAccountSharedPreferences;

    iput-object p4, p0, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$7;->val$preferenceKeyToUpdate:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$7;->val$statusReader:Lcom/android/dialer/app/voicemail/error/VoicemailStatusReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 247
    iget-object p1, p0, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$7;->val$context:Landroid/content/Context;

    .line 248
    invoke-static {p1}, Lcom/android/voicemail/VoicemailComponent;->get(Landroid/content/Context;)Lcom/android/voicemail/VoicemailComponent;

    move-result-object p1

    .line 249
    invoke-virtual {p1}, Lcom/android/voicemail/VoicemailComponent;->getVoicemailClient()Lcom/android/voicemail/VoicemailClient;

    move-result-object p1

    iget-object v0, p0, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$7;->val$context:Landroid/content/Context;

    .line 250
    invoke-interface {p1, v0}, Lcom/android/voicemail/VoicemailClient;->isVoicemailArchiveAvailable(Landroid/content/Context;)Z

    move-result p1

    .line 247
    invoke-static {p1}, Lcom/android/dialer/common/Assert;->checkArgument(Z)V

    .line 251
    iget-object p1, p0, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$7;->val$context:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object p1

    iget-object v0, p0, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$7;->val$impressionToLog:Lcom/android/dialer/logging/DialerImpression$Type;

    invoke-interface {p1, v0}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    .line 252
    iget-object p1, p0, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$7;->val$sharedPreferenceForAccount:Lcom/android/dialer/common/PerAccountSharedPreferences;

    invoke-virtual {p1}, Lcom/android/dialer/common/PerAccountSharedPreferences;->edit()Lcom/android/dialer/common/PerAccountSharedPreferences$Editor;

    move-result-object p1

    iget-object v0, p0, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$7;->val$preferenceKeyToUpdate:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/dialer/common/PerAccountSharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Lcom/android/dialer/common/PerAccountSharedPreferences$Editor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/dialer/common/PerAccountSharedPreferences$Editor;->apply()V

    .line 253
    iget-object p1, p0, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$7;->val$statusReader:Lcom/android/dialer/app/voicemail/error/VoicemailStatusReader;

    invoke-interface {p1}, Lcom/android/dialer/app/voicemail/error/VoicemailStatusReader;->refresh()V

    return-void
.end method
