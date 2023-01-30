.class Lcom/tct/cs/services/rcs/chatbot/IChatbotListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IChatbotListener.java"

# interfaces
.implements Lcom/tct/cs/services/rcs/chatbot/IChatbotListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tct/cs/services/rcs/chatbot/IChatbotListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/tct/cs/services/rcs/chatbot/IChatbotListener;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    iput-object p1, p0, Lcom/tct/cs/services/rcs/chatbot/IChatbotListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/IChatbotListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public broadcastUserNotify(Lcom/tct/cs/services/rcs/chatbot/BotId;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 471
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.tct.cs.services.rcs.chatbot.IChatbotListener"

    .line 473
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 475
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 476
    invoke-virtual {p1, v0, v2}, Lcom/tct/cs/services/rcs/chatbot/BotId;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 479
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 481
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 482
    iget-object v2, p0, Lcom/tct/cs/services/rcs/chatbot/IChatbotListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 483
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotListener$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 484
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotListener$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/tct/cs/services/rcs/chatbot/IChatbotListener;->broadcastUserNotify(Lcom/tct/cs/services/rcs/chatbot/BotId;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 489
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

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.tct.cs.services.rcs.chatbot.IChatbotListener"

    return-object v0
.end method

.method public onAnonymousResultReceived(Lcom/tct/cs/services/rcs/chatbot/BotId;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 422
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.tct.cs.services.rcs.chatbot.IChatbotListener"

    .line 424
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 426
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 427
    invoke-virtual {p1, v0, v2}, Lcom/tct/cs/services/rcs/chatbot/BotId;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 430
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 432
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 433
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 434
    iget-object v2, p0, Lcom/tct/cs/services/rcs/chatbot/IChatbotListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 435
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotListener$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 436
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotListener$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotListener;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/tct/cs/services/rcs/chatbot/IChatbotListener;->onAnonymousResultReceived(Lcom/tct/cs/services/rcs/chatbot/BotId;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 441
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

.method public onBotInfoReceived(Lcom/tct/cs/services/rcs/chatbot/BotId;Lcom/tct/cs/services/rcs/chatbot/BotInfo;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 314
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.tct.cs.services.rcs.chatbot.IChatbotListener"

    .line 316
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 318
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 319
    invoke-virtual {p1, v0, v2}, Lcom/tct/cs/services/rcs/chatbot/BotId;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 322
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    if-eqz p2, :cond_1

    .line 325
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 326
    invoke-virtual {p2, v0, v2}, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 329
    :cond_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 331
    :goto_1
    iget-object v2, p0, Lcom/tct/cs/services/rcs/chatbot/IChatbotListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 332
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotListener$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotListener;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 333
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotListener$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/tct/cs/services/rcs/chatbot/IChatbotListener;->onBotInfoReceived(Lcom/tct/cs/services/rcs/chatbot/BotId;Lcom/tct/cs/services/rcs/chatbot/BotInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public onBotInfoRetrieveFailed(Lcom/tct/cs/services/rcs/chatbot/BotId;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 448
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.tct.cs.services.rcs.chatbot.IChatbotListener"

    .line 450
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 452
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 453
    invoke-virtual {p1, v0, v2}, Lcom/tct/cs/services/rcs/chatbot/BotId;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 456
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 458
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 459
    iget-object v2, p0, Lcom/tct/cs/services/rcs/chatbot/IChatbotListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 460
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotListener$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 461
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotListener$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/tct/cs/services/rcs/chatbot/IChatbotListener;->onBotInfoRetrieveFailed(Lcom/tct/cs/services/rcs/chatbot/BotId;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 466
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

.method public onComposingEvent(Lcom/tct/cs/services/rcs/chatbot/BotId;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 291
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.tct.cs.services.rcs.chatbot.IChatbotListener"

    .line 293
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 295
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 296
    invoke-virtual {p1, v0, v2}, Lcom/tct/cs/services/rcs/chatbot/BotId;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 299
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    if-eqz p2, :cond_1

    move v2, v1

    .line 301
    :cond_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 302
    iget-object v2, p0, Lcom/tct/cs/services/rcs/chatbot/IChatbotListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 303
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotListener$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotListener;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 304
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotListener$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/tct/cs/services/rcs/chatbot/IChatbotListener;->onComposingEvent(Lcom/tct/cs/services/rcs/chatbot/BotId;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public onMessageReceived(Lcom/tct/cs/services/rcs/chatbot/BotId;Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 366
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.tct.cs.services.rcs.chatbot.IChatbotListener"

    .line 368
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 370
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 371
    invoke-virtual {p1, v0, v2}, Lcom/tct/cs/services/rcs/chatbot/BotId;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 374
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    if-eqz p2, :cond_1

    .line 377
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 378
    invoke-virtual {p2, v0, v2}, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 381
    :cond_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 383
    :goto_1
    iget-object v2, p0, Lcom/tct/cs/services/rcs/chatbot/IChatbotListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 384
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotListener$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotListener;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 385
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotListener$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/tct/cs/services/rcs/chatbot/IChatbotListener;->onMessageReceived(Lcom/tct/cs/services/rcs/chatbot/BotId;Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 390
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public onMessageStatusChanged(Lcom/tct/cs/services/rcs/chatbot/BotId;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 265
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.tct.cs.services.rcs.chatbot.IChatbotListener"

    .line 267
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    .line 269
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 270
    invoke-virtual {p1, v0, v1}, Lcom/tct/cs/services/rcs/chatbot/BotId;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 273
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 275
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 276
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 277
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 278
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 279
    iget-object v1, p0, Lcom/tct/cs/services/rcs/chatbot/IChatbotListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v3, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 280
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotListener$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 281
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotListener$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotListener;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/tct/cs/services/rcs/chatbot/IChatbotListener;->onMessageStatusChanged(Lcom/tct/cs/services/rcs/chatbot/BotId;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
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

.method public onMessagesDeleted(Lcom/tct/cs/services/rcs/chatbot/BotId;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tct/cs/services/rcs/chatbot/BotId;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 343
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.tct.cs.services.rcs.chatbot.IChatbotListener"

    .line 345
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 347
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 348
    invoke-virtual {p1, v0, v2}, Lcom/tct/cs/services/rcs/chatbot/BotId;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 351
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 353
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 354
    iget-object v2, p0, Lcom/tct/cs/services/rcs/chatbot/IChatbotListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 355
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotListener$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 356
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotListener$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/tct/cs/services/rcs/chatbot/IChatbotListener;->onMessagesDeleted(Lcom/tct/cs/services/rcs/chatbot/BotId;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 361
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

.method public onReportSpamProcessed(Lcom/tct/cs/services/rcs/chatbot/BotId;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 397
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.tct.cs.services.rcs.chatbot.IChatbotListener"

    .line 399
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 401
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 402
    invoke-virtual {p1, v0, v2}, Lcom/tct/cs/services/rcs/chatbot/BotId;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 405
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    if-eqz p2, :cond_1

    move v2, v1

    .line 407
    :cond_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 408
    iget-object v2, p0, Lcom/tct/cs/services/rcs/chatbot/IChatbotListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 409
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotListener$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotListener;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 410
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotListener$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/tct/cs/services/rcs/chatbot/IChatbotListener;->onReportSpamProcessed(Lcom/tct/cs/services/rcs/chatbot/BotId;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 415
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method
