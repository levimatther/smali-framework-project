.class final Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;
.super Ljava/lang/Object;
.source "ContactPhotoManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/ContactPhotoManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Request"
.end annotation


# instance fields
.field private final mDarkTheme:Z

.field private final mDefaultProvider:Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;

.field private final mId:J

.field private final mIsCircular:Z

.field private final mRequestedExtent:I

.field private final mUri:Landroid/net/Uri;


# direct methods
.method private constructor <init>(JLandroid/net/Uri;IZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;)V
    .locals 0

    .line 812
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 813
    iput-wide p1, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->mId:J

    .line 814
    iput-object p3, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->mUri:Landroid/net/Uri;

    .line 815
    iput-boolean p5, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->mDarkTheme:Z

    .line 816
    iput-boolean p6, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->mIsCircular:Z

    .line 817
    iput p4, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->mRequestedExtent:I

    .line 818
    iput-object p7, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->mDefaultProvider:Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;)Z
    .locals 0

    .line 796
    iget-boolean p0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->mIsCircular:Z

    return p0
.end method

.method static synthetic access$100(Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;)J
    .locals 2

    .line 796
    iget-wide v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->mId:J

    return-wide v0
.end method

.method public static createFromThumbnailId(JZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;)Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;
    .locals 9

    .line 823
    new-instance v8, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;

    const/4 v3, 0x0

    const/4 v4, -0x1

    move-object v0, v8

    move-wide v1, p0

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;-><init>(JLandroid/net/Uri;IZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;)V

    return-object v8
.end method

.method public static createFromUri(Landroid/net/Uri;IZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;)Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;
    .locals 9

    .line 832
    new-instance v8, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;

    const-wide/16 v1, 0x0

    move-object v0, v8

    move-object v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;-><init>(JLandroid/net/Uri;IZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;)V

    return-object v8
.end method


# virtual methods
.method public applyDefaultImage(Landroid/widget/ImageView;Z)V
    .locals 3

    if-eqz p2, :cond_1

    .line 906
    iget-object p2, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->mUri:Landroid/net/Uri;

    .line 907
    invoke-static {p2}, Lcom/android/contacts/common/ContactPhotoManager;->isBusinessContactUri(Landroid/net/Uri;)Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p2, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->EMPTY_CIRCULAR_BUSINESS_IMAGE_REQUEST:Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->EMPTY_CIRCULAR_DEFAULT_IMAGE_REQUEST:Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

    goto :goto_0

    .line 911
    :cond_1
    iget-object p2, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->mUri:Landroid/net/Uri;

    .line 912
    invoke-static {p2}, Lcom/android/contacts/common/ContactPhotoManager;->isBusinessContactUri(Landroid/net/Uri;)Z

    move-result p2

    if-eqz p2, :cond_2

    sget-object p2, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->EMPTY_DEFAULT_BUSINESS_IMAGE_REQUEST:Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

    goto :goto_0

    :cond_2
    sget-object p2, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->EMPTY_DEFAULT_IMAGE_REQUEST:Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

    .line 916
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->mDefaultProvider:Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;

    iget v1, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->mRequestedExtent:I

    iget-boolean v2, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->mDarkTheme:Z

    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;->applyDefaultImage(Landroid/widget/ImageView;IZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 870
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 873
    :cond_2
    check-cast p1, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;

    .line 874
    iget-wide v2, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->mId:J

    iget-wide v4, p1, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->mId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    return v1

    .line 877
    :cond_3
    iget v2, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->mRequestedExtent:I

    iget v3, p1, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->mRequestedExtent:I

    if-eq v2, v3, :cond_4

    return v1

    .line 880
    :cond_4
    iget-object v2, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->mUri:Landroid/net/Uri;

    iget-object p1, p1, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->mUri:Landroid/net/Uri;

    invoke-static {v2, p1}, Lcom/android/contacts/common/util/UriUtils;->areEqual(Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result p1

    if-nez p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public getId()J
    .locals 2

    .line 845
    iget-wide v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->mId:J

    return-wide v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 2

    .line 891
    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->mId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getRequestedExtent()I
    .locals 1

    .line 849
    iget v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->mRequestedExtent:I

    return v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 841
    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 856
    iget-wide v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->mId:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 857
    iget v2, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->mRequestedExtent:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 858
    iget-object v1, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->mUri:Landroid/net/Uri;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/net/Uri;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public isUriRequest()Z
    .locals 1

    .line 837
    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
