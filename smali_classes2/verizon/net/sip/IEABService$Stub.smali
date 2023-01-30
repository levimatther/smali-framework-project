.class public abstract Lverizon/net/sip/IEABService$Stub;
.super Landroid/os/Binder;
.source "IEABService.java"

# interfaces
.implements Lverizon/net/sip/IEABService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lverizon/net/sip/IEABService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lverizon/net/sip/IEABService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "verizon.net.sip.IEABService"

.field static final TRANSACTION_advertiseCapabilitiesAndAvailability:I = 0x2

.field static final TRANSACTION_getAvailability:I = 0x3

.field static final TRANSACTION_getCapabilities:I = 0x1

.field static final TRANSACTION_getEabServiceStatus:I = 0x6

.field static final TRANSACTION_setEabServiceStatus:I = 0x5

.field static final TRANSACTION_setFeatureTags:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "verizon.net.sip.IEABService"

    .line 44
    invoke-virtual {p0, p0, v0}, Lverizon/net/sip/IEABService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lverizon/net/sip/IEABService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "verizon.net.sip.IEABService"

    .line 55
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 56
    instance-of v1, v0, Lverizon/net/sip/IEABService;

    if-eqz v1, :cond_1

    .line 57
    check-cast v0, Lverizon/net/sip/IEABService;

    return-object v0

    .line 59
    :cond_1
    new-instance v0, Lverizon/net/sip/IEABService$Stub$Proxy;

    invoke-direct {v0, p0}, Lverizon/net/sip/IEABService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lverizon/net/sip/IEABService;
    .locals 1

    .line 313
    sget-object v0, Lverizon/net/sip/IEABService$Stub$Proxy;->sDefaultImpl:Lverizon/net/sip/IEABService;

    return-object v0
.end method

.method public static setDefaultImpl(Lverizon/net/sip/IEABService;)Z
    .locals 1

    .line 306
    sget-object v0, Lverizon/net/sip/IEABService$Stub$Proxy;->sDefaultImpl:Lverizon/net/sip/IEABService;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 307
    sput-object p0, Lverizon/net/sip/IEABService$Stub$Proxy;->sDefaultImpl:Lverizon/net/sip/IEABService;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
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

    const-string v2, "verizon.net.sip.IEABService"

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    .line 149
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 141
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0}, Lverizon/net/sip/IEABService$Stub;->getEabServiceStatus()Z

    move-result p1

    .line 143
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 132
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 135
    :goto_0
    invoke-virtual {p0, p1}, Lverizon/net/sip/IEABService$Stub;->setEabServiceStatus(Z)V

    .line 136
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 121
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p2

    .line 126
    invoke-virtual {p0, p1, p2}, Lverizon/net/sip/IEABService$Stub;->setFeatureTags(Ljava/lang/String;[Ljava/lang/String;)V

    .line 127
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 107
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p1

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lverizon/net/sip/IListener$Stub;->asInterface(Landroid/os/IBinder;)Lverizon/net/sip/IListener;

    move-result-object p2

    .line 114
    invoke-virtual {p0, p1, p4, p2}, Lverizon/net/sip/IEABService$Stub;->getAvailability([Ljava/lang/String;Ljava/lang/String;Lverizon/net/sip/IListener;)Z

    move-result p1

    .line 115
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 91
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lverizon/net/sip/IListener$Stub;->asInterface(Landroid/os/IBinder;)Lverizon/net/sip/IListener;

    move-result-object p1

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 99
    sget-object v2, Lverizon/net/sip/AvailabilityPolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p2

    .line 100
    invoke-virtual {p0, p1, p4, v0, p2}, Lverizon/net/sip/IEABService$Stub;->advertiseCapabilitiesAndAvailability(Lverizon/net/sip/IListener;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z

    move-result p1

    .line 101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 77
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p1

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lverizon/net/sip/IListener$Stub;->asInterface(Landroid/os/IBinder;)Lverizon/net/sip/IListener;

    move-result-object p2

    .line 84
    invoke-virtual {p0, p1, p4, p2}, Lverizon/net/sip/IEABService$Stub;->getCapabilities([Ljava/lang/String;Ljava/lang/String;Lverizon/net/sip/IListener;)Z

    move-result p1

    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 72
    :cond_1
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
