.class final Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$2;
.super Ljava/lang/Object;
.source "VoicemailErrorMessage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage;->createSetPinAction(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$phoneAccountHandle:Landroid/telecom/PhoneAccountHandle;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$2;->val$phoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 153
    iget-object p1, p0, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$2;->val$context:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object p1

    sget-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->VOICEMAIL_ALERT_SET_PIN_CLICKED:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 154
    invoke-interface {p1, v0}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    .line 156
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.android.dialer.action.CHANGE_PIN"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$2;->val$phoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    const-string v1, "phone_account_handle"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 158
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessage$2;->val$context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
