.class public final synthetic Lcom/android/incallui/answer/impl/-$$Lambda$AnswerFragment$WUidlJ4DGqKXblTUhbSx9pXXGI4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/incallui/RttAnswerDialog$RttDialogListener;


# instance fields
.field public final synthetic f$0:Lcom/android/incallui/answer/impl/AnswerFragment;

.field public final synthetic f$1:Lcom/android/incallui/call/DialerCall;


# direct methods
.method public synthetic constructor <init>(Lcom/android/incallui/answer/impl/AnswerFragment;Lcom/android/incallui/call/DialerCall;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/incallui/answer/impl/-$$Lambda$AnswerFragment$WUidlJ4DGqKXblTUhbSx9pXXGI4;->f$0:Lcom/android/incallui/answer/impl/AnswerFragment;

    iput-object p2, p0, Lcom/android/incallui/answer/impl/-$$Lambda$AnswerFragment$WUidlJ4DGqKXblTUhbSx9pXXGI4;->f$1:Lcom/android/incallui/call/DialerCall;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/answer/impl/-$$Lambda$AnswerFragment$WUidlJ4DGqKXblTUhbSx9pXXGI4;->f$0:Lcom/android/incallui/answer/impl/AnswerFragment;

    iget-object v1, p0, Lcom/android/incallui/answer/impl/-$$Lambda$AnswerFragment$WUidlJ4DGqKXblTUhbSx9pXXGI4;->f$1:Lcom/android/incallui/call/DialerCall;

    invoke-virtual {v0, v1, p1}, Lcom/android/incallui/answer/impl/AnswerFragment;->lambda$onClickCSK$0$AnswerFragment(Lcom/android/incallui/call/DialerCall;Landroid/view/View;)V

    return-void
.end method
