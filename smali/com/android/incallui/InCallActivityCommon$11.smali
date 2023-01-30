.class Lcom/android/incallui/InCallActivityCommon$11;
.super Ljava/lang/Object;
.source "InCallActivityCommon.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/InCallActivityCommon;->showWifiFailedDialog(Lcom/android/incallui/call/DialerCall;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/InCallActivityCommon;

.field final synthetic val$call:Lcom/android/incallui/call/DialerCall;

.field final synthetic val$wifiHandoverFailureCheckbox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/incallui/InCallActivityCommon;Lcom/android/incallui/call/DialerCall;Landroid/widget/CheckBox;)V
    .locals 0

    .line 829
    iput-object p1, p0, Lcom/android/incallui/InCallActivityCommon$11;->this$0:Lcom/android/incallui/InCallActivityCommon;

    iput-object p2, p0, Lcom/android/incallui/InCallActivityCommon$11;->val$call:Lcom/android/incallui/call/DialerCall;

    iput-object p3, p0, Lcom/android/incallui/InCallActivityCommon$11;->val$wifiHandoverFailureCheckbox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 832
    iget-object p2, p0, Lcom/android/incallui/InCallActivityCommon$11;->val$call:Lcom/android/incallui/call/DialerCall;

    iget-object v0, p0, Lcom/android/incallui/InCallActivityCommon$11;->val$wifiHandoverFailureCheckbox:Landroid/widget/CheckBox;

    .line 833
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 832
    invoke-virtual {p2, v0}, Lcom/android/incallui/call/DialerCall;->setDoNotShowDialogForHandoffToWifiFailure(Z)V

    .line 834
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 835
    iget-object p1, p0, Lcom/android/incallui/InCallActivityCommon$11;->this$0:Lcom/android/incallui/InCallActivityCommon;

    invoke-static {p1}, Lcom/android/incallui/InCallActivityCommon;->access$200(Lcom/android/incallui/InCallActivityCommon;)V

    return-void
.end method
