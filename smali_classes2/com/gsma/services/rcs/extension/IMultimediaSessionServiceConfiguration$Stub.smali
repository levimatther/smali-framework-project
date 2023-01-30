.class public abstract Lcom/gsma/services/rcs/extension/IMultimediaSessionServiceConfiguration$Stub;
.super Landroid/os/Binder;
.source "IMultimediaSessionServiceConfiguration.java"

# interfaces
.implements Lcom/gsma/services/rcs/extension/IMultimediaSessionServiceConfiguration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/extension/IMultimediaSessionServiceConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/extension/IMultimediaSessionServiceConfiguration$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.gsma.services.rcs.extension.IMultimediaSessionServiceConfiguration"

.field static final TRANSACTION_getMessageMaxLength:I = 0x1

.field static final TRANSACTION_getMessagingSessionInactivityTimeout:I = 0x2

.field static final TRANSACTION_isServiceActivated:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.gsma.services.rcs.extension.IMultimediaSessionServiceConfiguration"

    .line 37
    invoke-virtual {p0, p0, v0}, Lcom/gsma/services/rcs/extension/IMultimediaSessionServiceConfiguration$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/extension/IMultimediaSessionServiceConfiguration;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.gsma.services.rcs.extension.IMultimediaSessionServiceConfiguration"

    .line 48
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 49
    instance-of v1, v0, Lcom/gsma/services/rcs/extension/IMultimediaSessionServiceConfiguration;

    if-eqz v1, :cond_1

    .line 50
    check-cast v0, Lcom/gsma/services/rcs/extension/IMultimediaSessionServiceConfiguration;

    return-object v0

    .line 52
    :cond_1
    new-instance v0, Lcom/gsma/services/rcs/extension/IMultimediaSessionServiceConfiguration$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/gsma/services/rcs/extension/IMultimediaSessionServiceConfiguration$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/gsma/services/rcs/extension/IMultimediaSessionServiceConfiguration;
    .locals 1

    .line 198
    sget-object v0, Lcom/gsma/services/rcs/extension/IMultimediaSessionServiceConfiguration$Stub$Proxy;->sDefaultImpl:Lcom/gsma/services/rcs/extension/IMultimediaSessionServiceConfiguration;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/gsma/services/rcs/extension/IMultimediaSessionServiceConfiguration;)Z
    .locals 1

    .line 188
    sget-object v0, Lcom/gsma/services/rcs/extension/IMultimediaSessionServiceConfiguration$Stub$Proxy;->sDefaultImpl:Lcom/gsma/services/rcs/extension/IMultimediaSessionServiceConfiguration;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 192
    sput-object p0, Lcom/gsma/services/rcs/extension/IMultimediaSessionServiceConfiguration$Stub$Proxy;->sDefaultImpl:Lcom/gsma/services/rcs/extension/IMultimediaSessionServiceConfiguration;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 189
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

    const/4 v0, 0x1

    const-string v1, "com.gsma.services.rcs.extension.IMultimediaSessionServiceConfiguration"

    if-eq p1, v0, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 98
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 65
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 88
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 91
    invoke-virtual {p0, p1}, Lcom/gsma/services/rcs/extension/IMultimediaSessionServiceConfiguration$Stub;->isServiceActivated(Ljava/lang/String;)Z

    move-result p1

    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 78
    :cond_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 81
    invoke-virtual {p0, p1}, Lcom/gsma/services/rcs/extension/IMultimediaSessionServiceConfiguration$Stub;->getMessagingSessionInactivityTimeout(Ljava/lang/String;)J

    move-result-wide p1

    .line 82
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    return v0

    .line 70
    :cond_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Lcom/gsma/services/rcs/extension/IMultimediaSessionServiceConfiguration$Stub;->getMessageMaxLength()I

    move-result p1

    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0
.end method
