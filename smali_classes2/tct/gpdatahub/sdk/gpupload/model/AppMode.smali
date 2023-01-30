.class public Ltct/gpdatahub/sdk/gpupload/model/AppMode;
.super Ljava/lang/Object;
.source "AppMode.java"


# instance fields
.field private appInstallSource:Ljava/lang/String;

.field private appInstallTime:J

.field private appLastUpdateTime:J

.field private appName:Ljava/lang/String;

.field private appVersion:Ljava/lang/String;

.field private lastTimeUsed:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private restrictStatus:Ljava/lang/String;

.field private usageTime:Ljava/lang/String;

.field private userAppFlag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppInstallSource()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/model/AppMode;->appInstallSource:Ljava/lang/String;

    return-object v0
.end method

.method public getAppInstallTime()J
    .locals 2

    .line 49
    iget-wide v0, p0, Ltct/gpdatahub/sdk/gpupload/model/AppMode;->appInstallTime:J

    return-wide v0
.end method

.method public getAppLastUpdateTime()J
    .locals 2

    .line 57
    iget-wide v0, p0, Ltct/gpdatahub/sdk/gpupload/model/AppMode;->appLastUpdateTime:J

    return-wide v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/model/AppMode;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/model/AppMode;->appVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getLastTimeUsed()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/model/AppMode;->lastTimeUsed:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/model/AppMode;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getRestrictStatus()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/model/AppMode;->restrictStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getUsageTime()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/model/AppMode;->usageTime:Ljava/lang/String;

    return-object v0
.end method

.method public getUserAppFlag()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/model/AppMode;->userAppFlag:Ljava/lang/String;

    return-object v0
.end method

.method public setAppInstallSource(Ljava/lang/String;)V
    .locals 0

    .line 69
    iput-object p1, p0, Ltct/gpdatahub/sdk/gpupload/model/AppMode;->appInstallSource:Ljava/lang/String;

    return-void
.end method

.method public setAppInstallTime(J)V
    .locals 0

    .line 53
    iput-wide p1, p0, Ltct/gpdatahub/sdk/gpupload/model/AppMode;->appInstallTime:J

    return-void
.end method

.method public setAppLastUpdateTime(J)V
    .locals 0

    .line 61
    iput-wide p1, p0, Ltct/gpdatahub/sdk/gpupload/model/AppMode;->appLastUpdateTime:J

    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Ltct/gpdatahub/sdk/gpupload/model/AppMode;->appName:Ljava/lang/String;

    return-void
.end method

.method public setAppVersion(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Ltct/gpdatahub/sdk/gpupload/model/AppMode;->appVersion:Ljava/lang/String;

    return-void
.end method

.method public setLastTimeUsed(Ljava/lang/String;)V
    .locals 0

    .line 77
    iput-object p1, p0, Ltct/gpdatahub/sdk/gpupload/model/AppMode;->lastTimeUsed:Ljava/lang/String;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Ltct/gpdatahub/sdk/gpupload/model/AppMode;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setRestrictStatus(Ljava/lang/String;)V
    .locals 0

    .line 85
    iput-object p1, p0, Ltct/gpdatahub/sdk/gpupload/model/AppMode;->restrictStatus:Ljava/lang/String;

    return-void
.end method

.method public setUsageTime(Ljava/lang/String;)V
    .locals 0

    .line 93
    iput-object p1, p0, Ltct/gpdatahub/sdk/gpupload/model/AppMode;->usageTime:Ljava/lang/String;

    return-void
.end method

.method public setUserAppFlag(Ljava/lang/String;)V
    .locals 0

    .line 101
    iput-object p1, p0, Ltct/gpdatahub/sdk/gpupload/model/AppMode;->userAppFlag:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppMode{appName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/model/AppMode;->appName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", appVersion=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltct/gpdatahub/sdk/gpupload/model/AppMode;->appVersion:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", appInstallTime=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Ltct/gpdatahub/sdk/gpupload/model/AppMode;->appInstallTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", appLastUpdateTime=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Ltct/gpdatahub/sdk/gpupload/model/AppMode;->appLastUpdateTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", appInstallSource=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltct/gpdatahub/sdk/gpupload/model/AppMode;->appInstallSource:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", packageName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltct/gpdatahub/sdk/gpupload/model/AppMode;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", lastTimeUsed=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltct/gpdatahub/sdk/gpupload/model/AppMode;->lastTimeUsed:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", restrictStatus=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltct/gpdatahub/sdk/gpupload/model/AppMode;->restrictStatus:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", usageTime=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltct/gpdatahub/sdk/gpupload/model/AppMode;->usageTime:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", userAppFlag=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltct/gpdatahub/sdk/gpupload/model/AppMode;->userAppFlag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
