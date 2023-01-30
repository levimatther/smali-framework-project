.class public Lcom/gsma/services/rcs/chat/OneToManyListenerImpl;
.super Lcom/gsma/services/rcs/chat/IOneToManyListener$Stub;
.source "OneToManyListenerImpl.java"


# instance fields
.field private final mListener:Lcom/gsma/services/rcs/chat/OneToManyListener;


# direct methods
.method public constructor <init>(Lcom/gsma/services/rcs/chat/OneToManyListener;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/gsma/services/rcs/chat/IOneToManyListener$Stub;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/gsma/services/rcs/chat/OneToManyListenerImpl;->mListener:Lcom/gsma/services/rcs/chat/OneToManyListener;

    return-void
.end method


# virtual methods
.method public onMessageStatusChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/OneToManyListenerImpl;->mListener:Lcom/gsma/services/rcs/chat/OneToManyListener;

    .line 65
    invoke-static {p4}, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;->valueOf(I)Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    move-result-object v4

    invoke-static {p5}, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;->valueOf(I)Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;

    move-result-object v5

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 64
    invoke-virtual/range {v0 .. v5}, Lcom/gsma/services/rcs/chat/OneToManyListener;->onMessageStatusChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;)V

    return-void
.end method

.method public onMessagesDeleted(Ljava/lang/String;Ljava/util/List;)V
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

    .line 78
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/OneToManyListenerImpl;->mListener:Lcom/gsma/services/rcs/chat/OneToManyListener;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1, v1}, Lcom/gsma/services/rcs/chat/OneToManyListener;->onMessagesDeleted(Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method

.method public onUpdateRecipientsFinished(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/OneToManyListenerImpl;->mListener:Lcom/gsma/services/rcs/chat/OneToManyListener;

    invoke-virtual {v0, p1, p2}, Lcom/gsma/services/rcs/chat/OneToManyListener;->onUpdateRecipientsFinished(Ljava/lang/String;Z)V

    return-void
.end method
