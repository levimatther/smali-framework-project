.class public abstract Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener$Stub;
.super Landroid/os/Binder;
.source "IGroupFileTransferListener.java"

# interfaces
.implements Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.gsma.services.rcs.filetransfer.IGroupFileTransferListener"

.field static final TRANSACTION_onDeleted:I = 0x4

.field static final TRANSACTION_onDeliveryInfoChanged:I = 0x2

.field static final TRANSACTION_onProgressUpdate:I = 0x3

.field static final TRANSACTION_onStateChanged:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.gsma.services.rcs.filetransfer.IGroupFileTransferListener"

    .line 37
    invoke-virtual {p0, p0, v0}, Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.gsma.services.rcs.filetransfer.IGroupFileTransferListener"

    .line 48
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 49
    instance-of v1, v0, Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener;

    if-eqz v1, :cond_1

    .line 50
    check-cast v0, Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener;

    return-object v0

    .line 52
    :cond_1
    new-instance v0, Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener;
    .locals 1

    .line 249
    sget-object v0, Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener$Stub$Proxy;->sDefaultImpl:Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener;)Z
    .locals 1

    .line 239
    sget-object v0, Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener$Stub$Proxy;->sDefaultImpl:Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 243
    sput-object p0, Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener$Stub$Proxy;->sDefaultImpl:Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 240
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "setDefaultImpl() called twice"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v7, 0x1

    const-string v2, "com.gsma.services.rcs.filetransfer.IGroupFileTransferListener"

    if-eq p1, v7, :cond_5

    const/4 v3, 0x2

    if-eq p1, v3, :cond_3

    const/4 v3, 0x3

    if-eq p1, v3, :cond_2

    const/4 v3, 0x4

    if-eq p1, v3, :cond_1

    const v3, 0x5f4e5446

    if-eq p1, v3, :cond_0

    .line 129
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 65
    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v7

    .line 119
    :cond_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 124
    invoke-virtual {p0, v0, v1}, Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener$Stub;->onDeleted(Ljava/lang/String;Ljava/util/List;)V

    return v7

    .line 105
    :cond_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    move-object v0, p0

    move-object v1, v2

    move-object v2, v3

    move-wide v3, v4

    move-wide v5, v8

    .line 114
    invoke-virtual/range {v0 .. v6}, Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener$Stub;->onProgressUpdate(Ljava/lang/String;Ljava/lang/String;JJ)V

    return v7

    .line 84
    :cond_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    .line 89
    sget-object v0, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/contact/ContactId;

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    move-object v3, v0

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object v0, p0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move v4, v5

    move v5, v6

    .line 100
    invoke-virtual/range {v0 .. v5}, Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener$Stub;->onDeliveryInfoChanged(Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;II)V

    return v7

    .line 70
    :cond_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 79
    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener$Stub;->onStateChanged(Ljava/lang/String;Ljava/lang/String;II)V

    return v7
.end method
