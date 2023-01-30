.class public abstract Lcom/gsma/services/rcs/sharing/video/IVideoSharingService$Stub;
.super Landroid/os/Binder;
.source "IVideoSharingService.java"

# interfaces
.implements Lcom/gsma/services/rcs/sharing/video/IVideoSharingService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/sharing/video/IVideoSharingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/sharing/video/IVideoSharingService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.gsma.services.rcs.sharing.video.IVideoSharingService"

.field static final TRANSACTION_addEventListener:I = 0x3

.field static final TRANSACTION_addEventListener2:I = 0x8

.field static final TRANSACTION_deleteVideoSharing:I = 0xe

.field static final TRANSACTION_deleteVideoSharings:I = 0xc

.field static final TRANSACTION_deleteVideoSharings2:I = 0xd

.field static final TRANSACTION_getCommonConfiguration:I = 0xb

.field static final TRANSACTION_getConfiguration:I = 0x5

.field static final TRANSACTION_getServiceRegistrationReasonCode:I = 0x2

.field static final TRANSACTION_getServiceVersion:I = 0xa

.field static final TRANSACTION_getVideoSharing:I = 0x6

.field static final TRANSACTION_isServiceRegistered:I = 0x1

.field static final TRANSACTION_removeEventListener:I = 0x4

.field static final TRANSACTION_removeEventListener2:I = 0x9

.field static final TRANSACTION_shareVideo:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 73
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.gsma.services.rcs.sharing.video.IVideoSharingService"

    .line 74
    invoke-virtual {p0, p0, v0}, Lcom/gsma/services/rcs/sharing/video/IVideoSharingService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/sharing/video/IVideoSharingService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.gsma.services.rcs.sharing.video.IVideoSharingService"

    .line 85
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 86
    instance-of v1, v0, Lcom/gsma/services/rcs/sharing/video/IVideoSharingService;

    if-eqz v1, :cond_1

    .line 87
    check-cast v0, Lcom/gsma/services/rcs/sharing/video/IVideoSharingService;

    return-object v0

    .line 89
    :cond_1
    new-instance v0, Lcom/gsma/services/rcs/sharing/video/IVideoSharingService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/gsma/services/rcs/sharing/video/IVideoSharingService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/gsma/services/rcs/sharing/video/IVideoSharingService;
    .locals 1

    .line 576
    sget-object v0, Lcom/gsma/services/rcs/sharing/video/IVideoSharingService$Stub$Proxy;->sDefaultImpl:Lcom/gsma/services/rcs/sharing/video/IVideoSharingService;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/gsma/services/rcs/sharing/video/IVideoSharingService;)Z
    .locals 1

    .line 566
    sget-object v0, Lcom/gsma/services/rcs/sharing/video/IVideoSharingService$Stub$Proxy;->sDefaultImpl:Lcom/gsma/services/rcs/sharing/video/IVideoSharingService;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 570
    sput-object p0, Lcom/gsma/services/rcs/sharing/video/IVideoSharingService$Stub$Proxy;->sDefaultImpl:Lcom/gsma/services/rcs/sharing/video/IVideoSharingService;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 567
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

    const-string v2, "com.gsma.services.rcs.sharing.video.IVideoSharingService"

    if-eq p1, v0, :cond_6

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 240
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 231
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 233
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 234
    invoke-virtual {p0, p1}, Lcom/gsma/services/rcs/sharing/video/IVideoSharingService$Stub;->deleteVideoSharing(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 217
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    .line 220
    sget-object p1, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/gsma/services/rcs/contact/ContactId;

    .line 225
    :cond_0
    invoke-virtual {p0, v0}, Lcom/gsma/services/rcs/sharing/video/IVideoSharingService$Stub;->deleteVideoSharings2(Lcom/gsma/services/rcs/contact/ContactId;)V

    .line 226
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 210
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/video/IVideoSharingService$Stub;->deleteVideoSharings()V

    .line 212
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 202
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/video/IVideoSharingService$Stub;->getCommonConfiguration()Lcom/gsma/services/rcs/ICommonServiceConfiguration;

    move-result-object p1

    .line 204
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_1

    .line 205
    invoke-interface {p1}, Lcom/gsma/services/rcs/ICommonServiceConfiguration;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v1

    .line 194
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/video/IVideoSharingService$Stub;->getServiceVersion()I

    move-result p1

    .line 196
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 185
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/gsma/services/rcs/sharing/video/IVideoSharingListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/sharing/video/IVideoSharingListener;

    move-result-object p1

    .line 188
    invoke-virtual {p0, p1}, Lcom/gsma/services/rcs/sharing/video/IVideoSharingService$Stub;->removeEventListener2(Lcom/gsma/services/rcs/sharing/video/IVideoSharingListener;)V

    .line 189
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 176
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/gsma/services/rcs/sharing/video/IVideoSharingListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/sharing/video/IVideoSharingListener;

    move-result-object p1

    .line 179
    invoke-virtual {p0, p1}, Lcom/gsma/services/rcs/sharing/video/IVideoSharingService$Stub;->addEventListener2(Lcom/gsma/services/rcs/sharing/video/IVideoSharingListener;)V

    .line 180
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 159
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    .line 162
    sget-object p1, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gsma/services/rcs/contact/ContactId;

    goto :goto_0

    :cond_2
    move-object p1, v0

    .line 168
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/gsma/services/rcs/sharing/video/IVideoPlayer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/sharing/video/IVideoPlayer;

    move-result-object p2

    .line 169
    invoke-virtual {p0, p1, p2}, Lcom/gsma/services/rcs/sharing/video/IVideoSharingService$Stub;->shareVideo(Lcom/gsma/services/rcs/contact/ContactId;Lcom/gsma/services/rcs/sharing/video/IVideoPlayer;)Lcom/gsma/services/rcs/sharing/video/IVideoSharing;

    move-result-object p1

    .line 170
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_3

    .line 171
    invoke-interface {p1}, Lcom/gsma/services/rcs/sharing/video/IVideoSharing;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v1

    .line 149
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 152
    invoke-virtual {p0, p1}, Lcom/gsma/services/rcs/sharing/video/IVideoSharingService$Stub;->getVideoSharing(Ljava/lang/String;)Lcom/gsma/services/rcs/sharing/video/IVideoSharing;

    move-result-object p1

    .line 153
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_4

    .line 154
    invoke-interface {p1}, Lcom/gsma/services/rcs/sharing/video/IVideoSharing;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v1

    .line 141
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/video/IVideoSharingService$Stub;->getConfiguration()Lcom/gsma/services/rcs/sharing/video/IVideoSharingServiceConfiguration;

    move-result-object p1

    .line 143
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_5

    .line 144
    invoke-interface {p1}, Lcom/gsma/services/rcs/sharing/video/IVideoSharingServiceConfiguration;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v1

    .line 132
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;

    move-result-object p1

    .line 135
    invoke-virtual {p0, p1}, Lcom/gsma/services/rcs/sharing/video/IVideoSharingService$Stub;->removeEventListener(Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;)V

    .line 136
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 123
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;

    move-result-object p1

    .line 126
    invoke-virtual {p0, p1}, Lcom/gsma/services/rcs/sharing/video/IVideoSharingService$Stub;->addEventListener(Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;)V

    .line 127
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 115
    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/video/IVideoSharingService$Stub;->getServiceRegistrationReasonCode()I

    move-result p1

    .line 117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 107
    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/video/IVideoSharingService$Stub;->isServiceRegistered()Z

    move-result p1

    .line 109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 102
    :cond_6
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
