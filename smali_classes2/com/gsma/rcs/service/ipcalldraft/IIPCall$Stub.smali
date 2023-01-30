.class public abstract Lcom/gsma/rcs/service/ipcalldraft/IIPCall$Stub;
.super Landroid/os/Binder;
.source "IIPCall.java"

# interfaces
.implements Lcom/gsma/rcs/service/ipcalldraft/IIPCall;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/rcs/service/ipcalldraft/IIPCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/rcs/service/ipcalldraft/IIPCall$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.gsma.rcs.service.ipcalldraft.IIPCall"

.field static final TRANSACTION_abortCall:I = 0x9

.field static final TRANSACTION_acceptInvitation:I = 0x7

.field static final TRANSACTION_addVideo:I = 0xb

.field static final TRANSACTION_continueCall:I = 0xf

.field static final TRANSACTION_getAudioCodec:I = 0x11

.field static final TRANSACTION_getCallId:I = 0x1

.field static final TRANSACTION_getDirection:I = 0x5

.field static final TRANSACTION_getReasonCode:I = 0x4

.field static final TRANSACTION_getRemoteContact:I = 0x2

.field static final TRANSACTION_getState:I = 0x3

.field static final TRANSACTION_getTimestamp:I = 0x6

.field static final TRANSACTION_getVideoCodec:I = 0x10

.field static final TRANSACTION_holdCall:I = 0xe

.field static final TRANSACTION_isOnHold:I = 0xd

.field static final TRANSACTION_isVideo:I = 0xa

.field static final TRANSACTION_rejectInvitation:I = 0x8

.field static final TRANSACTION_removeVideo:I = 0xc


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 85
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.gsma.rcs.service.ipcalldraft.IIPCall"

    .line 86
    invoke-virtual {p0, p0, v0}, Lcom/gsma/rcs/service/ipcalldraft/IIPCall$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/gsma/rcs/service/ipcalldraft/IIPCall;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.gsma.rcs.service.ipcalldraft.IIPCall"

    .line 97
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 98
    instance-of v1, v0, Lcom/gsma/rcs/service/ipcalldraft/IIPCall;

    if-eqz v1, :cond_1

    .line 99
    check-cast v0, Lcom/gsma/rcs/service/ipcalldraft/IIPCall;

    return-object v0

    .line 101
    :cond_1
    new-instance v0, Lcom/gsma/rcs/service/ipcalldraft/IIPCall$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/gsma/rcs/service/ipcalldraft/IIPCall$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/gsma/rcs/service/ipcalldraft/IIPCall;
    .locals 1

    .line 665
    sget-object v0, Lcom/gsma/rcs/service/ipcalldraft/IIPCall$Stub$Proxy;->sDefaultImpl:Lcom/gsma/rcs/service/ipcalldraft/IIPCall;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/gsma/rcs/service/ipcalldraft/IIPCall;)Z
    .locals 1

    .line 655
    sget-object v0, Lcom/gsma/rcs/service/ipcalldraft/IIPCall$Stub$Proxy;->sDefaultImpl:Lcom/gsma/rcs/service/ipcalldraft/IIPCall;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 659
    sput-object p0, Lcom/gsma/rcs/service/ipcalldraft/IIPCall$Stub$Proxy;->sDefaultImpl:Lcom/gsma/rcs/service/ipcalldraft/IIPCall;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 656
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

    const-string v2, "com.gsma.rcs.service.ipcalldraft.IIPCall"

    if-eq p1, v0, :cond_3

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 270
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 256
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p0}, Lcom/gsma/rcs/service/ipcalldraft/IIPCall$Stub;->getAudioCodec()Lcom/gsma/rcs/service/ipcalldraft/AudioCodec;

    move-result-object p1

    .line 258
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_0

    .line 260
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 261
    invoke-virtual {p1, p3, v1}, Lcom/gsma/rcs/service/ipcalldraft/AudioCodec;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 264
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v1

    .line 242
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p0}, Lcom/gsma/rcs/service/ipcalldraft/IIPCall$Stub;->getVideoCodec()Lcom/gsma/rcs/service/ipcalldraft/VideoCodec;

    move-result-object p1

    .line 244
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_1

    .line 246
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 247
    invoke-virtual {p1, p3, v1}, Lcom/gsma/rcs/service/ipcalldraft/VideoCodec;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 250
    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return v1

    .line 235
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p0}, Lcom/gsma/rcs/service/ipcalldraft/IIPCall$Stub;->continueCall()V

    .line 237
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 228
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p0}, Lcom/gsma/rcs/service/ipcalldraft/IIPCall$Stub;->holdCall()V

    .line 230
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 220
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p0}, Lcom/gsma/rcs/service/ipcalldraft/IIPCall$Stub;->isOnHold()Z

    move-result p1

    .line 222
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 213
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p0}, Lcom/gsma/rcs/service/ipcalldraft/IIPCall$Stub;->removeVideo()V

    .line 215
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 206
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0}, Lcom/gsma/rcs/service/ipcalldraft/IIPCall$Stub;->addVideo()V

    .line 208
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 198
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p0}, Lcom/gsma/rcs/service/ipcalldraft/IIPCall$Stub;->isVideo()Z

    move-result p1

    .line 200
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 191
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0}, Lcom/gsma/rcs/service/ipcalldraft/IIPCall$Stub;->abortCall()V

    .line 193
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 184
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0}, Lcom/gsma/rcs/service/ipcalldraft/IIPCall$Stub;->rejectInvitation()V

    .line 186
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 173
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer;

    move-result-object p1

    .line 177
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallRenderer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/rcs/service/ipcalldraft/IIPCallRenderer;

    move-result-object p2

    .line 178
    invoke-virtual {p0, p1, p2}, Lcom/gsma/rcs/service/ipcalldraft/IIPCall$Stub;->acceptInvitation(Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer;Lcom/gsma/rcs/service/ipcalldraft/IIPCallRenderer;)V

    .line 179
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 165
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p0}, Lcom/gsma/rcs/service/ipcalldraft/IIPCall$Stub;->getTimestamp()J

    move-result-wide p1

    .line 167
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    return v1

    .line 157
    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0}, Lcom/gsma/rcs/service/ipcalldraft/IIPCall$Stub;->getDirection()I

    move-result p1

    .line 159
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 149
    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0}, Lcom/gsma/rcs/service/ipcalldraft/IIPCall$Stub;->getReasonCode()I

    move-result p1

    .line 151
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 141
    :pswitch_e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0}, Lcom/gsma/rcs/service/ipcalldraft/IIPCall$Stub;->getState()I

    move-result p1

    .line 143
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 127
    :pswitch_f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Lcom/gsma/rcs/service/ipcalldraft/IIPCall$Stub;->getRemoteContact()Lcom/gsma/services/rcs/contact/ContactId;

    move-result-object p1

    .line 129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_2

    .line 131
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    invoke-virtual {p1, p3, v1}, Lcom/gsma/services/rcs/contact/ContactId;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 135
    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    return v1

    .line 119
    :pswitch_10
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Lcom/gsma/rcs/service/ipcalldraft/IIPCall$Stub;->getCallId()Ljava/lang/String;

    move-result-object p1

    .line 121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 114
    :cond_3
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
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
