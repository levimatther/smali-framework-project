.class public interface abstract Lcom/android/incallui/answer/protocol/AnswerScreen;
.super Ljava/lang/Object;
.source "AnswerScreen.java"


# virtual methods
.method public abstract allowAnswerAndRelease()Z
.end method

.method public abstract dismissPendingDialogs()V
.end method

.method public abstract getAnswerScreenFragment()Landroidx/fragment/app/Fragment;
.end method

.method public abstract getCallId()Ljava/lang/String;
.end method

.method public abstract hasPendingDialogs()Z
.end method

.method public abstract isActionTimeout()Z
.end method

.method public abstract isRttCall()Z
.end method

.method public abstract isVideoCall()Z
.end method

.method public abstract isVideoUpgradeRequest()Z
.end method

.method public abstract setTextResponses(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateAnswerScreenUi()V
.end method
