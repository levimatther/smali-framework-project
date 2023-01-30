.class Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService$2;
.super Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingListener$Stub;
.source "GeolocSharingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;


# direct methods
.method constructor <init>(Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;)V
    .locals 0

    .line 316
    iput-object p1, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService$2;->this$0:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;

    invoke-direct {p0}, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingListener$Stub;-><init>()V

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

    .line 344
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService$2;->this$0:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;

    invoke-static {v0}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->access$600(Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 347
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService$2;->this$0:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;

    invoke-static {v1}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->access$600(Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;)Ljava/util/Set;

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

    check-cast v1, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingListener;

    if-eqz v1, :cond_1

    .line 349
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, p1, v2}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingListener;->onDeleted(Lcom/gsma/services/rcs/contact/ContactId;Ljava/util/Set;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onProgressUpdate(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;JJ)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 332
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService$2;->this$0:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;

    invoke-static {v0}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->access$600(Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 335
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService$2;->this$0:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;

    invoke-static {v1}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->access$600(Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;)Ljava/util/Set;

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

    move-object v2, v1

    check-cast v2, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingListener;

    if-eqz v2, :cond_1

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    move-wide v7, p5

    .line 337
    invoke-virtual/range {v2 .. v8}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingListener;->onProgressUpdate(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;JJ)V

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

    .line 319
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService$2;->this$0:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;

    invoke-static {v0}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->access$600(Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 322
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService$2;->this$0:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;

    invoke-static {v1}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->access$600(Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;)Ljava/util/Set;

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

    check-cast v1, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingListener;

    if-eqz v1, :cond_1

    .line 324
    invoke-static {p3}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;->valueOf(I)Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;

    move-result-object v2

    .line 325
    invoke-static {p4}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;->valueOf(I)Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

    move-result-object v3

    .line 324
    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingListener;->onStateChanged(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;)V

    goto :goto_0

    :cond_2
    return-void
.end method
