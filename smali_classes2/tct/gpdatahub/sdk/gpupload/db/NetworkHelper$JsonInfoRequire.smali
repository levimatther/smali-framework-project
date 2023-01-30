.class Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$JsonInfoRequire;
.super Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$RequestThreeTime;
.source "NetworkHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "JsonInfoRequire"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mRequireUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 204
    const-class v0, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$JsonInfoRequire;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$JsonInfoRequire;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;IILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 210
    invoke-direct/range {p0 .. p6}, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$RequestThreeTime;-><init>(Landroid/content/Context;Landroid/os/Handler;IILjava/lang/String;Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 206
    iput-object p1, p0, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$JsonInfoRequire;->mRequireUrl:Ljava/lang/String;

    .line 211
    iput-object p5, p0, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$JsonInfoRequire;->mRequireUrl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;IILjava/lang/String;Landroid/os/Bundle;I)V
    .locals 0

    .line 216
    invoke-direct/range {p0 .. p7}, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$RequestThreeTime;-><init>(Landroid/content/Context;Landroid/os/Handler;IILjava/lang/String;Landroid/os/Bundle;I)V

    const/4 p1, 0x0

    .line 206
    iput-object p1, p0, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$JsonInfoRequire;->mRequireUrl:Ljava/lang/String;

    .line 217
    iput-object p5, p0, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$JsonInfoRequire;->mRequireUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method getNewSubInstance()Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$RequestThreeTime;
    .locals 9

    .line 234
    new-instance v8, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$JsonInfoRequire;

    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$JsonInfoRequire;->mContext:Landroid/content/Context;

    iget-object v2, p0, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$JsonInfoRequire;->mHandler:Landroid/os/Handler;

    iget v3, p0, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$JsonInfoRequire;->mSuccessMsg:I

    iget v4, p0, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$JsonInfoRequire;->mFailedMsg:I

    iget-object v5, p0, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$JsonInfoRequire;->mRequireUrl:Ljava/lang/String;

    iget-object v6, p0, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$JsonInfoRequire;->mBundle:Landroid/os/Bundle;

    iget v0, p0, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$JsonInfoRequire;->mTryCount:I

    add-int/lit8 v7, v0, 0x1

    iput v7, p0, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$JsonInfoRequire;->mTryCount:I

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$JsonInfoRequire;-><init>(Landroid/content/Context;Landroid/os/Handler;IILjava/lang/String;Landroid/os/Bundle;I)V

    return-object v8
.end method

.method varargs runImp([Ljava/lang/Object;)Ltct/gpdatahub/sdk/gpupload/upload/model/Response;
    .locals 3

    .line 224
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$JsonInfoRequire;->mRequireUrl:Ljava/lang/String;

    invoke-static {p1}, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper;->access$000(Ljava/lang/String;)Ltct/gpdatahub/sdk/gpupload/upload/model/Response;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 225
    invoke-virtual {p1}, Ltct/gpdatahub/sdk/gpupload/upload/model/Response;->getResponse()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 226
    sget-object v0, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$JsonInfoRequire;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[JsonInfoRequire] response.obj="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ltct/gpdatahub/sdk/gpupload/upload/model/Response;->getResponse()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mRequireUrl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$JsonInfoRequire;->mRequireUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object p1
.end method
