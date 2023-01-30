.class Lcom/android/incallui/InCallActivityCommon$5;
.super Ljava/lang/Object;
.source "InCallActivityCommon.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/InCallActivityCommon;->showErrorDialog(Landroid/app/Dialog;Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/InCallActivityCommon;


# direct methods
.method constructor <init>(Lcom/android/incallui/InCallActivityCommon;)V
    .locals 0

    .line 652
    iput-object p1, p0, Lcom/android/incallui/InCallActivityCommon$5;->this$0:Lcom/android/incallui/InCallActivityCommon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "InCallActivityCommon.showErrorDialog"

    const-string v1, "dialog dismissed"

    .line 655
    invoke-static {v0, v1, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 656
    iget-object p1, p0, Lcom/android/incallui/InCallActivityCommon$5;->this$0:Lcom/android/incallui/InCallActivityCommon;

    invoke-static {p1}, Lcom/android/incallui/InCallActivityCommon;->access$200(Lcom/android/incallui/InCallActivityCommon;)V

    return-void
.end method
