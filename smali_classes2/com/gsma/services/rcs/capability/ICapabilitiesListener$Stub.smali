.class public abstract Lcom/gsma/services/rcs/capability/ICapabilitiesListener$Stub;
.super Landroid/os/Binder;
.source "ICapabilitiesListener.java"

# interfaces
.implements Lcom/gsma/services/rcs/capability/ICapabilitiesListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/capability/ICapabilitiesListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/capability/ICapabilitiesListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.gsma.services.rcs.capability.ICapabilitiesListener"

.field static final TRANSACTION_onCapabilitiesReceived:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.gsma.services.rcs.capability.ICapabilitiesListener"

    .line 28
    invoke-virtual {p0, p0, v0}, Lcom/gsma/services/rcs/capability/ICapabilitiesListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/capability/ICapabilitiesListener;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.gsma.services.rcs.capability.ICapabilitiesListener"

    .line 39
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 40
    instance-of v1, v0, Lcom/gsma/services/rcs/capability/ICapabilitiesListener;

    if-eqz v1, :cond_1

    .line 41
    check-cast v0, Lcom/gsma/services/rcs/capability/ICapabilitiesListener;

    return-object v0

    .line 43
    :cond_1
    new-instance v0, Lcom/gsma/services/rcs/capability/ICapabilitiesListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/gsma/services/rcs/capability/ICapabilitiesListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/gsma/services/rcs/capability/ICapabilitiesListener;
    .locals 1

    .line 146
    sget-object v0, Lcom/gsma/services/rcs/capability/ICapabilitiesListener$Stub$Proxy;->sDefaultImpl:Lcom/gsma/services/rcs/capability/ICapabilitiesListener;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/gsma/services/rcs/capability/ICapabilitiesListener;)Z
    .locals 1

    .line 136
    sget-object v0, Lcom/gsma/services/rcs/capability/ICapabilitiesListener$Stub$Proxy;->sDefaultImpl:Lcom/gsma/services/rcs/capability/ICapabilitiesListener;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 140
    sput-object p0, Lcom/gsma/services/rcs/capability/ICapabilitiesListener$Stub$Proxy;->sDefaultImpl:Lcom/gsma/services/rcs/capability/ICapabilitiesListener;

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

    const-string v1, "com.gsma.services.rcs.capability.ICapabilitiesListener"

    if-eq p1, v0, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 81
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 56
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 61
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 p3, 0x0

    if-eqz p1, :cond_2

    .line 64
    sget-object p1, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gsma/services/rcs/contact/ContactId;

    goto :goto_0

    :cond_2
    move-object p1, p3

    .line 70
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_3

    .line 71
    sget-object p3, Lcom/gsma/services/rcs/capability/Capabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object p3, p2

    check-cast p3, Lcom/gsma/services/rcs/capability/Capabilities;

    .line 76
    :cond_3
    invoke-virtual {p0, p1, p3}, Lcom/gsma/services/rcs/capability/ICapabilitiesListener$Stub;->onCapabilitiesReceived(Lcom/gsma/services/rcs/contact/ContactId;Lcom/gsma/services/rcs/capability/Capabilities;)V

    return v0
.end method
