.class Lverizon/net/sip/IListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IListener.java"

# interfaces
.implements Lverizon/net/sip/IListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lverizon/net/sip/IListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lverizon/net/sip/IListener;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lverizon/net/sip/IListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 96
    iget-object v0, p0, Lverizon/net/sip/IListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "verizon.net.sip.IListener"

    return-object v0
.end method

.method public onCapabilityAndAvailabilityPublished(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 104
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "verizon.net.sip.IListener"

    .line 106
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    iget-object v1, p0, Lverizon/net/sip/IListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 109
    invoke-static {}, Lverizon/net/sip/IListener$Stub;->getDefaultImpl()Lverizon/net/sip/IListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 110
    invoke-static {}, Lverizon/net/sip/IListener$Stub;->getDefaultImpl()Lverizon/net/sip/IListener;

    move-result-object v1

    invoke-interface {v1, p1}, Lverizon/net/sip/IListener;->onCapabilityAndAvailabilityPublished(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public onServiceCapabilityAndAvailabilityReceived(ILjava/lang/String;[Lverizon/net/sip/SipProfile;[Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 120
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "verizon.net.sip.IListener"

    .line 122
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 125
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 126
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 127
    iget-object v1, p0, Lverizon/net/sip/IListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 128
    invoke-static {}, Lverizon/net/sip/IListener$Stub;->getDefaultImpl()Lverizon/net/sip/IListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 129
    invoke-static {}, Lverizon/net/sip/IListener$Stub;->getDefaultImpl()Lverizon/net/sip/IListener;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Lverizon/net/sip/IListener;->onServiceCapabilityAndAvailabilityReceived(ILjava/lang/String;[Lverizon/net/sip/SipProfile;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method
