.class public Lcom/gsma/services/rcs/RcsServiceNotAvailableException;
.super Lcom/gsma/services/rcs/RcsServiceException;
.source "RcsServiceNotAvailableException.java"


# static fields
.field private static final ERROR_CNX:Ljava/lang/String; = "Service not connected"

.field static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Service not connected"

    .line 49
    invoke-direct {p0, v0}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    return-void
.end method
