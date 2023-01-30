.class public Lcom/android/voicemail/impl/VoicemailBootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "VoicemailBootReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 26
    invoke-static {p1}, Lcom/android/voicemail/VoicemailComponent;->get(Landroid/content/Context;)Lcom/android/voicemail/VoicemailComponent;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/voicemail/VoicemailComponent;->getVoicemailClient()Lcom/android/voicemail/VoicemailClient;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/voicemail/VoicemailClient;->isVoicemailModuleEnabled()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 29
    :cond_0
    invoke-static {p1}, Lcom/android/voicemail/impl/StatusCheckJobService;->schedule(Landroid/content/Context;)V

    return-void
.end method
