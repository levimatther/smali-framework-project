.class public Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;
.super Ljava/lang/Object;
.source "ContactPhotoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/ContactPhotoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultImageRequest"
.end annotation


# static fields
.field public static final EMPTY_CIRCULAR_BUSINESS_IMAGE_REQUEST:Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

.field public static final EMPTY_CIRCULAR_DEFAULT_IMAGE_REQUEST:Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

.field public static final EMPTY_DEFAULT_BUSINESS_IMAGE_REQUEST:Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

.field public static final EMPTY_DEFAULT_IMAGE_REQUEST:Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;


# instance fields
.field public contactType:I

.field public displayName:Ljava/lang/String;

.field public identifier:Ljava/lang/String;

.field public isCircular:Z

.field public offset:F

.field public scale:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 371
    new-instance v0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

    invoke-direct {v0}, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;-><init>()V

    sput-object v0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->EMPTY_DEFAULT_IMAGE_REQUEST:Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

    .line 376
    new-instance v0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v1, v2, v3}, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->EMPTY_DEFAULT_BUSINESS_IMAGE_REQUEST:Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

    .line 382
    new-instance v0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v1, v3}, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->EMPTY_CIRCULAR_DEFAULT_IMAGE_REQUEST:Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

    .line 388
    new-instance v0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

    invoke-direct {v0, v1, v1, v2, v3}, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->EMPTY_CIRCULAR_BUSINESS_IMAGE_REQUEST:Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 424
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 404
    iput v0, p0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->contactType:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 409
    iput v0, p0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->scale:F

    const/4 v0, 0x0

    .line 420
    iput v0, p0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->offset:F

    const/4 v0, 0x0

    .line 422
    iput-boolean v0, p0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->isCircular:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IFFZ)V
    .locals 1

    .line 447
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 404
    iput v0, p0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->contactType:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 409
    iput v0, p0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->scale:F

    const/4 v0, 0x0

    .line 420
    iput v0, p0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->offset:F

    const/4 v0, 0x0

    .line 422
    iput-boolean v0, p0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->isCircular:Z

    .line 448
    iput-object p1, p0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->displayName:Ljava/lang/String;

    .line 449
    iput-object p2, p0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->identifier:Ljava/lang/String;

    .line 450
    iput p3, p0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->contactType:I

    .line 451
    iput p4, p0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->scale:F

    .line 452
    iput p5, p0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->offset:F

    .line 453
    iput-boolean p6, p0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->isCircular:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 7

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v6, p4

    .line 438
    invoke-direct/range {v0 .. v6}, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;IFFZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    const/4 v3, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v6, p3

    .line 427
    invoke-direct/range {v0 .. v6}, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;IFFZ)V

    return-void
.end method
