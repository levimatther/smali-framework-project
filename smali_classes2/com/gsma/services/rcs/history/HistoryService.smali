.class public final Lcom/gsma/services/rcs/history/HistoryService;
.super Lcom/gsma/services/rcs/RcsService;
.source "HistoryService.java"


# static fields
.field private static sApiCompatible:Z = false


# instance fields
.field private apiConnection:Landroid/content/ServiceConnection;

.field private mService:Lcom/gsma/services/rcs/history/IHistoryService;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/gsma/services/rcs/RcsServiceListener;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/gsma/services/rcs/RcsService;-><init>(Landroid/content/Context;Lcom/gsma/services/rcs/RcsServiceListener;)V

    .line 108
    new-instance p1, Lcom/gsma/services/rcs/history/HistoryService$1;

    invoke-direct {p1, p0}, Lcom/gsma/services/rcs/history/HistoryService$1;-><init>(Lcom/gsma/services/rcs/history/HistoryService;)V

    iput-object p1, p0, Lcom/gsma/services/rcs/history/HistoryService;->apiConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lcom/gsma/services/rcs/history/HistoryService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/gsma/services/rcs/history/HistoryService;->mListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/gsma/services/rcs/history/HistoryService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/gsma/services/rcs/history/HistoryService;->mListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/gsma/services/rcs/history/HistoryService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/gsma/services/rcs/history/HistoryService;->mListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/gsma/services/rcs/history/HistoryService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/gsma/services/rcs/history/HistoryService;->mListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object p0
.end method


# virtual methods
.method public final connect()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPermissionDeniedException;
        }
    .end annotation

    .line 65
    sget-boolean v0, Lcom/gsma/services/rcs/history/HistoryService;->sApiCompatible:Z

    if-nez v0, :cond_1

    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/history/HistoryService;->mRcsServiceControl:Lcom/gsma/services/rcs/RcsServiceControl;

    invoke-virtual {v0, p0}, Lcom/gsma/services/rcs/RcsServiceControl;->isCompatible(Lcom/gsma/services/rcs/RcsService;)Z

    move-result v0

    sput-boolean v0, Lcom/gsma/services/rcs/history/HistoryService;->sApiCompatible:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 69
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsPermissionDeniedException;

    const-string v1, "The TAPI client version of the history service is not compatible with the TAPI service implementation version on this device!"

    invoke-direct {v0, v1}, Lcom/gsma/services/rcs/RcsPermissionDeniedException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/gsma/services/rcs/RcsServiceException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 73
    new-instance v1, Lcom/gsma/services/rcs/RcsPermissionDeniedException;

    const-string v2, "The compatibility of TAPI client version with the TAPI service implementation version of this device cannot be checked for the history service!"

    invoke-direct {v1, v2, v0}, Lcom/gsma/services/rcs/RcsPermissionDeniedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 78
    :cond_1
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/gsma/services/rcs/history/IHistoryService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.tct.cs.rcs"

    .line 79
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    iget-object v1, p0, Lcom/gsma/services/rcs/history/HistoryService;->mCtx:Landroid/content/Context;

    iget-object v2, p0, Lcom/gsma/services/rcs/history/HistoryService;->apiConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public createUniqueId(I)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lcom/gsma/services/rcs/history/HistoryService;->mService:Lcom/gsma/services/rcs/history/IHistoryService;

    if-eqz v0, :cond_0

    .line 185
    :try_start_0
    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/history/IHistoryService;->createUniqueId(I)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p1

    .line 188
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 189
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 182
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public disconnect()V
    .locals 2

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/history/HistoryService;->mCtx:Landroid/content/Context;

    iget-object v1, p0, Lcom/gsma/services/rcs/history/HistoryService;->apiConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public registerExtraHistoryLogMember(ILandroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/net/Uri;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/gsma/services/rcs/history/HistoryService;->mService:Lcom/gsma/services/rcs/history/IHistoryService;

    if-eqz v0, :cond_0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 143
    :try_start_0
    invoke-interface/range {v0 .. v5}, Lcom/gsma/services/rcs/history/IHistoryService;->registerExtraHistoryLogMember(ILandroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 146
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 147
    new-instance p2, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {p2, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 140
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method protected setApi(Landroid/os/IInterface;)V
    .locals 0

    .line 101
    invoke-super {p0, p1}, Lcom/gsma/services/rcs/RcsService;->setApi(Landroid/os/IInterface;)V

    .line 102
    check-cast p1, Lcom/gsma/services/rcs/history/IHistoryService;

    iput-object p1, p0, Lcom/gsma/services/rcs/history/HistoryService;->mService:Lcom/gsma/services/rcs/history/IHistoryService;

    return-void
.end method

.method public unregisterExtraHistoryLogMember(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lcom/gsma/services/rcs/history/HistoryService;->mService:Lcom/gsma/services/rcs/history/IHistoryService;

    if-eqz v0, :cond_0

    .line 164
    :try_start_0
    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/history/IHistoryService;->unregisterExtraHistoryLogMember(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 166
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 167
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 161
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method
