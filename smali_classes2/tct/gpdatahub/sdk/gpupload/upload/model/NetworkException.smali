.class public Ltct/gpdatahub/sdk/gpupload/upload/model/NetworkException;
.super Ljava/lang/Object;
.source "NetworkException.java"


# static fields
.field public static final BAT_GATEWAY:I = 0x1f8

.field public static final GATEWAY_TIMEOUT:I = 0x1f6

.field public static final REDIRECT:I = 0x12e


# instance fields
.field private mResultCode:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 15
    iput v0, p0, Ltct/gpdatahub/sdk/gpupload/upload/model/NetworkException;->mResultCode:I

    .line 18
    iput p1, p0, Ltct/gpdatahub/sdk/gpupload/upload/model/NetworkException;->mResultCode:I

    return-void
.end method

.method public static getNetworkExceptionInfo(I)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x12e

    if-eq p0, v0, :cond_2

    const/16 v0, 0x1f6

    if-eq p0, v0, :cond_1

    const/16 v0, 0x1f8

    if-eq p0, v0, :cond_0

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unKnow exception(resultCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "bad gateway"

    return-object p0

    :cond_1
    const-string p0, "gateway time-out"

    return-object p0

    :cond_2
    const-string p0, "redirect"

    return-object p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ltct/gpdatahub/sdk/gpupload/upload/model/NetworkException;->mResultCode:I

    invoke-static {v1}, Ltct/gpdatahub/sdk/gpupload/upload/model/NetworkException;->getNetworkExceptionInfo(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
