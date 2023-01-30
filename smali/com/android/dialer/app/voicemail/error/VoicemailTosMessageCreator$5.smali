.class Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator$5;
.super Ljava/lang/Object;
.source "VoicemailTosMessageCreator.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;->showSetPinBeforeDeclineDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;


# direct methods
.method constructor <init>(Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator$5;->this$0:Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 191
    iget-object p1, p0, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator$5;->this$0:Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;

    invoke-static {p1}, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;->access$600(Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object p1

    sget-object p2, Lcom/android/dialer/logging/DialerImpression$Type;->VOICEMAIL_VVM3_TOS_DECLINE_CHANGE_PIN_SHOWN:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 192
    invoke-interface {p1, p2}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    .line 193
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.telephony.action.CONFIGURE_VOICEMAIL"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 194
    iget-object p2, p0, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator$5;->this$0:Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;

    invoke-static {p2}, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;->access$600(Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
