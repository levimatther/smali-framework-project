.class Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator$3;
.super Ljava/lang/Object;
.source "VoicemailTosMessageCreator.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;->showDeclineTosDialog(Landroid/telecom/PhoneAccountHandle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;

.field final synthetic val$handle:Landroid/telecom/PhoneAccountHandle;

.field final synthetic val$telephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method constructor <init>(Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;Landroid/telephony/TelephonyManager;Landroid/telecom/PhoneAccountHandle;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator$3;->this$0:Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;

    iput-object p2, p0, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator$3;->val$telephonyManager:Landroid/telephony/TelephonyManager;

    iput-object p3, p0, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator$3;->val$handle:Landroid/telecom/PhoneAccountHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 160
    iget-object p1, p0, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator$3;->this$0:Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;

    invoke-static {p1}, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;->access$600(Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object p1

    sget-object p2, Lcom/android/dialer/logging/DialerImpression$Type;->VOICEMAIL_VVM3_TOS_DECLINED:Lcom/android/dialer/logging/DialerImpression$Type;

    invoke-interface {p1, p2}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    .line 161
    iget-object p1, p0, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator$3;->this$0:Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;

    invoke-static {p1}, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;->access$600(Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/voicemail/VoicemailComponent;->get(Landroid/content/Context;)Lcom/android/voicemail/VoicemailComponent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/voicemail/VoicemailComponent;->getVoicemailClient()Lcom/android/voicemail/VoicemailClient;

    move-result-object p1

    .line 162
    invoke-interface {p1}, Lcom/android/voicemail/VoicemailClient;->isVoicemailModuleEnabled()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 163
    iget-object p2, p0, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator$3;->this$0:Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;

    invoke-static {p2}, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;->access$600(Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;)Landroid/content/Context;

    move-result-object p2

    iget-object v1, p0, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator$3;->this$0:Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;

    invoke-static {v1}, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;->access$000(Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator;)Lcom/android/dialer/app/voicemail/error/VoicemailStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->getPhoneAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v1

    invoke-interface {p1, p2, v1, v0}, Lcom/android/voicemail/VoicemailClient;->setVoicemailEnabled(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Z)V

    goto :goto_0

    .line 165
    :cond_0
    iget-object p1, p0, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator$3;->val$telephonyManager:Landroid/telephony/TelephonyManager;

    iget-object p2, p0, Lcom/android/dialer/app/voicemail/error/VoicemailTosMessageCreator$3;->val$handle:Landroid/telecom/PhoneAccountHandle;

    invoke-static {p1, p2, v0}, Lcom/android/contacts/common/compat/TelephonyManagerCompat;->setVisualVoicemailEnabled(Landroid/telephony/TelephonyManager;Landroid/telecom/PhoneAccountHandle;Z)V

    :goto_0
    return-void
.end method
