.class final Lcom/android/incallui/incall/impl/CheckableLabeledButton$SavedState$1;
.super Ljava/lang/Object;
.source "CheckableLabeledButton.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/incall/impl/CheckableLabeledButton$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/incallui/incall/impl/CheckableLabeledButton$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/incallui/incall/impl/CheckableLabeledButton$SavedState;
    .locals 1

    .line 257
    new-instance v0, Lcom/android/incallui/incall/impl/CheckableLabeledButton$SavedState;

    invoke-direct {v0, p1}, Lcom/android/incallui/incall/impl/CheckableLabeledButton$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 254
    invoke-virtual {p0, p1}, Lcom/android/incallui/incall/impl/CheckableLabeledButton$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/incallui/incall/impl/CheckableLabeledButton$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/android/incallui/incall/impl/CheckableLabeledButton$SavedState;
    .locals 0

    .line 262
    new-array p1, p1, [Lcom/android/incallui/incall/impl/CheckableLabeledButton$SavedState;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 254
    invoke-virtual {p0, p1}, Lcom/android/incallui/incall/impl/CheckableLabeledButton$SavedState$1;->newArray(I)[Lcom/android/incallui/incall/impl/CheckableLabeledButton$SavedState;

    move-result-object p1

    return-object p1
.end method
