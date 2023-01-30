.class public abstract Lcom/gsma/services/rcs/upload/IFileUploadService$Stub;
.super Landroid/os/Binder;
.source "IFileUploadService.java"

# interfaces
.implements Lcom/gsma/services/rcs/upload/IFileUploadService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/upload/IFileUploadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/upload/IFileUploadService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.gsma.services.rcs.upload.IFileUploadService"

.field static final TRANSACTION_addEventListener:I = 0x6

.field static final TRANSACTION_canUploadFile:I = 0x2

.field static final TRANSACTION_getCommonConfiguration:I = 0x9

.field static final TRANSACTION_getConfiguration:I = 0x1

.field static final TRANSACTION_getFileUpload:I = 0x4

.field static final TRANSACTION_getFileUploads:I = 0x3

.field static final TRANSACTION_getServiceVersion:I = 0x8

.field static final TRANSACTION_removeEventListener:I = 0x7

.field static final TRANSACTION_uploadFile:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.gsma.services.rcs.upload.IFileUploadService"

    .line 59
    invoke-virtual {p0, p0, v0}, Lcom/gsma/services/rcs/upload/IFileUploadService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/upload/IFileUploadService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.gsma.services.rcs.upload.IFileUploadService"

    .line 70
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 71
    instance-of v1, v0, Lcom/gsma/services/rcs/upload/IFileUploadService;

    if-eqz v1, :cond_1

    .line 72
    check-cast v0, Lcom/gsma/services/rcs/upload/IFileUploadService;

    return-object v0

    .line 74
    :cond_1
    new-instance v0, Lcom/gsma/services/rcs/upload/IFileUploadService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/gsma/services/rcs/upload/IFileUploadService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/gsma/services/rcs/upload/IFileUploadService;
    .locals 1

    .line 408
    sget-object v0, Lcom/gsma/services/rcs/upload/IFileUploadService$Stub$Proxy;->sDefaultImpl:Lcom/gsma/services/rcs/upload/IFileUploadService;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/gsma/services/rcs/upload/IFileUploadService;)Z
    .locals 1

    .line 398
    sget-object v0, Lcom/gsma/services/rcs/upload/IFileUploadService$Stub$Proxy;->sDefaultImpl:Lcom/gsma/services/rcs/upload/IFileUploadService;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 402
    sput-object p0, Lcom/gsma/services/rcs/upload/IFileUploadService$Stub$Proxy;->sDefaultImpl:Lcom/gsma/services/rcs/upload/IFileUploadService;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 399
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
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "com.gsma.services.rcs.upload.IFileUploadService"

    if-eq p1, v0, :cond_6

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 177
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 169
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0}, Lcom/gsma/services/rcs/upload/IFileUploadService$Stub;->getCommonConfiguration()Lcom/gsma/services/rcs/ICommonServiceConfiguration;

    move-result-object p1

    .line 171
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_0

    .line 172
    invoke-interface {p1}, Lcom/gsma/services/rcs/ICommonServiceConfiguration;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v1

    .line 161
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p0}, Lcom/gsma/services/rcs/upload/IFileUploadService$Stub;->getServiceVersion()I

    move-result p1

    .line 163
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 152
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/gsma/services/rcs/upload/IFileUploadListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/upload/IFileUploadListener;

    move-result-object p1

    .line 155
    invoke-virtual {p0, p1}, Lcom/gsma/services/rcs/upload/IFileUploadService$Stub;->removeEventListener(Lcom/gsma/services/rcs/upload/IFileUploadListener;)V

    .line 156
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 143
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/gsma/services/rcs/upload/IFileUploadListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/upload/IFileUploadListener;

    move-result-object p1

    .line 146
    invoke-virtual {p0, p1}, Lcom/gsma/services/rcs/upload/IFileUploadService$Stub;->addEventListener(Lcom/gsma/services/rcs/upload/IFileUploadListener;)V

    .line 147
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 126
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 129
    sget-object p1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    goto :goto_0

    :cond_1
    move-object p1, v0

    .line 135
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_2

    move p2, v1

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    .line 136
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/gsma/services/rcs/upload/IFileUploadService$Stub;->uploadFile(Landroid/net/Uri;Z)Lcom/gsma/services/rcs/upload/IFileUpload;

    move-result-object p1

    .line 137
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_3

    .line 138
    invoke-interface {p1}, Lcom/gsma/services/rcs/upload/IFileUpload;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v1

    .line 116
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 119
    invoke-virtual {p0, p1}, Lcom/gsma/services/rcs/upload/IFileUploadService$Stub;->getFileUpload(Ljava/lang/String;)Lcom/gsma/services/rcs/upload/IFileUpload;

    move-result-object p1

    .line 120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_4

    .line 121
    invoke-interface {p1}, Lcom/gsma/services/rcs/upload/IFileUpload;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v1

    .line 108
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Lcom/gsma/services/rcs/upload/IFileUploadService$Stub;->getFileUploads()Ljava/util/List;

    move-result-object p1

    .line 110
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBinderList(Ljava/util/List;)V

    return v1

    .line 100
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lcom/gsma/services/rcs/upload/IFileUploadService$Stub;->canUploadFile()Z

    move-result p1

    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 92
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lcom/gsma/services/rcs/upload/IFileUploadService$Stub;->getConfiguration()Lcom/gsma/services/rcs/upload/IFileUploadServiceConfiguration;

    move-result-object p1

    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_5

    .line 95
    invoke-interface {p1}, Lcom/gsma/services/rcs/upload/IFileUploadServiceConfiguration;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v1

    .line 87
    :cond_6
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
