.class public abstract Lverizon/net/sip/IEABServiceProxy$Stub;
.super Landroid/os/Binder;
.source "IEABServiceProxy.java"

# interfaces
.implements Lverizon/net/sip/IEABServiceProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lverizon/net/sip/IEABServiceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lverizon/net/sip/IEABServiceProxy$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "verizon.net.sip.IEABServiceProxy"

.field static final TRANSACTION_getEabService:I = 0x2

.field static final TRANSACTION_tryToStartService:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "verizon.net.sip.IEABServiceProxy"

    .line 29
    invoke-virtual {p0, p0, v0}, Lverizon/net/sip/IEABServiceProxy$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lverizon/net/sip/IEABServiceProxy;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "verizon.net.sip.IEABServiceProxy"

    .line 40
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 41
    instance-of v1, v0, Lverizon/net/sip/IEABServiceProxy;

    if-eqz v1, :cond_1

    .line 42
    check-cast v0, Lverizon/net/sip/IEABServiceProxy;

    return-object v0

    .line 44
    :cond_1
    new-instance v0, Lverizon/net/sip/IEABServiceProxy$Stub$Proxy;

    invoke-direct {v0, p0}, Lverizon/net/sip/IEABServiceProxy$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lverizon/net/sip/IEABServiceProxy;
    .locals 1

    .line 146
    sget-object v0, Lverizon/net/sip/IEABServiceProxy$Stub$Proxy;->sDefaultImpl:Lverizon/net/sip/IEABServiceProxy;

    return-object v0
.end method

.method public static setDefaultImpl(Lverizon/net/sip/IEABServiceProxy;)Z
    .locals 1

    .line 139
    sget-object v0, Lverizon/net/sip/IEABServiceProxy$Stub$Proxy;->sDefaultImpl:Lverizon/net/sip/IEABServiceProxy;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 140
    sput-object p0, Lverizon/net/sip/IEABServiceProxy$Stub$Proxy;->sDefaultImpl:Lverizon/net/sip/IEABServiceProxy;

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

    const-string v1, "verizon.net.sip.IEABServiceProxy"

    if-eq p1, v0, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 77
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 57
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 69
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lverizon/net/sip/IEABServiceProxy$Stub;->getEabService()Lverizon/net/sip/IEABService;

    move-result-object p1

    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_2

    .line 72
    invoke-interface {p1}, Lverizon/net/sip/IEABService;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v0

    .line 62
    :cond_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Lverizon/net/sip/IEABServiceProxy$Stub;->tryToStartService()V

    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0
.end method
