.class Lcom/android/incallui/answer/impl/answermethod/TwoButtonMethod$1;
.super Ljava/lang/Object;
.source "TwoButtonMethod.java"

# interfaces
.implements Lcom/android/incallui/answer/impl/answermethod/FlingUpDownTouchHandler$OnProgressChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/answer/impl/answermethod/TwoButtonMethod;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/answer/impl/answermethod/TwoButtonMethod;


# direct methods
.method constructor <init>(Lcom/android/incallui/answer/impl/answermethod/TwoButtonMethod;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/android/incallui/answer/impl/answermethod/TwoButtonMethod$1;->this$0:Lcom/android/incallui/answer/impl/answermethod/TwoButtonMethod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMoveFinish(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 127
    iget-object p1, p0, Lcom/android/incallui/answer/impl/answermethod/TwoButtonMethod$1;->this$0:Lcom/android/incallui/answer/impl/answermethod/TwoButtonMethod;

    invoke-static {p1}, Lcom/android/incallui/answer/impl/answermethod/TwoButtonMethod;->access$000(Lcom/android/incallui/answer/impl/answermethod/TwoButtonMethod;)V

    goto :goto_0

    .line 129
    :cond_0
    iget-object p1, p0, Lcom/android/incallui/answer/impl/answermethod/TwoButtonMethod$1;->this$0:Lcom/android/incallui/answer/impl/answermethod/TwoButtonMethod;

    invoke-static {p1}, Lcom/android/incallui/answer/impl/answermethod/TwoButtonMethod;->access$100(Lcom/android/incallui/answer/impl/answermethod/TwoButtonMethod;)V

    :goto_0
    return-void
.end method

.method public onMoveReset(Z)V
    .locals 0

    return-void
.end method

.method public onProgressChanged(F)V
    .locals 0

    return-void
.end method

.method public onTrackingStart()V
    .locals 0

    return-void
.end method

.method public onTrackingStopped()V
    .locals 0

    return-void
.end method

.method public shouldUseFalsing(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
