.class Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IMultimediaStreamingSessionListener.java"

# interfaces
.implements Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p1, p0, Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.gsma.services.rcs.extension.IMultimediaStreamingSessionListener"

    return-object v0
.end method

.method public onPayloadReceived(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;[B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 146
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.gsma.services.rcs.extension.IMultimediaStreamingSessionListener"

    .line 148
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 150
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    invoke-virtual {p1, v0, v2}, Lcom/gsma/services/rcs/contact/ContactId;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 154
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 158
    iget-object v2, p0, Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 159
    invoke-static {}, Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener$Stub;->getDefaultImpl()Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 160
    invoke-static {}, Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener$Stub;->getDefaultImpl()Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener;->onPayloadReceived(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
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

    .line 121
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.gsma.services.rcs.extension.IMultimediaStreamingSessionListener"

    .line 123
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    .line 125
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    invoke-virtual {p1, v0, v1}, Lcom/gsma/services/rcs/contact/ContactId;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 129
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    iget-object v1, p0, Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v3, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 135
    invoke-static {}, Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener$Stub;->getDefaultImpl()Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 136
    invoke-static {}, Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener$Stub;->getDefaultImpl()Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener;->onStateChanged(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
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
