.class Lcom/android/incallui/answer/impl/AnswerFragment$1;
.super Ljava/lang/Object;
.source "AnswerFragment.java"

# interfaces
.implements Lcom/android/incallui/DeclineCallSmsFragment$RejectCallListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/answer/impl/AnswerFragment;->onClickLSK()Z
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

    .line 236
    iput-object p1, p0, Lcom/android/incallui/answer/impl/AnswerFragment$1;->this$0:Lcom/android/incallui/answer/impl/AnswerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(I)V
    .locals 2

    .line 239
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment$1;->this$0:Lcom/android/incallui/answer/impl/AnswerFragment;

    invoke-static {v0}, Lcom/android/incallui/answer/impl/AnswerFragment;->access$000(Lcom/android/incallui/answer/impl/AnswerFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lcom/android/incallui/answer/impl/AnswerFragment;->smsSelected(Ljava/lang/CharSequence;)V

    return-void
.end method
