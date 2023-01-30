.class public abstract Lcom/tct/internal/gpdatahub/IDataHubManager$Stub;
.super Landroid/os/Binder;
.source "IDataHubManager.java"

# interfaces
.implements Lcom/tct/internal/gpdatahub/IDataHubManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tct/internal/gpdatahub/IDataHubManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tct/internal/gpdatahub/IDataHubManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.tct.internal.gpdatahub.IDataHubManager"

.field static final TRANSACTION_getTeyeId:I = 0x4

.field static final TRANSACTION_onApplicationExit:I = 0x5

.field static final TRANSACTION_onInsertEvent:I = 0x3

.field static final TRANSACTION_registerListener:I = 0x1

.field static final TRANSACTION_unregisterListener:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.tct.internal.gpdatahub.IDataHubManager"

    .line 40
    invoke-virtual {p0, p0, v0}, Lcom/tct/internal/gpdatahub/IDataHubManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/tct/internal/gpdatahub/IDataHubManager;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.tct.internal.gpdatahub.IDataHubManager"

    .line 51
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 52
    instance-of v1, v0, Lcom/tct/internal/gpdatahub/IDataHubManager;

    if-eqz v1, :cond_1

    .line 53
    check-cast v0, Lcom/tct/internal/gpdatahub/IDataHubManager;

    return-object v0

    .line 55
    :cond_1
    new-instance v0, Lcom/tct/internal/gpdatahub/IDataHubManager$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/tct/internal/gpdatahub/IDataHubManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/tct/internal/gpdatahub/IDataHubManager;
    .locals 1

    .line 255
    sget-object v0, Lcom/tct/internal/gpdatahub/IDataHubManager$Stub$Proxy;->sDefaultImpl:Lcom/tct/internal/gpdatahub/IDataHubManager;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/tct/internal/gpdatahub/IDataHubManager;)Z
    .locals 1

    .line 248
    sget-object v0, Lcom/tct/internal/gpdatahub/IDataHubManager$Stub$Proxy;->sDefaultImpl:Lcom/tct/internal/gpdatahub/IDataHubManager;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 249
    sput-object p0, Lcom/tct/internal/gpdatahub/IDataHubManager$Stub$Proxy;->sDefaultImpl:Lcom/tct/internal/gpdatahub/IDataHubManager;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
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

    const-string v1, "com.tct.internal.gpdatahub.IDataHubManager"

    if-eq p1, v0, :cond_5

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    const/4 v2, 0x3

    if-eq p1, v2, :cond_3

    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 121
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 68
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 112
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 115
    invoke-virtual {p0, p1}, Lcom/tct/internal/gpdatahub/IDataHubManager$Stub;->onApplicationExit(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 104
    :cond_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Lcom/tct/internal/gpdatahub/IDataHubManager$Stub;->getTeyeId()Ljava/lang/String;

    move-result-object p1

    .line 106
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 93
    :cond_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 98
    invoke-virtual {p0, v1, v2, p1}, Lcom/tct/internal/gpdatahub/IDataHubManager$Stub;->onInsertEvent(JI)V

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 84
    :cond_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/tct/internal/gpdatahub/IDataHubStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tct/internal/gpdatahub/IDataHubStatusListener;

    move-result-object p1

    .line 87
    invoke-virtual {p0, p1}, Lcom/tct/internal/gpdatahub/IDataHubManager$Stub;->unregisterListener(Lcom/tct/internal/gpdatahub/IDataHubStatusListener;)V

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 73
    :cond_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/tct/internal/gpdatahub/IDataHubStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tct/internal/gpdatahub/IDataHubStatusListener;

    move-result-object p1

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 78
    invoke-virtual {p0, p1, p2}, Lcom/tct/internal/gpdatahub/IDataHubManager$Stub;->registerListener(Lcom/tct/internal/gpdatahub/IDataHubStatusListener;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0
.end method
