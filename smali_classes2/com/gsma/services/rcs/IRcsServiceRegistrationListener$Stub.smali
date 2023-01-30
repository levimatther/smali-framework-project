.class public abstract Lcom/gsma/services/rcs/IRcsServiceRegistrationListener$Stub;
.super Landroid/os/Binder;
.source "IRcsServiceRegistrationListener.java"

# interfaces
.implements Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/IRcsServiceRegistrationListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.gsma.services.rcs.IRcsServiceRegistrationListener"

.field static final TRANSACTION_onServiceRegistered:I = 0x1

.field static final TRANSACTION_onServiceUnregistered:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.gsma.services.rcs.IRcsServiceRegistrationListener"

    .line 31
    invoke-virtual {p0, p0, v0}, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.gsma.services.rcs.IRcsServiceRegistrationListener"

    .line 42
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 43
    instance-of v1, v0, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;

    if-eqz v1, :cond_1

    .line 44
    check-cast v0, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;

    return-object v0

    .line 46
    :cond_1
    new-instance v0, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;
    .locals 1

    .line 146
    sget-object v0, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener$Stub$Proxy;->sDefaultImpl:Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;)Z
    .locals 1

    .line 136
    sget-object v0, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener$Stub$Proxy;->sDefaultImpl:Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 140
    sput-object p0, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener$Stub$Proxy;->sDefaultImpl:Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 137
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

    const-string v1, "com.gsma.services.rcs.IRcsServiceRegistrationListener"

    if-eq p1, v0, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 78
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 59
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 70
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 73
    invoke-virtual {p0, p1}, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener$Stub;->onServiceUnregistered(I)V

    return v0

    .line 64
    :cond_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener$Stub;->onServiceRegistered()V

    return v0
.end method
