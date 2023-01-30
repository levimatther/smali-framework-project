.class final Lcom/tct/cs/services/rcs/enrichedcall/RCSMessage$1;
.super Ljava/lang/Object;
.source "RCSMessage.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tct/cs/services/rcs/enrichedcall/RCSMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/tct/cs/services/rcs/enrichedcall/RCSMessage;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/tct/cs/services/rcs/enrichedcall/RCSMessage;
    .locals 1

    .line 145
    new-instance v0, Lcom/tct/cs/services/rcs/enrichedcall/RCSMessage;

    invoke-direct {v0, p1}, Lcom/tct/cs/services/rcs/enrichedcall/RCSMessage;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 142
    invoke-virtual {p0, p1}, Lcom/tct/cs/services/rcs/enrichedcall/RCSMessage$1;->createFromParcel(Landroid/os/Parcel;)Lcom/tct/cs/services/rcs/enrichedcall/RCSMessage;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/tct/cs/services/rcs/enrichedcall/RCSMessage;
    .locals 0

    .line 150
    new-array p1, p1, [Lcom/tct/cs/services/rcs/enrichedcall/RCSMessage;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 142
    invoke-virtual {p0, p1}, Lcom/tct/cs/services/rcs/enrichedcall/RCSMessage$1;->newArray(I)[Lcom/tct/cs/services/rcs/enrichedcall/RCSMessage;

    move-result-object p1

    return-object p1
.end method
