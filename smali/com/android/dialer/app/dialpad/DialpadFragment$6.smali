.class Lcom/android/dialer/app/dialpad/DialpadFragment$6;
.super Ljava/lang/Object;
.source "DialpadFragment.java"

# interfaces
.implements Lcom/android/incallui/RttCallDialog$RttDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/app/dialpad/DialpadFragment;->callVoicemail()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;


# direct methods
.method constructor <init>(Lcom/android/dialer/app/dialpad/DialpadFragment;)V
    .locals 0

    .line 2304
    iput-object p1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$6;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 2307
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090272

    const/4 v1, 0x0

    const-string v2, "isDialpad"

    const/4 v3, 0x1

    if-eq p1, v0, :cond_1

    const v0, 0x7f09034e

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2310
    :cond_0
    new-instance p1, Lcom/android/dialer/callintent/CallIntentBuilder;

    invoke-static {}, Lcom/android/dialer/util/CallUtil;->getVoicemailUri()Landroid/net/Uri;

    move-result-object v0

    sget-object v4, Lcom/android/dialer/callintent/CallInitiationType$Type;->DIALPAD:Lcom/android/dialer/callintent/CallInitiationType$Type;

    invoke-direct {p1, v0, v4}, Lcom/android/dialer/callintent/CallIntentBuilder;-><init>(Landroid/net/Uri;Lcom/android/dialer/callintent/CallInitiationType$Type;)V

    invoke-virtual {p1}, Lcom/android/dialer/callintent/CallIntentBuilder;->build()Landroid/content/Intent;

    move-result-object p1

    .line 2311
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2312
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$6;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;

    .line 2313
    invoke-virtual {v0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2312
    invoke-static {v0, p1}, Lcom/android/dialer/util/DialerUtils;->startActivityWithErrorToast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 2315
    iget-object p1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$6;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-static {p1, v1}, Lcom/android/dialer/app/dialpad/DialpadFragment;->access$3200(Lcom/android/dialer/app/dialpad/DialpadFragment;Z)V

    .line 2316
    iget-object p1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$6;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;

    iput-boolean v3, p1, Lcom/android/dialer/app/dialpad/DialpadFragment;->clearEditText:Z

    goto :goto_0

    .line 2319
    :cond_1
    new-instance p1, Lcom/android/dialer/callintent/CallIntentBuilder;

    .line 2320
    invoke-static {}, Lcom/android/dialer/util/CallUtil;->getVoicemailUri()Landroid/net/Uri;

    move-result-object v0

    sget-object v4, Lcom/android/dialer/callintent/CallInitiationType$Type;->DIALPAD:Lcom/android/dialer/callintent/CallInitiationType$Type;

    invoke-direct {p1, v0, v4}, Lcom/android/dialer/callintent/CallIntentBuilder;-><init>(Landroid/net/Uri;Lcom/android/dialer/callintent/CallInitiationType$Type;)V

    invoke-virtual {p1}, Lcom/android/dialer/callintent/CallIntentBuilder;->build()Landroid/content/Intent;

    move-result-object p1

    .line 2321
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v4, "android.telecom.extra.START_CALL_WITH_RTT"

    .line 2322
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v4, "android.telecom.extra.OUTGOING_CALL_EXTRAS"

    .line 2323
    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2324
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2325
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$6;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-virtual {v0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/dialer/util/DialerUtils;->startActivityWithErrorToast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 2326
    iget-object p1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$6;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-static {p1, v1}, Lcom/android/dialer/app/dialpad/DialpadFragment;->access$3200(Lcom/android/dialer/app/dialpad/DialpadFragment;Z)V

    .line 2327
    iget-object p1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$6;->this$0:Lcom/android/dialer/app/dialpad/DialpadFragment;

    iput-boolean v3, p1, Lcom/android/dialer/app/dialpad/DialpadFragment;->clearEditText:Z

    :goto_0
    return-void
.end method
