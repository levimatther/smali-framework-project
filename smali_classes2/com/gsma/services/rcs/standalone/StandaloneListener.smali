.class public abstract Lcom/gsma/services/rcs/standalone/StandaloneListener;
.super Ljava/lang/Object;
.source "StandaloneListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onGroupStandaloneDeleted(Ljava/lang/String;Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onMessageStatusChanged(Ljava/lang/String;Lcom/gsma/services/rcs/standalone/StandaloneMessage$State;Lcom/gsma/services/rcs/standalone/StandaloneMessage$ReasonCode;Z)V
.end method

.method public abstract onMessagesDeleted(Lcom/gsma/services/rcs/contact/ContactId;Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gsma/services/rcs/contact/ContactId;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onNewStandaloneMessageReceived(Lcom/gsma/services/rcs/standalone/StandaloneMessage;)V
.end method

.method public abstract onSendFailed(Ljava/lang/String;ILjava/lang/String;)V
.end method
