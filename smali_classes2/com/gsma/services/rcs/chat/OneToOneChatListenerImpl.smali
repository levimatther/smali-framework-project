.class public Lcom/gsma/services/rcs/chat/OneToOneChatListenerImpl;
.super Lcom/gsma/services/rcs/chat/IOneToOneChatListener$Stub;
.source "OneToOneChatListenerImpl.java"


# static fields
.field private static final sLogger:Lcom/gsma/rcs/utils/logger/Logger;


# instance fields
.field private final mListener:Lcom/gsma/services/rcs/chat/OneToOneChatListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "OneToOneChatListenerImpl"

    .line 35
    invoke-static {v0}, Lcom/gsma/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/gsma/rcs/utils/logger/Logger;

    move-result-object v0

    sput-object v0, Lcom/gsma/services/rcs/chat/OneToOneChatListenerImpl;->sLogger:Lcom/gsma/rcs/utils/logger/Logger;

    return-void
.end method

.method constructor <init>(Lcom/gsma/services/rcs/chat/OneToOneChatListener;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/gsma/services/rcs/chat/IOneToOneChatListener$Stub;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/gsma/services/rcs/chat/OneToOneChatListenerImpl;->mListener:Lcom/gsma/services/rcs/chat/OneToOneChatListener;

    return-void
.end method


# virtual methods
.method public onComposingEvent(Lcom/gsma/services/rcs/contact/ContactId;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/OneToOneChatListenerImpl;->mListener:Lcom/gsma/services/rcs/chat/OneToOneChatListener;

    invoke-virtual {v0, p1, p2}, Lcom/gsma/services/rcs/chat/OneToOneChatListener;->onComposingEvent(Lcom/gsma/services/rcs/contact/ContactId;Z)V

    return-void
.end method

.method public onMessageStatusChanged(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 6

    .line 49
    :try_start_0
    invoke-static {p4}, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;->valueOf(I)Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    move-result-object v4

    .line 50
    invoke-static {p5}, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;->valueOf(I)Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/OneToOneChatListenerImpl;->mListener:Lcom/gsma/services/rcs/chat/OneToOneChatListener;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/gsma/services/rcs/chat/OneToOneChatListener;->onMessageStatusChanged(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;Ljava/lang/String;Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;)V

    return-void

    :catch_0
    move-exception p1

    .line 57
    sget-object p2, Lcom/gsma/services/rcs/chat/OneToOneChatListenerImpl;->sLogger:Lcom/gsma/rcs/utils/logger/Logger;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/gsma/rcs/utils/logger/Logger;->error(Ljava/lang/String;)V

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

    .line 73
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/OneToOneChatListenerImpl;->mListener:Lcom/gsma/services/rcs/chat/OneToOneChatListener;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1, v1}, Lcom/gsma/services/rcs/chat/OneToOneChatListener;->onMessagesDeleted(Lcom/gsma/services/rcs/contact/ContactId;Ljava/util/Set;)V

    return-void
.end method
