.class Lcom/gsma/services/rcs/IRcsServiceRegistrationListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IRcsServiceRegistrationListener.java"

# interfaces
.implements Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/IRcsServiceRegistrationListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.gsma.services.rcs.IRcsServiceRegistrationListener"

    return-object v0
.end method

.method public onServiceRegistered()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 99
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.gsma.services.rcs.IRcsServiceRegistrationListener"

    .line 101
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 102
    iget-object v1, p0, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 103
    invoke-static {}, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener$Stub;->getDefaultImpl()Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 104
    invoke-static {}, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener$Stub;->getDefaultImpl()Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;->onServiceRegistered()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public onServiceUnregistered(I)V
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
    const-string v1, "com.gsma.services.rcs.IRcsServiceRegistrationListener"

    .line 116
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    iget-object v1, p0, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 119
    invoke-static {}, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener$Stub;->getDefaultImpl()Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 120
    invoke-static {}, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener$Stub;->getDefaultImpl()Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;->onServiceUnregistered(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
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
