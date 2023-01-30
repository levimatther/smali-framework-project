.class public Lcom/gsma/services/rcs/chat/GroupChatListenerImpl;
.super Lcom/gsma/services/rcs/chat/IGroupChatListener$Stub;
.source "GroupChatListenerImpl.java"


# static fields
.field private static final sLogger:Lcom/gsma/rcs/utils/logger/Logger;


# instance fields
.field private final mListener:Lcom/gsma/services/rcs/chat/GroupChatListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "GroupChatListenerImpl"

    .line 37
    invoke-static {v0}, Lcom/gsma/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/gsma/rcs/utils/logger/Logger;

    move-result-object v0

    sput-object v0, Lcom/gsma/services/rcs/chat/GroupChatListenerImpl;->sLogger:Lcom/gsma/rcs/utils/logger/Logger;

    return-void
.end method

.method constructor <init>(Lcom/gsma/services/rcs/chat/GroupChatListener;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/gsma/services/rcs/chat/IGroupChatListener$Stub;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/gsma/services/rcs/chat/GroupChatListenerImpl;->mListener:Lcom/gsma/services/rcs/chat/GroupChatListener;

    return-void
.end method


# virtual methods
.method public onComposingEvent(Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/GroupChatListenerImpl;->mListener:Lcom/gsma/services/rcs/chat/GroupChatListener;

    invoke-virtual {v0, p1, p2, p3}, Lcom/gsma/services/rcs/chat/GroupChatListener;->onComposingEvent(Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;Z)V

    return-void
.end method

.method public onDeleted(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    .line 131
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/GroupChatListenerImpl;->mListener:Lcom/gsma/services/rcs/chat/GroupChatListener;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/gsma/services/rcs/chat/GroupChatListener;->onDeleted(Ljava/util/Set;)V

    return-void
.end method

.method public onMessageGroupDeliveryInfoChanged(Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 7

    .line 96
    :try_start_0
    invoke-static {p5}, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;->valueOf(I)Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;

    move-result-object v5

    .line 97
    invoke-static {p6}, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;->valueOf(I)Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/GroupChatListenerImpl;->mListener:Lcom/gsma/services/rcs/chat/GroupChatListener;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/gsma/services/rcs/chat/GroupChatListener;->onMessageGroupDeliveryInfoChanged(Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;Ljava/lang/String;Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;)V

    return-void

    :catch_0
    move-exception p1

    .line 104
    sget-object p2, Lcom/gsma/services/rcs/chat/GroupChatListenerImpl;->sLogger:Lcom/gsma/rcs/utils/logger/Logger;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/gsma/rcs/utils/logger/Logger;->error(Ljava/lang/String;)V

    return-void
.end method

.method public onMessageStatusChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 6

    .line 76
    :try_start_0
    invoke-static {p4}, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;->valueOf(I)Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    move-result-object v4

    .line 77
    invoke-static {p5}, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;->valueOf(I)Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/GroupChatListenerImpl;->mListener:Lcom/gsma/services/rcs/chat/GroupChatListener;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/gsma/services/rcs/chat/GroupChatListener;->onMessageStatusChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;)V

    return-void

    :catch_0
    move-exception p1

    .line 84
    sget-object p2, Lcom/gsma/services/rcs/chat/GroupChatListenerImpl;->sLogger:Lcom/gsma/rcs/utils/logger/Logger;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/gsma/rcs/utils/logger/Logger;->error(Ljava/lang/String;)V

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

    .line 139
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/GroupChatListenerImpl;->mListener:Lcom/gsma/services/rcs/chat/GroupChatListener;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1, v1}, Lcom/gsma/services/rcs/chat/GroupChatListener;->onMessagesDeleted(Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method

.method public onParticipantStatusChanged(Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;I)V
    .locals 1

    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/GroupChatListenerImpl;->mListener:Lcom/gsma/services/rcs/chat/GroupChatListener;

    .line 115
    invoke-static {p3}, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->valueOf(I)Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    move-result-object p3

    invoke-virtual {v0, p1, p2, p3}, Lcom/gsma/services/rcs/chat/GroupChatListener;->onParticipantStatusChanged(Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 122
    sget-object p2, Lcom/gsma/services/rcs/chat/GroupChatListenerImpl;->sLogger:Lcom/gsma/rcs/utils/logger/Logger;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/gsma/rcs/utils/logger/Logger;->error(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onStateChanged(Ljava/lang/String;II)V
    .locals 1

    .line 50
    :try_start_0
    invoke-static {p2}, Lcom/gsma/services/rcs/chat/GroupChat$State;->valueOf(I)Lcom/gsma/services/rcs/chat/GroupChat$State;

    move-result-object p2

    .line 51
    invoke-static {p3}, Lcom/gsma/services/rcs/chat/GroupChat$ReasonCode;->valueOf(I)Lcom/gsma/services/rcs/chat/GroupChat$ReasonCode;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/GroupChatListenerImpl;->mListener:Lcom/gsma/services/rcs/chat/GroupChatListener;

    invoke-virtual {v0, p1, p2, p3}, Lcom/gsma/services/rcs/chat/GroupChatListener;->onStateChanged(Ljava/lang/String;Lcom/gsma/services/rcs/chat/GroupChat$State;Lcom/gsma/services/rcs/chat/GroupChat$ReasonCode;)V

    return-void

    :catch_0
    move-exception p1

    .line 58
    sget-object p2, Lcom/gsma/services/rcs/chat/GroupChatListenerImpl;->sLogger:Lcom/gsma/rcs/utils/logger/Logger;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/gsma/rcs/utils/logger/Logger;->error(Ljava/lang/String;)V

    return-void
.end method

.method public onUserNotify(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/GroupChatListenerImpl;->mListener:Lcom/gsma/services/rcs/chat/GroupChatListener;

    invoke-static {p2}, Lcom/gsma/services/rcs/chat/GroupChat$UserEvent;->valueOf(I)Lcom/gsma/services/rcs/chat/GroupChat$UserEvent;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/gsma/services/rcs/chat/GroupChatListener;->onUserNotify(Ljava/lang/String;Lcom/gsma/services/rcs/chat/GroupChat$UserEvent;)V

    return-void
.end method
