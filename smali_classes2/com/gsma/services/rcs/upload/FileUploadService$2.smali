.class Lcom/gsma/services/rcs/upload/FileUploadService$2;
.super Lcom/gsma/services/rcs/upload/IFileUploadListener$Stub;
.source "FileUploadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/upload/FileUploadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gsma/services/rcs/upload/FileUploadService;


# direct methods
.method constructor <init>(Lcom/gsma/services/rcs/upload/FileUploadService;)V
    .locals 0

    .line 340
    iput-object p1, p0, Lcom/gsma/services/rcs/upload/FileUploadService$2;->this$0:Lcom/gsma/services/rcs/upload/FileUploadService;

    invoke-direct {p0}, Lcom/gsma/services/rcs/upload/IFileUploadListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressUpdate(Ljava/lang/String;JJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 355
    iget-object v0, p0, Lcom/gsma/services/rcs/upload/FileUploadService$2;->this$0:Lcom/gsma/services/rcs/upload/FileUploadService;

    invoke-static {v0}, Lcom/gsma/services/rcs/upload/FileUploadService;->access$600(Lcom/gsma/services/rcs/upload/FileUploadService;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 358
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/gsma/services/rcs/upload/FileUploadService$2;->this$0:Lcom/gsma/services/rcs/upload/FileUploadService;

    invoke-static {v1}, Lcom/gsma/services/rcs/upload/FileUploadService;->access$600(Lcom/gsma/services/rcs/upload/FileUploadService;)Ljava/util/Set;

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

    check-cast v2, Lcom/gsma/services/rcs/upload/FileUploadListener;

    if-eqz v2, :cond_1

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    .line 360
    invoke-virtual/range {v2 .. v7}, Lcom/gsma/services/rcs/upload/FileUploadListener;->onProgressUpdate(Ljava/lang/String;JJ)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onStateChanged(Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 343
    iget-object v0, p0, Lcom/gsma/services/rcs/upload/FileUploadService$2;->this$0:Lcom/gsma/services/rcs/upload/FileUploadService;

    invoke-static {v0}, Lcom/gsma/services/rcs/upload/FileUploadService;->access$600(Lcom/gsma/services/rcs/upload/FileUploadService;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 346
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/gsma/services/rcs/upload/FileUploadService$2;->this$0:Lcom/gsma/services/rcs/upload/FileUploadService;

    invoke-static {v1}, Lcom/gsma/services/rcs/upload/FileUploadService;->access$600(Lcom/gsma/services/rcs/upload/FileUploadService;)Ljava/util/Set;

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

    check-cast v1, Lcom/gsma/services/rcs/upload/FileUploadListener;

    if-eqz v1, :cond_1

    .line 348
    invoke-static {p2}, Lcom/gsma/services/rcs/upload/FileUpload$State;->valueOf(I)Lcom/gsma/services/rcs/upload/FileUpload$State;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/gsma/services/rcs/upload/FileUploadListener;->onStateChanged(Ljava/lang/String;Lcom/gsma/services/rcs/upload/FileUpload$State;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onUploaded(Ljava/lang/String;Lcom/gsma/services/rcs/upload/FileUploadInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 367
    iget-object v0, p0, Lcom/gsma/services/rcs/upload/FileUploadService$2;->this$0:Lcom/gsma/services/rcs/upload/FileUploadService;

    invoke-static {v0}, Lcom/gsma/services/rcs/upload/FileUploadService;->access$600(Lcom/gsma/services/rcs/upload/FileUploadService;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 370
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/gsma/services/rcs/upload/FileUploadService$2;->this$0:Lcom/gsma/services/rcs/upload/FileUploadService;

    invoke-static {v1}, Lcom/gsma/services/rcs/upload/FileUploadService;->access$600(Lcom/gsma/services/rcs/upload/FileUploadService;)Ljava/util/Set;

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

    check-cast v1, Lcom/gsma/services/rcs/upload/FileUploadListener;

    if-eqz v1, :cond_1

    .line 372
    invoke-virtual {v1, p1, p2}, Lcom/gsma/services/rcs/upload/FileUploadListener;->onUploaded(Ljava/lang/String;Lcom/gsma/services/rcs/upload/FileUploadInfo;)V

    goto :goto_0

    :cond_2
    return-void
.end method
