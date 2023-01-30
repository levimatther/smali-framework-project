.class Lcom/android/incallui/answer/impl/AnswerFragment$7;
.super Ljava/lang/Object;
.source "AnswerFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/answer/impl/AnswerFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/answer/impl/AnswerFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/answer/impl/AnswerFragment;)V
    .locals 0

    .line 1029
    iput-object p1, p0, Lcom/android/incallui/answer/impl/AnswerFragment$7;->this$0:Lcom/android/incallui/answer/impl/AnswerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .line 1032
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment$7;->this$0:Lcom/android/incallui/answer/impl/AnswerFragment;

    invoke-static {v0}, Lcom/android/incallui/answer/impl/AnswerFragment;->access$1400(Lcom/android/incallui/answer/impl/AnswerFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 1033
    iget-object v1, p0, Lcom/android/incallui/answer/impl/AnswerFragment$7;->this$0:Lcom/android/incallui/answer/impl/AnswerFragment;

    invoke-static {v1}, Lcom/android/incallui/answer/impl/AnswerFragment;->access$1400(Lcom/android/incallui/answer/impl/AnswerFragment;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/answer/impl/AnswerFragment$7;->this$0:Lcom/android/incallui/answer/impl/AnswerFragment;

    .line 1035
    invoke-static {v2}, Lcom/android/incallui/answer/impl/AnswerFragment;->access$1400(Lcom/android/incallui/answer/impl/AnswerFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/android/incallui/answer/impl/AnswerFragment$7;->this$0:Lcom/android/incallui/answer/impl/AnswerFragment;

    .line 1037
    invoke-static {v3}, Lcom/android/incallui/answer/impl/AnswerFragment;->access$1400(Lcom/android/incallui/answer/impl/AnswerFragment;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    .line 1033
    invoke-virtual {v1, v0, v2, v0, v3}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method
