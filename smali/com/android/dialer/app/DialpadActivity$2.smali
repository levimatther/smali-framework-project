.class Lcom/android/dialer/app/DialpadActivity$2;
.super Ljava/lang/Object;
.source "DialpadActivity.java"

# interfaces
.implements Lcom/android/incallui/RttCallDialog$RttDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/app/DialpadActivity;->onPickPhoneNumber(Ljava/lang/String;ZLcom/android/dialer/callintent/CallSpecificAppData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/app/DialpadActivity;

.field final synthetic val$callSpecificAppData:Lcom/android/dialer/callintent/CallSpecificAppData;

.field final synthetic val$isVideoCall:Z

.field final synthetic val$number:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/dialer/app/DialpadActivity;Ljava/lang/String;Lcom/android/dialer/callintent/CallSpecificAppData;Z)V
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/android/dialer/app/DialpadActivity$2;->this$0:Lcom/android/dialer/app/DialpadActivity;

    iput-object p2, p0, Lcom/android/dialer/app/DialpadActivity$2;->val$number:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/dialer/app/DialpadActivity$2;->val$callSpecificAppData:Lcom/android/dialer/callintent/CallSpecificAppData;

    iput-boolean p4, p0, Lcom/android/dialer/app/DialpadActivity$2;->val$isVideoCall:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 250
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090272

    const-string v1, "isDialpad"

    const/4 v2, 0x1

    if-eq p1, v0, :cond_1

    const v0, 0x7f09034e

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 252
    :cond_0
    new-instance p1, Lcom/android/dialer/callintent/CallIntentBuilder;

    iget-object v0, p0, Lcom/android/dialer/app/DialpadActivity$2;->val$number:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/dialer/app/DialpadActivity$2;->val$callSpecificAppData:Lcom/android/dialer/callintent/CallSpecificAppData;

    invoke-direct {p1, v0, v3}, Lcom/android/dialer/callintent/CallIntentBuilder;-><init>(Ljava/lang/String;Lcom/android/dialer/callintent/CallSpecificAppData;)V

    iget-boolean v0, p0, Lcom/android/dialer/app/DialpadActivity$2;->val$isVideoCall:Z

    .line 253
    invoke-virtual {p1, v0}, Lcom/android/dialer/callintent/CallIntentBuilder;->setIsVideoCall(Z)Lcom/android/dialer/callintent/CallIntentBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/dialer/callintent/CallIntentBuilder;->build()Landroid/content/Intent;

    move-result-object p1

    .line 254
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 255
    iget-object v0, p0, Lcom/android/dialer/app/DialpadActivity$2;->this$0:Lcom/android/dialer/app/DialpadActivity;

    invoke-virtual {v0}, Lcom/android/dialer/app/DialpadActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/dialer/util/DialerUtils;->startActivityWithErrorToast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 256
    iget-object p1, p0, Lcom/android/dialer/app/DialpadActivity$2;->this$0:Lcom/android/dialer/app/DialpadActivity;

    invoke-static {p1}, Lcom/android/dialer/app/DialpadActivity;->access$100(Lcom/android/dialer/app/DialpadActivity;)Lcom/android/dialer/app/dialpad/DialpadFragment;

    move-result-object p1

    iput-boolean v2, p1, Lcom/android/dialer/app/dialpad/DialpadFragment;->clearEditText:Z

    goto :goto_0

    .line 259
    :cond_1
    new-instance p1, Lcom/android/dialer/callintent/CallIntentBuilder;

    iget-object v0, p0, Lcom/android/dialer/app/DialpadActivity$2;->val$number:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/dialer/app/DialpadActivity$2;->val$callSpecificAppData:Lcom/android/dialer/callintent/CallSpecificAppData;

    invoke-direct {p1, v0, v3}, Lcom/android/dialer/callintent/CallIntentBuilder;-><init>(Ljava/lang/String;Lcom/android/dialer/callintent/CallSpecificAppData;)V

    iget-boolean v0, p0, Lcom/android/dialer/app/DialpadActivity$2;->val$isVideoCall:Z

    invoke-virtual {p1, v0}, Lcom/android/dialer/callintent/CallIntentBuilder;->setIsVideoCall(Z)Lcom/android/dialer/callintent/CallIntentBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/dialer/callintent/CallIntentBuilder;->build()Landroid/content/Intent;

    move-result-object p1

    .line 260
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "android.telecom.extra.START_CALL_WITH_RTT"

    .line 261
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v3, "android.telecom.extra.OUTGOING_CALL_EXTRAS"

    .line 262
    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 263
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 264
    iget-object v0, p0, Lcom/android/dialer/app/DialpadActivity$2;->this$0:Lcom/android/dialer/app/DialpadActivity;

    invoke-virtual {v0}, Lcom/android/dialer/app/DialpadActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/dialer/util/DialerUtils;->startActivityWithErrorToast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 265
    iget-object p1, p0, Lcom/android/dialer/app/DialpadActivity$2;->this$0:Lcom/android/dialer/app/DialpadActivity;

    invoke-static {p1}, Lcom/android/dialer/app/DialpadActivity;->access$100(Lcom/android/dialer/app/DialpadActivity;)Lcom/android/dialer/app/dialpad/DialpadFragment;

    move-result-object p1

    iput-boolean v2, p1, Lcom/android/dialer/app/dialpad/DialpadFragment;->clearEditText:Z

    :goto_0
    return-void
.end method
