.class public abstract Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer$Stub;
.super Landroid/os/Binder;
.source "IIPCallPlayer.java"

# interfaces
.implements Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.gsma.rcs.service.ipcalldraft.IIPCallPlayer"

.field static final TRANSACTION_addEventListener:I = 0xb

.field static final TRANSACTION_close:I = 0x2

.field static final TRANSACTION_getAudioCodec:I = 0x6

.field static final TRANSACTION_getLocalAudioRtpPort:I = 0x5

.field static final TRANSACTION_getLocalVideoRtpPort:I = 0x8

.field static final TRANSACTION_getSupportedAudioCodecs:I = 0x7

.field static final TRANSACTION_getSupportedVideoCodecs:I = 0xa

.field static final TRANSACTION_getVideoCodec:I = 0x9

.field static final TRANSACTION_open:I = 0x1

.field static final TRANSACTION_removeEventListener:I = 0xc

.field static final TRANSACTION_start:I = 0x3

.field static final TRANSACTION_stop:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.gsma.rcs.service.ipcalldraft.IIPCallPlayer"

    .line 67
    invoke-virtual {p0, p0, v0}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.gsma.rcs.service.ipcalldraft.IIPCallPlayer"

    .line 78
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 79
    instance-of v1, v0, Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer;

    if-eqz v1, :cond_1

    .line 80
    check-cast v0, Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer;

    return-object v0

    .line 82
    :cond_1
    new-instance v0, Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer;
    .locals 1

    .line 530
    sget-object v0, Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer$Stub$Proxy;->sDefaultImpl:Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer;)Z
    .locals 1

    .line 520
    sget-object v0, Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer$Stub$Proxy;->sDefaultImpl:Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 524
    sput-object p0, Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer$Stub$Proxy;->sDefaultImpl:Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 521
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
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "com.gsma.rcs.service.ipcalldraft.IIPCallPlayer"

    if-eq p1, v0, :cond_4

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 226
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 217
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayerListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayerListener;

    move-result-object p1

    .line 220
    invoke-virtual {p0, p1}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer$Stub;->removeEventListener(Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayerListener;)V

    .line 221
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 208
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayerListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayerListener;

    move-result-object p1

    .line 211
    invoke-virtual {p0, p1}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer$Stub;->addEventListener(Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayerListener;)V

    .line 212
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 200
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p0}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer$Stub;->getSupportedVideoCodecs()[Lcom/gsma/rcs/service/ipcalldraft/VideoCodec;

    move-result-object p1

    .line 202
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return v1

    .line 186
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer$Stub;->getVideoCodec()Lcom/gsma/rcs/service/ipcalldraft/VideoCodec;

    move-result-object p1

    .line 188
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_0

    .line 190
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 191
    invoke-virtual {p1, p3, v1}, Lcom/gsma/rcs/service/ipcalldraft/VideoCodec;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 194
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v1

    .line 178
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer$Stub;->getLocalVideoRtpPort()I

    move-result p1

    .line 180
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 170
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer$Stub;->getSupportedAudioCodecs()[Lcom/gsma/rcs/service/ipcalldraft/AudioCodec;

    move-result-object p1

    .line 172
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return v1

    .line 156
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer$Stub;->getAudioCodec()Lcom/gsma/rcs/service/ipcalldraft/AudioCodec;

    move-result-object p1

    .line 158
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_1

    .line 160
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    invoke-virtual {p1, p3, v1}, Lcom/gsma/rcs/service/ipcalldraft/AudioCodec;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 164
    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return v1

    .line 148
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer$Stub;->getLocalAudioRtpPort()I

    move-result p1

    .line 150
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 141
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer$Stub;->stop()V

    .line 143
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 134
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer$Stub;->start()V

    .line 136
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 127
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer$Stub;->close()V

    .line 129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 100
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 p4, 0x0

    if-eqz p1, :cond_2

    .line 103
    sget-object p1, Lcom/gsma/rcs/service/ipcalldraft/AudioCodec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gsma/rcs/service/ipcalldraft/AudioCodec;

    move-object v3, p1

    goto :goto_2

    :cond_2
    move-object v3, p4

    .line 109
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    .line 110
    sget-object p1, Lcom/gsma/rcs/service/ipcalldraft/VideoCodec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object p4, p1

    check-cast p4, Lcom/gsma/rcs/service/ipcalldraft/VideoCodec;

    :cond_3
    move-object v4, p4

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object v2, p0

    .line 121
    invoke-virtual/range {v2 .. v7}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer$Stub;->open(Lcom/gsma/rcs/service/ipcalldraft/AudioCodec;Lcom/gsma/rcs/service/ipcalldraft/VideoCodec;Ljava/lang/String;II)V

    .line 122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 95
    :cond_4
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
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
