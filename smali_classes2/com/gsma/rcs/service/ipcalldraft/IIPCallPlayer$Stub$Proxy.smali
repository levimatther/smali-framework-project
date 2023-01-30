.class Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer$Stub$Proxy;
.super Ljava/lang/Object;
.source "IIPCallPlayer.java"

# interfaces
.implements Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    iput-object p1, p0, Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public addEventListener(Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayerListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 466
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 467
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.gsma.rcs.service.ipcalldraft.IIPCallPlayer"

    .line 469
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 470
    invoke-interface {p1}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayerListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 471
    iget-object v2, p0, Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 472
    invoke-static {}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer$Stub;->getDefaultImpl()Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 473
    invoke-static {}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer$Stub;->getDefaultImpl()Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer;->addEventListener(Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayerListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 479
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 480
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 476
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 479
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 480
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 479
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 480
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 282
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 283
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.gsma.rcs.service.ipcalldraft.IIPCallPlayer"

    .line 285
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 286
    iget-object v2, p0, Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 287
    invoke-static {}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer$Stub;->getDefaultImpl()Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 288
    invoke-static {}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer$Stub;->getDefaultImpl()Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer;

    move-result-object v2

    invoke-interface {v2}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 295
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 291
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 294
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 295
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 294
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 295
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getAudioCodec()Lcom/gsma/rcs/service/ipcalldraft/AudioCodec;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 356
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 357
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.gsma.rcs.service.ipcalldraft.IIPCallPlayer"

    .line 360
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 361
    iget-object v2, p0, Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 362
    invoke-static {}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer$Stub;->getDefaultImpl()Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 363
    invoke-static {}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer$Stub;->getDefaultImpl()Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer;

    move-result-object v2

    invoke-interface {v2}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer;->getAudioCodec()Lcom/gsma/rcs/service/ipcalldraft/AudioCodec;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 374
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 375
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 365
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 366
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 367
    sget-object v2, Lcom/gsma/rcs/service/ipcalldraft/AudioCodec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gsma/rcs/service/ipcalldraft/AudioCodec;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 374
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 375
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 374
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 375
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.gsma.rcs.service.ipcalldraft.IIPCallPlayer"

    return-object v0
.end method

.method public getLocalAudioRtpPort()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 336
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 337
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.gsma.rcs.service.ipcalldraft.IIPCallPlayer"

    .line 340
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 341
    iget-object v2, p0, Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 342
    invoke-static {}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer$Stub;->getDefaultImpl()Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 343
    invoke-static {}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer$Stub;->getDefaultImpl()Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer;

    move-result-object v2

    invoke-interface {v2}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer;->getLocalAudioRtpPort()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 350
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 345
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 346
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 349
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 350
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 349
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 350
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getLocalVideoRtpPort()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 401
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 402
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.gsma.rcs.service.ipcalldraft.IIPCallPlayer"

    .line 405
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 406
    iget-object v2, p0, Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 407
    invoke-static {}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer$Stub;->getDefaultImpl()Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 408
    invoke-static {}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer$Stub;->getDefaultImpl()Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer;

    move-result-object v2

    invoke-interface {v2}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer;->getLocalVideoRtpPort()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 414
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 415
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 410
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 411
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 414
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 415
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 414
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 415
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getSupportedAudioCodecs()[Lcom/gsma/rcs/service/ipcalldraft/AudioCodec;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 381
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 382
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.gsma.rcs.service.ipcalldraft.IIPCallPlayer"

    .line 385
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 386
    iget-object v2, p0, Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 387
    invoke-static {}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer$Stub;->getDefaultImpl()Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 388
    invoke-static {}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer$Stub;->getDefaultImpl()Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer;

    move-result-object v2

    invoke-interface {v2}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer;->getSupportedAudioCodecs()[Lcom/gsma/rcs/service/ipcalldraft/AudioCodec;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 394
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 395
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 390
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 391
    sget-object v2, Lcom/gsma/rcs/service/ipcalldraft/AudioCodec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/gsma/rcs/service/ipcalldraft/AudioCodec;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 394
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 395
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 394
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 395
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getSupportedVideoCodecs()[Lcom/gsma/rcs/service/ipcalldraft/VideoCodec;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 446
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 447
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.gsma.rcs.service.ipcalldraft.IIPCallPlayer"

    .line 450
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 451
    iget-object v2, p0, Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 452
    invoke-static {}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer$Stub;->getDefaultImpl()Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 453
    invoke-static {}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer$Stub;->getDefaultImpl()Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer;

    move-result-object v2

    invoke-interface {v2}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer;->getSupportedVideoCodecs()[Lcom/gsma/rcs/service/ipcalldraft/VideoCodec;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 459
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 460
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 455
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 456
    sget-object v2, Lcom/gsma/rcs/service/ipcalldraft/VideoCodec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/gsma/rcs/service/ipcalldraft/VideoCodec;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 459
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 460
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 459
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 460
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getVideoCodec()Lcom/gsma/rcs/service/ipcalldraft/VideoCodec;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 421
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 422
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.gsma.rcs.service.ipcalldraft.IIPCallPlayer"

    .line 425
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 426
    iget-object v2, p0, Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 427
    invoke-static {}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer$Stub;->getDefaultImpl()Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 428
    invoke-static {}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer$Stub;->getDefaultImpl()Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer;

    move-result-object v2

    invoke-interface {v2}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer;->getVideoCodec()Lcom/gsma/rcs/service/ipcalldraft/VideoCodec;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 439
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 440
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 430
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 431
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 432
    sget-object v2, Lcom/gsma/rcs/service/ipcalldraft/VideoCodec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gsma/rcs/service/ipcalldraft/VideoCodec;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 439
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 440
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 439
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 440
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public open(Lcom/gsma/rcs/service/ipcalldraft/AudioCodec;Lcom/gsma/rcs/service/ipcalldraft/VideoCodec;Ljava/lang/String;II)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 247
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 248
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.gsma.rcs.service.ipcalldraft.IIPCallPlayer"

    .line 250
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 252
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 253
    invoke-virtual {p1, v0, v3}, Lcom/gsma/rcs/service/ipcalldraft/AudioCodec;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 256
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    if-eqz p2, :cond_1

    .line 259
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 260
    invoke-virtual {p2, v0, v3}, Lcom/gsma/rcs/service/ipcalldraft/VideoCodec;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 263
    :cond_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 265
    :goto_1
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 266
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 267
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 268
    iget-object v4, p0, Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-interface {v4, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 269
    invoke-static {}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer$Stub;->getDefaultImpl()Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 270
    invoke-static {}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer$Stub;->getDefaultImpl()Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer;

    move-result-object v3

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move v8, p5

    invoke-interface/range {v3 .. v8}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer;->open(Lcom/gsma/rcs/service/ipcalldraft/AudioCodec;Lcom/gsma/rcs/service/ipcalldraft/VideoCodec;Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 277
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 273
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 276
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 277
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 276
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 277
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public removeEventListener(Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayerListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 485
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 486
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.gsma.rcs.service.ipcalldraft.IIPCallPlayer"

    .line 488
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 489
    invoke-interface {p1}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayerListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 490
    iget-object v2, p0, Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 491
    invoke-static {}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer$Stub;->getDefaultImpl()Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 492
    invoke-static {}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer$Stub;->getDefaultImpl()Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer;->removeEventListener(Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayerListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 498
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 499
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 495
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 498
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 499
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 498
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 499
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public start()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 300
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 301
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.gsma.rcs.service.ipcalldraft.IIPCallPlayer"

    .line 303
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 304
    iget-object v2, p0, Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 305
    invoke-static {}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer$Stub;->getDefaultImpl()Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 306
    invoke-static {}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer$Stub;->getDefaultImpl()Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer;

    move-result-object v2

    invoke-interface {v2}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 313
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 309
    :cond_0
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
    move-exception v2

    .line 312
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 313
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public stop()V
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
    const-string v2, "com.gsma.rcs.service.ipcalldraft.IIPCallPlayer"

    .line 321
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 322
    iget-object v2, p0, Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 323
    invoke-static {}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer$Stub;->getDefaultImpl()Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 324
    invoke-static {}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer$Stub;->getDefaultImpl()Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer;

    move-result-object v2

    invoke-interface {v2}, Lcom/gsma/rcs/service/ipcalldraft/IIPCallPlayer;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 330
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 331
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 327
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 330
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 331
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 330
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 331
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method
