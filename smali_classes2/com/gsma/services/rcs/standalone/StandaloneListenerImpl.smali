.class public Lcom/gsma/services/rcs/standalone/StandaloneListenerImpl;
.super Lcom/gsma/services/rcs/standalone/IStandaloneListener$Stub;
.source "StandaloneListenerImpl.java"


# instance fields
.field private final mListener:Lcom/gsma/services/rcs/standalone/StandaloneListener;


# direct methods
.method public constructor <init>(Lcom/gsma/services/rcs/standalone/StandaloneListener;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/gsma/services/rcs/standalone/IStandaloneListener$Stub;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/gsma/services/rcs/standalone/StandaloneListenerImpl;->mListener:Lcom/gsma/services/rcs/standalone/StandaloneListener;

    return-void
.end method


# virtual methods
.method public onGroupStandaloneDeleted(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/gsma/services/rcs/standalone/StandaloneListenerImpl;->mListener:Lcom/gsma/services/rcs/standalone/StandaloneListener;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1, v1}, Lcom/gsma/services/rcs/standalone/StandaloneListener;->onGroupStandaloneDeleted(Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method

.method public onMessageStatusChanged(Ljava/lang/String;IIZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    invoke-static {p2}, Lcom/gsma/services/rcs/standalone/StandaloneMessage$State;->valueOf(I)Lcom/gsma/services/rcs/standalone/StandaloneMessage$State;

    move-result-object p2

    .line 25
    invoke-static {p3}, Lcom/gsma/services/rcs/standalone/StandaloneMessage$ReasonCode;->valueOf(I)Lcom/gsma/services/rcs/standalone/StandaloneMessage$ReasonCode;

    move-result-object p3

    .line 26
    iget-object v0, p0, Lcom/gsma/services/rcs/standalone/StandaloneListenerImpl;->mListener:Lcom/gsma/services/rcs/standalone/StandaloneListener;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/gsma/services/rcs/standalone/StandaloneListener;->onMessageStatusChanged(Ljava/lang/String;Lcom/gsma/services/rcs/standalone/StandaloneMessage$State;Lcom/gsma/services/rcs/standalone/StandaloneMessage$ReasonCode;Z)V

    return-void
.end method

.method public onMessagesDeleted(Lcom/gsma/services/rcs/contact/ContactId;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gsma/services/rcs/contact/ContactId;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/gsma/services/rcs/standalone/StandaloneListenerImpl;->mListener:Lcom/gsma/services/rcs/standalone/StandaloneListener;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1, v1}, Lcom/gsma/services/rcs/standalone/StandaloneListener;->onMessagesDeleted(Lcom/gsma/services/rcs/contact/ContactId;Ljava/util/Set;)V

    return-void
.end method

.method public onNewStandaloneMessageReceived(Lcom/gsma/services/rcs/standalone/IStandaloneMessage;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/gsma/services/rcs/standalone/StandaloneListenerImpl;->mListener:Lcom/gsma/services/rcs/standalone/StandaloneListener;

    new-instance v1, Lcom/gsma/services/rcs/standalone/StandaloneMessage;

    invoke-direct {v1, p1}, Lcom/gsma/services/rcs/standalone/StandaloneMessage;-><init>(Lcom/gsma/services/rcs/standalone/IStandaloneMessage;)V

    invoke-virtual {v0, v1}, Lcom/gsma/services/rcs/standalone/StandaloneListener;->onNewStandaloneMessageReceived(Lcom/gsma/services/rcs/standalone/StandaloneMessage;)V

    return-void
.end method

.method public onSendFailed(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/gsma/services/rcs/standalone/StandaloneListenerImpl;->mListener:Lcom/gsma/services/rcs/standalone/StandaloneListener;

    invoke-virtual {v0, p1, p2, p3}, Lcom/gsma/services/rcs/standalone/StandaloneListener;->onSendFailed(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
