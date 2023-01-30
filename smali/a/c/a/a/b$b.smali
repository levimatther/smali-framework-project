.class public abstract La/c/a/a/b$b;
.super Landroid/os/Binder;
.source "IUimGbaServiceCallback.java"

# interfaces
.implements La/c/a/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/c/a/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/c/a/a/b$b$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "com.qualcomm.qti.uimGba.IUimGbaServiceCallback"

.field public static final b:I = 0x1

.field public static final c:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.qualcomm.qti.uimGba.IUimGbaServiceCallback"

    .line 2
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static a()La/c/a/a/b;
    .locals 1

    .line 6
    sget-object v0, La/c/a/a/b$b$a;->b:La/c/a/a/b;

    return-object v0
.end method

.method public static a(Landroid/os/IBinder;)La/c/a/a/b;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.qualcomm.qti.uimGba.IUimGbaServiceCallback"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, La/c/a/a/b;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, La/c/a/a/b;

    return-object v0

    .line 5
    :cond_1
    new-instance v0, La/c/a/a/b$b$a;

    invoke-direct {v0, p0}, La/c/a/a/b$b$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static c(La/c/a/a/b;)Z
    .locals 1

    .line 1
    sget-object v0, La/c/a/a/b$b$a;->b:La/c/a/a/b;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 2
    sput-object p0, La/c/a/a/b$b$a;->b:La/c/a/a/b;

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
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "com.qualcomm.qti.uimGba.IUimGbaServiceCallback"

    if-eq p1, v1, :cond_3

    const/4 v3, 0x2

    if-eq p1, v3, :cond_1

    const v0, 0x5f4e5446

    if-eq p1, v0, :cond_0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 2
    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 26
    :cond_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 30
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 32
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 34
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p2

    .line 35
    invoke-interface {p0, p1, p4, v0, p2}, La/c/a/a/b;->a(IIZ[B)V

    .line 36
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 37
    :cond_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 41
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 43
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4

    move v5, v1

    goto :goto_0

    :cond_4
    move v5, v0

    .line 45
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 47
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    move-object v2, p0

    .line 50
    invoke-interface/range {v2 .. v8}, La/c/a/a/b;->a(IIZ[BLjava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1
.end method
