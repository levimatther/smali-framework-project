.class public final La/b/a/b$a;
.super Ljava/lang/Object;
.source "NafSessionKey.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/b/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "La/b/a/b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)La/b/a/b;
    .locals 2

    .line 1
    new-instance v0, La/b/a/b;

    invoke-direct {v0}, La/b/a/b;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v0, v1}, La/b/a/b;->b(Ljava/lang/String;)V

    .line 8
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    if-eqz v1, :cond_1

    .line 11
    invoke-virtual {v0, v1}, La/b/a/b;->a([B)V

    .line 14
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 17
    invoke-virtual {v0, v1}, La/b/a/b;->c(Ljava/lang/String;)V

    .line 20
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 23
    invoke-virtual {v0, v1}, La/b/a/b;->d(Ljava/lang/String;)V

    .line 26
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 29
    invoke-virtual {v0, v1}, La/b/a/b;->a(Ljava/lang/String;)V

    .line 32
    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 36
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, La/b/a/b;->a(Ljava/lang/Exception;)V

    :cond_5
    return-object v0
.end method

.method public a(I)[La/b/a/b;
    .locals 0

    .line 37
    new-array p1, p1, [La/b/a/b;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, La/b/a/b$a;->a(Landroid/os/Parcel;)La/b/a/b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, La/b/a/b$a;->a(I)[La/b/a/b;

    move-result-object p1

    return-object p1
.end method
