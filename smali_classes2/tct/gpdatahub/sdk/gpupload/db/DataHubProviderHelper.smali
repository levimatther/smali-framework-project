.class public Ltct/gpdatahub/sdk/gpupload/db/DataHubProviderHelper;
.super Ljava/lang/Object;
.source "DataHubProviderHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const-class v0, Ltct/gpdatahub/sdk/gpupload/db/DataHubProviderHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltct/gpdatahub/sdk/gpupload/db/DataHubProviderHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertModelListToDateList(Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ltct/gpdatahub/sdk/models/UploadModel;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 407
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltct/gpdatahub/sdk/models/UploadModel;

    if-eqz v0, :cond_0

    .line 408
    invoke-virtual {v0}, Ltct/gpdatahub/sdk/models/UploadModel;->getDay()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 409
    sget-object v1, Ltct/gpdatahub/sdk/gpupload/db/DataHubProviderHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[convertModelListToDateList]: model="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    invoke-virtual {v0}, Ltct/gpdatahub/sdk/models/UploadModel;->getDay()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 411
    sget-object v1, Ltct/gpdatahub/sdk/gpupload/db/DataHubProviderHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[convertModelListToDateList]: Day="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ltct/gpdatahub/sdk/models/UploadModel;->getDay()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    invoke-virtual {v0}, Ltct/gpdatahub/sdk/models/UploadModel;->getDay()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static debugQueryAllFailedRecord(Landroid/content/Context;Ljava/io/PrintWriter;)V
    .locals 4

    .line 455
    sget-object v0, Ltct/gpdatahub/sdk/gpupload/db/DataHubProviderHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[debugQueryFailedUpload]: startDate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "1000-01-01"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", endDate="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "9999-12-30"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    invoke-static {p0}, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->getInstance(Landroid/content/Context;)Ltct/gpdatahub/sdk/internal/UploadSdkManager;

    move-result-object p0

    .line 458
    invoke-virtual {p0, v2, v3}, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->queryFailedUploadByDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "allFailedRecord(size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "-----"

    .line 462
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 463
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltct/gpdatahub/sdk/models/UploadModel;

    if-eqz v1, :cond_0

    .line 464
    invoke-virtual {v1}, Ltct/gpdatahub/sdk/models/UploadModel;->getDay()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 467
    invoke-virtual {v1}, Ltct/gpdatahub/sdk/models/UploadModel;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 470
    :cond_1
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static debugQueryFailedAndUnUploadByDate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/io/PrintWriter;)V
    .locals 1

    .line 433
    invoke-static {p0}, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->getInstance(Landroid/content/Context;)Ltct/gpdatahub/sdk/internal/UploadSdkManager;

    move-result-object p0

    .line 434
    invoke-virtual {p0, p1, p2, p3}, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->queryNeedToUploadByDateAndFailTimes(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 437
    sget-object p1, Ltct/gpdatahub/sdk/gpupload/db/DataHubProviderHelper;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "[debugQueryFailedAndUnUploadByDate]:  queryModels="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "failedAndUnUploads (size="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "):"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "-----"

    .line 439
    invoke-virtual {p4, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 440
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ltct/gpdatahub/sdk/models/UploadModel;

    .line 441
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ltct/gpdatahub/sdk/models/UploadModel;->getDay()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ltct/gpdatahub/sdk/models/UploadModel;->getUpload_fail_times()I

    move-result p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 443
    :cond_0
    invoke-virtual {p4, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static deleteMobileEventById(Landroid/content/Context;JJ)V
    .locals 0

    .line 52
    invoke-static {p0}, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->getInstance(Landroid/content/Context;)Ltct/gpdatahub/sdk/internal/UploadSdkManager;

    move-result-object p0

    .line 53
    invoke-virtual {p0, p1, p2, p3, p4}, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->deleteMobileEventById(JJ)V

    return-void
.end method

.method public static getEventTypeString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const-string p0, "unknow"

    return-object p0

    :cond_0
    const-string p0, "throwable"

    return-object p0

    :cond_1
    const-string p0, "activity"

    return-object p0

    :cond_2
    const-string p0, "system"

    return-object p0

    :cond_3
    const-string p0, "event"

    return-object p0
.end method

.method public static insertFailedUploadRecord(Landroid/content/Context;Ljava/lang/String;II)I
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-le p2, v1, :cond_0

    goto :goto_0

    :cond_0
    move p2, v0

    .line 212
    :goto_0
    invoke-static {p0, p1, p2, p3, v0}, Ltct/gpdatahub/sdk/gpupload/db/DataHubProviderHelper;->insertUploadRecord(Landroid/content/Context;Ljava/lang/String;IIZ)I

    move-result p0

    return p0
.end method

.method public static insertFailedUploadRecordByStartId(Landroid/content/Context;JII)I
    .locals 7

    const/4 v0, -0x1

    if-le p3, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    move v3, p3

    const/4 v5, 0x0

    const-string v6, ""

    move-object v0, p0

    move-wide v1, p1

    move v4, p4

    .line 113
    invoke-static/range {v0 .. v6}, Ltct/gpdatahub/sdk/gpupload/db/DataHubProviderHelper;->insertUploadRecordByStartId(Landroid/content/Context;JIIZLjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static insertSuccessUploadRecord(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 223
    invoke-static {p0, p1, p2, v0, v1}, Ltct/gpdatahub/sdk/gpupload/db/DataHubProviderHelper;->insertUploadRecord(Landroid/content/Context;Ljava/lang/String;IIZ)I

    move-result p0

    return p0
.end method

.method public static insertSuccessUploadRecordByStartId(Landroid/content/Context;JII)I
    .locals 6

    const-string v5, ""

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move v4, p4

    .line 125
    invoke-static/range {v0 .. v5}, Ltct/gpdatahub/sdk/gpupload/db/DataHubProviderHelper;->insertSuccessUploadRecordByStartId(Landroid/content/Context;JIILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static insertSuccessUploadRecordByStartId(Landroid/content/Context;JIILjava/lang/String;)I
    .locals 7

    const/4 p3, -0x1

    if-le p4, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    move v3, p4

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-wide v1, p1

    move-object v6, p5

    .line 133
    invoke-static/range {v0 .. v6}, Ltct/gpdatahub/sdk/gpupload/db/DataHubProviderHelper;->insertUploadRecordByStartId(Landroid/content/Context;JIIZLjava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static insertUploadRecord(Landroid/content/Context;Ljava/lang/String;IIZ)I
    .locals 10

    .line 230
    invoke-static {p0}, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->getInstance(Landroid/content/Context;)Ltct/gpdatahub/sdk/internal/UploadSdkManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->queryUploadByDay(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 232
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    const/4 v1, 0x0

    .line 234
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltct/gpdatahub/sdk/models/UploadModel;

    invoke-virtual {v3}, Ltct/gpdatahub/sdk/models/UploadModel;->getUpload_fail_times()I

    move-result v3

    .line 235
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltct/gpdatahub/sdk/models/UploadModel;

    invoke-virtual {v0}, Ltct/gpdatahub/sdk/models/UploadModel;->getStart_id()J

    move-result-wide v4

    if-eqz p4, :cond_0

    const-string v0, "success"

    goto :goto_0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    const-string v0, "failed"

    :goto_0
    move-object v6, v0

    move v0, v3

    .line 243
    invoke-static {p0}, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->getInstance(Landroid/content/Context;)Ltct/gpdatahub/sdk/internal/UploadSdkManager;

    move-result-object v1

    .line 249
    invoke-static {}, Ltct/gpdatahub/sdk/common/utils/TimeUtils;->getCurrentHourAndMinuteTime()Ljava/lang/String;

    move-result-object v7

    move-object v2, p1

    move-wide v3, v4

    move-object v5, v6

    move v6, v0

    move v8, p2

    move v9, p3

    .line 244
    invoke-virtual/range {v1 .. v9}, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->insertUnique(Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;II)V

    goto :goto_1

    :cond_1
    const/4 v0, -0x1

    :goto_1
    return v0
.end method

.method public static insertUploadRecordByStartId(Landroid/content/Context;JIIZLjava/lang/String;)I
    .locals 11

    const-string v0, "insertUploadRecordByStartId"

    .line 148
    invoke-static {v0}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;)V

    .line 152
    invoke-static {p0}, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->getInstance(Landroid/content/Context;)Ltct/gpdatahub/sdk/internal/UploadSdkManager;

    move-result-object v0

    move-wide v3, p1

    invoke-virtual {v0, p1, p2}, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->queryUploadByStartId(J)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 153
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_0

    .line 155
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltct/gpdatahub/sdk/models/UploadModel;

    invoke-virtual {v0}, Ltct/gpdatahub/sdk/models/UploadModel;->getUpload_fail_times()I

    move-result v1

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insertUploadRecordByStartId exist failTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;)V

    :cond_0
    if-eqz p5, :cond_1

    const-string v0, "success"

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    const-string v0, "failed"

    :goto_0
    move-object v5, v0

    move v0, v1

    .line 170
    invoke-static {p0}, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->getInstance(Landroid/content/Context;)Ltct/gpdatahub/sdk/internal/UploadSdkManager;

    move-result-object v1

    .line 172
    invoke-static {}, Ltct/gpdatahub/sdk/common/utils/TimeUtils;->getCurrentDay()Ljava/lang/String;

    move-result-object v2

    .line 176
    invoke-static {}, Ltct/gpdatahub/sdk/common/utils/TimeUtils;->getCurrentHourAndMinuteTime()Ljava/lang/String;

    move-result-object v7

    move-wide v3, p1

    move v6, v0

    move v8, p4

    move v9, p3

    move-object/from16 v10, p6

    .line 171
    invoke-virtual/range {v1 .. v10}, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->insertUnique(Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;IILjava/lang/String;)V

    return v0
.end method

.method public static queryEventByDay(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 32
    invoke-static {p0}, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->getInstance(Landroid/content/Context;)Ltct/gpdatahub/sdk/internal/UploadSdkManager;

    move-result-object p0

    .line 33
    invoke-virtual {p0, p1}, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->queryMobileEventByDay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static queryEventById(Landroid/content/Context;JJ)Ljava/lang/String;
    .locals 0

    .line 39
    invoke-static {p0}, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->getInstance(Landroid/content/Context;)Ltct/gpdatahub/sdk/internal/UploadSdkManager;

    move-result-object p0

    .line 40
    invoke-virtual {p0, p1, p2, p3, p4}, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->queryMobileEventById(JJ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static queryFailedAndUnUploadByDate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 79
    sget-object v1, Ltct/gpdatahub/sdk/gpupload/db/DataHubProviderHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[queryFailedAndUnploadByDate]: startDate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", endDate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-static {p0}, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->getInstance(Landroid/content/Context;)Ltct/gpdatahub/sdk/internal/UploadSdkManager;

    move-result-object p0

    .line 82
    invoke-virtual {p0, p1, p2, p3}, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->queryNeedToUploadByDateAndFailTimes(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 85
    sget-object p1, Ltct/gpdatahub/sdk/gpupload/db/DataHubProviderHelper;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "[queryFailedAndUnploadByDate]:  queryModels="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ltct/gpdatahub/sdk/models/UploadModel;

    if-eqz p1, :cond_0

    .line 88
    invoke-virtual {p1}, Ltct/gpdatahub/sdk/models/UploadModel;->getDay()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 89
    sget-object p2, Ltct/gpdatahub/sdk/gpupload/db/DataHubProviderHelper;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[queryFailedAndUnploadByDate]: model="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-virtual {p1}, Ltct/gpdatahub/sdk/models/UploadModel;->getDay()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 91
    sget-object p2, Ltct/gpdatahub/sdk/gpupload/db/DataHubProviderHelper;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[queryFailedAndUnploadByDate]: unUpload Day="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ltct/gpdatahub/sdk/models/UploadModel;->getDay()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-virtual {p1}, Ltct/gpdatahub/sdk/models/UploadModel;->getDay()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static queryFailedTimes(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    .line 60
    invoke-static {p0}, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->getInstance(Landroid/content/Context;)Ltct/gpdatahub/sdk/internal/UploadSdkManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->queryUploadByDay(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 62
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 64
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ltct/gpdatahub/sdk/models/UploadModel;

    invoke-virtual {p0}, Ltct/gpdatahub/sdk/models/UploadModel;->getUpload_fail_times()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public static queryFailedUpload(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 333
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 334
    sget-object v1, Ltct/gpdatahub/sdk/gpupload/db/DataHubProviderHelper;->TAG:Ljava/lang/String;

    const-string v2, "[queryFailedUpload]:"

    invoke-static {v1, v2}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    invoke-static {p0}, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->getInstance(Landroid/content/Context;)Ltct/gpdatahub/sdk/internal/UploadSdkManager;

    move-result-object p0

    .line 336
    invoke-virtual {p0}, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->queryFailedUpload()Ljava/util/List;

    move-result-object p0

    .line 337
    invoke-static {p0, v0}, Ltct/gpdatahub/sdk/gpupload/db/DataHubProviderHelper;->convertModelListToDateList(Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public static queryFailedUploadByDate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 352
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 353
    sget-object v1, Ltct/gpdatahub/sdk/gpupload/db/DataHubProviderHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[queryFailedUploadByDate]: startDate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", endDate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    invoke-static {p0}, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->getInstance(Landroid/content/Context;)Ltct/gpdatahub/sdk/internal/UploadSdkManager;

    move-result-object p0

    .line 356
    invoke-virtual {p0, p1, p2}, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->queryFailedUploadByDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 357
    invoke-static {p0, v0}, Ltct/gpdatahub/sdk/gpupload/db/DataHubProviderHelper;->convertModelListToDateList(Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public static queryFixedRec(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 26
    invoke-static {p0}, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->getInstance(Landroid/content/Context;)Ltct/gpdatahub/sdk/internal/UploadSdkManager;

    move-result-object p0

    .line 27
    invoke-virtual {p0}, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->queryRecordDateMobileEvent()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static queryMobileEventById(Landroid/content/Context;JJ)Ljava/lang/String;
    .locals 0

    .line 46
    invoke-static {p0}, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->getInstance(Landroid/content/Context;)Ltct/gpdatahub/sdk/internal/UploadSdkManager;

    move-result-object p0

    .line 47
    invoke-virtual {p0, p1, p2, p3, p4}, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->queryMobileEventById(JJ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static queryNewestMobileEventId(Landroid/content/Context;)J
    .locals 2

    .line 264
    sget-object v0, Ltct/gpdatahub/sdk/gpupload/db/DataHubProviderHelper;->TAG:Ljava/lang/String;

    const-string v1, "[queryNewestEventId]:"

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    invoke-static {p0}, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->getInstance(Landroid/content/Context;)Ltct/gpdatahub/sdk/internal/UploadSdkManager;

    move-result-object p0

    .line 267
    invoke-virtual {p0}, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->queryNewestMobileEventId()J

    move-result-wide v0

    return-wide v0
.end method

.method public static querySuccessUploadByDate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 316
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 317
    sget-object v1, Ltct/gpdatahub/sdk/gpupload/db/DataHubProviderHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[querySuccessUploadByDate]: startDate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", endDate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    invoke-static {p0}, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->getInstance(Landroid/content/Context;)Ltct/gpdatahub/sdk/internal/UploadSdkManager;

    move-result-object p0

    .line 320
    invoke-virtual {p0, p1, p2}, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->querySuccessUploadByDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 321
    invoke-static {p0, v0}, Ltct/gpdatahub/sdk/gpupload/db/DataHubProviderHelper;->convertModelListToDateList(Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public static querySuccessUploadDate(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 279
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 280
    sget-object v1, Ltct/gpdatahub/sdk/gpupload/db/DataHubProviderHelper;->TAG:Ljava/lang/String;

    const-string v2, "[querySuccessUpload]:"

    invoke-static {v1, v2}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    invoke-static {p0}, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->getInstance(Landroid/content/Context;)Ltct/gpdatahub/sdk/internal/UploadSdkManager;

    move-result-object p0

    .line 282
    invoke-virtual {p0}, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->querySuccessUpload()Ljava/util/List;

    move-result-object p0

    .line 283
    invoke-static {p0, v0}, Ltct/gpdatahub/sdk/gpupload/db/DataHubProviderHelper;->convertModelListToDateList(Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public static querySuccessUploadTime(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 293
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 294
    sget-object v1, Ltct/gpdatahub/sdk/gpupload/db/DataHubProviderHelper;->TAG:Ljava/lang/String;

    const-string v2, "[querySuccessUploadTime]:"

    invoke-static {v1, v2}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    invoke-static {p0}, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->getInstance(Landroid/content/Context;)Ltct/gpdatahub/sdk/internal/UploadSdkManager;

    move-result-object p0

    .line 296
    invoke-virtual {p0}, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->querySuccessUpload()Ljava/util/List;

    move-result-object p0

    .line 297
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltct/gpdatahub/sdk/models/UploadModel;

    if-eqz v1, :cond_0

    .line 298
    invoke-virtual {v1}, Ltct/gpdatahub/sdk/models/UploadModel;->getLast_upload_time()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 299
    sget-object v2, Ltct/gpdatahub/sdk/gpupload/db/DataHubProviderHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[querySuccessUploadTime]: model="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    sget-object v2, Ltct/gpdatahub/sdk/gpupload/db/DataHubProviderHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[querySuccessUploadTime]: uploadTime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ltct/gpdatahub/sdk/models/UploadModel;->getLast_upload_time()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    invoke-virtual {v1}, Ltct/gpdatahub/sdk/models/UploadModel;->getLast_upload_time()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static queryTaskFlag(Landroid/content/Context;Ljava/lang/String;)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public static queryTaskFlagByStartId(Landroid/content/Context;J)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public static queryUploadProcess(Landroid/content/Context;Ljava/lang/String;)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method
