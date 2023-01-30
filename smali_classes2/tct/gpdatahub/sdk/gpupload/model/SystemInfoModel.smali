.class public Ltct/gpdatahub/sdk/gpupload/model/SystemInfoModel;
.super Ljava/lang/Object;
.source "SystemInfoModel.java"


# instance fields
.field private androidVersion:Ljava/lang/String;

.field private brand:Ljava/lang/String;

.field private deviceName:Ljava/lang/String;

.field private deviceType:I

.field private isRomDevice:Z

.field private mcc:Ljava/lang/String;

.field private model:Ljava/lang/String;

.field private romVersion:Ljava/lang/String;

.field private timeZone:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAndroidVersion()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/model/SystemInfoModel;->androidVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getBrand()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/model/SystemInfoModel;->brand:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/model/SystemInfoModel;->deviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceType()I
    .locals 1

    .line 88
    iget v0, p0, Ltct/gpdatahub/sdk/gpupload/model/SystemInfoModel;->deviceType:I

    return v0
.end method

.method public getIsRomDevice()Z
    .locals 1

    .line 76
    iget-boolean v0, p0, Ltct/gpdatahub/sdk/gpupload/model/SystemInfoModel;->isRomDevice:Z

    return v0
.end method

.method public getMcc()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/model/SystemInfoModel;->mcc:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/model/SystemInfoModel;->model:Ljava/lang/String;

    return-object v0
.end method

.method public getRomVersion()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/model/SystemInfoModel;->romVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeZone()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/model/SystemInfoModel;->timeZone:Ljava/lang/String;

    return-object v0
.end method

.method public setAndroidVersion(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Ltct/gpdatahub/sdk/gpupload/model/SystemInfoModel;->androidVersion:Ljava/lang/String;

    return-void
.end method

.method public setBrand(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Ltct/gpdatahub/sdk/gpupload/model/SystemInfoModel;->brand:Ljava/lang/String;

    return-void
.end method

.method public setDeviceName(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Ltct/gpdatahub/sdk/gpupload/model/SystemInfoModel;->deviceName:Ljava/lang/String;

    return-void
.end method

.method public setDeviceType(I)V
    .locals 0

    .line 84
    iput p1, p0, Ltct/gpdatahub/sdk/gpupload/model/SystemInfoModel;->deviceType:I

    return-void
.end method

.method public setIsRomDevice(Z)V
    .locals 0

    .line 80
    iput-boolean p1, p0, Ltct/gpdatahub/sdk/gpupload/model/SystemInfoModel;->isRomDevice:Z

    return-void
.end method

.method public setMcc(Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Ltct/gpdatahub/sdk/gpupload/model/SystemInfoModel;->mcc:Ljava/lang/String;

    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Ltct/gpdatahub/sdk/gpupload/model/SystemInfoModel;->model:Ljava/lang/String;

    return-void
.end method

.method public setRomVersion(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Ltct/gpdatahub/sdk/gpupload/model/SystemInfoModel;->romVersion:Ljava/lang/String;

    return-void
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Ltct/gpdatahub/sdk/gpupload/model/SystemInfoModel;->timeZone:Ljava/lang/String;

    return-void
.end method
