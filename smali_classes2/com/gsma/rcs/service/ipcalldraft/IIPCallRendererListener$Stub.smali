.class public abstract Lcom/gsma/rcs/service/ipcalldraft/IIPCallRendererListener$Stub;
.super Landroid/os/Binder;
.source "IIPCallRendererListener.java"

# interfaces
.implements Lcom/gsma/rcs/service/ipcalldraft/IIPCallRendererListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/rcs/service/ipcalldraft/IIPCallRendererListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/rcs/service/ipcalldraft/IIPCallRendererListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.gsma.rcs.service.ipcalldraft.IIPCallRendererListener"

.field static final TRANSACTION_onRendererClosed:I = 0x4

.field static final TRANSACTION_onRendererError:I = 0x5

.field static final TRANSACTION_onRendererOpened:I = 0x1

.field static final TRANSACTION_onRendererStarted:I = 0x2

.field static final TRANSACTION_onRendererStopped:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.gsma.rcs.service.ipcalldraft.IIPCallRendererListener"

    .line 40
    invoke-virtual {p0, p0, v0}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallRendererListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/gsma/rcs/service/ipcalldraft/IIPCallRendererListener;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.gsma.rcs.service.ipcalldraft.IIPCallRendererListener"

    .line 51
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 52
    instance-of v1, v0, Lcom/gsma/rcs/service/ipcalldraft/IIPCallRendererListener;

    if-eqz v1, :cond_1

    .line 53
    check-cast v0, Lcom/gsma/rcs/service/ipcalldraft/IIPCallRendererListener;

    return-object v0

    .line 55
    :cond_1
    new-instance v0, Lcom/gsma/rcs/service/ipcalldraft/IIPCallRendererListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallRendererListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/gsma/rcs/service/ipcalldraft/IIPCallRendererListener;
    .locals 1

    .line 241
    sget-object v0, Lcom/gsma/rcs/service/ipcalldraft/IIPCallRendererListener$Stub$Proxy;->sDefaultImpl:Lcom/gsma/rcs/service/ipcalldraft/IIPCallRendererListener;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/gsma/rcs/service/ipcalldraft/IIPCallRendererListener;)Z
    .locals 1

    .line 231
    sget-object v0, Lcom/gsma/rcs/service/ipcalldraft/IIPCallRendererListener$Stub$Proxy;->sDefaultImpl:Lcom/gsma/rcs/service/ipcalldraft/IIPCallRendererListener;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 235
    sput-object p0, Lcom/gsma/rcs/service/ipcalldraft/IIPCallRendererListener$Stub$Proxy;->sDefaultImpl:Lcom/gsma/rcs/service/ipcalldraft/IIPCallRendererListener;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 232
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

    const/4 v0, 0x1

    const-string v1, "com.gsma.rcs.service.ipcalldraft.IIPCallRendererListener"

    if-eq p1, v0, :cond_5

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    const/4 v2, 0x3

    if-eq p1, v2, :cond_3

    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 110
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 68
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 101
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 104
    invoke-virtual {p0, p1}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallRendererListener$Stub;->onRendererError(I)V

    .line 105
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 94
    :cond_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallRendererListener$Stub;->onRendererClosed()V

    .line 96
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 87
    :cond_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallRendererListener$Stub;->onRendererStopped()V

    .line 89
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 80
    :cond_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallRendererListener$Stub;->onRendererStarted()V

    .line 82
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 73
    :cond_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallRendererListener$Stub;->onRendererOpened()V

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0
.end method
