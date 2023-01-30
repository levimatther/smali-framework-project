.class public abstract Lcom/gsma/services/rcs/extension/IMultimediaTelephony$Stub;
.super Landroid/os/Binder;
.source "IMultimediaTelephony.java"

# interfaces
.implements Lcom/gsma/services/rcs/extension/IMultimediaTelephony;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/extension/IMultimediaTelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/extension/IMultimediaTelephony$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.gsma.services.rcs.extension.IMultimediaTelephony"

.field static final TRANSACTION_setPreCallMsg:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.gsma.services.rcs.extension.IMultimediaTelephony"

    .line 28
    invoke-virtual {p0, p0, v0}, Lcom/gsma/services/rcs/extension/IMultimediaTelephony$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/extension/IMultimediaTelephony;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.gsma.services.rcs.extension.IMultimediaTelephony"

    .line 39
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 40
    instance-of v1, v0, Lcom/gsma/services/rcs/extension/IMultimediaTelephony;

    if-eqz v1, :cond_1

    .line 41
    check-cast v0, Lcom/gsma/services/rcs/extension/IMultimediaTelephony;

    return-object v0

    .line 43
    :cond_1
    new-instance v0, Lcom/gsma/services/rcs/extension/IMultimediaTelephony$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/gsma/services/rcs/extension/IMultimediaTelephony$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/gsma/services/rcs/extension/IMultimediaTelephony;
    .locals 1

    .line 160
    sget-object v0, Lcom/gsma/services/rcs/extension/IMultimediaTelephony$Stub$Proxy;->sDefaultImpl:Lcom/gsma/services/rcs/extension/IMultimediaTelephony;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/gsma/services/rcs/extension/IMultimediaTelephony;)Z
    .locals 1

    .line 150
    sget-object v0, Lcom/gsma/services/rcs/extension/IMultimediaTelephony$Stub$Proxy;->sDefaultImpl:Lcom/gsma/services/rcs/extension/IMultimediaTelephony;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 154
    sput-object p0, Lcom/gsma/services/rcs/extension/IMultimediaTelephony$Stub$Proxy;->sDefaultImpl:Lcom/gsma/services/rcs/extension/IMultimediaTelephony;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 151
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
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "com.gsma.services.rcs.extension.IMultimediaTelephony"

    if-eq p1, v0, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 91
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

    move-result v2

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    .line 66
    sget-object p1, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gsma/services/rcs/contact/ContactId;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    move-object v3, p1

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    move v5, v0

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    move v5, p1

    .line 76
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v10

    move-object v1, p0

    .line 85
    invoke-virtual/range {v1 .. v10}, Lcom/gsma/services/rcs/extension/IMultimediaTelephony$Stub;->setPreCallMsg(ILcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0
.end method
