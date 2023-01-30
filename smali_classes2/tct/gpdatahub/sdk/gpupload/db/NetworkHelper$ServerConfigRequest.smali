.class Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$ServerConfigRequest;
.super Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$RequestThreeTime;
.source "NetworkHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ServerConfigRequest"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ServerConfigRequest"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;IILandroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 128
    invoke-direct/range {v0 .. v6}, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$ServerConfigRequest;-><init>(Landroid/content/Context;Landroid/os/Handler;IILandroid/os/Bundle;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;IILandroid/os/Bundle;I)V
    .locals 8

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    move v7, p6

    .line 133
    invoke-direct/range {v0 .. v7}, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$RequestThreeTime;-><init>(Landroid/content/Context;Landroid/os/Handler;IILjava/lang/String;Landroid/os/Bundle;I)V

    return-void
.end method


# virtual methods
.method getNewSubInstance()Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$RequestThreeTime;
    .locals 8

    .line 196
    new-instance v7, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$ServerConfigRequest;

    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$ServerConfigRequest;->mContext:Landroid/content/Context;

    iget-object v2, p0, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$ServerConfigRequest;->mHandler:Landroid/os/Handler;

    iget v3, p0, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$ServerConfigRequest;->mSuccessMsg:I

    iget v4, p0, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$ServerConfigRequest;->mFailedMsg:I

    iget-object v5, p0, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$ServerConfigRequest;->mBundle:Landroid/os/Bundle;

    iget v0, p0, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$ServerConfigRequest;->mTryCount:I

    add-int/lit8 v6, v0, 0x1

    iput v6, p0, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$ServerConfigRequest;->mTryCount:I

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$ServerConfigRequest;-><init>(Landroid/content/Context;Landroid/os/Handler;IILandroid/os/Bundle;I)V

    return-object v7
.end method

.method varargs runImp([Ljava/lang/Object;)Ltct/gpdatahub/sdk/gpupload/upload/model/Response;
    .locals 5

    .line 139
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "id is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ServerConfigRequest"

    invoke-static {v0, p1}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss:SSS"

    invoke-direct {p1, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 141
    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$ServerConfigRequest;->mBundle:Landroid/os/Bundle;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 142
    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$ServerConfigRequest;->mBundle:Landroid/os/Bundle;

    const-string v3, "url"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 143
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v2, v1

    .line 147
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 148
    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$ServerConfigRequest;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 149
    iget-object v2, p0, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$ServerConfigRequest;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Ltct/gpdatahub/sdk/gpupload/upload/ServerManager;->getUrlForServerConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 152
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getJsonByInternet start  time  is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", urlPath="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 152
    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    new-instance v1, Ltct/gpdatahub/sdk/gpupload/upload/model/Response;

    invoke-direct {v1}, Ltct/gpdatahub/sdk/gpupload/upload/model/Response;-><init>()V

    .line 181
    invoke-static {v2}, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper;->access$000(Ljava/lang/String;)Ltct/gpdatahub/sdk/gpupload/upload/model/Response;

    move-result-object v1

    .line 183
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getJsonByInternet  end time  is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", resultCode="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ltct/gpdatahub/sdk/gpupload/upload/model/Response;->getResultCode()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 183
    invoke-static {v0, p1}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-virtual {v1}, Ltct/gpdatahub/sdk/gpupload/upload/model/Response;->getResultCode()I

    move-result p1

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_2

    .line 187
    invoke-virtual {v1, v0}, Ltct/gpdatahub/sdk/gpupload/upload/model/Response;->setProtocolCode(I)V

    :cond_2
    return-object v1
.end method
