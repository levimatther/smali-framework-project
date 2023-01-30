.class public Lcom/tct/cs/services/rcs/chatbot/message/action/DeviceAction;
.super Lcom/tct/cs/services/rcs/chatbot/message/action/Action;
.source "DeviceAction.java"


# static fields
.field public static final ACTION_requestDeviceSpecifics:Ljava/lang/String; = "requestDeviceSpecifics"


# direct methods
.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/tct/cs/services/rcs/chatbot/message/action/Action;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "requestDeviceSpecifics"

    .line 37
    invoke-direct {p0, v0, p1, p2}, Lcom/tct/cs/services/rcs/chatbot/message/action/Action;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
