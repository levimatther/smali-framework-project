.class final Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$1;
.super Ljava/lang/Object;
.source "VoicemailErrorMessage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;->createChangeAirplaneModeAction(Landroid/content/Context;)Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 137
    iget-object p1, p0, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$1;->val$context:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object p1

    sget-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_CHANGE_AIRPLANE_MODE_CLICKED:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 138
    invoke-interface {p1, v0}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    .line 139
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.AIRPLANE_MODE_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
