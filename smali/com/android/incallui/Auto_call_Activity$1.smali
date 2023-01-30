.class Lcom/android/incallui/Auto_call_Activity$1;
.super Ljava/lang/Object;
.source "Auto_call_Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/Auto_call_Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/Auto_call_Activity;


# direct methods
.method constructor <init>(Lcom/android/incallui/Auto_call_Activity;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/android/incallui/Auto_call_Activity$1;->this$0:Lcom/android/incallui/Auto_call_Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 76
    iget-object v0, p0, Lcom/android/incallui/Auto_call_Activity$1;->this$0:Lcom/android/incallui/Auto_call_Activity;

    invoke-static {v0}, Lcom/android/incallui/Auto_call_Activity;->access$000(Lcom/android/incallui/Auto_call_Activity;)I

    move-result v0

    const-string v1, "Auto_call_Activity.update_thread"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v0, v3, :cond_1

    new-array v0, v2, [Ljava/lang/Object;

    const-string v4, "time > 1"

    .line 77
    invoke-static {v1, v4, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    iget-object v0, p0, Lcom/android/incallui/Auto_call_Activity$1;->this$0:Lcom/android/incallui/Auto_call_Activity;

    invoke-static {v0}, Lcom/android/incallui/Auto_call_Activity;->access$000(Lcom/android/incallui/Auto_call_Activity;)I

    move-result v1

    sub-int/2addr v1, v3

    invoke-static {v0, v1}, Lcom/android/incallui/Auto_call_Activity;->access$002(Lcom/android/incallui/Auto_call_Activity;I)I

    .line 79
    iget-object v0, p0, Lcom/android/incallui/Auto_call_Activity$1;->this$0:Lcom/android/incallui/Auto_call_Activity;

    invoke-virtual {v0}, Lcom/android/incallui/Auto_call_Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1103da

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/incallui/Auto_call_Activity$1;->this$0:Lcom/android/incallui/Auto_call_Activity;

    invoke-static {v5}, Lcom/android/incallui/Auto_call_Activity;->access$000(Lcom/android/incallui/Auto_call_Activity;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v0, v1, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 81
    iget-object v1, p0, Lcom/android/incallui/Auto_call_Activity$1;->this$0:Lcom/android/incallui/Auto_call_Activity;

    invoke-static {v1}, Lcom/android/incallui/Auto_call_Activity;->access$000(Lcom/android/incallui/Auto_call_Activity;)I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 82
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 85
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/Auto_call_Activity$1;->this$0:Lcom/android/incallui/Auto_call_Activity;

    iget-object v1, v1, Lcom/android/incallui/Auto_call_Activity;->mText:Landroid/widget/TctDialogMessage;

    invoke-virtual {v1, v0}, Landroid/widget/TctDialogMessage;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v0, p0, Lcom/android/incallui/Auto_call_Activity$1;->this$0:Lcom/android/incallui/Auto_call_Activity;

    iget-object v0, v0, Lcom/android/incallui/Auto_call_Activity;->handler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "time = 1"

    .line 88
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    iget-object v0, p0, Lcom/android/incallui/Auto_call_Activity$1;->this$0:Lcom/android/incallui/Auto_call_Activity;

    iget-object v0, v0, Lcom/android/incallui/Auto_call_Activity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/incallui/Auto_call_Activity$1;->this$0:Lcom/android/incallui/Auto_call_Activity;

    iget-object v1, v1, Lcom/android/incallui/Auto_call_Activity;->update_thread:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 90
    iget-object v0, p0, Lcom/android/incallui/Auto_call_Activity$1;->this$0:Lcom/android/incallui/Auto_call_Activity;

    invoke-virtual {v0}, Lcom/android/incallui/Auto_call_Activity;->finish()V

    .line 91
    iget-object v0, p0, Lcom/android/incallui/Auto_call_Activity$1;->this$0:Lcom/android/incallui/Auto_call_Activity;

    invoke-static {v0}, Lcom/android/incallui/Auto_call_Activity;->access$100(Lcom/android/incallui/Auto_call_Activity;)V

    :goto_0
    return-void
.end method
