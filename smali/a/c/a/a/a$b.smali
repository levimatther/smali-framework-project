.class public abstract La/c/a/a/a$b;
.super Landroid/os/Binder;
.source "IUimGbaService.java"

# interfaces
.implements La/c/a/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/c/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/c/a/a/a$b$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "com.qualcomm.qti.uimGba.IUimGbaService"

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x3

.field public static final e:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.qualcomm.qti.uimGba.IUimGbaService"

    .line 2
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static a()La/c/a/a/a;
    .locals 1

    .line 8
    sget-object v0, La/c/a/a/a$b$a;->b:La/c/a/a/a;

    return-object v0
.end method

.method public static a(Landroid/os/IBinder;)La/c/a/a/a;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.qualcomm.qti.uimGba.IUimGbaService"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, La/c/a/a/a;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, La/c/a/a/a;

    return-object v0

    .line 5
    :cond_1
    new-instance v0, La/c/a/a/a$b$a;

    invoke-direct {v0, p0}, La/c/a/a/a$b$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static a(La/c/a/a/a;)Z
    .locals 1

    .line 6
    sget-object v0, La/c/a/a/a$b$a;->b:La/c/a/a/a;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 7
    sput-object p0, La/c/a/a/a$b$a;->b:La/c/a/a/a;

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

    const/4 v0, 0x1

    const-string v1, "com.qualcomm.qti.uimGba.IUimGbaService"

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_6

    if-eq p1, v0, :cond_5

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eq p1, v2, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 2
    :cond_0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 8
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 10
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_1

    move v3, v0

    .line 11
    :cond_1
    invoke-interface {p0, p1, p4, v1, v3}, La/c/a/a/a;->a(IIBZ)I

    move-result p1

    .line 12
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 13
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 14
    :cond_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 18
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 20
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 22
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 24
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v6

    .line 26
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_3

    move v7, v0

    goto :goto_0

    :cond_3
    move v7, v3

    .line 28
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    move-object v1, p0

    move-object v3, p1

    .line 29
    invoke-interface/range {v1 .. v8}, La/c/a/a/a;->a(I[BLjava/lang/String;IBZLjava/lang/String;)I

    move-result p1

    .line 30
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 31
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 32
    :cond_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, La/c/a/a/b$b;->a(Landroid/os/IBinder;)La/c/a/a/b;

    move-result-object p1

    .line 35
    invoke-interface {p0, p1}, La/c/a/a/a;->a(La/c/a/a/b;)I

    move-result p1

    .line 36
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 37
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 38
    :cond_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, La/c/a/a/b$b;->a(Landroid/os/IBinder;)La/c/a/a/b;

    move-result-object p1

    .line 41
    invoke-interface {p0, p1}, La/c/a/a/a;->b(La/c/a/a/b;)I

    move-result p1

    .line 42
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 43
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 44
    :cond_6
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0
.end method
