.class final Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette$1;
.super Ljava/lang/Object;
.source "MaterialColorMapUtils.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;
    .locals 2

    .line 111
    new-instance v0, Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;-><init>(Landroid/os/Parcel;Lcom/android/contacts/common/util/MaterialColorMapUtils$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 108
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;
    .locals 0

    .line 116
    new-array p1, p1, [Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 108
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette$1;->newArray(I)[Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;

    move-result-object p1

    return-object p1
.end method
