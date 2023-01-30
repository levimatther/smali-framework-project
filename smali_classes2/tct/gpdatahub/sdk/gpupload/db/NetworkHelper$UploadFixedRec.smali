.class Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$UploadFixedRec;
.super Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$RequestThreeTime;
.source "NetworkHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UploadFixedRec"
.end annotation


# static fields
.field private static final BASE_INFO_URL_PATH:Ljava/lang/String;

.field private static final LOCAL_UPLOAD_FILE:Ljava/lang/String; = "datahub_fixed_rec.zip"

.field private static final TAG:Ljava/lang/String;

.field private static final ZIP_ENTRY_NAME:Ljava/lang/String; = "datahub_fixed_rec.json"

.field private static volatile alreadyQuery:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 308
    const-class v0, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$UploadFixedRec;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$UploadFixedRec;->TAG:Ljava/lang/String;

    .line 310
    invoke-static {}, Ltct/gpdatahub/sdk/gpupload/upload/ServerManager;->getUrlForBaseInfoUpload()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$UploadFixedRec;->BASE_INFO_URL_PATH:Ljava/lang/String;

    const/4 v0, 0x0

    .line 316
    sput-boolean v0, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$UploadFixedRec;->alreadyQuery:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;IILandroid/os/Bundle;)V
    .locals 7

    .line 321
    sget-object v5, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$UploadFixedRec;->BASE_INFO_URL_PATH:Ljava/lang/String;

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

    .line 326
    sget-object v5, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$UploadFixedRec;->BASE_INFO_URL_PATH:Ljava/lang/String;

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

.method private initLocalUploadFile()Z
    .locals 5

    .line 368
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$UploadFixedRec;->mContext:Landroid/content/Context;

    invoke-static {v0}, Ltct/gpdatahub/sdk/gpupload/db/DataHubProviderHelper;->queryFixedRec(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 370
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 372
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    .line 373
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    .line 375
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    invoke-static {}, Ltct/gpdatahub/sdk/common/utils/FileUtils;->getDatahubSystemDir()Ljava/lang/String;

    move-result-object v0

    const-string v3, "datahub_fixed_rec.zip"

    invoke-static {v0, v3}, Ltct/gpdatahub/sdk/common/utils/FileUtils;->makeFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 377
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 378
    invoke-static {}, Ltct/gpdatahub/sdk/common/utils/FileUtils;->getDatahubSystemDir()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "datahub_fixed_rec.json"

    .line 377
    invoke-static {v0, v3, v1}, Ltct/gpdatahub/sdk/common/utils/ZipUtils;->compressStringToZipFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method


# virtual methods
.method getNewSubInstance()Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$RequestThreeTime;
    .locals 8

    .line 363
    new-instance v7, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$UploadFixedRec;

    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$UploadFixedRec;->mContext:Landroid/content/Context;

    iget-object v2, p0, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$UploadFixedRec;->mHandler:Landroid/os/Handler;

    iget v3, p0, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$UploadFixedRec;->mSuccessMsg:I

    iget v4, p0, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$UploadFixedRec;->mFailedMsg:I

    iget-object v5, p0, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$UploadFixedRec;->mBundle:Landroid/os/Bundle;

    iget v0, p0, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$UploadFixedRec;->mTryCount:I

    add-int/lit8 v6, v0, 0x1

    iput v6, p0, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$UploadFixedRec;->mTryCount:I

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$UploadFixedRec;-><init>(Landroid/content/Context;Landroid/os/Handler;IILandroid/os/Bundle;I)V

    return-object v7
.end method

.method varargs notifyBeforeRunQuit([Ljava/lang/Object;)V
    .locals 1

    .line 354
    sget-boolean p1, Ltct/gpdatahub/sdk/common/constant/Debug;->DEBUG_NO_DELETE_UPLOAD_FILE:Z

    if-nez p1, :cond_0

    .line 355
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ltct/gpdatahub/sdk/common/utils/FileUtils;->getDatahubSystemDir()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "datahub_fixed_rec.zip"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ltct/gpdatahub/sdk/common/utils/FileUtils;->deleteFile(Ljava/lang/String;)Z

    :cond_0
    const/4 p1, 0x0

    .line 357
    sput-boolean p1, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$UploadFixedRec;->alreadyQuery:Z

    return-void
.end method

.method varargs runImp([Ljava/lang/Object;)Ltct/gpdatahub/sdk/gpupload/upload/model/Response;
    .locals 3

    .line 332
    new-instance p1, Ltct/gpdatahub/sdk/gpupload/upload/model/Response;

    invoke-direct {p1}, Ltct/gpdatahub/sdk/gpupload/upload/model/Response;-><init>()V

    .line 333
    sget-boolean v0, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$UploadFixedRec;->alreadyQuery:Z

    if-nez v0, :cond_1

    .line 334
    invoke-direct {p0}, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$UploadFixedRec;->initLocalUploadFile()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x1

    .line 337
    sput-boolean p1, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$UploadFixedRec;->alreadyQuery:Z

    .line 340
    :cond_1
    sget-object p1, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$UploadFixedRec;->BASE_INFO_URL_PATH:Ljava/lang/String;

    .line 341
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$UploadFixedRec;->mBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    .line 342
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$UploadFixedRec;->mBundle:Landroid/os/Bundle;

    const/4 v1, 0x0

    const-string v2, "url"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 343
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    move-object p1, v0

    .line 347
    :cond_2
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 348
    invoke-static {}, Ltct/gpdatahub/sdk/common/utils/FileUtils;->getDatahubSystemDir()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "datahub_fixed_rec.zip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$UploadFixedRec;->mContext:Landroid/content/Context;

    .line 347
    invoke-static {p1, v0, v1}, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper;->access$100(Ljava/lang/String;Ljava/io/File;Landroid/content/Context;)Ltct/gpdatahub/sdk/gpupload/upload/model/Response;

    move-result-object p1

    return-object p1
.end method
