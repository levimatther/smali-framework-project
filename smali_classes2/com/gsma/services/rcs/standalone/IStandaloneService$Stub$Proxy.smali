.class Lcom/gsma/services/rcs/standalone/IStandaloneService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IStandaloneService.java"

# interfaces
.implements Lcom/gsma/services/rcs/standalone/IStandaloneService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/standalone/IStandaloneService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/gsma/services/rcs/standalone/IStandaloneService;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    iput-object p1, p0, Lcom/gsma/services/rcs/standalone/IStandaloneService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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

    .line 307
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 308
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.gsma.services.rcs.standalone.IStandaloneService"

    .line 310
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 311
    invoke-interface {p1}, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 312
    iget-object v2, p0, Lcom/gsma/services/rcs/standalone/IStandaloneService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 313
    invoke-static {}, Lcom/gsma/services/rcs/standalone/IStandaloneService$Stub;->getDefaultImpl()Lcom/gsma/services/rcs/standalone/IStandaloneService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 314
    invoke-static {}, Lcom/gsma/services/rcs/standalone/IStandaloneService$Stub;->getDefaultImpl()Lcom/gsma/services/rcs/standalone/IStandaloneService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/gsma/services/rcs/standalone/IStandaloneService;->addEventListener(Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 320
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 321
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 317
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 320
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 321
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 320
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 321
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public addStandaloneEventListener(Lcom/gsma/services/rcs/standalone/IStandaloneListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 345
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 346
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.gsma.services.rcs.standalone.IStandaloneService"

    .line 348
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 349
    invoke-interface {p1}, Lcom/gsma/services/rcs/standalone/IStandaloneListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 350
    iget-object v2, p0, Lcom/gsma/services/rcs/standalone/IStandaloneService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 351
    invoke-static {}, Lcom/gsma/services/rcs/standalone/IStandaloneService$Stub;->getDefaultImpl()Lcom/gsma/services/rcs/standalone/IStandaloneService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 352
    invoke-static {}, Lcom/gsma/services/rcs/standalone/IStandaloneService$Stub;->getDefaultImpl()Lcom/gsma/services/rcs/standalone/IStandaloneService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/gsma/services/rcs/standalone/IStandaloneService;->addStandaloneEventListener(Lcom/gsma/services/rcs/standalone/IStandaloneListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 358
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 359
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 355
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 358
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 359
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 358
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 359
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/gsma/services/rcs/standalone/IStandaloneService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public deleteMessage(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 463
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 464
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.gsma.services.rcs.standalone.IStandaloneService"

    .line 466
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 467
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 468
    iget-object v2, p0, Lcom/gsma/services/rcs/standalone/IStandaloneService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 469
    invoke-static {}, Lcom/gsma/services/rcs/standalone/IStandaloneService$Stub;->getDefaultImpl()Lcom/gsma/services/rcs/standalone/IStandaloneService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 470
    invoke-static {}, Lcom/gsma/services/rcs/standalone/IStandaloneService$Stub;->getDefaultImpl()Lcom/gsma/services/rcs/standalone/IStandaloneService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/gsma/services/rcs/standalone/IStandaloneService;->deleteMessage(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 476
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 477
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 473
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 476
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 477
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 476
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 477
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.gsma.services.rcs.standalone.IStandaloneService"

    return-object v0
.end method

.method public getServiceVersion()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 402
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 403
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.gsma.services.rcs.standalone.IStandaloneService"

    .line 406
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 407
    iget-object v2, p0, Lcom/gsma/services/rcs/standalone/IStandaloneService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 408
    invoke-static {}, Lcom/gsma/services/rcs/standalone/IStandaloneService$Stub;->getDefaultImpl()Lcom/gsma/services/rcs/standalone/IStandaloneService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 409
    invoke-static {}, Lcom/gsma/services/rcs/standalone/IStandaloneService$Stub;->getDefaultImpl()Lcom/gsma/services/rcs/standalone/IStandaloneService;

    move-result-object v2

    invoke-interface {v2}, Lcom/gsma/services/rcs/standalone/IStandaloneService;->getServiceVersion()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 415
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 416
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 411
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 412
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 415
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 416
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 415
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 416
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getStandaloneMessage(Ljava/lang/String;)Lcom/gsma/services/rcs/standalone/IStandaloneMessage;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 422
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 423
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.gsma.services.rcs.standalone.IStandaloneService"

    .line 426
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 427
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 428
    iget-object v2, p0, Lcom/gsma/services/rcs/standalone/IStandaloneService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 429
    invoke-static {}, Lcom/gsma/services/rcs/standalone/IStandaloneService$Stub;->getDefaultImpl()Lcom/gsma/services/rcs/standalone/IStandaloneService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 430
    invoke-static {}, Lcom/gsma/services/rcs/standalone/IStandaloneService$Stub;->getDefaultImpl()Lcom/gsma/services/rcs/standalone/IStandaloneService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/gsma/services/rcs/standalone/IStandaloneService;->getStandaloneMessage(Ljava/lang/String;)Lcom/gsma/services/rcs/standalone/IStandaloneMessage;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 436
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 437
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 432
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 433
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/gsma/services/rcs/standalone/IStandaloneMessage$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/standalone/IStandaloneMessage;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 436
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 437
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 436
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 437
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public isAllowedToSendStandaloneMessage()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 443
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 444
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.gsma.services.rcs.standalone.IStandaloneService"

    .line 447
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 448
    iget-object v2, p0, Lcom/gsma/services/rcs/standalone/IStandaloneService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 449
    invoke-static {}, Lcom/gsma/services/rcs/standalone/IStandaloneService$Stub;->getDefaultImpl()Lcom/gsma/services/rcs/standalone/IStandaloneService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 450
    invoke-static {}, Lcom/gsma/services/rcs/standalone/IStandaloneService$Stub;->getDefaultImpl()Lcom/gsma/services/rcs/standalone/IStandaloneService;

    move-result-object v2

    invoke-interface {v2}, Lcom/gsma/services/rcs/standalone/IStandaloneService;->isAllowedToSendStandaloneMessage()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 456
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 457
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 452
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 453
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 456
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 457
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 456
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 457
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public isServiceRegistered()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 287
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 288
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.gsma.services.rcs.standalone.IStandaloneService"

    .line 291
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 292
    iget-object v2, p0, Lcom/gsma/services/rcs/standalone/IStandaloneService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 293
    invoke-static {}, Lcom/gsma/services/rcs/standalone/IStandaloneService$Stub;->getDefaultImpl()Lcom/gsma/services/rcs/standalone/IStandaloneService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 294
    invoke-static {}, Lcom/gsma/services/rcs/standalone/IStandaloneService$Stub;->getDefaultImpl()Lcom/gsma/services/rcs/standalone/IStandaloneService;

    move-result-object v2

    invoke-interface {v2}, Lcom/gsma/services/rcs/standalone/IStandaloneService;->isServiceRegistered()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 301
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 296
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 297
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    move v3, v4

    .line 300
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 301
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :catchall_0
    move-exception v2

    .line 300
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 301
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public markMessageAsRead(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 383
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 384
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.gsma.services.rcs.standalone.IStandaloneService"

    .line 386
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 387
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 388
    iget-object v2, p0, Lcom/gsma/services/rcs/standalone/IStandaloneService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 389
    invoke-static {}, Lcom/gsma/services/rcs/standalone/IStandaloneService$Stub;->getDefaultImpl()Lcom/gsma/services/rcs/standalone/IStandaloneService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 390
    invoke-static {}, Lcom/gsma/services/rcs/standalone/IStandaloneService$Stub;->getDefaultImpl()Lcom/gsma/services/rcs/standalone/IStandaloneService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/gsma/services/rcs/standalone/IStandaloneService;->markMessageAsRead(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 396
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 397
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 393
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 396
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 397
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 396
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 397
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public reSendStandaloneMessage(Ljava/lang/String;)Lcom/gsma/services/rcs/standalone/IStandaloneMessage;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 579
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 580
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.gsma.services.rcs.standalone.IStandaloneService"

    .line 583
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 584
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 585
    iget-object v2, p0, Lcom/gsma/services/rcs/standalone/IStandaloneService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 586
    invoke-static {}, Lcom/gsma/services/rcs/standalone/IStandaloneService$Stub;->getDefaultImpl()Lcom/gsma/services/rcs/standalone/IStandaloneService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 587
    invoke-static {}, Lcom/gsma/services/rcs/standalone/IStandaloneService$Stub;->getDefaultImpl()Lcom/gsma/services/rcs/standalone/IStandaloneService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/gsma/services/rcs/standalone/IStandaloneService;->reSendStandaloneMessage(Ljava/lang/String;)Lcom/gsma/services/rcs/standalone/IStandaloneMessage;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 593
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 594
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 589
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 590
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/gsma/services/rcs/standalone/IStandaloneMessage$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/standalone/IStandaloneMessage;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 593
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 594
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 593
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 594
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public removeEventListener(Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 326
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 327
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.gsma.services.rcs.standalone.IStandaloneService"

    .line 329
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 330
    invoke-interface {p1}, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 331
    iget-object v2, p0, Lcom/gsma/services/rcs/standalone/IStandaloneService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 332
    invoke-static {}, Lcom/gsma/services/rcs/standalone/IStandaloneService$Stub;->getDefaultImpl()Lcom/gsma/services/rcs/standalone/IStandaloneService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 333
    invoke-static {}, Lcom/gsma/services/rcs/standalone/IStandaloneService$Stub;->getDefaultImpl()Lcom/gsma/services/rcs/standalone/IStandaloneService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/gsma/services/rcs/standalone/IStandaloneService;->removeEventListener(Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 340
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 336
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 339
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 340
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 339
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 340
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public removeStandaloneEventListener(Lcom/gsma/services/rcs/standalone/IStandaloneListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 364
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 365
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.gsma.services.rcs.standalone.IStandaloneService"

    .line 367
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 368
    invoke-interface {p1}, Lcom/gsma/services/rcs/standalone/IStandaloneListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 369
    iget-object v2, p0, Lcom/gsma/services/rcs/standalone/IStandaloneService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 370
    invoke-static {}, Lcom/gsma/services/rcs/standalone/IStandaloneService$Stub;->getDefaultImpl()Lcom/gsma/services/rcs/standalone/IStandaloneService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 371
    invoke-static {}, Lcom/gsma/services/rcs/standalone/IStandaloneService$Stub;->getDefaultImpl()Lcom/gsma/services/rcs/standalone/IStandaloneService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/gsma/services/rcs/standalone/IStandaloneService;->removeStandaloneEventListener(Lcom/gsma/services/rcs/standalone/IStandaloneListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 377
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 378
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 374
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 377
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 378
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 377
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 378
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public sendStandaloneMessage(Lcom/gsma/services/rcs/contact/ContactId;Lcom/gsma/services/rcs/standalone/StandaloneMessageEntity;)Lcom/gsma/services/rcs/standalone/IStandaloneMessage;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 482
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 483
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.gsma.services.rcs.standalone.IStandaloneService"

    .line 486
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 488
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 489
    invoke-virtual {p1, v0, v3}, Lcom/gsma/services/rcs/contact/ContactId;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 492
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    if-eqz p2, :cond_1

    .line 495
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 496
    invoke-virtual {p2, v0, v3}, Lcom/gsma/services/rcs/standalone/StandaloneMessageEntity;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 499
    :cond_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 501
    :goto_1
    iget-object v2, p0, Lcom/gsma/services/rcs/standalone/IStandaloneService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xb

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 502
    invoke-static {}, Lcom/gsma/services/rcs/standalone/IStandaloneService$Stub;->getDefaultImpl()Lcom/gsma/services/rcs/standalone/IStandaloneService;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 503
    invoke-static {}, Lcom/gsma/services/rcs/standalone/IStandaloneService$Stub;->getDefaultImpl()Lcom/gsma/services/rcs/standalone/IStandaloneService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/gsma/services/rcs/standalone/IStandaloneService;->sendStandaloneMessage(Lcom/gsma/services/rcs/contact/ContactId;Lcom/gsma/services/rcs/standalone/StandaloneMessageEntity;)Lcom/gsma/services/rcs/standalone/IStandaloneMessage;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 509
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 510
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 505
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 506
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/gsma/services/rcs/standalone/IStandaloneMessage$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/standalone/IStandaloneMessage;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 509
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 510
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 509
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 510
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public sendStandaloneMessage2(Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;Lcom/gsma/services/rcs/standalone/StandaloneMessageEntity;)Lcom/gsma/services/rcs/standalone/IStandaloneMessage;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 544
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 545
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.gsma.services.rcs.standalone.IStandaloneService"

    .line 548
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 549
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    .line 551
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 552
    invoke-virtual {p2, v0, v3}, Lcom/gsma/services/rcs/contact/ContactId;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 555
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    if-eqz p3, :cond_1

    .line 558
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 559
    invoke-virtual {p3, v0, v3}, Lcom/gsma/services/rcs/standalone/StandaloneMessageEntity;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 562
    :cond_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 564
    :goto_1
    iget-object v2, p0, Lcom/gsma/services/rcs/standalone/IStandaloneService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xd

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 565
    invoke-static {}, Lcom/gsma/services/rcs/standalone/IStandaloneService$Stub;->getDefaultImpl()Lcom/gsma/services/rcs/standalone/IStandaloneService;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 566
    invoke-static {}, Lcom/gsma/services/rcs/standalone/IStandaloneService$Stub;->getDefaultImpl()Lcom/gsma/services/rcs/standalone/IStandaloneService;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/gsma/services/rcs/standalone/IStandaloneService;->sendStandaloneMessage2(Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;Lcom/gsma/services/rcs/standalone/StandaloneMessageEntity;)Lcom/gsma/services/rcs/standalone/IStandaloneMessage;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 572
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 573
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 568
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 569
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/gsma/services/rcs/standalone/IStandaloneMessage$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/standalone/IStandaloneMessage;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 572
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 573
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 572
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 573
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public sendStandaloneMessageToGroup(Ljava/lang/String;Lcom/gsma/services/rcs/standalone/StandaloneMessageEntity;)Lcom/gsma/services/rcs/standalone/IStandaloneMessage;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 516
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 517
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.gsma.services.rcs.standalone.IStandaloneService"

    .line 520
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 521
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    const/4 v3, 0x1

    .line 523
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 524
    invoke-virtual {p2, v0, v2}, Lcom/gsma/services/rcs/standalone/StandaloneMessageEntity;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 527
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 529
    :goto_0
    iget-object v3, p0, Lcom/gsma/services/rcs/standalone/IStandaloneService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xc

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 530
    invoke-static {}, Lcom/gsma/services/rcs/standalone/IStandaloneService$Stub;->getDefaultImpl()Lcom/gsma/services/rcs/standalone/IStandaloneService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 531
    invoke-static {}, Lcom/gsma/services/rcs/standalone/IStandaloneService$Stub;->getDefaultImpl()Lcom/gsma/services/rcs/standalone/IStandaloneService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/gsma/services/rcs/standalone/IStandaloneService;->sendStandaloneMessageToGroup(Ljava/lang/String;Lcom/gsma/services/rcs/standalone/StandaloneMessageEntity;)Lcom/gsma/services/rcs/standalone/IStandaloneMessage;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 537
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 538
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 533
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 534
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/gsma/services/rcs/standalone/IStandaloneMessage$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/standalone/IStandaloneMessage;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 537
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 538
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 537
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 538
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method
