.class public Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings;
.super Ljava/lang/Object;
.source "ConfigSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings$ConfigContentWriterReader;
    }
.end annotation


# static fields
.field private static final DEFAULT_DATAHUB_XML:Ljava/lang/String; = "datahub.xml"

.field private static final TAG:Ljava/lang/String; = "ConfigSettings"

.field private static final TAG_BASEINFO_RECORDS:Ljava/lang/String; = "baseinfo_records"

.field private static final TAG_SUCCESS_RECORDS:Ljava/lang/String; = "success_records"

.field private static sInstance:Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings;

.field private static final sInstanceLock:Ljava/lang/Object;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mGrantFile:Landroid/util/AtomicFile;

.field private mUploadBaseInfos:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ltct/gpdatahub/sdk/gpupload/db/UploadBaseInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mUploadConfigInfo:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

.field private mUploadSuccessInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ltct/gpdatahub/sdk/gpupload/db/UploadSuccessInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings;->sInstanceLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings;->mUploadSuccessInfos:Ljava/util/ArrayList;

    .line 62
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings;->mUploadBaseInfos:Landroid/util/ArrayMap;

    .line 96
    iput-object p1, p0, Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings;->mContext:Landroid/content/Context;

    .line 97
    invoke-static {p1}, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;->getInstance(Landroid/content/Context;)Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;

    move-result-object v0

    invoke-virtual {v0}, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;->isGPVersion()Z

    move-result v0

    const-string v1, "ConfigSettings"

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "[ConfigSettings] isGPVersion !!!"

    .line 99
    invoke-static {v1, v0}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    goto :goto_0

    .line 103
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object p1

    .line 104
    new-instance v0, Ljava/io/File;

    const-string v2, "system"

    invoke-direct {v0, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object p1, v0

    .line 106
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ConfigSettings] configDir="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    const-string v2, "datahub.xml"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings;->mGrantFile:Landroid/util/AtomicFile;

    return-void
.end method

.method static synthetic access$000(Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings;)Z
    .locals 0

    .line 41
    invoke-direct {p0}, Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings;->readConfigs()Z

    move-result p0

    return p0
.end method

.method public static final getInstance(Landroid/content/Context;)Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings;
    .locals 2

    .line 111
    sget-object v0, Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings;->sInstance:Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings;

    if-nez v0, :cond_1

    .line 112
    sget-object v0, Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 113
    :try_start_0
    sget-object v1, Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings;->sInstance:Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings;

    if-nez v1, :cond_0

    .line 114
    new-instance v1, Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings;

    invoke-direct {v1, p0}, Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings;-><init>(Landroid/content/Context;)V

    sput-object v1, Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings;->sInstance:Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings;

    .line 116
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 118
    :cond_1
    :goto_0
    sget-object p0, Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings;->sInstance:Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings;

    return-object p0
.end method

