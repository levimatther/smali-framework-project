.class Lcom/gsma/services/rcs/extension/MultimediaSessionService$3;
.super Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener$Stub;
.source "MultimediaSessionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/extension/MultimediaSessionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gsma/services/rcs/extension/MultimediaSessionService;


# direct methods
.method constructor <init>(Lcom/gsma/services/rcs/extension/MultimediaSessionService;)V
    .locals 0

    .line 860
    iput-object p1, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService$3;->this$0:Lcom/gsma/services/rcs/extension/MultimediaSessionService;

    invoke-direct {p0}, Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onPayloadReceived(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 877
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService$3;->this$0:Lcom/gsma/services/rcs/extension/MultimediaSessionService;

    invoke-static {v0}, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->access$700(Lcom/gsma/services/rcs/extension/MultimediaSessionService;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 880
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService$3;->this$0:Lcom/gsma/services/rcs/extension/MultimediaSessionService;

    invoke-static {v1}, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->access$700(Lcom/gsma/services/rcs/extension/MultimediaSessionService;)Ljava/util/Set;

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

    check-cast v1, Lcom/gsma/services/rcs/extension/MultimediaStreamingSessionListener;

    if-eqz v1, :cond_1

    .line 882
    invoke-virtual {v1, p1, p2, p3}, Lcom/gsma/services/rcs/extension/MultimediaStreamingSessionListener;->onPayloadReceived(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;[B)V

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

    .line 864
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService$3;->this$0:Lcom/gsma/services/rcs/extension/MultimediaSessionService;

    invoke-static {v0}, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->access$700(Lcom/gsma/services/rcs/extension/MultimediaSessionService;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 867
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService$3;->this$0:Lcom/gsma/services/rcs/extension/MultimediaSessionService;

    invoke-static {v1}, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->access$700(Lcom/gsma/services/rcs/extension/MultimediaSessionService;)Ljava/util/Set;

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

    check-cast v1, Lcom/gsma/services/rcs/extension/MultimediaStreamingSessionListener;

    if-eqz v1, :cond_1

    .line 870
    invoke-static {p3}, Lcom/gsma/services/rcs/extension/MultimediaSession$State;->valueOf(I)Lcom/gsma/services/rcs/extension/MultimediaSession$State;

    move-result-object v2

    invoke-static {p4}, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->valueOf(I)Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    move-result-object v3

    .line 869
    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/gsma/services/rcs/extension/MultimediaStreamingSessionListener;->onStateChanged(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;Lcom/gsma/services/rcs/extension/MultimediaSession$State;Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;)V

    goto :goto_0

    :cond_2
    return-void
.end method
