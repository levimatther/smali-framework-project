.class Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$UploadBaseInfo;
.super Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$RequestThreeTime;
.source "NetworkHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UploadBaseInfo"
.end annotation


# static fields
.field private static final BASE_INFO_URL_PATH:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "UploadBaseInfo"

.field private static final teyeId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 390
    invoke-static {}, Ltct/gpdatahub/sdk/gpupload/upload/ServerManager;->getUrlForBaseInfoUpload()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$UploadBaseInfo;->BASE_INFO_URL_PATH:Ljava/lang/String;

    const/4 v0, 0x0

    .line 393
    sput-object v0, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$UploadBaseInfo;->teyeId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;IILandroid/os/Bundle;)V
    .locals 7

    .line 397
    sget-object v5, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$UploadBaseInfo;->BASE_INFO_URL_PATH:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$RequestThreeTime;-><init>(Landroid/content/Context;Landroid/os/Handler;IILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;IILandroid/os/Bundle;I)V
    .locals 8

    .line 402
    sget-object v5, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$UploadBaseInfo;->BASE_INFO_URL_PATH:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$RequestThreeTime;-><init>(Landroid/content/Context;Landroid/os/Handler;IILjava/lang/String;Landroid/os/Bundle;I)V

    return-void
.end method


# virtual methods
.method getNewSubInstance()Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$RequestThreeTime;
    .locals 8

    .line 437
    new-instance v7, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$UploadBaseInfo;

    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$UploadBaseInfo;->mContext:Landroid/content/Context;

    iget-object v2, p0, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$UploadBaseInfo;->mHandler:Landroid/os/Handler;

    iget v3, p0, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$UploadBaseInfo;->mSuccessMsg:I

    iget v4, p0, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$UploadBaseInfo;->mFailedMsg:I

    iget-object v5, p0, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$UploadBaseInfo;->mBundle:Landroid/os/Bundle;

    iget v0, p0, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$UploadBaseInfo;->mTryCount:I

    add-int/lit8 v6, v0, 0x1

    iput v6, p0, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$UploadBaseInfo;->mTryCount:I

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$UploadBaseInfo;-><init>(Landroid/content/Context;Landroid/os/Handler;IILandroid/os/Bundle;I)V

    return-object v7
.end method

.method varargs runImp([Ljava/lang/Object;)Ltct/gpdatahub/sdk/gpupload/upload/model/Response;
    .locals 6

    .line 408
    new-instance p1, Ltct/gpdatahub/sdk/gpupload/upload/model/Response;

    invoke-direct {p1}, Ltct/gpdatahub/sdk/gpupload/upload/model/Response;-><init>()V

    .line 409
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$UploadBaseInfo;->mBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    .line 410
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$UploadBaseInfo;->mBundle:Landroid/os/Bundle;

    const-string v1, "teyeId"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 411
    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$UploadBaseInfo;->mBundle:Landroid/os/Bundle;

    const-string v3, "pkgName"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 412
    sget-object v3, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$UploadBaseInfo;->BASE_INFO_URL_PATH:Ljava/lang/String;

    .line 413
    iget-object v4, p0, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$UploadBaseInfo;->mBundle:Landroid/os/Bundle;

    if-eqz v4, :cond_0

    .line 414
    iget-object v4, p0, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$UploadBaseInfo;->mBundle:Landroid/os/Bundle;

    const-string v5, "url"

    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 415
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object v3, v2

    .line 419
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    if-nez v1, :cond_1

    .line 421
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$UploadBaseInfo;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Ltct/gpdatahub/sdk/gpupload/db/UploadInfoHelper;->getBaseInfoJsonObject(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "UploadBaseInfo[runImp] gp-version"

    invoke-static {v1, p1}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$UploadBaseInfo;->mContext:Landroid/content/Context;

    .line 423
    invoke-static {p1, v0}, Ltct/gpdatahub/sdk/gpupload/db/UploadInfoHelper;->getBaseInfoJsonObject(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 422
    invoke-static {v3, p1}, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper;->access$200(Ljava/lang/String;Ljava/lang/String;)Ltct/gpdatahub/sdk/gpupload/upload/model/Response;

    move-result-object p1

    goto :goto_0

    .line 425
    :cond_1
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$UploadBaseInfo;->mContext:Landroid/content/Context;

    invoke-static {p1, v0, v1}, Ltct/gpdatahub/sdk/gpupload/db/UploadInfoHelper;->getBaseInfoJsonObject(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "UploadBaseInfo[runImp] rom-version"

    invoke-static {v2, p1}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$UploadBaseInfo;->mContext:Landroid/content/Context;

    .line 427
    invoke-static {p1, v0, v1}, Ltct/gpdatahub/sdk/gpupload/db/UploadInfoHelper;->getBaseInfoJsonObject(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 426
    invoke-static {v3, p1}, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper;->access$200(Ljava/lang/String;Ljava/lang/String;)Ltct/gpdatahub/sdk/gpupload/upload/model/Response;

    move-result-object p1

    :cond_2
    :goto_0
    return-object p1
.end method
