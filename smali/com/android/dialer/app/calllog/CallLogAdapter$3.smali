.class Lcom/android/dialer/app/calllog/CallLogAdapter$3;
.super Ljava/lang/Object;
.source "CallLogAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/app/calllog/CallLogAdapter;->showDeleteSelectedItemsDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/app/calllog/CallLogAdapter;


# direct methods
.method constructor <init>(Lcom/android/dialer/app/calllog/CallLogAdapter;)V
    .locals 0

    .line 280
    iput-object p1, p0, Lcom/android/dialer/app/calllog/CallLogAdapter$3;->this$0:Lcom/android/dialer/app/calllog/CallLogAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .line 283
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogAdapter$3;->this$0:Lcom/android/dialer/app/calllog/CallLogAdapter;

    iget-object v0, v0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object v0

    sget-object v1, Lcom/android/dialer/logging/DialerImpression$Type;->MULTISELECT_CANCEL_CONFIRMATION_DIALOG_VIA_CANCEL_TOUCH:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 284
    invoke-interface {v0, v1}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    .line 287
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
