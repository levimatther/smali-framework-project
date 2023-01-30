.class public abstract Lcom/gsma/services/rcs/upload/IFileUpload$Stub;
.super Landroid/os/Binder;
.source "IFileUpload.java"

# interfaces
.implements Lcom/gsma/services/rcs/upload/IFileUpload;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/upload/IFileUpload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/upload/IFileUpload$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.gsma.services.rcs.upload.IFileUpload"

.field static final TRANSACTION_abortUpload:I = 0x5

.field static final TRANSACTION_getFile:I = 0x2

.field static final TRANSACTION_getState:I = 0x4

.field static final TRANSACTION_getUploadId:I = 0x1

.field static final TRANSACTION_getUploadInfo:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.gsma.services.rcs.upload.IFileUpload"

    .line 44
    invoke-virtual {p0, p0, v0}, Lcom/gsma/services/rcs/upload/IFileUpload$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/upload/IFileUpload;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.gsma.services.rcs.upload.IFileUpload"

    .line 55
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 56
    instance-of v1, v0, Lcom/gsma/services/rcs/upload/IFileUpload;

    if-eqz v1, :cond_1

    .line 57
    check-cast v0, Lcom/gsma/services/rcs/upload/IFileUpload;

    return-object v0

    .line 59
    :cond_1
    new-instance v0, Lcom/gsma/services/rcs/upload/IFileUpload$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/gsma/services/rcs/upload/IFileUpload$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/gsma/services/rcs/upload/IFileUpload;
    .locals 1

    .line 276
    sget-object v0, Lcom/gsma/services/rcs/upload/IFileUpload$Stub$Proxy;->sDefaultImpl:Lcom/gsma/services/rcs/upload/IFileUpload;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/gsma/services/rcs/upload/IFileUpload;)Z
    .locals 1

    .line 266
    sget-object v0, Lcom/gsma/services/rcs/upload/IFileUpload$Stub$Proxy;->sDefaultImpl:Lcom/gsma/services/rcs/upload/IFileUpload;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 270
    sput-object p0, Lcom/gsma/services/rcs/upload/IFileUpload$Stub$Proxy;->sDefaultImpl:Lcom/gsma/services/rcs/upload/IFileUpload;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 267
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
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "com.gsma.services.rcs.upload.IFileUpload"

    if-eq p1, v0, :cond_7

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq p1, v2, :cond_5

    const/4 v2, 0x3

    if-eq p1, v2, :cond_3

    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 128
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 72
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 121
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Lcom/gsma/services/rcs/upload/IFileUpload$Stub;->abortUpload()V

    .line 123
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 113
    :cond_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Lcom/gsma/services/rcs/upload/IFileUpload$Stub;->getState()I

    move-result p1

    .line 115
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 99
    :cond_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lcom/gsma/services/rcs/upload/IFileUpload$Stub;->getUploadInfo()Lcom/gsma/services/rcs/upload/FileUploadInfo;

    move-result-object p1

    .line 101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_4

    .line 103
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    invoke-virtual {p1, p3, v0}, Lcom/gsma/services/rcs/upload/FileUploadInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 107
    :cond_4
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v0

    .line 85
    :cond_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Lcom/gsma/services/rcs/upload/IFileUpload$Stub;->getFile()Landroid/net/Uri;

    move-result-object p1

    .line 87
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_6

    .line 89
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    invoke-virtual {p1, p3, v0}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 93
    :cond_6
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return v0

    .line 77
    :cond_7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lcom/gsma/services/rcs/upload/IFileUpload$Stub;->getUploadId()Ljava/lang/String;

    move-result-object p1

    .line 79
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0
.end method
