.class public abstract Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener$Stub;
.super Landroid/os/Binder;
.source "IMultimediaStreamingSessionListener.java"

# interfaces
.implements Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.gsma.services.rcs.extension.IMultimediaStreamingSessionListener"

.field static final TRANSACTION_onPayloadReceived:I = 0x2

.field static final TRANSACTION_onStateChanged:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.gsma.services.rcs.extension.IMultimediaStreamingSessionListener"

    .line 31
    invoke-virtual {p0, p0, v0}, Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.gsma.services.rcs.extension.IMultimediaStreamingSessionListener"

    .line 42
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 43
    instance-of v1, v0, Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener;

    if-eqz v1, :cond_1

    .line 44
    check-cast v0, Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener;

    return-object v0

    .line 46
    :cond_1
    new-instance v0, Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener;
    .locals 1

    .line 186
    sget-object v0, Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener$Stub$Proxy;->sDefaultImpl:Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener;)Z
    .locals 1

    .line 176
    sget-object v0, Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener$Stub$Proxy;->sDefaultImpl:Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 180
    sput-object p0, Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener$Stub$Proxy;->sDefaultImpl:Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 177
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

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "com.gsma.services.rcs.extension.IMultimediaStreamingSessionListener"

    if-eq p1, v1, :cond_3

    const/4 v3, 0x2

    if-eq p1, v3, :cond_1

    const v0, 0x5f4e5446

    if-eq p1, v0, :cond_0

    .line 100
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 59
    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 83
    :cond_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    .line 86
    sget-object p1, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/gsma/services/rcs/contact/ContactId;

    .line 92
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p2

    .line 95
    invoke-virtual {p0, v0, p1, p2}, Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener$Stub;->onPayloadReceived(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;[B)V

    return v1

    .line 64
    :cond_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4

    .line 67
    sget-object p1, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/gsma/services/rcs/contact/ContactId;

    .line 73
    :cond_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 78
    invoke-virtual {p0, v0, p1, p3, p2}, Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener$Stub;->onStateChanged(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;II)V

    return v1
.end method
