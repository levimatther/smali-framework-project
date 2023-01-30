.class public abstract Lcom/tct/cs/services/rcs/provisioning/IProvisioningService$Stub;
.super Landroid/os/Binder;
.source "IProvisioningService.java"

# interfaces
.implements Lcom/tct/cs/services/rcs/provisioning/IProvisioningService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tct/cs/services/rcs/provisioning/IProvisioningService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tct/cs/services/rcs/provisioning/IProvisioningService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.tct.cs.services.rcs.provisioning.IProvisioningService"

.field static final TRANSACTION_addEventListener:I = 0x3

.field static final TRANSACTION_addProvisioningListerer:I = 0x7

.field static final TRANSACTION_getCommonConfiguration:I = 0x6

.field static final TRANSACTION_getProvisioningState:I = 0xd

.field static final TRANSACTION_getServiceRegistrationReasonCode:I = 0x2

.field static final TRANSACTION_getServiceVersion:I = 0x5

.field static final TRANSACTION_getUserMessages:I = 0xc

.field static final TRANSACTION_isServiceRegistered:I = 0x1

.field static final TRANSACTION_isShowConidtionMsg:I = 0xb

.field static final TRANSACTION_onSendAcceptConfirmationResponse:I = 0x9

.field static final TRANSACTION_onSendRejectConfirmationResponse:I = 0xa

.field static final TRANSACTION_removeEventListener:I = 0x4

.field static final TRANSACTION_removeProvisioningListener:I = 0x8

.field static final TRANSACTION_setEndUserReceiverComponent:I = 0xe


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 70
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.tct.cs.services.rcs.provisioning.IProvisioningService"

    .line 71
    invoke-virtual {p0, p0, v0}, Lcom/tct/cs/services/rcs/provisioning/IProvisioningService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/tct/cs/services/rcs/provisioning/IProvisioningService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.tct.cs.services.rcs.provisioning.IProvisioningService"

    .line 82
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 83
    instance-of v1, v0, Lcom/tct/cs/services/rcs/provisioning/IProvisioningService;

    if-eqz v1, :cond_1

    .line 84
    check-cast v0, Lcom/tct/cs/services/rcs/provisioning/IProvisioningService;

    return-object v0

    .line 86
    :cond_1
    new-instance v0, Lcom/tct/cs/services/rcs/provisioning/IProvisioningService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/tct/cs/services/rcs/provisioning/IProvisioningService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/tct/cs/services/rcs/provisioning/IProvisioningService;
    .locals 1

    .line 571
    sget-object v0, Lcom/tct/cs/services/rcs/provisioning/IProvisioningService$Stub$Proxy;->sDefaultImpl:Lcom/tct/cs/services/rcs/provisioning/IProvisioningService;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/tct/cs/services/rcs/provisioning/IProvisioningService;)Z
    .locals 1

    .line 561
    sget-object v0, Lcom/tct/cs/services/rcs/provisioning/IProvisioningService$Stub$Proxy;->sDefaultImpl:Lcom/tct/cs/services/rcs/provisioning/IProvisioningService;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 565
    sput-object p0, Lcom/tct/cs/services/rcs/provisioning/IProvisioningService$Stub$Proxy;->sDefaultImpl:Lcom/tct/cs/services/rcs/provisioning/IProvisioningService;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 562
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "setDefaultImpl() called twice"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "com.tct.cs.services.rcs.provisioning.IProvisioningService"

    if-eq p1, v0, :cond_4

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 239
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 228
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 232
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 233
    invoke-virtual {p0, p1, p2}, Lcom/tct/cs/services/rcs/provisioning/IProvisioningService$Stub;->setEndUserReceiverComponent(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 220
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p0}, Lcom/tct/cs/services/rcs/provisioning/IProvisioningService$Stub;->getProvisioningState()I

    move-result p1

    .line 222
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 206
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0}, Lcom/tct/cs/services/rcs/provisioning/IProvisioningService$Stub;->getUserMessages()Lcom/tct/cs/services/rcs/provisioning/UserMessages;

    move-result-object p1

    .line 208
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_0

    .line 210
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 211
    invoke-virtual {p1, p3, v1}, Lcom/tct/cs/services/rcs/provisioning/UserMessages;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 214
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v1

    .line 198
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p0}, Lcom/tct/cs/services/rcs/provisioning/IProvisioningService$Stub;->isShowConidtionMsg()Z

    move-result p1

    .line 200
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 185
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 189
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 191
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_1

    move v0, v1

    .line 192
    :cond_1
    invoke-virtual {p0, p1, p4, v0}, Lcom/tct/cs/services/rcs/provisioning/IProvisioningService$Stub;->onSendRejectConfirmationResponse(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 193
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 172
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 178
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_2

    move v0, v1

    .line 179
    :cond_2
    invoke-virtual {p0, p1, p4, v0}, Lcom/tct/cs/services/rcs/provisioning/IProvisioningService$Stub;->onSendAcceptConfirmationResponse(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 180
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 163
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/tct/cs/services/rcs/provisioning/IProvisioningListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tct/cs/services/rcs/provisioning/IProvisioningListener;

    move-result-object p1

    .line 166
    invoke-virtual {p0, p1}, Lcom/tct/cs/services/rcs/provisioning/IProvisioningService$Stub;->removeProvisioningListener(Lcom/tct/cs/services/rcs/provisioning/IProvisioningListener;)V

    .line 167
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 154
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/tct/cs/services/rcs/provisioning/IProvisioningListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tct/cs/services/rcs/provisioning/IProvisioningListener;

    move-result-object p1

    .line 157
    invoke-virtual {p0, p1}, Lcom/tct/cs/services/rcs/provisioning/IProvisioningService$Stub;->addProvisioningListerer(Lcom/tct/cs/services/rcs/provisioning/IProvisioningListener;)V

    .line 158
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 146
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Lcom/tct/cs/services/rcs/provisioning/IProvisioningService$Stub;->getCommonConfiguration()Lcom/gsma/services/rcs/ICommonServiceConfiguration;

    move-result-object p1

    .line 148
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_3

    .line 149
    invoke-interface {p1}, Lcom/gsma/services/rcs/ICommonServiceConfiguration;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v1

    .line 138
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Lcom/tct/cs/services/rcs/provisioning/IProvisioningService$Stub;->getServiceVersion()I

    move-result p1

    .line 140
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 129
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;

    move-result-object p1

    .line 132
    invoke-virtual {p0, p1}, Lcom/tct/cs/services/rcs/provisioning/IProvisioningService$Stub;->removeEventListener(Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;)V

    .line 133
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 120
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;

    move-result-object p1

    .line 123
    invoke-virtual {p0, p1}, Lcom/tct/cs/services/rcs/provisioning/IProvisioningService$Stub;->addEventListener(Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;)V

    .line 124
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 112
    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Lcom/tct/cs/services/rcs/provisioning/IProvisioningService$Stub;->getServiceRegistrationReasonCode()I

    move-result p1

    .line 114
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 104
    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Lcom/tct/cs/services/rcs/provisioning/IProvisioningService$Stub;->isServiceRegistered()Z

    move-result p1

    .line 106
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 99
    :cond_4
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
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
