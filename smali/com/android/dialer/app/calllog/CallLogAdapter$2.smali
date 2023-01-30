.class Lcom/android/dialer/app/calllog/CallLogAdapter$2;
.super Ljava/lang/Object;
.source "CallLogAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    .line 292
    iput-object p1, p0, Lcom/android/dialer/app/calllog/CallLogAdapter$2;->this$0:Lcom/android/dialer/app/calllog/CallLogAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 295
    iget-object p2, p0, Lcom/android/dialer/app/calllog/CallLogAdapter$2;->this$0:Lcom/android/dialer/app/calllog/CallLogAdapter;

    iget-object p2, p2, Lcom/android/dialer/app/calllog/CallLogAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {p2}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object p2

    sget-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->MULTISELECT_CANCEL_CONFIRMATION_DIALOG_VIA_CANCEL_BUTTON:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 296
    invoke-interface {p2, v0}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    .line 299
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
