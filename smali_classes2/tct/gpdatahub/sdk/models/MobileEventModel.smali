.class public Ltct/gpdatahub/sdk/models/MobileEventModel;
.super Ljava/lang/Object;
.source "MobileEventModel.java"


# instance fields
.field private _id:J

.field private actionName:Ljava/lang/String;

.field private activityName:Ljava/lang/String;

.field private appVersion:Ljava/lang/String;

.field private duration:I

.field private errorMessage:Ljava/lang/String;

.field private errorType:Ljava/lang/String;

.field private eventId:Ljava/lang/String;

.field private eventSubType:Ljava/lang/String;

.field private eventType:Ljava/lang/String;

.field private happenTime:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private paraMap:Ljava/lang/String;

.field private paraType:I

.field private systemInfo:Ljava/lang/String;

.field private teyeId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 11
    iput-object v0, p0, Ltct/gpdatahub/sdk/models/MobileEventModel;->happenTime:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Ltct/gpdatahub/sdk/models/MobileEventModel;->packageName:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Ltct/gpdatahub/sdk/models/MobileEventModel;->teyeId:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Ltct/gpdatahub/sdk/models/MobileEventModel;->eventType:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Ltct/gpdatahub/sdk/models/MobileEventModel;->eventSubType:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Ltct/gpdatahub/sdk/models/MobileEventModel;->eventId:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Ltct/gpdatahub/sdk/models/MobileEventModel;->paraMap:Ljava/lang/String;

    const/4 v1, -0x1

    .line 20
    iput v1, p0, Ltct/gpdatahub/sdk/models/MobileEventModel;->paraType:I

    .line 21
    iput-object v0, p0, Ltct/gpdatahub/sdk/models/MobileEventModel;->appVersion:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Ltct/gpdatahub/sdk/models/MobileEventModel;->systemInfo:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Ltct/gpdatahub/sdk/models/MobileEventModel;->activityName:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Ltct/gpdatahub/sdk/models/MobileEventModel;->actionName:Ljava/lang/String;

    const/4 v1, 0x0

    .line 29
    iput v1, p0, Ltct/gpdatahub/sdk/models/MobileEventModel;->duration:I

    .line 32
    iput-object v0, p0, Ltct/gpdatahub/sdk/models/MobileEventModel;->errorType:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Ltct/gpdatahub/sdk/models/MobileEventModel;->errorMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getActionName()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Ltct/gpdatahub/sdk/models/MobileEventModel;->actionName:Ljava/lang/String;

    return-object v0
.end method

.method public getActivityName()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Ltct/gpdatahub/sdk/models/MobileEventModel;->activityName:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Ltct/gpdatahub/sdk/models/MobileEventModel;->appVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    .line 88
    iget v0, p0, Ltct/gpdatahub/sdk/models/MobileEventModel;->duration:I

    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Ltct/gpdatahub/sdk/models/MobileEventModel;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorType()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Ltct/gpdatahub/sdk/models/MobileEventModel;->errorType:Ljava/lang/String;

    return-object v0
.end method

.method public getEventId()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Ltct/gpdatahub/sdk/models/MobileEventModel;->eventId:Ljava/lang/String;

    return-object v0
.end method

.method public getEventSubType()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Ltct/gpdatahub/sdk/models/MobileEventModel;->eventSubType:Ljava/lang/String;

    return-object v0
.end method

.method public getEventType()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Ltct/gpdatahub/sdk/models/MobileEventModel;->eventType:Ljava/lang/String;

    return-object v0
.end method

.method public getHappenTime()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Ltct/gpdatahub/sdk/models/MobileEventModel;->happenTime:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .line 36
    iget-wide v0, p0, Ltct/gpdatahub/sdk/models/MobileEventModel;->_id:J

    return-wide v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Ltct/gpdatahub/sdk/models/MobileEventModel;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getParaMap()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Ltct/gpdatahub/sdk/models/MobileEventModel;->paraMap:Ljava/lang/String;

    return-object v0
.end method

.method public getParaType()I
    .locals 1

    .line 68
    iget v0, p0, Ltct/gpdatahub/sdk/models/MobileEventModel;->paraType:I

    return v0
.end method

.method public getSystemInfo()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Ltct/gpdatahub/sdk/models/MobileEventModel;->systemInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getTeyeId()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Ltct/gpdatahub/sdk/models/MobileEventModel;->teyeId:Ljava/lang/String;

    return-object v0
.end method

.method public setActionName(Ljava/lang/String;)V
    .locals 0

    .line 148
    iput-object p1, p0, Ltct/gpdatahub/sdk/models/MobileEventModel;->actionName:Ljava/lang/String;

    return-void
.end method

