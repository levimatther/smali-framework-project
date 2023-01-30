.class public abstract Lcom/gsma/rcs/service/ipcalldraft/IIPCallService$Stub;
.super Landroid/os/Binder;
.source "IIPCallService.java"

# interfaces
.implements Lcom/gsma/rcs/service/ipcalldraft/IIPCallService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/rcs/service/ipcalldraft/IIPCallService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/rcs/service/ipcalldraft/IIPCallService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.gsma.rcs.service.ipcalldraft.IIPCallService"

.field static final TRANSACTION_addEventListener:I = 0x3

.field static final TRANSACTION_addEventListener2:I = 0xa

.field static final TRANSACTION_getCommonConfiguration:I = 0xd

.field static final TRANSACTION_getConfiguration:I = 0x5

.field static final TRANSACTION_getIPCall:I = 0x7

.field static final TRANSACTION_getIPCalls:I = 0x6

.field static final TRANSACTION_getServiceRegistrationReasonCode:I = 0x2

.field static final TRANSACTION_getServiceVersion:I = 0xc

.field static final TRANSACTION_initiateCall:I = 0x8

.field static final TRANSACTION_initiateVisioCall:I = 0x9

.field static final TRANSACTION_isServiceRegistered:I = 0x1

.field static final TRANSACTION_removeEventListener:I = 0x4

.field static final TRANSACTION_removeEventListener2:I = 0xb


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 72
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.gsma.rcs.service.ipcalldraft.IIPCallService"

    .line 73
    invoke-virtual {p0, p0, v0}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/gsma/rcs/service/ipcalldraft/IIPCallService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.gsma.rcs.service.ipcalldraft.IIPCallService"

    .line 84
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 85
    instance-of v1, v0, Lcom/gsma/rcs/service/ipcalldraft/IIPCallService;

    if-eqz v1, :cond_1

    .line 86
    check-cast v0, Lcom/gsma/rcs/service/ipcalldraft/IIPCallService;

    return-object v0

    .line 88
    :cond_1
    new-instance v0, Lcom/gsma/rcs/service/ipcalldraft/IIPCallService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/gsma/rcs/service/ipcalldraft/IIPCallService;
    .locals 1

    .line 561
    sget-object v0, Lcom/gsma/rcs/service/ipcalldraft/IIPCallService$Stub$Proxy;->sDefaultImpl:Lcom/gsma/rcs/service/ipcalldraft/IIPCallService;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/gsma/rcs/service/ipcalldraft/IIPCallService;)Z
    .locals 1

    .line 551
    sget-object v0, Lcom/gsma/rcs/service/ipcalldraft/IIPCallService$Stub$Proxy;->sDefaultImpl:Lcom/gsma/rcs/service/ipcalldraft/IIPCallService;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 555
    sput-object p0, Lcom/gsma/rcs/service/ipcalldraft/IIPCallService$Stub$Proxy;->sDefaultImpl:Lcom/gsma/rcs/service/ipcalldraft/IIPCallService;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 552
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

    const-string v2, "com.gsma.rcs.service.ipcalldraft.IIPCallService"

    if-eq p1, v0, :cond_7

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 238
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 230
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p0}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallService$Stub;->getCommonConfiguration()Lcom/gsma/services/rcs/ICommonServiceConfiguration;

    move-result-object p1

    .line 232
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_0

    .line 233
    invoke-interface {p1}, Lcom/gsma/services/rcs/ICommonServiceConfiguration;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v1

    .line 222
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p0}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallService$Stub;->getServiceVersion()I

    move-result p1

    .line 224
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 213
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/rcs/service/ipcalldraft/IIPCallListener;

    move-result-object p1

    .line 216
    invoke-virtual {p0, p1}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallService$Stub;->removeEventListener2(Lcom/gsma/rcs/service/ipcalldraft/IIPCallListener;)V

    .line 217
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 204
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/rcs/service/ipcalldraft/IIPCallListener;

    move-result-object p1

    .line 207
    invoke-virtual {p0, p1}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallService$Stub;->addEventListener2(Lcom/gsma/rcs/service/ipcalldraft/IIPCallListener;)V

    .line 208
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 185
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 188
    sget-object p1, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gsma/services/rcs/contact/ContactId;

    goto :goto_0

    :cond_1
    move-object p1, v0

    .line 194
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer;

    move-result-object p4

    .line 196
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallRenderer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/rcs/service/ipcalldraft/IIPCallRenderer;

    move-result-object p2

    .line 197
    invoke-virtual {p0, p1, p4, p2}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallService$Stub;->initiateVisioCall(Lcom/gsma/services/rcs/contact/ContactId;Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer;Lcom/gsma/rcs/service/ipcalldraft/IIPCallRenderer;)Lcom/gsma/rcs/service/ipcalldraft/IIPCall;

    move-result-object p1

    .line 198
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_2

    .line 199
    invoke-interface {p1}, Lcom/gsma/rcs/service/ipcalldraft/IIPCall;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v1

    .line 166
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    .line 169
    sget-object p1, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gsma/services/rcs/contact/ContactId;

    goto :goto_1

    :cond_3
    move-object p1, v0

    .line 175
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer;

    move-result-object p4

    .line 177
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallRenderer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/rcs/service/ipcalldraft/IIPCallRenderer;

    move-result-object p2

    .line 178
    invoke-virtual {p0, p1, p4, p2}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallService$Stub;->initiateCall(Lcom/gsma/services/rcs/contact/ContactId;Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer;Lcom/gsma/rcs/service/ipcalldraft/IIPCallRenderer;)Lcom/gsma/rcs/service/ipcalldraft/IIPCall;

    move-result-object p1

    .line 179
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_4

    .line 180
    invoke-interface {p1}, Lcom/gsma/rcs/service/ipcalldraft/IIPCall;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v1

    .line 156
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 159
    invoke-virtual {p0, p1}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallService$Stub;->getIPCall(Ljava/lang/String;)Lcom/gsma/rcs/service/ipcalldraft/IIPCall;

    move-result-object p1

    .line 160
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_5

    .line 161
    invoke-interface {p1}, Lcom/gsma/rcs/service/ipcalldraft/IIPCall;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v1

    .line 148
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallService$Stub;->getIPCalls()Ljava/util/List;

    move-result-object p1

    .line 150
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBinderList(Ljava/util/List;)V

    return v1

    .line 140
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallService$Stub;->getConfiguration()Lcom/gsma/rcs/service/ipcalldraft/IIPCallServiceConfiguration;

    move-result-object p1

    .line 142
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_6

    .line 143
    invoke-interface {p1}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallServiceConfiguration;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v1

    .line 131
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;

    move-result-object p1

    .line 134
    invoke-virtual {p0, p1}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallService$Stub;->removeEventListener(Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;)V

    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 122
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;

    move-result-object p1

    .line 125
    invoke-virtual {p0, p1}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallService$Stub;->addEventListener(Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;)V

    .line 126
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 114
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallService$Stub;->getServiceRegistrationReasonCode()I

    move-result p1

    .line 116
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 106
    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallService$Stub;->isServiceRegistered()Z

    move-result p1

    .line 108
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 101
    :cond_7
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
