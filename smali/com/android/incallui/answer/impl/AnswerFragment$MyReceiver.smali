.class public Lcom/android/incallui/answer/impl/AnswerFragment$MyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AnswerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/answer/impl/AnswerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/answer/impl/AnswerFragment;


# direct methods
.method public constructor <init>(Lcom/android/incallui/answer/impl/AnswerFragment;)V
    .locals 0

    .line 1552
    iput-object p1, p0, Lcom/android/incallui/answer/impl/AnswerFragment$MyReceiver;->this$0:Lcom/android/incallui/answer/impl/AnswerFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1557
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.android.dialer.rejectcall"

    .line 1558
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1559
    iget-object p1, p0, Lcom/android/incallui/answer/impl/AnswerFragment$MyReceiver;->this$0:Lcom/android/incallui/answer/impl/AnswerFragment;

    invoke-static {p1}, Lcom/android/incallui/answer/impl/AnswerFragment;->access$1600(Lcom/android/incallui/answer/impl/AnswerFragment;)V

    goto :goto_0

    :cond_0
    const-string p2, "com.android.dialer.answercall"

    .line 1560
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1561
    iget-object p1, p0, Lcom/android/incallui/answer/impl/AnswerFragment$MyReceiver;->this$0:Lcom/android/incallui/answer/impl/AnswerFragment;

    invoke-virtual {p1}, Lcom/android/incallui/answer/impl/AnswerFragment;->answerFromMethod()V

    :cond_1
    :goto_0
    return-void
.end method
