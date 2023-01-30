.class public Lcom/android/incallui/answer/bindings/AnswerBindings;
.super Ljava/lang/Object;
.source "AnswerBindings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAnswerScreen(Ljava/lang/String;ZZZZZZ)Lcom/android/incallui/answer/protocol/AnswerScreen;
    .locals 0

    .line 33
    invoke-static/range {p0 .. p6}, Lcom/android/incallui/answer/impl/AnswerFragment;->newInstance(Ljava/lang/String;ZZZZZZ)Lcom/android/incallui/answer/impl/AnswerFragment;

    move-result-object p0

    return-object p0
.end method
