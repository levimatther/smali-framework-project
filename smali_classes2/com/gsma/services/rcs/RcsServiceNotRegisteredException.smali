.class public Lcom/gsma/services/rcs/RcsServiceNotRegisteredException;
.super Lcom/gsma/services/rcs/RcsServiceException;
.source "RcsServiceNotRegisteredException.java"


# static fields
.field static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static assertException(Ljava/lang/Exception;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceNotRegisteredException;
        }
    .end annotation

    .line 76
    const-class v0, Lcom/gsma/services/rcs/RcsServiceNotRegisteredException;

    invoke-static {p0, v0}, Lcom/gsma/services/rcs/RcsServiceNotRegisteredException;->isIntendedException(Ljava/lang/Exception;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 77
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotRegisteredException;

    invoke-static {p0}, Lcom/gsma/services/rcs/RcsServiceNotRegisteredException;->extractServerException(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/gsma/services/rcs/RcsServiceNotRegisteredException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
