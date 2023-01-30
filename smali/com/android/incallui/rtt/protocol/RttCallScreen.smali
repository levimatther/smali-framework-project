.class public interface abstract Lcom/android/incallui/rtt/protocol/RttCallScreen;
.super Ljava/lang/Object;
.source "RttCallScreen.java"

# interfaces
.implements Lcom/android/incallui/incall/protocol/InCallScreen;


# virtual methods
.method public abstract getCallId()Ljava/lang/String;
.end method

.method public abstract getRttCallScreenFragment()Landroidx/fragment/app/Fragment;
.end method

.method public abstract getRttTranscriptMessageList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/dialer/rtt/RttTranscriptMessage;",
            ">;"
        }
    .end annotation
.end method

.method public abstract onRemoteMessage(Ljava/lang/String;)V
.end method

.method public abstract onRestoreRttChat(Lcom/android/dialer/rtt/RttTranscript;)V
.end method

.method public abstract onRttScreenStart()V
.end method

.method public abstract onRttScreenStop()V
.end method
