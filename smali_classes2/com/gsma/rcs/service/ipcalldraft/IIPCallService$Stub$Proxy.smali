.class Lcom/gsma/rcs/service/ipcalldraft/IIPCallService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IIPCallService.java"

# interfaces
.implements Lcom/gsma/rcs/service/ipcalldraft/IIPCallService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/rcs/service/ipcalldraft/IIPCallService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/gsma/rcs/service/ipcalldraft/IIPCallService;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    iput-object p1, p0, Lcom/gsma/rcs/service/ipcalldraft/IIPCallService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public addEventListener(Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 299
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 300
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.gsma.rcs.service.ipcalldraft.IIPCallService"

    .line 302
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 303
    invoke-interface {p1}, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 304
    iget-object v2, p0, Lcom/gsma/rcs/service/ipcalldraft/IIPCallService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 305
    invoke-static {}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallService$Stub;->getDefaultImpl()Lcom/gsma/rcs/service/ipcalldraft/IIPCallService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 306
    invoke-static {}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallService$Stub;->getDefaultImpl()Lcom/gsma/rcs/service/ipcalldraft/IIPCallService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallService;->addEventListener(Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 313
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 309
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 312
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 313
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 312
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 313
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public addEventListener2(Lcom/gsma/rcs/service/ipcalldraft/IIPCallListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 456
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 457
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.gsma.rcs.service.ipcalldraft.IIPCallService"

    .line 459
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 460
    invoke-interface {p1}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 461
    iget-object v2, p0, Lcom/gsma/rcs/service/ipcalldraft/IIPCallService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 462
    invoke-static {}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallService$Stub;->getDefaultImpl()Lcom/gsma/rcs/service/ipcalldraft/IIPCallService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 463
    invoke-static {}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallService$Stub;->getDefaultImpl()Lcom/gsma/rcs/service/ipcalldraft/IIPCallService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallService;->addEventListener2(Lcom/gsma/rcs/service/ipcalldraft/IIPCallListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 469
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 470
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 466
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 469
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 470
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 469
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 470
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/gsma/rcs/service/ipcalldraft/IIPCallService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getCommonConfiguration()Lcom/gsma/services/rcs/ICommonServiceConfiguration;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 514
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 515
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.gsma.rcs.service.ipcalldraft.IIPCallService"

    .line 518
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 519
    iget-object v2, p0, Lcom/gsma/rcs/service/ipcalldraft/IIPCallService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 520
    invoke-static {}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallService$Stub;->getDefaultImpl()Lcom/gsma/rcs/service/ipcalldraft/IIPCallService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 521
    invoke-static {}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallService$Stub;->getDefaultImpl()Lcom/gsma/rcs/service/ipcalldraft/IIPCallService;

    move-result-object v2

    invoke-interface {v2}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallService;->getCommonConfiguration()Lcom/gsma/services/rcs/ICommonServiceConfiguration;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 527
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 528
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 523
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 524
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/gsma/services/rcs/ICommonServiceConfiguration$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/ICommonServiceConfiguration;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 527
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 528
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 527
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 528
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getConfiguration()Lcom/gsma/rcs/service/ipcalldraft/IIPCallServiceConfiguration;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 337
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 338
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.gsma.rcs.service.ipcalldraft.IIPCallService"

    .line 341
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 342
    iget-object v2, p0, Lcom/gsma/rcs/service/ipcalldraft/IIPCallService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 343
    invoke-static {}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallService$Stub;->getDefaultImpl()Lcom/gsma/rcs/service/ipcalldraft/IIPCallService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 344
    invoke-static {}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallService$Stub;->getDefaultImpl()Lcom/gsma/rcs/service/ipcalldraft/IIPCallService;

    move-result-object v2

    invoke-interface {v2}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallService;->getConfiguration()Lcom/gsma/rcs/service/ipcalldraft/IIPCallServiceConfiguration;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 350
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 351
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 346
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 347
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallServiceConfiguration$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/rcs/service/ipcalldraft/IIPCallServiceConfiguration;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 350
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 351
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 350
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 351
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getIPCall(Ljava/lang/String;)Lcom/gsma/rcs/service/ipcalldraft/IIPCall;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 377
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 378
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.gsma.rcs.service.ipcalldraft.IIPCallService"

    .line 381
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 382
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 383
    iget-object v2, p0, Lcom/gsma/rcs/service/ipcalldraft/IIPCallService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 384
    invoke-static {}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallService$Stub;->getDefaultImpl()Lcom/gsma/rcs/service/ipcalldraft/IIPCallService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 385
    invoke-static {}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallService$Stub;->getDefaultImpl()Lcom/gsma/rcs/service/ipcalldraft/IIPCallService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallService;->getIPCall(Ljava/lang/String;)Lcom/gsma/rcs/service/ipcalldraft/IIPCall;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 391
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 392
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 387
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 388
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/gsma/rcs/service/ipcalldraft/IIPCall$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/rcs/service/ipcalldraft/IIPCall;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 391
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 392
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 391
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 392
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public getIPCalls()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 357
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 358
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.gsma.rcs.service.ipcalldraft.IIPCallService"

    .line 361
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 362
    iget-object v2, p0, Lcom/gsma/rcs/service/ipcalldraft/IIPCallService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 363
    invoke-static {}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallService$Stub;->getDefaultImpl()Lcom/gsma/rcs/service/ipcalldraft/IIPCallService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 364
    invoke-static {}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallService$Stub;->getDefaultImpl()Lcom/gsma/rcs/service/ipcalldraft/IIPCallService;

    move-result-object v2

    invoke-interface {v2}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallService;->getIPCalls()Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 370
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 371
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 366
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 367
    invoke-virtual {v1}, Landroid/os/Parcel;->createBinderArrayList()Ljava/util/ArrayList;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 370
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 371
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 370
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 371
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.gsma.rcs.service.ipcalldraft.IIPCallService"

    return-object v0
.end method

.method public getServiceRegistrationReasonCode()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 279
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 280
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.gsma.rcs.service.ipcalldraft.IIPCallService"

    .line 283
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 284
    iget-object v2, p0, Lcom/gsma/rcs/service/ipcalldraft/IIPCallService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 285
    invoke-static {}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallService$Stub;->getDefaultImpl()Lcom/gsma/rcs/service/ipcalldraft/IIPCallService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 286
    invoke-static {}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallService$Stub;->getDefaultImpl()Lcom/gsma/rcs/service/ipcalldraft/IIPCallService;

    move-result-object v2

    invoke-interface {v2}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallService;->getServiceRegistrationReasonCode()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 293
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 288
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 289
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 292
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 293
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 292
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 293
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getServiceVersion()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 494
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 495
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.gsma.rcs.service.ipcalldraft.IIPCallService"

    .line 498
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 499
    iget-object v2, p0, Lcom/gsma/rcs/service/ipcalldraft/IIPCallService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 500
    invoke-static {}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallService$Stub;->getDefaultImpl()Lcom/gsma/rcs/service/ipcalldraft/IIPCallService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 501
    invoke-static {}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallService$Stub;->getDefaultImpl()Lcom/gsma/rcs/service/ipcalldraft/IIPCallService;

    move-result-object v2

    invoke-interface {v2}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallService;->getServiceVersion()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 507
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 508
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 503
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 504
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 507
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 508
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 507
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 508
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public initiateCall(Lcom/gsma/services/rcs/contact/ContactId;Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer;Lcom/gsma/rcs/service/ipcalldraft/IIPCallRenderer;)Lcom/gsma/rcs/service/ipcalldraft/IIPCall;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 398
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 399
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.gsma.rcs.service.ipcalldraft.IIPCallService"

    .line 402
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 404
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 405
    invoke-virtual {p1, v0, v2}, Lcom/gsma/services/rcs/contact/ContactId;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 408
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    const/4 v3, 0x0

    if-eqz p2, :cond_1

    .line 410
    invoke-interface {p2}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v3

    :goto_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    if-eqz p3, :cond_2

    .line 411
    invoke-interface {p3}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallRenderer;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :cond_2
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 412
    iget-object v3, p0, Lcom/gsma/rcs/service/ipcalldraft/IIPCallService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x8

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 413
    invoke-static {}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallService$Stub;->getDefaultImpl()Lcom/gsma/rcs/service/ipcalldraft/IIPCallService;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 414
    invoke-static {}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallService$Stub;->getDefaultImpl()Lcom/gsma/rcs/service/ipcalldraft/IIPCallService;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallService;->initiateCall(Lcom/gsma/services/rcs/contact/ContactId;Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer;Lcom/gsma/rcs/service/ipcalldraft/IIPCallRenderer;)Lcom/gsma/rcs/service/ipcalldraft/IIPCall;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 420
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 421
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 416
    :cond_3
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 417
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/gsma/rcs/service/ipcalldraft/IIPCall$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/rcs/service/ipcalldraft/IIPCall;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 420
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 421
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 420
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 421
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public initiateVisioCall(Lcom/gsma/services/rcs/contact/ContactId;Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer;Lcom/gsma/rcs/service/ipcalldraft/IIPCallRenderer;)Lcom/gsma/rcs/service/ipcalldraft/IIPCall;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 427
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 428
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.gsma.rcs.service.ipcalldraft.IIPCallService"

    .line 431
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 433
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 434
    invoke-virtual {p1, v0, v2}, Lcom/gsma/services/rcs/contact/ContactId;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 437
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    const/4 v3, 0x0

    if-eqz p2, :cond_1

    .line 439
    invoke-interface {p2}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v3

    :goto_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    if-eqz p3, :cond_2

    .line 440
    invoke-interface {p3}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallRenderer;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :cond_2
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 441
    iget-object v3, p0, Lcom/gsma/rcs/service/ipcalldraft/IIPCallService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x9

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 442
    invoke-static {}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallService$Stub;->getDefaultImpl()Lcom/gsma/rcs/service/ipcalldraft/IIPCallService;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 443
    invoke-static {}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallService$Stub;->getDefaultImpl()Lcom/gsma/rcs/service/ipcalldraft/IIPCallService;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallService;->initiateVisioCall(Lcom/gsma/services/rcs/contact/ContactId;Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer;Lcom/gsma/rcs/service/ipcalldraft/IIPCallRenderer;)Lcom/gsma/rcs/service/ipcalldraft/IIPCall;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 449
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 450
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 445
    :cond_3
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 446
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/gsma/rcs/service/ipcalldraft/IIPCall$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/rcs/service/ipcalldraft/IIPCall;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 449
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 450
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 449
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 450
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public isServiceRegistered()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 259
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 260
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.gsma.rcs.service.ipcalldraft.IIPCallService"

    .line 263
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 264
    iget-object v2, p0, Lcom/gsma/rcs/service/ipcalldraft/IIPCallService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 265
    invoke-static {}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallService$Stub;->getDefaultImpl()Lcom/gsma/rcs/service/ipcalldraft/IIPCallService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 266
    invoke-static {}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallService$Stub;->getDefaultImpl()Lcom/gsma/rcs/service/ipcalldraft/IIPCallService;

    move-result-object v2

    invoke-interface {v2}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallService;->isServiceRegistered()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 273
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 268
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 269
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    move v3, v4

    .line 272
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 273
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :catchall_0
    move-exception v2

    .line 272
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 273
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public removeEventListener(Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 318
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 319
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.gsma.rcs.service.ipcalldraft.IIPCallService"

    .line 321
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 322
    invoke-interface {p1}, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 323
    iget-object v2, p0, Lcom/gsma/rcs/service/ipcalldraft/IIPCallService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 324
    invoke-static {}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallService$Stub;->getDefaultImpl()Lcom/gsma/rcs/service/ipcalldraft/IIPCallService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 325
    invoke-static {}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallService$Stub;->getDefaultImpl()Lcom/gsma/rcs/service/ipcalldraft/IIPCallService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallService;->removeEventListener(Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 332
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 328
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 331
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 332
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 331
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 332
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public removeEventListener2(Lcom/gsma/rcs/service/ipcalldraft/IIPCallListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 475
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 476
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.gsma.rcs.service.ipcalldraft.IIPCallService"

    .line 478
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 479
    invoke-interface {p1}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 480
    iget-object v2, p0, Lcom/gsma/rcs/service/ipcalldraft/IIPCallService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 481
    invoke-static {}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallService$Stub;->getDefaultImpl()Lcom/gsma/rcs/service/ipcalldraft/IIPCallService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 482
    invoke-static {}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallService$Stub;->getDefaultImpl()Lcom/gsma/rcs/service/ipcalldraft/IIPCallService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallService;->removeEventListener2(Lcom/gsma/rcs/service/ipcalldraft/IIPCallListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 488
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 489
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 485
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 488
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 489
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 488
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 489
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method
