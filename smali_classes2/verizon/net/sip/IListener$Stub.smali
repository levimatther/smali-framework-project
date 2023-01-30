.class public abstract Lverizon/net/sip/IListener$Stub;
.super Landroid/os/Binder;
.source "IListener.java"

# interfaces
.implements Lverizon/net/sip/IListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lverizon/net/sip/IListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lverizon/net/sip/IListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "verizon.net.sip.IListener"

.field static final TRANSACTION_onCapabilityAndAvailabilityPublished:I = 0x1

.field static final TRANSACTION_onServiceCapabilityAndAvailabilityReceived:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "verizon.net.sip.IListener"

    .line 28
    invoke-virtual {p0, p0, v0}, Lverizon/net/sip/IListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lverizon/net/sip/IListener;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "verizon.net.sip.IListener"

    .line 39
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 40
    instance-of v1, v0, Lverizon/net/sip/IListener;

    if-eqz v1, :cond_1

    .line 41
    check-cast v0, Lverizon/net/sip/IListener;

    return-object v0

    .line 43
    :cond_1
    new-instance v0, Lverizon/net/sip/IListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lverizon/net/sip/IListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lverizon/net/sip/IListener;
    .locals 1

    .line 149
    sget-object v0, Lverizon/net/sip/IListener$Stub$Proxy;->sDefaultImpl:Lverizon/net/sip/IListener;

    return-object v0
.end method

.method public static setDefaultImpl(Lverizon/net/sip/IListener;)Z
    .locals 1

    .line 142
    sget-object v0, Lverizon/net/sip/IListener$Stub$Proxy;->sDefaultImpl:Lverizon/net/sip/IListener;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 143
    sput-object p0, Lverizon/net/sip/IListener$Stub$Proxy;->sDefaultImpl:Lverizon/net/sip/IListener;

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

    const/4 v0, 0x1

    const-string v1, "verizon.net.sip.IListener"

    if-eq p1, v0, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 83
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 56
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 69
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 75
    sget-object p4, Lverizon/net/sip/SipProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [Lverizon/net/sip/SipProfile;

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p2

    .line 78
    invoke-virtual {p0, p1, p3, p4, p2}, Lverizon/net/sip/IListener$Stub;->onServiceCapabilityAndAvailabilityReceived(ILjava/lang/String;[Lverizon/net/sip/SipProfile;[Ljava/lang/String;)V

    return v0

    .line 61
    :cond_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 64
    invoke-virtual {p0, p1}, Lverizon/net/sip/IListener$Stub;->onCapabilityAndAvailabilityPublished(I)V

    return v0
.end method
