.class public Lcom/gsma/services/rcs/sharing/video/VideoSharingListenerImpl;
.super Lcom/gsma/services/rcs/sharing/video/IVideoSharingListener$Stub;
.source "VideoSharingListenerImpl.java"


# static fields
.field private static final sLogger:Lcom/gsma/rcs/utils/logger/Logger;


# instance fields
.field private final mListener:Lcom/gsma/services/rcs/sharing/video/VideoSharingListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "VideoSharingListenerImpl"

    .line 35
    invoke-static {v0}, Lcom/gsma/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/gsma/rcs/utils/logger/Logger;

    move-result-object v0

    sput-object v0, Lcom/gsma/services/rcs/sharing/video/VideoSharingListenerImpl;->sLogger:Lcom/gsma/rcs/utils/logger/Logger;

    return-void
.end method

.method constructor <init>(Lcom/gsma/services/rcs/sharing/video/VideoSharingListener;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/gsma/services/rcs/sharing/video/IVideoSharingListener$Stub;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingListenerImpl;->mListener:Lcom/gsma/services/rcs/sharing/video/VideoSharingListener;

    return-void
.end method


# virtual methods
.method public onDeleted(Lcom/gsma/services/rcs/contact/ContactId;Ljava/util/List;)V
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

    .line 66
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingListenerImpl;->mListener:Lcom/gsma/services/rcs/sharing/video/VideoSharingListener;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1, v1}, Lcom/gsma/services/rcs/sharing/video/VideoSharingListener;->onDeleted(Lcom/gsma/services/rcs/contact/ContactId;Ljava/util/Set;)V

    return-void
.end method

.method public onStateChanged(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;II)V
    .locals 1

    .line 47
    :try_start_0
    invoke-static {p3}, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;->valueOf(I)Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

    move-result-object p3

    .line 48
    invoke-static {p4}, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;->valueOf(I)Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

    move-result-object p4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingListenerImpl;->mListener:Lcom/gsma/services/rcs/sharing/video/VideoSharingListener;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/gsma/services/rcs/sharing/video/VideoSharingListener;->onStateChanged(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;)V

    return-void

    :catch_0
    move-exception p1

    .line 55
    sget-object p2, Lcom/gsma/services/rcs/sharing/video/VideoSharingListenerImpl;->sLogger:Lcom/gsma/rcs/utils/logger/Logger;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/gsma/rcs/utils/logger/Logger;->error(Ljava/lang/String;)V

    return-void
.end method
