.class final Lcom/tct/cs/services/rcs/enrichedcall/elements/callcomposer/CallComposerElements$1;
.super Ljava/lang/Object;
.source "CallComposerElements.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tct/cs/services/rcs/enrichedcall/elements/callcomposer/CallComposerElements;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/tct/cs/services/rcs/enrichedcall/elements/callcomposer/CallComposerElements;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/tct/cs/services/rcs/enrichedcall/elements/callcomposer/CallComposerElements;
    .locals 1

    .line 174
    new-instance v0, Lcom/tct/cs/services/rcs/enrichedcall/elements/callcomposer/CallComposerElements;

    invoke-direct {v0, p1}, Lcom/tct/cs/services/rcs/enrichedcall/elements/callcomposer/CallComposerElements;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 171
    invoke-virtual {p0, p1}, Lcom/tct/cs/services/rcs/enrichedcall/elements/callcomposer/CallComposerElements$1;->createFromParcel(Landroid/os/Parcel;)Lcom/tct/cs/services/rcs/enrichedcall/elements/callcomposer/CallComposerElements;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/tct/cs/services/rcs/enrichedcall/elements/callcomposer/CallComposerElements;
    .locals 0

    .line 179
    new-array p1, p1, [Lcom/tct/cs/services/rcs/enrichedcall/elements/callcomposer/CallComposerElements;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 171
    invoke-virtual {p0, p1}, Lcom/tct/cs/services/rcs/enrichedcall/elements/callcomposer/CallComposerElements$1;->newArray(I)[Lcom/tct/cs/services/rcs/enrichedcall/elements/callcomposer/CallComposerElements;

    move-result-object p1

    return-object p1
.end method
