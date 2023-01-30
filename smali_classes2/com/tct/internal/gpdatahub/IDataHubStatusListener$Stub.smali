.class public abstract Lcom/tct/internal/gpdatahub/IDataHubStatusListener$Stub;
.super Landroid/os/Binder;
.source "IDataHubStatusListener.java"

# interfaces
.implements Lcom/tct/internal/gpdatahub/IDataHubStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tct/internal/gpdatahub/IDataHubStatusListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tct/internal/gpdatahub/IDataHubStatusListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.tct.internal.gpdatahub.IDataHubStatusListener"

.field static final TRANSACTION_onDataHubStateChanged:I = 0x1

.field static final TRANSACTION_onDebugStateChanged:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.tct.internal.gpdatahub.IDataHubStatusListener"

    .line 28
    invoke-virtual {p0, p0, v0}, Lcom/tct/internal/gpdatahub/IDataHubStatusListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/tct/internal/gpdatahub/IDataHubStatusListener;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.tct.internal.gpdatahub.IDataHubStatusListener"

    .line 39
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 40
    instance-of v1, v0, Lcom/tct/internal/gpdatahub/IDataHubStatusListener;

    if-eqz v1, :cond_1

    .line 41
    check-cast v0, Lcom/tct/internal/gpdatahub/IDataHubStatusListener;

    return-object v0

    .line 43
    :cond_1
    new-instance v0, Lcom/tct/internal/gpdatahub/IDataHubStatusListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/tct/internal/gpdatahub/IDataHubStatusListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/tct/internal/gpdatahub/IDataHubStatusListener;
    .locals 1

    .line 140
    sget-object v0, Lcom/tct/internal/gpdatahub/IDataHubStatusListener$Stub$Proxy;->sDefaultImpl:Lcom/tct/internal/gpdatahub/IDataHubStatusListener;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/tct/internal/gpdatahub/IDataHubStatusListener;)Z
    .locals 1

    .line 133
    sget-object v0, Lcom/tct/internal/gpdatahub/IDataHubStatusListener$Stub$Proxy;->sDefaultImpl:Lcom/tct/internal/gpdatahub/IDataHubStatusListener;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 134
    sput-object p0, Lcom/tct/internal/gpdatahub/IDataHubStatusListener$Stub$Proxy;->sDefaultImpl:Lcom/tct/internal/gpdatahub/IDataHubStatusListener;

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
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "com.tct.internal.gpdatahub.IDataHubStatusListener"

    if-eq p1, v1, :cond_3

    const/4 v3, 0x2

    if-eq p1, v3, :cond_1

    const v0, 0x5f4e5446

    if-eq p1, v0, :cond_0

    .line 77
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 56
    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 69
    :cond_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    move v0, v1

    .line 72
    :cond_2
    invoke-virtual {p0, v0}, Lcom/tct/internal/gpdatahub/IDataHubStatusListener$Stub;->onDebugStateChanged(Z)V

    return v1

    .line 61
    :cond_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4

    move v0, v1

    .line 64
    :cond_4
    invoke-virtual {p0, v0}, Lcom/tct/internal/gpdatahub/IDataHubStatusListener$Stub;->onDataHubStateChanged(Z)V

    return v1
.end method
