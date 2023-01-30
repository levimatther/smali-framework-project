.class public abstract Lcom/gsma/services/rcs/standalone/IStandaloneService$Stub;
.super Landroid/os/Binder;
.source "IStandaloneService.java"

# interfaces
.implements Lcom/gsma/services/rcs/standalone/IStandaloneService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/standalone/IStandaloneService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/standalone/IStandaloneService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.gsma.services.rcs.standalone.IStandaloneService"

.field static final TRANSACTION_addEventListener:I = 0x2

.field static final TRANSACTION_addStandaloneEventListener:I = 0x4

.field static final TRANSACTION_deleteMessage:I = 0xa

.field static final TRANSACTION_getServiceVersion:I = 0x7

.field static final TRANSACTION_getStandaloneMessage:I = 0x8

.field static final TRANSACTION_isAllowedToSendStandaloneMessage:I = 0x9

.field static final TRANSACTION_isServiceRegistered:I = 0x1

.field static final TRANSACTION_markMessageAsRead:I = 0x6

.field static final TRANSACTION_reSendStandaloneMessage:I = 0xe

.field static final TRANSACTION_removeEventListener:I = 0x3

.field static final TRANSACTION_removeStandaloneEventListener:I = 0x5

.field static final TRANSACTION_sendStandaloneMessage:I = 0xb

.field static final TRANSACTION_sendStandaloneMessage2:I = 0xd

