.class final enum Lcom/android/incallui/answer/impl/AnswerFragment$SecondaryBehavior$2;
.super Lcom/android/incallui/answer/impl/AnswerFragment$SecondaryBehavior;
.source "AnswerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/answer/impl/AnswerFragment$SecondaryBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;IIIII)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 405
    invoke-direct/range {v0 .. v7}, Lcom/android/incallui/answer/impl/AnswerFragment$SecondaryBehavior;-><init>(Ljava/lang/String;IIIIILcom/android/incallui/answer/impl/AnswerFragment$1;)V

    return-void
.end method


# virtual methods
.method public performAction(Lcom/android/incallui/answer/impl/AnswerFragment;)V
    .locals 1

    const/4 v0, 0x1

    .line 412
    invoke-static {p1, v0}, Lcom/android/incallui/answer/impl/AnswerFragment;->access$200(Lcom/android/incallui/answer/impl/AnswerFragment;Z)V

    return-void
.end method
