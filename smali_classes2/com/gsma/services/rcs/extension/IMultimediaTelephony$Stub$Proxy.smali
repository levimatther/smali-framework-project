.class Lcom/gsma/services/rcs/extension/IMultimediaTelephony$Stub$Proxy;
.super Ljava/lang/Object;
.source "IMultimediaTelephony.java"

# interfaces
.implements Lcom/gsma/services/rcs/extension/IMultimediaTelephony;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/extension/IMultimediaTelephony$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/gsma/services/rcs/extension/IMultimediaTelephony;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/gsma/services/rcs/extension/IMultimediaTelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/IMultimediaTelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.gsma.services.rcs.extension.IMultimediaTelephony"

    return-object v0
.end method

.method public setPreCallMsg(ILcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p2

    .line 112
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v11

    .line 113
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v12

    :try_start_0
    const-string v1, "com.gsma.services.rcs.extension.IMultimediaTelephony"

    .line 115
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    move v2, p1

    .line 116
    invoke-virtual {v11, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    invoke-virtual {v0, v11, v3}, Lcom/gsma/services/rcs/contact/ContactId;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 122
    :cond_0
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    move-object/from16 v4, p3

    .line 124
    invoke-virtual {v11, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    if-eqz p4, :cond_1

    move v5, v1

    goto :goto_1

    :cond_1
    move v5, v3

    .line 125
    :goto_1
    invoke-virtual {v11, v5}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v6, p5

    .line 126
    invoke-virtual {v11, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v7, p6

    .line 127
    invoke-virtual {v11, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v8, p7

    .line 128
    invoke-virtual {v11, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v9, p8

    .line 129
    invoke-virtual {v11, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v10, p9

    .line 130
    invoke-virtual {v11, v10}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v13, p0

    .line 131
    :try_start_1
    iget-object v5, v13, Lcom/gsma/services/rcs/extension/IMultimediaTelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-interface {v5, v1, v11, v12, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 132
    invoke-static {}, Lcom/gsma/services/rcs/extension/IMultimediaTelephony$Stub;->getDefaultImpl()Lcom/gsma/services/rcs/extension/IMultimediaTelephony;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 133
    invoke-static {}, Lcom/gsma/services/rcs/extension/IMultimediaTelephony$Stub;->getDefaultImpl()Lcom/gsma/services/rcs/extension/IMultimediaTelephony;

    move-result-object v1

    move v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-interface/range {v1 .. v10}, Lcom/gsma/services/rcs/extension/IMultimediaTelephony;->setPreCallMsg(ILcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    .line 140
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 136
    :cond_2
    :try_start_2
    invoke-virtual {v12}, Landroid/os/Parcel;->readException()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 139
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    .line 140
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v13, p0

    .line 139
    :goto_2
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    .line 140
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
