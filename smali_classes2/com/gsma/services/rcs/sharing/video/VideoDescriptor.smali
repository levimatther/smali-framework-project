.class public Lcom/gsma/services/rcs/sharing/video/VideoDescriptor;
.super Ljava/lang/Object;
.source "VideoDescriptor.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/gsma/services/rcs/sharing/video/VideoDescriptor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mHeight:I

.field private final mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 92
    new-instance v0, Lcom/gsma/services/rcs/sharing/video/VideoDescriptor$1;

    invoke-direct {v0}, Lcom/gsma/services/rcs/sharing/video/VideoDescriptor$1;-><init>()V

    sput-object v0, Lcom/gsma/services/rcs/sharing/video/VideoDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput p1, p0, Lcom/gsma/services/rcs/sharing/video/VideoDescriptor;->mWidth:I

    .line 50
    iput p2, p0, Lcom/gsma/services/rcs/sharing/video/VideoDescriptor;->mHeight:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoDescriptor;->mWidth:I

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/gsma/services/rcs/sharing/video/VideoDescriptor;->mHeight:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 117
    iget v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoDescriptor;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 108
    iget v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoDescriptor;->mWidth:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 83
    iget p2, p0, Lcom/gsma/services/rcs/sharing/video/VideoDescriptor;->mWidth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    iget p2, p0, Lcom/gsma/services/rcs/sharing/video/VideoDescriptor;->mHeight:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
