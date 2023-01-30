.class Lcom/android/incallui/rtt/impl/RttCheckableButton$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "RttCheckableButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/rtt/impl/RttCheckableButton;
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
            "Lcom/android/incallui/rtt/impl/RttCheckableButton$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final isChecked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 205
    new-instance v0, Lcom/android/incallui/rtt/impl/RttCheckableButton$SavedState$1;

    invoke-direct {v0}, Lcom/android/incallui/rtt/impl/RttCheckableButton$SavedState$1;-><init>()V

    sput-object v0, Lcom/android/incallui/rtt/impl/RttCheckableButton$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 201
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/incallui/rtt/impl/RttCheckableButton$SavedState;->isChecked:Z

    return-void
.end method

.method private constructor <init>(ZLandroid/os/Parcelable;)V
    .locals 0

    .line 196
    invoke-direct {p0, p2}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 197
    iput-boolean p1, p0, Lcom/android/incallui/rtt/impl/RttCheckableButton$SavedState;->isChecked:Z

    return-void
.end method

.method synthetic constructor <init>(ZLandroid/os/Parcelable;Lcom/android/incallui/rtt/impl/RttCheckableButton$1;)V
    .locals 0

    .line 191
    invoke-direct {p0, p1, p2}, Lcom/android/incallui/rtt/impl/RttCheckableButton$SavedState;-><init>(ZLandroid/os/Parcelable;)V

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

    .line 225
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 226
    iget-boolean p2, p0, Lcom/android/incallui/rtt/impl/RttCheckableButton$SavedState;->isChecked:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
