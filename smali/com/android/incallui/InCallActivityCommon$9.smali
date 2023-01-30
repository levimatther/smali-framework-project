.class Lcom/android/incallui/InCallActivityCommon$9;
.super Ljava/lang/Object;
.source "InCallActivityCommon.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    .line 712
    iput-object p1, p0, Lcom/android/incallui/InCallActivityCommon$9;->this$0:Lcom/android/incallui/InCallActivityCommon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 716
    iget-object p1, p0, Lcom/android/incallui/InCallActivityCommon$9;->this$0:Lcom/android/incallui/InCallActivityCommon;

    invoke-static {p1}, Lcom/android/incallui/InCallActivityCommon;->access$400(Lcom/android/incallui/InCallActivityCommon;)Landroid/app/TctDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/incallui/InCallActivityCommon$9;->this$0:Lcom/android/incallui/InCallActivityCommon;

    invoke-static {p1}, Lcom/android/incallui/InCallActivityCommon;->access$400(Lcom/android/incallui/InCallActivityCommon;)Landroid/app/TctDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/TctDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 717
    iget-object p1, p0, Lcom/android/incallui/InCallActivityCommon$9;->this$0:Lcom/android/incallui/InCallActivityCommon;

    invoke-static {p1}, Lcom/android/incallui/InCallActivityCommon;->access$500(Lcom/android/incallui/InCallActivityCommon;)Lcom/android/incallui/InCallActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/incallui/InCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p2, p0, Lcom/android/incallui/InCallActivityCommon$9;->this$0:Lcom/android/incallui/InCallActivityCommon;

    invoke-static {p2}, Lcom/android/incallui/InCallActivityCommon;->access$300(Lcom/android/incallui/InCallActivityCommon;)Z

    move-result p2

    const-string v0, "rtt_dont_show_dialog_again"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 718
    iget-object p1, p0, Lcom/android/incallui/InCallActivityCommon$9;->this$0:Lcom/android/incallui/InCallActivityCommon;

    invoke-static {p1}, Lcom/android/incallui/InCallActivityCommon;->access$400(Lcom/android/incallui/InCallActivityCommon;)Landroid/app/TctDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/TctDialog;->dismiss()V

    :cond_0
    return-void
.end method