.method private readConfigs()Z
    .locals 6

    const-string v0, "ConfigSettings"

    .line 244
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    const/4 v1, 0x0

    .line 248
    :try_start_0
    iget-object v2, p0, Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings;->mGrantFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1

    .line 249
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 250
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 253
    :cond_0
    :goto_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_6

    .line 254
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    if-ne v3, v5, :cond_0

    const-string v3, "success_records"

    .line 256
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 257
    invoke-virtual {p0}, Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings;->clearSuccessInfos()Z

    goto :goto_0

    :cond_1
    const-string v3, "success_record"

    .line 258
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 259
    new-instance v3, Ltct/gpdatahub/sdk/gpupload/db/UploadSuccessInfo;

    invoke-direct {v3}, Ltct/gpdatahub/sdk/gpupload/db/UploadSuccessInfo;-><init>()V

    .line 260
    invoke-virtual {v3, v2}, Ltct/gpdatahub/sdk/gpupload/db/UploadSuccessInfo;->read(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 261
    invoke-virtual {p0, v3}, Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings;->addSuccessInfo(Ltct/gpdatahub/sdk/gpupload/db/UploadSuccessInfo;)Z

    goto :goto_0

    :cond_2
    const-string v3, "baseinfo_records"

    .line 262
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 263
    invoke-virtual {p0}, Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings;->clearBaseInfos()Z

    goto :goto_0

    :cond_3
    const-string v3, "base_info_record"

    .line 264
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 265
    new-instance v3, Ltct/gpdatahub/sdk/gpupload/db/UploadBaseInfo;

    invoke-direct {v3}, Ltct/gpdatahub/sdk/gpupload/db/UploadBaseInfo;-><init>()V

    .line 266
    invoke-virtual {v3, v2}, Ltct/gpdatahub/sdk/gpupload/db/UploadBaseInfo;->read(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 267
    invoke-virtual {p0, v3}, Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings;->addBaseInfo(Ltct/gpdatahub/sdk/gpupload/db/UploadBaseInfo;)Z

    goto :goto_0

    :cond_4
    const-string v3, "upload"

    .line 268
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 269
    iget-object v3, p0, Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings;->mUploadConfigInfo:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    if-nez v3, :cond_5

    .line 270
    iget-object v3, p0, Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->getInstance(Landroid/content/Context;)Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    move-result-object v3

    iput-object v3, p0, Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings;->mUploadConfigInfo:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    goto :goto_0

    .line 272
    :cond_5
    iget-object v3, p0, Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings;->mUploadConfigInfo:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    invoke-virtual {v3, v2}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->read(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_6
    if-eqz v1, :cond_7

    .line 287
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_7
    return v4

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v2

    .line 283
    :try_start_2
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_9

    .line 287
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    goto :goto_3

    :catch_2
    move-exception v2

    .line 281
    :try_start_4
    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v1, :cond_9

    goto :goto_1

    :goto_2
    if-eqz v1, :cond_8

    .line 287
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 289
    :catch_3
    :cond_8
    throw v0

    :catch_4
    if-eqz v1, :cond_9

    goto :goto_1

    :catch_5
    :cond_9
    :goto_3
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public addBaseInfo(Ljava/lang/String;I)Z
    .locals 1

    .line 168
    new-instance v0, Ltct/gpdatahub/sdk/gpupload/db/UploadBaseInfo;

    invoke-direct {v0, p1, p2}, Ltct/gpdatahub/sdk/gpupload/db/UploadBaseInfo;-><init>(Ljava/lang/String;I)V

    .line 169
    invoke-virtual {p0, v0}, Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings;->addBaseInfo(Ltct/gpdatahub/sdk/gpupload/db/UploadBaseInfo;)Z

    move-result p1

    return p1
.end method

.method public addBaseInfo(Ltct/gpdatahub/sdk/gpupload/db/UploadBaseInfo;)Z
    .locals 3

    if-eqz p1, :cond_1

    .line 173
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings;->mUploadBaseInfos:Landroid/util/ArrayMap;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ltct/gpdatahub/sdk/gpupload/db/UploadBaseInfo;->getPkgName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 174
    invoke-virtual {p1}, Ltct/gpdatahub/sdk/gpupload/db/UploadBaseInfo;->getPkgName()Ljava/lang/String;

    move-result-object v0

    .line 175
    invoke-virtual {p1}, Ltct/gpdatahub/sdk/gpupload/db/UploadBaseInfo;->getVersionCode()I

    move-result v1

    .line 176
    iget-object v2, p0, Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings;->mUploadBaseInfos:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings;->mUploadBaseInfos:Landroid/util/ArrayMap;

    .line 177
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings;->mUploadBaseInfos:Landroid/util/ArrayMap;

    .line 178
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltct/gpdatahub/sdk/gpupload/db/UploadBaseInfo;

    invoke-virtual {v2}, Ltct/gpdatahub/sdk/gpupload/db/UploadBaseInfo;->getVersionCode()I

    move-result v2

    if-eq v2, v1, :cond_1

    .line 180
    :cond_0
    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings;->mUploadBaseInfos:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public addSuccessInfo(Ltct/gpdatahub/sdk/gpupload/db/UploadSuccessInfo;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 131
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings;->mUploadSuccessInfos:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings;->mUploadSuccessInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public clearAll()V
    .locals 1

    .line 297
    invoke-virtual {p0}, Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings;->clearSuccessInfos()Z

    const/4 v0, 0x0

    .line 298
    iput-object v0, p0, Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings;->mUploadConfigInfo:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    return-void
.end method

.method public clearBaseInfos()Z
    .locals 1

    .line 188
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings;->mUploadBaseInfos:Landroid/util/ArrayMap;

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public clearSuccessInfos()Z
    .locals 1

    .line 140
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings;->mUploadSuccessInfos:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getUploadBaseInfos()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ltct/gpdatahub/sdk/gpupload/db/UploadBaseInfo;",
            ">;"
        }
    .end annotation

    .line 197
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings;->mUploadBaseInfos:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public getUploadConfigInfo()Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;
    .locals 1

    .line 123
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings;->mUploadConfigInfo:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    return-object v0
.end method

.method public isBaseInfoUploaded(Ljava/lang/String;)Z
    .locals 2

    .line 149
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 150
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings;->mUploadBaseInfos:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings;->mUploadBaseInfos:Landroid/util/ArrayMap;

    .line 151
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ltct/gpdatahub/sdk/gpupload/db/UploadBaseInfo;

    invoke-virtual {p1}, Ltct/gpdatahub/sdk/gpupload/db/UploadBaseInfo;->isUploaded()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public setBaseInfoUpload(Ljava/lang/String;Ljava/lang/Boolean;)Z
    .locals 1

    .line 157
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings;->mUploadBaseInfos:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings;->mUploadBaseInfos:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ltct/gpdatahub/sdk/gpupload/db/UploadBaseInfo;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Ltct/gpdatahub/sdk/gpupload/db/UploadBaseInfo;->setUploaded(Z)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setUploadConfigInfo(Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;)V
    .locals 0

    .line 127
    iput-object p1, p0, Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings;->mUploadConfigInfo:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 304
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings;->mUploadConfigInfo:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    if-eqz v1, :cond_0

    .line 306
    invoke-virtual {v1}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, "\n"

    .line 308
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    iget-object v2, p0, Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings;->mUploadSuccessInfos:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 310
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltct/gpdatahub/sdk/gpupload/db/UploadSuccessInfo;

    .line 311
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ltct/gpdatahub/sdk/gpupload/db/UploadSuccessInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 314
    :cond_1
    iget-object v2, p0, Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings;->mUploadBaseInfos:Landroid/util/ArrayMap;

    if-eqz v2, :cond_2

    .line 315
    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltct/gpdatahub/sdk/gpupload/db/UploadBaseInfo;

    .line 316
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ltct/gpdatahub/sdk/gpupload/db/UploadBaseInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 319
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateConfigs()Z
    .locals 9

    const-string v0, "baseinfo_records"

    const-string v1, "success_records"

    const-string v2, "ConfigSettings"

    const/4 v3, 0x0

    .line 203
    :try_start_0
    iget-object v4, p0, Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings;->mGrantFile:Landroid/util/AtomicFile;

    invoke-virtual {v4}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 204
    :try_start_1
    new-instance v5, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;

    invoke-direct {v5}, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;-><init>()V

    .line 205
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v6, 0x1

    .line 206
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v5, v3, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 207
    iget-object v7, p0, Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings;->mUploadConfigInfo:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    if-eqz v7, :cond_0

    .line 208
    iget-object v7, p0, Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings;->mUploadConfigInfo:Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    invoke-virtual {v7, v5}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->write(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 210
    :cond_0
    iget-object v7, p0, Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings;->mUploadSuccessInfos:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 211
    invoke-interface {v5, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 212
    iget-object v7, p0, Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings;->mUploadSuccessInfos:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ltct/gpdatahub/sdk/gpupload/db/UploadSuccessInfo;

    .line 213
    invoke-virtual {v8, v5}, Ltct/gpdatahub/sdk/gpupload/db/UploadSuccessInfo;->write(Lorg/xmlpull/v1/XmlSerializer;)V

    goto :goto_0

    .line 215
    :cond_1
    invoke-interface {v5, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 217
    :cond_2
    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings;->mUploadBaseInfos:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 218
    invoke-interface {v5, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 219
    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings;->mUploadBaseInfos:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ltct/gpdatahub/sdk/gpupload/db/UploadBaseInfo;

    .line 220
    invoke-virtual {v7, v5}, Ltct/gpdatahub/sdk/gpupload/db/UploadBaseInfo;->write(Lorg/xmlpull/v1/XmlSerializer;)V

    goto :goto_1

    .line 222
    :cond_3
    invoke-interface {v5, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 224
    :cond_4
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 225
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings;->mGrantFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v4}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return v6

    :catch_0
    move-exception v0

    move-object v3, v4

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v3, v4

    goto :goto_3

    :catch_2
    move-exception v0

    :goto_2
    if-eqz v3, :cond_5

    .line 234
    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings;->mGrantFile:Landroid/util/AtomicFile;

    invoke-virtual {v1, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 236
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :catch_3
    move-exception v0

    :goto_3
    if-eqz v3, :cond_6

    .line 229
    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings;->mGrantFile:Landroid/util/AtomicFile;

    invoke-virtual {v1, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 231
    :cond_6
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    const/4 v0, 0x0

    return v0
.end method
