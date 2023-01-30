.class Lcom/android/incallui/InCallActivityCommon$10;
.super Ljava/lang/Object;
.source "InCallActivityCommon.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/InCallActivityCommon;->showRttEndDialog()V
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

    .line 723
    iput-object p1, p0, Lcom/android/incallui/InCallActivityCommon$10;->this$0:Lcom/android/incallui/InCallActivityCommon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 726
    iget-object p1, p0, Lcom/android/incallui/InCallActivityCommon$10;->this$0:Lcom/android/incallui/InCallActivityCommon;

    invoke-static {p1}, Lcom/android/incallui/InCallActivityCommon;->access$400(Lcom/android/incallui/InCallActivityCommon;)Landroid/app/TctDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 727
    iget-object p1, p0, Lcom/android/incallui/InCallActivityCommon$10;->this$0:Lcom/android/incallui/InCallActivityCommon;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/incallui/InCallActivityCommon;->access$402(Lcom/android/incallui/InCallActivityCommon;Landroid/app/TctDialog;)Landroid/app/TctDialog;

    .line 728
    iget-object p1, p0, Lcom/android/incallui/InCallActivityCommon$10;->this$0:Lcom/android/incallui/InCallActivityCommon;

    invoke-static {p1}, Lcom/android/incallui/InCallActivityCommon;->access$200(Lcom/android/incallui/InCallActivityCommon;)V

    :cond_0
    return-void
.end method