.method public setActivityName(Ljava/lang/String;)V
    .locals 0

    .line 144
    iput-object p1, p0, Ltct/gpdatahub/sdk/models/MobileEventModel;->activityName:Ljava/lang/String;

    return-void
.end method

.method public setAppVersion(Ljava/lang/String;)V
    .locals 0

    .line 136
    iput-object p1, p0, Ltct/gpdatahub/sdk/models/MobileEventModel;->appVersion:Ljava/lang/String;

    return-void
.end method

.method public setDuration(I)V
    .locals 0

    .line 152
    iput p1, p0, Ltct/gpdatahub/sdk/models/MobileEventModel;->duration:I

    return-void
.end method

.method public setErrorMessage(Ljava/lang/String;)V
    .locals 0

    .line 160
    iput-object p1, p0, Ltct/gpdatahub/sdk/models/MobileEventModel;->errorMessage:Ljava/lang/String;

    return-void
.end method

.method public setErrorType(Ljava/lang/String;)V
    .locals 0

    .line 156
    iput-object p1, p0, Ltct/gpdatahub/sdk/models/MobileEventModel;->errorType:Ljava/lang/String;

    return-void
.end method

.method public setEventId(Ljava/lang/String;)V
    .locals 0

    .line 116
    iput-object p1, p0, Ltct/gpdatahub/sdk/models/MobileEventModel;->eventId:Ljava/lang/String;

    return-void
.end method

.method public setEventSubType(Ljava/lang/String;)V
    .locals 0

    .line 124
    iput-object p1, p0, Ltct/gpdatahub/sdk/models/MobileEventModel;->eventSubType:Ljava/lang/String;

    return-void
.end method

.method public setEventType(Ljava/lang/String;)V
    .locals 0

    .line 120
    iput-object p1, p0, Ltct/gpdatahub/sdk/models/MobileEventModel;->eventType:Ljava/lang/String;

    return-void
.end method

.method public setHappenTime(Ljava/lang/String;)V
    .locals 0

    .line 104
    iput-object p1, p0, Ltct/gpdatahub/sdk/models/MobileEventModel;->happenTime:Ljava/lang/String;

    return-void
.end method

.method public setId(J)V
    .locals 0

    .line 100
    iput-wide p1, p0, Ltct/gpdatahub/sdk/models/MobileEventModel;->_id:J

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 108
    iput-object p1, p0, Ltct/gpdatahub/sdk/models/MobileEventModel;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setParaMap(Ljava/lang/String;)V
    .locals 0

    .line 128
    iput-object p1, p0, Ltct/gpdatahub/sdk/models/MobileEventModel;->paraMap:Ljava/lang/String;

    return-void
.end method

.method public setParaType(I)V
    .locals 0

    .line 132
    iput p1, p0, Ltct/gpdatahub/sdk/models/MobileEventModel;->paraType:I

    return-void
.end method

.method public setSystemInfo(Ljava/lang/String;)V
    .locals 0

    .line 140
    iput-object p1, p0, Ltct/gpdatahub/sdk/models/MobileEventModel;->systemInfo:Ljava/lang/String;

    return-void
.end method

.method public setTeyeId(Ljava/lang/String;)V
    .locals 0

    .line 112
    iput-object p1, p0, Ltct/gpdatahub/sdk/models/MobileEventModel;->teyeId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MobileEventModel{_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Ltct/gpdatahub/sdk/models/MobileEventModel;->_id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", happenTime=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltct/gpdatahub/sdk/models/MobileEventModel;->happenTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", packageName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltct/gpdatahub/sdk/models/MobileEventModel;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", teyeId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltct/gpdatahub/sdk/models/MobileEventModel;->teyeId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", eventType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltct/gpdatahub/sdk/models/MobileEventModel;->eventType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", eventSubType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltct/gpdatahub/sdk/models/MobileEventModel;->eventSubType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", eventId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltct/gpdatahub/sdk/models/MobileEventModel;->eventId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", paraMap=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltct/gpdatahub/sdk/models/MobileEventModel;->paraMap:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", appVersion=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltct/gpdatahub/sdk/models/MobileEventModel;->appVersion:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", systemInfo=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltct/gpdatahub/sdk/models/MobileEventModel;->systemInfo:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", activityName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltct/gpdatahub/sdk/models/MobileEventModel;->activityName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", actionName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltct/gpdatahub/sdk/models/MobileEventModel;->actionName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", duration="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ltct/gpdatahub/sdk/models/MobileEventModel;->duration:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", errorType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltct/gpdatahub/sdk/models/MobileEventModel;->errorType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", errorMessage=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltct/gpdatahub/sdk/models/MobileEventModel;->errorMessage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
