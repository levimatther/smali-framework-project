.class final Lcom/tct/cs/services/rcs/enrichedcall/elements/postcall/PostCallElements$1;
.super Ljava/lang/Object;
.source "PostCallElements.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tct/cs/services/rcs/enrichedcall/elements/postcall/PostCallElements;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/tct/cs/services/rcs/enrichedcall/elements/postcall/PostCallElements;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/tct/cs/services/rcs/enrichedcall/elements/postcall/PostCallElements;
    .locals 1

    .line 107
    new-instance v0, Lcom/tct/cs/services/rcs/enrichedcall/elements/postcall/PostCallElements;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/tct/cs/services/rcs/enrichedcall/elements/postcall/PostCallElements;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 104
    invoke-virtual {p0, p1}, Lcom/tct/cs/services/rcs/enrichedcall/elements/postcall/PostCallElements$1;->createFromParcel(Landroid/os/Parcel;)Lcom/tct/cs/services/rcs/enrichedcall/elements/postcall/PostCallElements;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/tct/cs/services/rcs/enrichedcall/elements/postcall/PostCallElements;
    .locals 0

    .line 112
    new-array p1, p1, [Lcom/tct/cs/services/rcs/enrichedcall/elements/postcall/PostCallElements;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 104
    invoke-virtual {p0, p1}, Lcom/tct/cs/services/rcs/enrichedcall/elements/postcall/PostCallElements$1;->newArray(I)[Lcom/tct/cs/services/rcs/enrichedcall/elements/postcall/PostCallElements;

    move-result-object p1

    return-object p1
.end method
