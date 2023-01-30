.class public final Lcom/android/dialer/about/License;
.super Ljava/lang/Object;
.source "License.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/dialer/about/License;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/dialer/about/License;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final libraryName:Ljava/lang/String;

.field private final licenseLength:I

.field private final licenseOffset:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Lcom/android/dialer/about/License$1;

    invoke-direct {v0}, Lcom/android/dialer/about/License$1;-><init>()V

    sput-object v0, Lcom/android/dialer/about/License;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/about/License;->libraryName:Ljava/lang/String;

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/dialer/about/License;->licenseOffset:J

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/android/dialer/about/License;->licenseLength:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/dialer/about/License$1;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/android/dialer/about/License;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;JI)V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/android/dialer/about/License;->libraryName:Ljava/lang/String;

    .line 78
    iput-wide p2, p0, Lcom/android/dialer/about/License;->licenseOffset:J

    .line 79
    iput p4, p0, Lcom/android/dialer/about/License;->licenseLength:I

    return-void
.end method

.method static create(Ljava/lang/String;JI)Lcom/android/dialer/about/License;
    .locals 1

    .line 38
    new-instance v0, Lcom/android/dialer/about/License;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/dialer/about/License;-><init>(Ljava/lang/String;JI)V

    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/android/dialer/about/License;)I
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/android/dialer/about/License;->libraryName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/dialer/about/License;->getLibraryName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 25
    check-cast p1, Lcom/android/dialer/about/License;

    invoke-virtual {p0, p1}, Lcom/android/dialer/about/License;->compareTo(Lcom/android/dialer/about/License;)I

    move-result p1

    return p1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method getLibraryName()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/android/dialer/about/License;->libraryName:Ljava/lang/String;

    return-object v0
.end method

.method getLicenseLength()I
    .locals 1

    .line 97
    iget v0, p0, Lcom/android/dialer/about/License;->licenseLength:I

    return v0
.end method

.method getLicenseOffset()J
    .locals 2

    .line 93
    iget-wide v0, p0, Lcom/android/dialer/about/License;->licenseOffset:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 73
    invoke-virtual {p0}, Lcom/android/dialer/about/License;->getLibraryName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 61
    iget-object p2, p0, Lcom/android/dialer/about/License;->libraryName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    iget-wide v0, p0, Lcom/android/dialer/about/License;->licenseOffset:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 63
    iget p2, p0, Lcom/android/dialer/about/License;->licenseLength:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
