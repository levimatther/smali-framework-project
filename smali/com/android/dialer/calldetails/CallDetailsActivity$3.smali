.class Lcom/android/dialer/calldetails/CallDetailsActivity$3;
.super Ljava/lang/Object;
.source "CallDetailsActivity.java"

# interfaces
.implements Lcom/android/incallui/RttCallDialog$RttDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/calldetails/CallDetailsActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/calldetails/CallDetailsActivity;


# direct methods
.method constructor <init>(Lcom/android/dialer/calldetails/CallDetailsActivity;)V
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/android/dialer/calldetails/CallDetailsActivity$3;->this$0:Lcom/android/dialer/calldetails/CallDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 261
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090272

    if-eq p1, v0, :cond_1

    const v0, 0x7f09034e

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 263
    :cond_0
    iget-object p1, p0, Lcom/android/dialer/calldetails/CallDetailsActivity$3;->this$0:Lcom/android/dialer/calldetails/CallDetailsActivity;

    .line 264
    invoke-virtual {p1}, Lcom/android/dialer/calldetails/CallDetailsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lcom/android/dialer/callintent/CallIntentBuilder;

    iget-object v1, p0, Lcom/android/dialer/calldetails/CallDetailsActivity$3;->this$0:Lcom/android/dialer/calldetails/CallDetailsActivity;

    .line 265
    invoke-static {v1}, Lcom/android/dialer/calldetails/CallDetailsActivity;->access$300(Lcom/android/dialer/calldetails/CallDetailsActivity;)Lcom/android/dialer/dialercontact/DialerContact;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/dialer/dialercontact/DialerContact;->getNumber()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/dialer/callintent/CallInitiationType$Type;->CALL_DETAILS:Lcom/android/dialer/callintent/CallInitiationType$Type;

    invoke-direct {v0, v1, v2}, Lcom/android/dialer/callintent/CallIntentBuilder;-><init>(Ljava/lang/String;Lcom/android/dialer/callintent/CallInitiationType$Type;)V

    invoke-virtual {v0}, Lcom/android/dialer/callintent/CallIntentBuilder;->build()Landroid/content/Intent;

    move-result-object v0

    .line 263
    invoke-static {p1, v0}, Lcom/android/dialer/util/DialerUtils;->startActivityWithErrorToast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 266
    iget-object p1, p0, Lcom/android/dialer/calldetails/CallDetailsActivity$3;->this$0:Lcom/android/dialer/calldetails/CallDetailsActivity;

    invoke-static {p1}, Lcom/android/dialer/calldetails/CallDetailsActivity;->access$400(Lcom/android/dialer/calldetails/CallDetailsActivity;)Lcom/android/incallui/RttCallDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/incallui/RttCallDialog;->dismiss()V

    goto :goto_0

    .line 269
    :cond_1
    iget-object p1, p0, Lcom/android/dialer/calldetails/CallDetailsActivity$3;->this$0:Lcom/android/dialer/calldetails/CallDetailsActivity;

    invoke-static {p1}, Lcom/android/dialer/calldetails/CallDetailsActivity;->access$500(Lcom/android/dialer/calldetails/CallDetailsActivity;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onKeyUp -rtt_call"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    new-instance p1, Lcom/android/dialer/callintent/CallIntentBuilder;

    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsActivity$3;->this$0:Lcom/android/dialer/calldetails/CallDetailsActivity;

    invoke-static {v0}, Lcom/android/dialer/calldetails/CallDetailsActivity;->access$300(Lcom/android/dialer/calldetails/CallDetailsActivity;)Lcom/android/dialer/dialercontact/DialerContact;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dialer/dialercontact/DialerContact;->getNumber()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/dialer/callintent/CallInitiationType$Type;->CALL_DETAILS:Lcom/android/dialer/callintent/CallInitiationType$Type;

    invoke-direct {p1, v0, v1}, Lcom/android/dialer/callintent/CallIntentBuilder;-><init>(Ljava/lang/String;Lcom/android/dialer/callintent/CallInitiationType$Type;)V

    invoke-virtual {p1}, Lcom/android/dialer/callintent/CallIntentBuilder;->build()Landroid/content/Intent;

    move-result-object p1

    .line 271
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x1

    const-string v2, "android.telecom.extra.START_CALL_WITH_RTT"

    .line 272
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "android.telecom.extra.OUTGOING_CALL_EXTRAS"

    .line 273
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 274
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsActivity$3;->this$0:Lcom/android/dialer/calldetails/CallDetailsActivity;

    invoke-virtual {v0}, Lcom/android/dialer/calldetails/CallDetailsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/dialer/util/DialerUtils;->startActivityWithErrorToast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 276
    iget-object p1, p0, Lcom/android/dialer/calldetails/CallDetailsActivity$3;->this$0:Lcom/android/dialer/calldetails/CallDetailsActivity;

    invoke-static {p1}, Lcom/android/dialer/calldetails/CallDetailsActivity;->access$400(Lcom/android/dialer/calldetails/CallDetailsActivity;)Lcom/android/incallui/RttCallDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/incallui/RttCallDialog;->dismiss()V

    :goto_0
    return-void
.end method
