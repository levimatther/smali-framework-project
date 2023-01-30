.class public Ltct/gpdatahub/sdk/factory/DaoFactory;
.super Ljava/lang/Object;
.source "DaoFactory.java"


# static fields
.field private static mObject:Ljava/lang/Object;

.field private static sInstance:Ltct/gpdatahub/sdk/factory/DaoFactory;


# instance fields
.field private mMobileEventDao:Ltct/gpdatahub/sdk/dao/IMobileEventDao;

.field private mUploadDao:Ltct/gpdatahub/sdk/dao/IUploadDao;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ltct/gpdatahub/sdk/factory/DaoFactory;->mObject:Ljava/lang/Object;

    .line 16
    new-instance v0, Ltct/gpdatahub/sdk/factory/DaoFactory;

    invoke-direct {v0}, Ltct/gpdatahub/sdk/factory/DaoFactory;-><init>()V

    sput-object v0, Ltct/gpdatahub/sdk/factory/DaoFactory;->sInstance:Ltct/gpdatahub/sdk/factory/DaoFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Ltct/gpdatahub/sdk/factory/DaoFactory;->mMobileEventDao:Ltct/gpdatahub/sdk/dao/IMobileEventDao;

    .line 14
    iput-object v0, p0, Ltct/gpdatahub/sdk/factory/DaoFactory;->mUploadDao:Ltct/gpdatahub/sdk/dao/IUploadDao;

    return-void
.end method

.method public static getInstance()Ltct/gpdatahub/sdk/factory/DaoFactory;
    .locals 1

    .line 21
    sget-object v0, Ltct/gpdatahub/sdk/factory/DaoFactory;->sInstance:Ltct/gpdatahub/sdk/factory/DaoFactory;

    return-object v0
.end method


# virtual methods
.method public getMobileEventDao(ZLandroid/content/Context;)Ltct/gpdatahub/sdk/dao/IMobileEventDao;
    .locals 1

    .line 24
    iget-object p1, p0, Ltct/gpdatahub/sdk/factory/DaoFactory;->mMobileEventDao:Ltct/gpdatahub/sdk/dao/IMobileEventDao;

    if-eqz p1, :cond_0

    return-object p1

    .line 27
    :cond_0
    sget-object p1, Ltct/gpdatahub/sdk/factory/DaoFactory;->mObject:Ljava/lang/Object;

    monitor-enter p1

    .line 28
    :try_start_0
    iget-object v0, p0, Ltct/gpdatahub/sdk/factory/DaoFactory;->mMobileEventDao:Ltct/gpdatahub/sdk/dao/IMobileEventDao;

    if-nez v0, :cond_1

    .line 30
    invoke-static {p2}, Ltct/gpdatahub/sdk/dao/MobileEventDao;->getInstance(Landroid/content/Context;)Ltct/gpdatahub/sdk/dao/MobileEventDao;

    move-result-object p2

    iput-object p2, p0, Ltct/gpdatahub/sdk/factory/DaoFactory;->mMobileEventDao:Ltct/gpdatahub/sdk/dao/IMobileEventDao;

    .line 32
    :cond_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    iget-object p1, p0, Ltct/gpdatahub/sdk/factory/DaoFactory;->mMobileEventDao:Ltct/gpdatahub/sdk/dao/IMobileEventDao;

    return-object p1

    :catchall_0
    move-exception p2

    .line 32
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method public getUploadDao(ZLandroid/content/Context;)Ltct/gpdatahub/sdk/dao/IUploadDao;
    .locals 1

    .line 38
    iget-object p1, p0, Ltct/gpdatahub/sdk/factory/DaoFactory;->mUploadDao:Ltct/gpdatahub/sdk/dao/IUploadDao;

    if-eqz p1, :cond_0

    return-object p1

    .line 41
    :cond_0
    sget-object p1, Ltct/gpdatahub/sdk/factory/DaoFactory;->mObject:Ljava/lang/Object;

    monitor-enter p1

    .line 42
    :try_start_0
    iget-object v0, p0, Ltct/gpdatahub/sdk/factory/DaoFactory;->mUploadDao:Ltct/gpdatahub/sdk/dao/IUploadDao;

    if-nez v0, :cond_1

    .line 44
    new-instance v0, Ltct/gpdatahub/sdk/dao/UploadDao;

    invoke-direct {v0, p2}, Ltct/gpdatahub/sdk/dao/UploadDao;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ltct/gpdatahub/sdk/factory/DaoFactory;->mUploadDao:Ltct/gpdatahub/sdk/dao/IUploadDao;

    .line 46
    :cond_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    iget-object p1, p0, Ltct/gpdatahub/sdk/factory/DaoFactory;->mUploadDao:Ltct/gpdatahub/sdk/dao/IUploadDao;

    return-object p1

    :catchall_0
    move-exception p2

    .line 46
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method
