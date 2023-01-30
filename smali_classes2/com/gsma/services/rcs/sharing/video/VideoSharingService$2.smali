.class Lcom/gsma/services/rcs/sharing/video/VideoSharingService$2;
.super Lcom/gsma/services/rcs/sharing/video/IVideoSharingListener$Stub;
.source "VideoSharingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/sharing/video/VideoSharingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gsma/services/rcs/sharing/video/VideoSharingService;


# direct methods
.method constructor <init>(Lcom/gsma/services/rcs/sharing/video/VideoSharingService;)V
    .locals 0

    .line 339
    iput-object p1, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService$2;->this$0:Lcom/gsma/services/rcs/sharing/video/VideoSharingService;

    invoke-direct {p0}, Lcom/gsma/services/rcs/sharing/video/IVideoSharingListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeleted(Lcom/gsma/services/rcs/contact/ContactId;Ljava/util/List;)V
    .locals 3
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

    .line 355
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService$2;->this$0:Lcom/gsma/services/rcs/sharing/video/VideoSharingService;

    invoke-static {v0}, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->access$600(Lcom/gsma/services/rcs/sharing/video/VideoSharingService;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 358
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService$2;->this$0:Lcom/gsma/services/rcs/sharing/video/VideoSharingService;

    invoke-static {v1}, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->access$600(Lcom/gsma/services/rcs/sharing/video/VideoSharingService;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gsma/services/rcs/sharing/video/VideoSharingListener;

    if-eqz v1, :cond_1

    .line 360
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, p1, v2}, Lcom/gsma/services/rcs/sharing/video/VideoSharingListener;->onDeleted(Lcom/gsma/services/rcs/contact/ContactId;Ljava/util/Set;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onStateChanged(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;II)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 342
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService$2;->this$0:Lcom/gsma/services/rcs/sharing/video/VideoSharingService;

    invoke-static {v0}, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->access$600(Lcom/gsma/services/rcs/sharing/video/VideoSharingService;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 345
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService$2;->this$0:Lcom/gsma/services/rcs/sharing/video/VideoSharingService;

    invoke-static {v1}, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->access$600(Lcom/gsma/services/rcs/sharing/video/VideoSharingService;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gsma/services/rcs/sharing/video/VideoSharingListener;

    if-eqz v1, :cond_1

    .line 347
    invoke-static {p3}, Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;->valueOf(I)Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

    move-result-object v2

    .line 348
    invoke-static {p4}, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;->valueOf(I)Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

    move-result-object v3

    .line 347
    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/gsma/services/rcs/sharing/video/VideoSharingListener;->onStateChanged(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;)V

    goto :goto_0

    :cond_2
    return-void
.end method
