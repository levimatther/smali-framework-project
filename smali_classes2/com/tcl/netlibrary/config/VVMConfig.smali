.class public Lcom/tcl/netlibrary/config/VVMConfig;
.super Ljava/lang/Object;
.source "VVMConfig.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.tct.entitlement.updateprovider"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CONTENT_URI_RCS:Landroid/net/Uri;

.field public static final CONTENT_URI_VVM:Landroid/net/Uri;

.field public static final RCSAttributes:[Ljava/lang/String;

.field public static final SIM_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.SIM_STATE_CHANGED"

.field public static final SIM_STATUS_ABSENT:Ljava/lang/String; = "ABSENT"

.field public static final SIM_STATUS_LOADED:Ljava/lang/String; = "LOADED"

.field public static final TABLE_RCS:Ljava/lang/String; = "rcsConfig"

.field public static final TABLE_VVM:Ljava/lang/String; = "vvmConfig"

.field public static final VVMAttributes:[Ljava/lang/String;

.field public static final VVMServiceProfileAttributes:[Ljava/lang/String;

.field public static final columns:[Ljava/lang/String;

.field public static volatile vvmConfig:Lcom/tcl/netlibrary/config/VVMConfig;


# instance fields
.field public DisplaylegacyMWI:Z

.field public MaxCustomGreetingLength:I

.field public MaxNameGreetingLength:I

.field public MinimumPinLength:I

.field public RootURL:Ljava/lang/String;

.field public TAG:Ljava/lang/String;

.field public UseLegacyMWI:Z

.field public VM2Text:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tcl/netlibrary/entity/XmlElement;",
            ">;"
        }
    .end annotation
.end field

.field public VVMClientHasTrash:Z

.field public VVMDeltaSyncTimer:I

.field public VVMEnabled:Z

.field public VVMFolderID:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tcl/netlibrary/entity/XmlElement;",
            ">;"
        }
    .end annotation
.end field

.field public VVMIgnoreDataRoaming:Z

.field public WSGURI:Ljava/lang/String;

.field public apiVersion:Ljava/lang/String;

.field public context:Landroid/content/Context;

.field public cosname:Ljava/lang/String;

.field public emailAddressList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public executor:Ljava/util/concurrent/Executor;

.field public greetFolder:Ljava/lang/String;

.field public gson:Lcom/google/gson/Gson;

.field public inboxFolder:Ljava/lang/String;

.field public isBlocked:Z

.field public language:Ljava/lang/String;

.field public mReceiver:Landroid/content/BroadcastReceiver;

.field public maxBulkDelete:I

.field public maxSearch:I

.field public migrationStatus:Ljava/lang/String;

.field public nut:Z

.field public primarySIMAuthentication:Ljava/lang/String;

.field public smsDirectLink:Z

.field public storeName:Ljava/lang/String;

.field public v2eOn:Z

.field public vvmOn:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 14

    const-string v0, "VVMEnabled"

    const-string v1, "WSGURI"

    const-string v2, "RootURL"

    const-string v3, "VVMIgnoreDataRoaming"

    const-string v4, "VVMClientHasTrash"

    const-string v5, "MaxCustomGreetingLength"

    const-string v6, "MaxNameGreetingLength"

    const-string v7, "MinimumPinLength"

    const-string v8, "UseLegacyMWI"

    const-string v9, "DisplaylegacyMWI"

    const-string v10, "primarySIMAuthentication"

    const-string v11, "VVMDeltaSyncTimer"

    const-string v12, "VM2Text"

    const-string v13, "VVMFolderID"

    .line 1
    filled-new-array/range {v0 .. v13}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tcl/netlibrary/config/VVMConfig;->VVMAttributes:[Ljava/lang/String;

    const-string v1, "cosname"

    const-string v2, "EmailAddress"

    const-string v3, "isblocked"

    const-string v4, "Language"

    const-string v5, "MigrationStatus"

    const-string v6, "nut"

    const-string v7, "SMSDirectLink"

    const-string v8, "V2E_ON"

    const-string v9, "vvmon"

    .line 18
    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tcl/netlibrary/config/VVMConfig;->VVMServiceProfileAttributes:[Ljava/lang/String;

    const-string v0, "apiVersion"

    const-string v1, "storeName"

    const-string v2, "MaxSearch"

    const-string v3, "MaxBulkDelete"

    .line 30
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tcl/netlibrary/config/VVMConfig;->RCSAttributes:[Ljava/lang/String;

    const-string v0, "_id"

    const-string v1, "name"

    const-string v2, "value"

    .line 37
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tcl/netlibrary/config/VVMConfig;->columns:[Ljava/lang/String;

    const-string v0, "content://com.tct.entitlement.updateprovider"

    .line 85
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/tcl/netlibrary/config/VVMConfig;->CONTENT_URI:Landroid/net/Uri;

    const-string v0, "content://com.tct.entitlement.updateprovider/vvmConfig"

    .line 86
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/tcl/netlibrary/config/VVMConfig;->CONTENT_URI_VVM:Landroid/net/Uri;

    const-string v0, "content://com.tct.entitlement.updateprovider/rcsConfig"

    .line 87
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/tcl/netlibrary/config/VVMConfig;->CONTENT_URI_RCS:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "VVMConfig"

    .line 2
    iput-object v0, p0, Lcom/tcl/netlibrary/config/VVMConfig;->TAG:Ljava/lang/String;

    const-string v0, "https://wsg.t-mobile.com"

    .line 46
    iput-object v0, p0, Lcom/tcl/netlibrary/config/VVMConfig;->WSGURI:Ljava/lang/String;

    const-string v0, "https://wsg.t-mobile.com/phone20/mStoreRelay/oemclient"

    .line 47
    iput-object v0, p0, Lcom/tcl/netlibrary/config/VVMConfig;->RootURL:Ljava/lang/String;

    const/16 v0, 0x64

    .line 52
    iput v0, p0, Lcom/tcl/netlibrary/config/VVMConfig;->MaxCustomGreetingLength:I

    const/16 v1, 0x12c

    .line 53
    iput v1, p0, Lcom/tcl/netlibrary/config/VVMConfig;->MaxNameGreetingLength:I

    const/4 v1, 0x4

    .line 54
    iput v1, p0, Lcom/tcl/netlibrary/config/VVMConfig;->MinimumPinLength:I

    const-string v1, "v1"

    .line 61
    iput-object v1, p0, Lcom/tcl/netlibrary/config/VVMConfig;->apiVersion:Ljava/lang/String;

    const-string v1, "ums"

    .line 62
    iput-object v1, p0, Lcom/tcl/netlibrary/config/VVMConfig;->storeName:Ljava/lang/String;

    const-string v1, "c1a7c823-fdd1-4857-8d44-b315444d2a83"

    .line 63
    iput-object v1, p0, Lcom/tcl/netlibrary/config/VVMConfig;->greetFolder:Ljava/lang/String;

    const-string v1, "27a29814-dd8f-43ee-b768-19af98bf1d07"

    .line 64
    iput-object v1, p0, Lcom/tcl/netlibrary/config/VVMConfig;->inboxFolder:Ljava/lang/String;

    .line 65
    iput v0, p0, Lcom/tcl/netlibrary/config/VVMConfig;->maxSearch:I

    .line 66
    iput v0, p0, Lcom/tcl/netlibrary/config/VVMConfig;->maxBulkDelete:I

    const/4 v0, 0x1

    .line 81
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/tcl/netlibrary/config/VVMConfig;->executor:Ljava/util/concurrent/Executor;

    .line 361
    new-instance v1, Lcom/tcl/netlibrary/config/VVMConfig$b;

    invoke-direct {v1, p0}, Lcom/tcl/netlibrary/config/VVMConfig$b;-><init>(Lcom/tcl/netlibrary/config/VVMConfig;)V

    iput-object v1, p0, Lcom/tcl/netlibrary/config/VVMConfig;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 362
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/tcl/netlibrary/config/VVMConfig;->context:Landroid/content/Context;

    .line 363
    new-instance v1, Lcom/google/gson/GsonBuilder;

    invoke-direct {v1}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v1

    iput-object v1, p0, Lcom/tcl/netlibrary/config/VVMConfig;->gson:Lcom/google/gson/Gson;

    .line 365
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/tcl/netlibrary/config/VVMConfig;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Lcom/tcl/netlibrary/config/VVMConfig$a;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/tcl/netlibrary/config/VVMConfig$a;-><init>(Lcom/tcl/netlibrary/config/VVMConfig;Landroid/os/Handler;)V

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 374
    iget-object v1, p0, Lcom/tcl/netlibrary/config/VVMConfig;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Register content uri exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    .line 378
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 379
    iget-object v1, p0, Lcom/tcl/netlibrary/config/VVMConfig;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static synthetic access$000(Lcom/tcl/netlibrary/config/VVMConfig;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tcl/netlibrary/config/VVMConfig;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/tcl/netlibrary/config/VVMConfig;
    .locals 2

    .line 1
    sget-object v0, Lcom/tcl/netlibrary/config/VVMConfig;->vvmConfig:Lcom/tcl/netlibrary/config/VVMConfig;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/tcl/netlibrary/config/VVMConfig;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/tcl/netlibrary/config/VVMConfig;->vvmConfig:Lcom/tcl/netlibrary/config/VVMConfig;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/tcl/netlibrary/config/VVMConfig;

    invoke-direct {v1, p0}, Lcom/tcl/netlibrary/config/VVMConfig;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/tcl/netlibrary/config/VVMConfig;->vvmConfig:Lcom/tcl/netlibrary/config/VVMConfig;

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 8
    :cond_1
    :goto_0
    sget-object p0, Lcom/tcl/netlibrary/config/VVMConfig;->vvmConfig:Lcom/tcl/netlibrary/config/VVMConfig;

    return-object p0
.end method

.method public static synthetic lambda$AZKtkwwijUc8LI8tSoIsJXalJxM(Lcom/tcl/netlibrary/config/VVMConfig;)V
    .locals 0

    invoke-direct {p0}, Lcom/tcl/netlibrary/config/VVMConfig;->run()V

    return-void
.end method

.method private run()V
    .locals 11

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/tcl/netlibrary/config/VVMConfig;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/tcl/netlibrary/config/VVMConfig;->CONTENT_URI_VVM:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :cond_0
    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 4
    :goto_0
    sget-object v4, Lcom/tcl/netlibrary/config/VVMConfig;->VVMAttributes:[Ljava/lang/String;

    array-length v4, v4

    if-ge v2, v4, :cond_0

    .line 5
    sget-object v4, Lcom/tcl/netlibrary/config/VVMConfig;->VVMAttributes:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 7
    invoke-direct {p0, v2, v4}, Lcom/tcl/netlibrary/config/VVMConfig;->setVvmValue(ILjava/lang/String;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 12
    :cond_2
    iget-object v4, p0, Lcom/tcl/netlibrary/config/VVMConfig;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/tcl/netlibrary/config/VVMConfig;->CONTENT_URI_RCS:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :cond_3
    if-eqz v0, :cond_5

    .line 13
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 14
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move v5, v2

    .line 15
    :goto_1
    sget-object v6, Lcom/tcl/netlibrary/config/VVMConfig;->RCSAttributes:[Ljava/lang/String;

    array-length v6, v6

    if-ge v5, v6, :cond_3

    .line 16
    sget-object v6, Lcom/tcl/netlibrary/config/VVMConfig;->RCSAttributes:[Ljava/lang/String;

    aget-object v6, v6, v5

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 17
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 18
    invoke-direct {p0, v5, v6}, Lcom/tcl/netlibrary/config/VVMConfig;->setRcsValue(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    if-eqz v0, :cond_6

    goto :goto_2

    :catchall_0
    move-exception v1

    goto/16 :goto_4

    :catch_0
    move-exception v1

    .line 23
    :try_start_1
    iget-object v2, p0, Lcom/tcl/netlibrary/config/VVMConfig;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Query content vvm or rcs uri exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_6

    .line 26
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 30
    :cond_6
    invoke-static {}, Lcom/tcl/netlibrary/service/NetService;->getInstance()La/d/a/g/a;

    move-result-object v0

    iget-object v1, p0, Lcom/tcl/netlibrary/config/VVMConfig;->context:Landroid/content/Context;

    invoke-interface {v0, v1}, La/d/a/g/a;->initNetService(Landroid/content/Context;)V

    .line 32
    :try_start_2
    invoke-static {}, Lcom/tcl/netlibrary/service/NetService;->getInstance()La/d/a/g/a;

    move-result-object v0

    invoke-interface {v0}, La/d/a/g/a;->getVVMServiceProfile()Lretrofit2/Call;

    move-result-object v0

    invoke-interface {v0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lretrofit2/Response;->code()I

    move-result v1

    const/16 v2, 0x1f4

    if-ne v1, v2, :cond_7

    .line 34
    invoke-static {}, Lcom/tcl/netlibrary/service/NetService;->getInstance()La/d/a/g/a;

    move-result-object v0

    invoke-interface {v0}, La/d/a/g/a;->getVVMServiceProfile()Lretrofit2/Call;

    move-result-object v0

    invoke-interface {v0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v0

    .line 36
    :cond_7
    invoke-virtual {v0}, Lretrofit2/Response;->code()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_8

    .line 37
    invoke-virtual {v0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tcl/netlibrary/bean/VvmserviceProfileBean;

    if-eqz v1, :cond_8

    .line 39
    iget-object v1, v1, Lcom/tcl/netlibrary/bean/VvmserviceProfileBean;->vvmserviceProfile:Lcom/tcl/netlibrary/entity/VvmserviceProfile;

    invoke-direct {p0, v1}, Lcom/tcl/netlibrary/config/VVMConfig;->setVvmserviceProfile(Lcom/tcl/netlibrary/entity/VvmserviceProfile;)V

    .line 42
    :cond_8
    iget-object v1, p0, Lcom/tcl/netlibrary/config/VVMConfig;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getVVMServiceProfile gson:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/tcl/netlibrary/config/VVMConfig;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iget-object v0, p0, Lcom/tcl/netlibrary/config/VVMConfig;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vvmConfig:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tcl/netlibrary/config/VVMConfig;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    .line 45
    iget-object v1, p0, Lcom/tcl/netlibrary/config/VVMConfig;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getVVMServiceProfile exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void

    :goto_4
    if-eqz v0, :cond_9

    .line 46
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 48
    :cond_9
    throw v1
.end method

.method private setRcsValue(ILjava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/tcl/netlibrary/config/VVMConfig;->maxBulkDelete:I

    goto :goto_0

    .line 2
    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/tcl/netlibrary/config/VVMConfig;->maxSearch:I

    goto :goto_0

    .line 3
    :cond_2
    iput-object p2, p0, Lcom/tcl/netlibrary/config/VVMConfig;->storeName:Ljava/lang/String;

    goto :goto_0

    .line 4
    :cond_3
    iput-object p2, p0, Lcom/tcl/netlibrary/config/VVMConfig;->apiVersion:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private setVvmValue(ILjava/lang/String;)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    if-eqz p2, :cond_2

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/tcl/netlibrary/config/VVMConfig;->gson:Lcom/google/gson/Gson;

    new-instance v0, Lcom/tcl/netlibrary/config/VVMConfig$d;

    invoke-direct {v0, p0}, Lcom/tcl/netlibrary/config/VVMConfig$d;-><init>(Lcom/tcl/netlibrary/config/VVMConfig;)V

    .line 2
    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 3
    invoke-virtual {p1, p2, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/tcl/netlibrary/config/VVMConfig;->VVMFolderID:Ljava/util/List;

    if-eqz p1, :cond_2

    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tcl/netlibrary/entity/XmlElement;

    .line 7
    iget-object v0, p2, Lcom/tcl/netlibrary/entity/XmlElement;->name:Ljava/lang/String;

    const-string v1, "VV-Mail/Greetings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    iget-object p2, p2, Lcom/tcl/netlibrary/entity/XmlElement;->value:Ljava/lang/String;

    iput-object p2, p0, Lcom/tcl/netlibrary/config/VVMConfig;->greetFolder:Ljava/lang/String;

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p2, Lcom/tcl/netlibrary/entity/XmlElement;->name:Ljava/lang/String;

    const-string v1, "VV-Mail/Inbox"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    iget-object p2, p2, Lcom/tcl/netlibrary/entity/XmlElement;->value:Ljava/lang/String;

    iput-object p2, p0, Lcom/tcl/netlibrary/config/VVMConfig;->inboxFolder:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    if-eqz p2, :cond_2

    .line 11
    iget-object p1, p0, Lcom/tcl/netlibrary/config/VVMConfig;->gson:Lcom/google/gson/Gson;

    new-instance v0, Lcom/tcl/netlibrary/config/VVMConfig$c;

    invoke-direct {v0, p0}, Lcom/tcl/netlibrary/config/VVMConfig$c;-><init>(Lcom/tcl/netlibrary/config/VVMConfig;)V

    .line 12
    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 13
    invoke-virtual {p1, p2, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/tcl/netlibrary/config/VVMConfig;->VM2Text:Ljava/util/List;

    goto :goto_1

    .line 14
    :pswitch_2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/tcl/netlibrary/config/VVMConfig;->VVMDeltaSyncTimer:I

    goto :goto_1

    .line 15
    :pswitch_3
    iput-object p2, p0, Lcom/tcl/netlibrary/config/VVMConfig;->primarySIMAuthentication:Ljava/lang/String;

    goto :goto_1

    .line 16
    :pswitch_4
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/tcl/netlibrary/config/VVMConfig;->DisplaylegacyMWI:Z

    goto :goto_1

    .line 17
    :pswitch_5
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/tcl/netlibrary/config/VVMConfig;->UseLegacyMWI:Z

    goto :goto_1

    .line 18
    :pswitch_6
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/tcl/netlibrary/config/VVMConfig;->MinimumPinLength:I

    goto :goto_1

    .line 19
    :pswitch_7
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/tcl/netlibrary/config/VVMConfig;->MaxNameGreetingLength:I

    goto :goto_1

    .line 20
    :pswitch_8
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/tcl/netlibrary/config/VVMConfig;->MaxCustomGreetingLength:I

    goto :goto_1

    .line 21
    :pswitch_9
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/tcl/netlibrary/config/VVMConfig;->VVMClientHasTrash:Z

    goto :goto_1

    .line 22
    :pswitch_a
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/tcl/netlibrary/config/VVMConfig;->VVMIgnoreDataRoaming:Z

    goto :goto_1

    .line 23
    :pswitch_b
    iput-object p2, p0, Lcom/tcl/netlibrary/config/VVMConfig;->RootURL:Ljava/lang/String;

    goto :goto_1

    .line 24
    :pswitch_c
    iput-object p2, p0, Lcom/tcl/netlibrary/config/VVMConfig;->WSGURI:Ljava/lang/String;

    goto :goto_1

    .line 25
    :pswitch_d
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/tcl/netlibrary/config/VVMConfig;->VVMEnabled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 83
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setVvmserviceProfile(Lcom/tcl/netlibrary/entity/VvmserviceProfile;)V
    .locals 5

    if-eqz p1, :cond_3

    .line 1
    iget-object p1, p1, Lcom/tcl/netlibrary/entity/VvmserviceProfile;->attributes:Lcom/tcl/netlibrary/entity/AttributeList;

    if-nez p1, :cond_0

    goto :goto_2

    .line 4
    :cond_0
    iget-object p1, p1, Lcom/tcl/netlibrary/entity/AttributeList;->attribute:Ljava/util/List;

    const/4 v0, 0x0

    .line 5
    :goto_0
    sget-object v1, Lcom/tcl/netlibrary/config/VVMConfig;->VVMServiceProfileAttributes:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tcl/netlibrary/entity/Attribute;

    .line 7
    sget-object v3, Lcom/tcl/netlibrary/config/VVMConfig;->VVMServiceProfileAttributes:[Ljava/lang/String;

    aget-object v3, v3, v0

    iget-object v4, v2, Lcom/tcl/netlibrary/entity/Attribute;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8
    iget-object v2, v2, Lcom/tcl/netlibrary/entity/Attribute;->value:Ljava/util/List;

    invoke-direct {p0, v0, v2}, Lcom/tcl/netlibrary/config/VVMConfig;->setVvmserviceProfileValue(ILjava/util/List;)V

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method private setVvmserviceProfileValue(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string v0, "true"

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    :try_start_0
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/tcl/netlibrary/config/VVMConfig;->vvmOn:Z

    goto :goto_0

    .line 2
    :pswitch_1
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/tcl/netlibrary/config/VVMConfig;->v2eOn:Z

    goto :goto_0

    .line 3
    :pswitch_2
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/tcl/netlibrary/config/VVMConfig;->smsDirectLink:Z

    goto :goto_0

    .line 4
    :pswitch_3
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/tcl/netlibrary/config/VVMConfig;->nut:Z

    goto :goto_0

    .line 5
    :pswitch_4
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/tcl/netlibrary/config/VVMConfig;->migrationStatus:Ljava/lang/String;

    goto :goto_0

    .line 6
    :pswitch_5
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/tcl/netlibrary/config/VVMConfig;->language:Ljava/lang/String;

    goto :goto_0

    .line 7
    :pswitch_6
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/tcl/netlibrary/config/VVMConfig;->isBlocked:Z

    goto :goto_0

    .line 8
    :pswitch_7
    iput-object p2, p0, Lcom/tcl/netlibrary/config/VVMConfig;->emailAddressList:Ljava/util/List;

    goto :goto_0

    .line 9
    :pswitch_8
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/tcl/netlibrary/config/VVMConfig;->cosname:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 37
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public fetchVvmConfig()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tcl/netlibrary/config/VVMConfig;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/tcl/netlibrary/config/-$$Lambda$VVMConfig$AZKtkwwijUc8LI8tSoIsJXalJxM;

    invoke-direct {v1, p0}, Lcom/tcl/netlibrary/config/-$$Lambda$VVMConfig$AZKtkwwijUc8LI8tSoIsJXalJxM;-><init>(Lcom/tcl/netlibrary/config/VVMConfig;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getApiVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tcl/netlibrary/config/VVMConfig;->apiVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getCosname()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tcl/netlibrary/config/VVMConfig;->cosname:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailAddressList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tcl/netlibrary/config/VVMConfig;->emailAddressList:Ljava/util/List;

    return-object v0
.end method

.method public getGreetFolder()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tcl/netlibrary/config/VVMConfig;->greetFolder:Ljava/lang/String;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tcl/netlibrary/config/VVMConfig;->RootURL:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInboxFolder()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tcl/netlibrary/config/VVMConfig;->inboxFolder:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tcl/netlibrary/config/VVMConfig;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxBulkDelete()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tcl/netlibrary/config/VVMConfig;->maxBulkDelete:I

    return v0
.end method

.method public getMaxCustomGreetingLength()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tcl/netlibrary/config/VVMConfig;->MaxCustomGreetingLength:I

    return v0
.end method

.method public getMaxNameGreetingLength()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tcl/netlibrary/config/VVMConfig;->MaxNameGreetingLength:I

    return v0
.end method

.method public getMaxSearch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tcl/netlibrary/config/VVMConfig;->maxSearch:I

    return v0
.end method

.method public getMigrationStatus()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tcl/netlibrary/config/VVMConfig;->migrationStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getMinimumPinLength()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tcl/netlibrary/config/VVMConfig;->MinimumPinLength:I

    return v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tcl/netlibrary/config/VVMConfig;->context:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 3
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 7
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tel%3A%2B"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrimarySIMAuthentication()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tcl/netlibrary/config/VVMConfig;->primarySIMAuthentication:Ljava/lang/String;

    return-object v0
.end method

.method public getRootURL()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tcl/netlibrary/config/VVMConfig;->RootURL:Ljava/lang/String;

    return-object v0
.end method

.method public getServerRoot()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tcl/netlibrary/config/VVMConfig;->RootURL:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStoreName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tcl/netlibrary/config/VVMConfig;->storeName:Ljava/lang/String;

    return-object v0
.end method

.method public getVM2Text()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tcl/netlibrary/entity/XmlElement;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tcl/netlibrary/config/VVMConfig;->VM2Text:Ljava/util/List;

    return-object v0
.end method

.method public getVVMDeltaSyncTimer()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tcl/netlibrary/config/VVMConfig;->VVMDeltaSyncTimer:I

    return v0
.end method

.method public getVVMFolderID()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tcl/netlibrary/entity/XmlElement;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tcl/netlibrary/config/VVMConfig;->VVMFolderID:Ljava/util/List;

    return-object v0
.end method

.method public getWSGURI()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tcl/netlibrary/config/VVMConfig;->WSGURI:Ljava/lang/String;

    return-object v0
.end method

.method public isBlocked()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tcl/netlibrary/config/VVMConfig;->isBlocked:Z

    return v0
.end method

.method public isDisplaylegacyMWI()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tcl/netlibrary/config/VVMConfig;->DisplaylegacyMWI:Z

    return v0
.end method

.method public isNut()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tcl/netlibrary/config/VVMConfig;->nut:Z

    return v0
.end method

.method public isSmsDirectLink()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tcl/netlibrary/config/VVMConfig;->smsDirectLink:Z

    return v0
.end method

.method public isUseLegacyMWI()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tcl/netlibrary/config/VVMConfig;->UseLegacyMWI:Z

    return v0
.end method

.method public isV2eOn()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tcl/netlibrary/config/VVMConfig;->v2eOn:Z

    return v0
.end method

.method public isVVMClientHasTrash()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tcl/netlibrary/config/VVMConfig;->VVMClientHasTrash:Z

    return v0
.end method

.method public isVVMEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tcl/netlibrary/config/VVMConfig;->VVMEnabled:Z

    return v0
.end method

.method public isVVMIgnoreDataRoaming()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tcl/netlibrary/config/VVMConfig;->VVMIgnoreDataRoaming:Z

    return v0
.end method

.method public isVvmOn()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tcl/netlibrary/config/VVMConfig;->vvmOn:Z

    return v0
.end method

.method public setApiVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tcl/netlibrary/config/VVMConfig;->apiVersion:Ljava/lang/String;

    return-void
.end method

.method public setBlocked(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/tcl/netlibrary/config/VVMConfig;->isBlocked:Z

    return-void
.end method

.method public setCosname(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tcl/netlibrary/config/VVMConfig;->cosname:Ljava/lang/String;

    return-void
.end method

.method public setDisplaylegacyMWI(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/tcl/netlibrary/config/VVMConfig;->DisplaylegacyMWI:Z

    return-void
.end method

.method public setEmailAddressList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/tcl/netlibrary/config/VVMConfig;->emailAddressList:Ljava/util/List;

    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tcl/netlibrary/config/VVMConfig;->language:Ljava/lang/String;

    return-void
.end method

.method public setMaxCustomGreetingLength(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tcl/netlibrary/config/VVMConfig;->MaxCustomGreetingLength:I

    return-void
.end method

.method public setMaxNameGreetingLength(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tcl/netlibrary/config/VVMConfig;->MaxNameGreetingLength:I

    return-void
.end method

.method public setMigrationStatus(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tcl/netlibrary/config/VVMConfig;->migrationStatus:Ljava/lang/String;

    return-void
.end method

.method public setMinimumPinLength(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tcl/netlibrary/config/VVMConfig;->MinimumPinLength:I

    return-void
.end method

.method public setNut(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/tcl/netlibrary/config/VVMConfig;->nut:Z

    return-void
.end method

.method public setPrimarySIMAuthentication(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tcl/netlibrary/config/VVMConfig;->primarySIMAuthentication:Ljava/lang/String;

    return-void
.end method

.method public setRootURL(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tcl/netlibrary/config/VVMConfig;->RootURL:Ljava/lang/String;

    return-void
.end method

.method public setSmsDirectLink(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/tcl/netlibrary/config/VVMConfig;->smsDirectLink:Z

    return-void
.end method

.method public setStoreName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tcl/netlibrary/config/VVMConfig;->storeName:Ljava/lang/String;

    return-void
.end method

.method public setUseLegacyMWI(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/tcl/netlibrary/config/VVMConfig;->UseLegacyMWI:Z

    return-void
.end method

.method public setV2eOn(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/tcl/netlibrary/config/VVMConfig;->v2eOn:Z

    return-void
.end method

.method public setVM2Text(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tcl/netlibrary/entity/XmlElement;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/tcl/netlibrary/config/VVMConfig;->VM2Text:Ljava/util/List;

    return-void
.end method

.method public setVVMClientHasTrash(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/tcl/netlibrary/config/VVMConfig;->VVMClientHasTrash:Z

    return-void
.end method

.method public setVVMDeltaSyncTimer(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tcl/netlibrary/config/VVMConfig;->VVMDeltaSyncTimer:I

    return-void
.end method

.method public setVVMEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/tcl/netlibrary/config/VVMConfig;->VVMEnabled:Z

    return-void
.end method

.method public setVVMFolderID(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tcl/netlibrary/entity/XmlElement;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/tcl/netlibrary/config/VVMConfig;->VVMFolderID:Ljava/util/List;

    return-void
.end method

.method public setVVMIgnoreDataRoaming(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/tcl/netlibrary/config/VVMConfig;->VVMIgnoreDataRoaming:Z

    return-void
.end method

.method public setVvmOn(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/tcl/netlibrary/config/VVMConfig;->vvmOn:Z

    return-void
.end method

.method public setWSGURI(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tcl/netlibrary/config/VVMConfig;->WSGURI:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VVMConfig{VVMEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tcl/netlibrary/config/VVMConfig;->VVMEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", WSGURI=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tcl/netlibrary/config/VVMConfig;->WSGURI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", RootURL=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tcl/netlibrary/config/VVMConfig;->RootURL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", VVMIgnoreDataRoaming="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/tcl/netlibrary/config/VVMConfig;->VVMIgnoreDataRoaming:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", VVMClientHasTrash="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/tcl/netlibrary/config/VVMConfig;->VVMClientHasTrash:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", MaxCustomGreetingLength="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tcl/netlibrary/config/VVMConfig;->MaxCustomGreetingLength:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", MaxNameGreetingLength="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tcl/netlibrary/config/VVMConfig;->MaxNameGreetingLength:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", MinimumPinLength="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tcl/netlibrary/config/VVMConfig;->MinimumPinLength:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", UseLegacyMWI="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/tcl/netlibrary/config/VVMConfig;->UseLegacyMWI:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", DisplaylegacyMWI="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/tcl/netlibrary/config/VVMConfig;->DisplaylegacyMWI:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", primarySIMAuthentication=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tcl/netlibrary/config/VVMConfig;->primarySIMAuthentication:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", VVMDeltaSyncTimer="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tcl/netlibrary/config/VVMConfig;->VVMDeltaSyncTimer:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", VM2Text="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tcl/netlibrary/config/VVMConfig;->VM2Text:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", VVMFolderID="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tcl/netlibrary/config/VVMConfig;->VVMFolderID:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", apiVersion=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tcl/netlibrary/config/VVMConfig;->apiVersion:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", storeName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tcl/netlibrary/config/VVMConfig;->storeName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", greetFolder=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tcl/netlibrary/config/VVMConfig;->greetFolder:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", inboxFolder=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tcl/netlibrary/config/VVMConfig;->inboxFolder:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", maxSearch="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tcl/netlibrary/config/VVMConfig;->maxSearch:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", maxBulkDelete="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tcl/netlibrary/config/VVMConfig;->maxBulkDelete:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", cosname=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tcl/netlibrary/config/VVMConfig;->cosname:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", emailAddressList="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tcl/netlibrary/config/VVMConfig;->emailAddressList:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", isBlocked=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/tcl/netlibrary/config/VVMConfig;->isBlocked:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", language=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tcl/netlibrary/config/VVMConfig;->language:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", migrationStatus=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tcl/netlibrary/config/VVMConfig;->migrationStatus:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", nut="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tcl/netlibrary/config/VVMConfig;->nut:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", smsDirectLink="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tcl/netlibrary/config/VVMConfig;->smsDirectLink:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", v2eOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tcl/netlibrary/config/VVMConfig;->v2eOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", vvmOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tcl/netlibrary/config/VVMConfig;->vvmOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
