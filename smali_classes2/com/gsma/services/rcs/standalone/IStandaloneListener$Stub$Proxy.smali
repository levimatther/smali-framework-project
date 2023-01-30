.class Lcom/gsma/services/rcs/standalone/IStandaloneListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IStandaloneListener.java"

# interfaces
.implements Lcom/gsma/services/rcs/standalone/IStandaloneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/standalone/IStandaloneListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/gsma/services/rcs/standalone/IStandaloneListener;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput-object p1, p0, Lcom/gsma/services/rcs/standalone/IStandaloneListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/gsma/services/rcs/standalone/IStandaloneListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.gsma.services.rcs.standalone.IStandaloneListener"

    return-object v0
.end method

.method public onGroupStandaloneDeleted(Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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

    .line 192
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.gsma.services.rcs.standalone.IStandaloneListener"

    .line 194
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 195
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 196
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 197
    iget-object v1, p0, Lcom/gsma/services/rcs/standalone/IStandaloneListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 198
    invoke-static {}, Lcom/gsma/services/rcs/standalone/IStandaloneListener$Stub;->getDefaultImpl()Lcom/gsma/services/rcs/standalone/IStandaloneListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 199
    invoke-static {}, Lcom/gsma/services/rcs/standalone/IStandaloneListener$Stub;->getDefaultImpl()Lcom/gsma/services/rcs/standalone/IStandaloneListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/gsma/services/rcs/standalone/IStandaloneListener;->onGroupStandaloneDeleted(Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
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

.method public onMessageStatusChanged(Ljava/lang/String;IIZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 150
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.gsma.services.rcs.standalone.IStandaloneListener"

    .line 152
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 153
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    if-eqz p4, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 156
    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    iget-object v2, p0, Lcom/gsma/services/rcs/standalone/IStandaloneListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v0, v3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 158
    invoke-static {}, Lcom/gsma/services/rcs/standalone/IStandaloneListener$Stub;->getDefaultImpl()Lcom/gsma/services/rcs/standalone/IStandaloneListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 159
    invoke-static {}, Lcom/gsma/services/rcs/standalone/IStandaloneListener$Stub;->getDefaultImpl()Lcom/gsma/services/rcs/standalone/IStandaloneListener;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/gsma/services/rcs/standalone/IStandaloneListener;->onMessageStatusChanged(Ljava/lang/String;IIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
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

.method public onMessagesDeleted(Lcom/gsma/services/rcs/contact/ContactId;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gsma/services/rcs/contact/ContactId;",
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

    .line 169
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.gsma.services.rcs.standalone.IStandaloneListener"

    .line 171
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 173
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 174
    invoke-virtual {p1, v0, v2}, Lcom/gsma/services/rcs/contact/ContactId;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 177
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 180
    iget-object v2, p0, Lcom/gsma/services/rcs/standalone/IStandaloneListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 181
    invoke-static {}, Lcom/gsma/services/rcs/standalone/IStandaloneListener$Stub;->getDefaultImpl()Lcom/gsma/services/rcs/standalone/IStandaloneListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 182
    invoke-static {}, Lcom/gsma/services/rcs/standalone/IStandaloneListener$Stub;->getDefaultImpl()Lcom/gsma/services/rcs/standalone/IStandaloneListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/gsma/services/rcs/standalone/IStandaloneListener;->onMessagesDeleted(Lcom/gsma/services/rcs/contact/ContactId;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
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

.method public onNewStandaloneMessageReceived(Lcom/gsma/services/rcs/standalone/IStandaloneMessage;)V
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
    const-string v1, "com.gsma.services.rcs.standalone.IStandaloneListener"

    .line 211
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 212
    invoke-interface {p1}, Lcom/gsma/services/rcs/standalone/IStandaloneMessage;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 213
    iget-object v2, p0, Lcom/gsma/services/rcs/standalone/IStandaloneListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 214
    invoke-static {}, Lcom/gsma/services/rcs/standalone/IStandaloneListener$Stub;->getDefaultImpl()Lcom/gsma/services/rcs/standalone/IStandaloneListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 215
    invoke-static {}, Lcom/gsma/services/rcs/standalone/IStandaloneListener$Stub;->getDefaultImpl()Lcom/gsma/services/rcs/standalone/IStandaloneListener;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/gsma/services/rcs/standalone/IStandaloneListener;->onNewStandaloneMessageReceived(Lcom/gsma/services/rcs/standalone/IStandaloneMessage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
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

.method public onSendFailed(Ljava/lang/String;ILjava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 225
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.gsma.services.rcs.standalone.IStandaloneListener"

    .line 227
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 228
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 229
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 230
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 231
    iget-object v1, p0, Lcom/gsma/services/rcs/standalone/IStandaloneListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 232
    invoke-static {}, Lcom/gsma/services/rcs/standalone/IStandaloneListener$Stub;->getDefaultImpl()Lcom/gsma/services/rcs/standalone/IStandaloneListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 233
    invoke-static {}, Lcom/gsma/services/rcs/standalone/IStandaloneListener$Stub;->getDefaultImpl()Lcom/gsma/services/rcs/standalone/IStandaloneListener;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/gsma/services/rcs/standalone/IStandaloneListener;->onSendFailed(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
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
