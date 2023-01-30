.class public abstract Lcom/gsma/services/rcs/upload/IFileUploadListener$Stub;
.super Landroid/os/Binder;
.source "IFileUploadListener.java"

# interfaces
.implements Lcom/gsma/services/rcs/upload/IFileUploadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/upload/IFileUploadListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/upload/IFileUploadListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.gsma.services.rcs.upload.IFileUploadListener"

.field static final TRANSACTION_onProgressUpdate:I = 0x2

.field static final TRANSACTION_onStateChanged:I = 0x1

.field static final TRANSACTION_onUploaded:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.gsma.services.rcs.upload.IFileUploadListener"

    .line 34
    invoke-virtual {p0, p0, v0}, Lcom/gsma/services/rcs/upload/IFileUploadListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/upload/IFileUploadListener;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.gsma.services.rcs.upload.IFileUploadListener"

    .line 45
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 46
    instance-of v1, v0, Lcom/gsma/services/rcs/upload/IFileUploadListener;

    if-eqz v1, :cond_1

    .line 47
    check-cast v0, Lcom/gsma/services/rcs/upload/IFileUploadListener;

    return-object v0

    .line 49
    :cond_1
    new-instance v0, Lcom/gsma/services/rcs/upload/IFileUploadListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/gsma/services/rcs/upload/IFileUploadListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/gsma/services/rcs/upload/IFileUploadListener;
    .locals 1

    .line 200
    sget-object v0, Lcom/gsma/services/rcs/upload/IFileUploadListener$Stub$Proxy;->sDefaultImpl:Lcom/gsma/services/rcs/upload/IFileUploadListener;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/gsma/services/rcs/upload/IFileUploadListener;)Z
    .locals 1

    .line 190
    sget-object v0, Lcom/gsma/services/rcs/upload/IFileUploadListener$Stub$Proxy;->sDefaultImpl:Lcom/gsma/services/rcs/upload/IFileUploadListener;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 194
    sput-object p0, Lcom/gsma/services/rcs/upload/IFileUploadListener$Stub$Proxy;->sDefaultImpl:Lcom/gsma/services/rcs/upload/IFileUploadListener;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 191
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
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "com.gsma.services.rcs.upload.IFileUploadListener"

    if-eq p1, v0, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 104
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 62
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 89
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    if-eqz p3, :cond_2

    .line 94
    sget-object p3, Lcom/gsma/services/rcs/upload/FileUploadInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/gsma/services/rcs/upload/FileUploadInfo;

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 99
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/gsma/services/rcs/upload/IFileUploadListener$Stub;->onUploaded(Ljava/lang/String;Lcom/gsma/services/rcs/upload/FileUploadInfo;)V

    return v0

    .line 77
    :cond_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    move-object v1, p0

    .line 84
    invoke-virtual/range {v1 .. v6}, Lcom/gsma/services/rcs/upload/IFileUploadListener$Stub;->onProgressUpdate(Ljava/lang/String;JJ)V

    return v0

    .line 67
    :cond_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 72
    invoke-virtual {p0, p1, p2}, Lcom/gsma/services/rcs/upload/IFileUploadListener$Stub;->onStateChanged(Ljava/lang/String;I)V

    return v0
.end method
