.class Lcom/android/incallui/incall/impl/CheckableLabeledButton$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "CheckableLabeledButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/incall/impl/CheckableLabeledButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/incallui/incall/impl/CheckableLabeledButton$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final isChecked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 253
    new-instance v0, Lcom/android/incallui/incall/impl/CheckableLabeledButton$SavedState$1;

    invoke-direct {v0}, Lcom/android/incallui/incall/impl/CheckableLabeledButton$SavedState$1;-><init>()V

    sput-object v0, Lcom/android/incallui/incall/impl/CheckableLabeledButton$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 273
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 274
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/incallui/incall/impl/CheckableLabeledButton$SavedState;->isChecked:Z

    return-void
.end method

.method private constructor <init>(ZLandroid/os/Parcelable;)V
    .locals 0

    .line 268
    invoke-direct {p0, p2}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 269
    iput-boolean p1, p0, Lcom/android/incallui/incall/impl/CheckableLabeledButton$SavedState;->isChecked:Z

    return-void
.end method

.method synthetic constructor <init>(ZLandroid/os/Parcelable;Lcom/android/incallui/incall/impl/CheckableLabeledButton$1;)V
    .locals 0

    .line 251
    invoke-direct {p0, p1, p2}, Lcom/android/incallui/incall/impl/CheckableLabeledButton$SavedState;-><init>(ZLandroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 284
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 285
    iget-boolean p2, p0, Lcom/android/incallui/incall/impl/CheckableLabeledButton$SavedState;->isChecked:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
