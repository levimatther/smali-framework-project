.class Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IMultimediaMessagingSessionListener.java"

# interfaces
.implements Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    iput-object p1, p0, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.gsma.services.rcs.extension.IMultimediaMessagingSessionListener"

    return-object v0
.end method

.method public onMMTelCallComposerInfoReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 281
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v0, "com.gsma.services.rcs.extension.IMultimediaMessagingSessionListener"

    .line 283
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    move-object v0, p1

    .line 284
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object v4, p2

    .line 285
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object v5, p3

    .line 286
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move/from16 v6, p4

    .line 287
    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v7, p5

    .line 288
    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v8, p6

    .line 289
    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x1

    if-eqz p7, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 290
    :goto_0
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v10, p0

    .line 291
    :try_start_1
    iget-object v3, v10, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v9, 0x5

    const/4 v11, 0x0

    invoke-interface {v3, v9, v1, v11, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 292
    invoke-static {}, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener$Stub;->getDefaultImpl()Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 293
    invoke-static {}, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener$Stub;->getDefaultImpl()Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-interface/range {v2 .. v9}, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener;->onMMTelCallComposerInfoReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 298
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v10, p0

    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public onMessageReceived(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;[B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 209
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.gsma.services.rcs.extension.IMultimediaMessagingSessionListener"

    .line 211
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 213
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 214
    invoke-virtual {p1, v0, v2}, Lcom/gsma/services/rcs/contact/ContactId;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 217
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 220
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 221
    iget-object v2, p0, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 222
    invoke-static {}, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener$Stub;->getDefaultImpl()Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 223
    invoke-static {}, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener$Stub;->getDefaultImpl()Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener;->onMessageReceived(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
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

.method public onMessageReceived2(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;[BLjava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 233
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.gsma.services.rcs.extension.IMultimediaMessagingSessionListener"

    .line 235
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 237
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 238
    invoke-virtual {p1, v0, v2}, Lcom/gsma/services/rcs/contact/ContactId;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 241
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 243
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 244
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 245
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 246
    iget-object v2, p0, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 247
    invoke-static {}, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener$Stub;->getDefaultImpl()Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 248
    invoke-static {}, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener$Stub;->getDefaultImpl()Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener;->onMessageReceived2(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;[BLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
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

.method public onMessagesFlushed(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 258
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.gsma.services.rcs.extension.IMultimediaMessagingSessionListener"

    .line 260
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 262
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 263
    invoke-virtual {p1, v0, v2}, Lcom/gsma/services/rcs/contact/ContactId;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 266
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 268
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 269
    iget-object v2, p0, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 270
    invoke-static {}, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener$Stub;->getDefaultImpl()Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 271
    invoke-static {}, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener$Stub;->getDefaultImpl()Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener;->onMessagesFlushed(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
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

.method public onStateChanged(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;II)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 184
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.gsma.services.rcs.extension.IMultimediaMessagingSessionListener"

    .line 186
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    .line 188
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 189
    invoke-virtual {p1, v0, v1}, Lcom/gsma/services/rcs/contact/ContactId;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 192
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 195
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    iget-object v1, p0, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v3, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 198
    invoke-static {}, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener$Stub;->getDefaultImpl()Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 199
    invoke-static {}, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener$Stub;->getDefaultImpl()Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener;->onStateChanged(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
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
