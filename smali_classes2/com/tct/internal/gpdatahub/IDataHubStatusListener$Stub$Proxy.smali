.class Lcom/tct/internal/gpdatahub/IDataHubStatusListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IDataHubStatusListener.java"

# interfaces
.implements Lcom/tct/internal/gpdatahub/IDataHubStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tct/internal/gpdatahub/IDataHubStatusListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/tct/internal/gpdatahub/IDataHubStatusListener;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/tct/internal/gpdatahub/IDataHubStatusListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/tct/internal/gpdatahub/IDataHubStatusListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.tct.internal.gpdatahub.IDataHubStatusListener"

    return-object v0
.end method

.method public onDataHubStateChanged(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 98
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.tct.internal.gpdatahub.IDataHubStatusListener"

    .line 100
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 101
    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    iget-object v2, p0, Lcom/tct/internal/gpdatahub/IDataHubStatusListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v0, v3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 103
    invoke-static {}, Lcom/tct/internal/gpdatahub/IDataHubStatusListener$Stub;->getDefaultImpl()Lcom/tct/internal/gpdatahub/IDataHubStatusListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 104
    invoke-static {}, Lcom/tct/internal/gpdatahub/IDataHubStatusListener$Stub;->getDefaultImpl()Lcom/tct/internal/gpdatahub/IDataHubStatusListener;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/tct/internal/gpdatahub/IDataHubStatusListener;->onDataHubStateChanged(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public onDebugStateChanged(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 114
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.tct.internal.gpdatahub.IDataHubStatusListener"

    .line 116
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 117
    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    iget-object v2, p0, Lcom/tct/internal/gpdatahub/IDataHubStatusListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 119
    invoke-static {}, Lcom/tct/internal/gpdatahub/IDataHubStatusListener$Stub;->getDefaultImpl()Lcom/tct/internal/gpdatahub/IDataHubStatusListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 120
    invoke-static {}, Lcom/tct/internal/gpdatahub/IDataHubStatusListener$Stub;->getDefaultImpl()Lcom/tct/internal/gpdatahub/IDataHubStatusListener;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/tct/internal/gpdatahub/IDataHubStatusListener;->onDebugStateChanged(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method
