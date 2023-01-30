.class public Lcom/gsma/services/rcs/sharing/image/ImageSharingListenerImpl;
.super Lcom/gsma/services/rcs/sharing/image/IImageSharingListener$Stub;
.source "ImageSharingListenerImpl.java"


# static fields
.field private static final sLogger:Lcom/gsma/rcs/utils/logger/Logger;


# instance fields
.field private final mListener:Lcom/gsma/services/rcs/sharing/image/ImageSharingListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ImageSharingListenerImpl"

    .line 35
    invoke-static {v0}, Lcom/gsma/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/gsma/rcs/utils/logger/Logger;

    move-result-object v0

    sput-object v0, Lcom/gsma/services/rcs/sharing/image/ImageSharingListenerImpl;->sLogger:Lcom/gsma/rcs/utils/logger/Logger;

    return-void
.end method

.method constructor <init>(Lcom/gsma/services/rcs/sharing/image/ImageSharingListener;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/gsma/services/rcs/sharing/image/IImageSharingListener$Stub;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingListenerImpl;->mListener:Lcom/gsma/services/rcs/sharing/image/ImageSharingListener;

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

    .line 70
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingListenerImpl;->mListener:Lcom/gsma/services/rcs/sharing/image/ImageSharingListener;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1, v1}, Lcom/gsma/services/rcs/sharing/image/ImageSharingListener;->onDeleted(Lcom/gsma/services/rcs/contact/ContactId;Ljava/util/Set;)V

    return-void
.end method

.method public onProgressUpdate(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;JJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingListenerImpl;->mListener:Lcom/gsma/services/rcs/sharing/image/ImageSharingListener;

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/gsma/services/rcs/sharing/image/ImageSharingListener;->onProgressUpdate(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;JJ)V

    return-void
.end method

.method public onStateChanged(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;II)V
    .locals 1

    .line 47
    :try_start_0
    invoke-static {p3}, Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;->valueOf(I)Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;

    move-result-object p3

    .line 48
    invoke-static {p4}, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->valueOf(I)Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    move-result-object p4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingListenerImpl;->mListener:Lcom/gsma/services/rcs/sharing/image/ImageSharingListener;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/gsma/services/rcs/sharing/image/ImageSharingListener;->onStateChanged(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;)V

    return-void

    :catch_0
    move-exception p1

    .line 55
    sget-object p2, Lcom/gsma/services/rcs/sharing/image/ImageSharingListenerImpl;->sLogger:Lcom/gsma/rcs/utils/logger/Logger;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/gsma/rcs/utils/logger/Logger;->error(Ljava/lang/String;)V

    return-void
.end method
