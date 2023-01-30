.class public Lcom/tct/cs/services/rcs/chatbot/message/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# instance fields
.field private batteryRemainingMinutes:Ljava/lang/String;

.field private clientVendor:Ljava/lang/String;

.field private clientVersion:Ljava/lang/String;

.field private deviceModel:Ljava/lang/String;

.field private platformVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBatteryRemainingMinutes()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/message/DeviceInfo;->batteryRemainingMinutes:Ljava/lang/String;

    return-object v0
.end method

.method public getClientVendor()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/message/DeviceInfo;->clientVendor:Ljava/lang/String;

    return-object v0
.end method

.method public getClientVersion()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/message/DeviceInfo;->clientVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceModel()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/message/DeviceInfo;->deviceModel:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatformVersion()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/message/DeviceInfo;->platformVersion:Ljava/lang/String;

    return-object v0
.end method

.method public setBatteryRemainingMinutes(Ljava/lang/String;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/tct/cs/services/rcs/chatbot/message/DeviceInfo;->batteryRemainingMinutes:Ljava/lang/String;

    return-void
.end method

.method public setClientVendor(Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/tct/cs/services/rcs/chatbot/message/DeviceInfo;->clientVendor:Ljava/lang/String;

    return-void
.end method

.method public setClientVersion(Ljava/lang/String;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/tct/cs/services/rcs/chatbot/message/DeviceInfo;->clientVersion:Ljava/lang/String;

    return-void
.end method

.method public setDeviceModel(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/tct/cs/services/rcs/chatbot/message/DeviceInfo;->deviceModel:Ljava/lang/String;

    return-void
.end method

.method public setPlatformVersion(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/tct/cs/services/rcs/chatbot/message/DeviceInfo;->platformVersion:Ljava/lang/String;

    return-void
.end method