.field static final TRANSACTION_sendStandaloneMessageToGroup:I = 0xc


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.gsma.services.rcs.standalone.IStandaloneService"

    .line 72
    invoke-virtual {p0, p0, v0}, Lcom/gsma/services/rcs/standalone/IStandaloneService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/standalone/IStandaloneService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.gsma.services.rcs.standalone.IStandaloneService"

    .line 83
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 84
    instance-of v1, v0, Lcom/gsma/services/rcs/standalone/IStandaloneService;

    if-eqz v1, :cond_1

    .line 85
    check-cast v0, Lcom/gsma/services/rcs/standalone/IStandaloneService;

    return-object v0

    .line 87
    :cond_1
    new-instance v0, Lcom/gsma/services/rcs/standalone/IStandaloneService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/gsma/services/rcs/standalone/IStandaloneService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/gsma/services/rcs/standalone/IStandaloneService;
    .locals 1

    .line 628
    sget-object v0, Lcom/gsma/services/rcs/standalone/IStandaloneService$Stub$Proxy;->sDefaultImpl:Lcom/gsma/services/rcs/standalone/IStandaloneService;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/gsma/services/rcs/standalone/IStandaloneService;)Z
    .locals 1

    .line 618
    sget-object v0, Lcom/gsma/services/rcs/standalone/IStandaloneService$Stub$Proxy;->sDefaultImpl:Lcom/gsma/services/rcs/standalone/IStandaloneService;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 622
    sput-object p0, Lcom/gsma/services/rcs/standalone/IStandaloneService$Stub$Proxy;->sDefaultImpl:Lcom/gsma/services/rcs/standalone/IStandaloneService;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 619
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

    const-string v2, "com.gsma.services.rcs.standalone.IStandaloneService"

    if-eq p1, v0, :cond_a

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 266
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 256
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 259
    invoke-virtual {p0, p1}, Lcom/gsma/services/rcs/standalone/IStandaloneService$Stub;->reSendStandaloneMessage(Ljava/lang/String;)Lcom/gsma/services/rcs/standalone/IStandaloneMessage;

    move-result-object p1

    .line 260
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_0

    .line 261
    invoke-interface {p1}, Lcom/gsma/services/rcs/standalone/IStandaloneMessage;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v1

    .line 232
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 236
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_1

    .line 237
    sget-object p4, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/gsma/services/rcs/contact/ContactId;

    goto :goto_0

    :cond_1
    move-object p4, v0

    .line 243
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    .line 244
    sget-object v2, Lcom/gsma/services/rcs/standalone/StandaloneMessageEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/gsma/services/rcs/standalone/StandaloneMessageEntity;

    goto :goto_1

    :cond_2
    move-object p2, v0

    .line 249
    :goto_1
    invoke-virtual {p0, p1, p4, p2}, Lcom/gsma/services/rcs/standalone/IStandaloneService$Stub;->sendStandaloneMessage2(Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;Lcom/gsma/services/rcs/standalone/StandaloneMessageEntity;)Lcom/gsma/services/rcs/standalone/IStandaloneMessage;

    move-result-object p1

    .line 250
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_3

    .line 251
    invoke-interface {p1}, Lcom/gsma/services/rcs/standalone/IStandaloneMessage;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v1

    .line 215
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 219
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_4

    .line 220
    sget-object p4, Lcom/gsma/services/rcs/standalone/StandaloneMessageEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/gsma/services/rcs/standalone/StandaloneMessageEntity;

    goto :goto_2

    :cond_4
    move-object p2, v0

    .line 225
    :goto_2
    invoke-virtual {p0, p1, p2}, Lcom/gsma/services/rcs/standalone/IStandaloneService$Stub;->sendStandaloneMessageToGroup(Ljava/lang/String;Lcom/gsma/services/rcs/standalone/StandaloneMessageEntity;)Lcom/gsma/services/rcs/standalone/IStandaloneMessage;

    move-result-object p1

    .line 226
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_5

    .line 227
    invoke-interface {p1}, Lcom/gsma/services/rcs/standalone/IStandaloneMessage;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v1

    .line 193
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_6

    .line 196
    sget-object p1, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gsma/services/rcs/contact/ContactId;

    goto :goto_3

    :cond_6
    move-object p1, v0

    .line 202
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_7

    .line 203
    sget-object p4, Lcom/gsma/services/rcs/standalone/StandaloneMessageEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/gsma/services/rcs/standalone/StandaloneMessageEntity;

    goto :goto_4

    :cond_7
    move-object p2, v0

    .line 208
    :goto_4
    invoke-virtual {p0, p1, p2}, Lcom/gsma/services/rcs/standalone/IStandaloneService$Stub;->sendStandaloneMessage(Lcom/gsma/services/rcs/contact/ContactId;Lcom/gsma/services/rcs/standalone/StandaloneMessageEntity;)Lcom/gsma/services/rcs/standalone/IStandaloneMessage;

    move-result-object p1

    .line 209
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_8

    .line 210
    invoke-interface {p1}, Lcom/gsma/services/rcs/standalone/IStandaloneMessage;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_8
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v1

    .line 184
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 187
    invoke-virtual {p0, p1}, Lcom/gsma/services/rcs/standalone/IStandaloneService$Stub;->deleteMessage(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 176
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p0}, Lcom/gsma/services/rcs/standalone/IStandaloneService$Stub;->isAllowedToSendStandaloneMessage()Z

    move-result p1

    .line 178
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 166
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 169
    invoke-virtual {p0, p1}, Lcom/gsma/services/rcs/standalone/IStandaloneService$Stub;->getStandaloneMessage(Ljava/lang/String;)Lcom/gsma/services/rcs/standalone/IStandaloneMessage;

    move-result-object p1

    .line 170
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_9

    .line 171
    invoke-interface {p1}, Lcom/gsma/services/rcs/standalone/IStandaloneMessage;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_9
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v1

    .line 158
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0}, Lcom/gsma/services/rcs/standalone/IStandaloneService$Stub;->getServiceVersion()I

    move-result p1

    .line 160
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 149
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 152
    invoke-virtual {p0, p1}, Lcom/gsma/services/rcs/standalone/IStandaloneService$Stub;->markMessageAsRead(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 140
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/gsma/services/rcs/standalone/IStandaloneListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/standalone/IStandaloneListener;

    move-result-object p1

    .line 143
    invoke-virtual {p0, p1}, Lcom/gsma/services/rcs/standalone/IStandaloneService$Stub;->removeStandaloneEventListener(Lcom/gsma/services/rcs/standalone/IStandaloneListener;)V

    .line 144
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 131
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/gsma/services/rcs/standalone/IStandaloneListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/standalone/IStandaloneListener;

    move-result-object p1

    .line 134
    invoke-virtual {p0, p1}, Lcom/gsma/services/rcs/standalone/IStandaloneService$Stub;->addStandaloneEventListener(Lcom/gsma/services/rcs/standalone/IStandaloneListener;)V

    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 122
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;

    move-result-object p1

    .line 125
    invoke-virtual {p0, p1}, Lcom/gsma/services/rcs/standalone/IStandaloneService$Stub;->removeEventListener(Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;)V

    .line 126
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 113
    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;

    move-result-object p1

    .line 116
    invoke-virtual {p0, p1}, Lcom/gsma/services/rcs/standalone/IStandaloneService$Stub;->addEventListener(Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;)V

    .line 117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 105
    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Lcom/gsma/services/rcs/standalone/IStandaloneService$Stub;->isServiceRegistered()Z

    move-result p1

    .line 107
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 100
    :cond_a
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

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
