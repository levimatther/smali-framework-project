.class Lcom/gsma/services/rcs/extension/MultimediaSessionService$2;
.super Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener$Stub;
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

    .line 796
    iput-object p1, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService$2;->this$0:Lcom/gsma/services/rcs/extension/MultimediaSessionService;

    invoke-direct {p0}, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onMMTelCallComposerInfoReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v0, p0

    .line 849
    iget-object v1, v0, Lcom/gsma/services/rcs/extension/MultimediaSessionService$2;->this$0:Lcom/gsma/services/rcs/extension/MultimediaSessionService;

    invoke-static {v1}, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->access$600(Lcom/gsma/services/rcs/extension/MultimediaSessionService;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-gtz v1, :cond_0

    return-void

    .line 852
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, v0, Lcom/gsma/services/rcs/extension/MultimediaSessionService$2;->this$0:Lcom/gsma/services/rcs/extension/MultimediaSessionService;

    invoke-static {v2}, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->access$600(Lcom/gsma/services/rcs/extension/MultimediaSessionService;)Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/gsma/services/rcs/extension/MultimediaMessagingSessionListener;

    if-eqz v3, :cond_1

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    .line 854
    invoke-virtual/range {v3 .. v10}, Lcom/gsma/services/rcs/extension/MultimediaMessagingSessionListener;->onMMTelCallComposerInfoReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onMessageReceived(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 813
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService$2;->this$0:Lcom/gsma/services/rcs/extension/MultimediaSessionService;

    invoke-static {v0}, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->access$600(Lcom/gsma/services/rcs/extension/MultimediaSessionService;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 816
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService$2;->this$0:Lcom/gsma/services/rcs/extension/MultimediaSessionService;

    invoke-static {v1}, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->access$600(Lcom/gsma/services/rcs/extension/MultimediaSessionService;)Ljava/util/Set;

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

    check-cast v1, Lcom/gsma/services/rcs/extension/MultimediaMessagingSessionListener;

    if-eqz v1, :cond_1

    .line 818
    invoke-virtual {v1, p1, p2, p3}, Lcom/gsma/services/rcs/extension/MultimediaMessagingSessionListener;->onMessageReceived(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;[B)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onMessageReceived2(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;[BLjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 825
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService$2;->this$0:Lcom/gsma/services/rcs/extension/MultimediaSessionService;

    invoke-static {v0}, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->access$600(Lcom/gsma/services/rcs/extension/MultimediaSessionService;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 828
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService$2;->this$0:Lcom/gsma/services/rcs/extension/MultimediaSessionService;

    invoke-static {v1}, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->access$600(Lcom/gsma/services/rcs/extension/MultimediaSessionService;)Ljava/util/Set;

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

    check-cast v1, Lcom/gsma/services/rcs/extension/MultimediaMessagingSessionListener;

    if-eqz v1, :cond_1

    .line 830
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/gsma/services/rcs/extension/MultimediaMessagingSessionListener;->onMessageReceived(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;[BLjava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onMessagesFlushed(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 837
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService$2;->this$0:Lcom/gsma/services/rcs/extension/MultimediaSessionService;

    invoke-static {v0}, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->access$600(Lcom/gsma/services/rcs/extension/MultimediaSessionService;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 840
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService$2;->this$0:Lcom/gsma/services/rcs/extension/MultimediaSessionService;

    invoke-static {v1}, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->access$600(Lcom/gsma/services/rcs/extension/MultimediaSessionService;)Ljava/util/Set;

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

    check-cast v1, Lcom/gsma/services/rcs/extension/MultimediaMessagingSessionListener;

    if-eqz v1, :cond_1

    .line 842
    invoke-virtual {v1, p1, p2}, Lcom/gsma/services/rcs/extension/MultimediaMessagingSessionListener;->onMessagesFlushed(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;)V

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

    .line 800
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService$2;->this$0:Lcom/gsma/services/rcs/extension/MultimediaSessionService;

    invoke-static {v0}, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->access$600(Lcom/gsma/services/rcs/extension/MultimediaSessionService;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 803
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionService$2;->this$0:Lcom/gsma/services/rcs/extension/MultimediaSessionService;

    invoke-static {v1}, Lcom/gsma/services/rcs/extension/MultimediaSessionService;->access$600(Lcom/gsma/services/rcs/extension/MultimediaSessionService;)Ljava/util/Set;

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

    check-cast v1, Lcom/gsma/services/rcs/extension/MultimediaMessagingSessionListener;

    if-eqz v1, :cond_1

    .line 806
    invoke-static {p3}, Lcom/gsma/services/rcs/extension/MultimediaSession$State;->valueOf(I)Lcom/gsma/services/rcs/extension/MultimediaSession$State;

    move-result-object v2

    invoke-static {p4}, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->valueOf(I)Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    move-result-object v3

    .line 805
    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/gsma/services/rcs/extension/MultimediaMessagingSessionListener;->onStateChanged(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;Lcom/gsma/services/rcs/extension/MultimediaSession$State;Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;)V

    goto :goto_0

    :cond_2
    return-void
.end method
