.class public Lcom/android/volley/DefaultRetryPolicy;
.super Ljava/lang/Object;
.source "DefaultRetryPolicy.java"

# interfaces
.implements Lcom/android/volley/RetryPolicy;


# static fields
.field public static final DEFAULT_BACKOFF_MULT:F = 1.0f

<<<<<<< HEAD
.field public static final DEFAULT_MAX_RETRIES:I = 0x0
=======
.field public static final DEFAULT_MAX_RETRIES:I = 0x1
>>>>>>> 4d1b24c5... Update volley

.field public static final DEFAULT_TIMEOUT_MS:I = 0x9c4


# instance fields
.field private final mBackoffMultiplier:F

.field private mCurrentRetryCount:I

.field private mCurrentTimeoutMs:I

.field private final mMaxNumRetries:I


# direct methods
.method public constructor <init>()V
    .locals 3

<<<<<<< HEAD
=======
    .line 44
>>>>>>> 4d1b24c5... Update volley
    const/16 v0, 0x9c4

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 63
    invoke-direct {p0, v0, v1, v2}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

<<<<<<< HEAD
=======
    .line 45
>>>>>>> 4d1b24c5... Update volley
    return-void
.end method

.method public constructor <init>(IIF)V
    .locals 0
    .param p1, "initialTimeoutMs"    # I
    .param p2, "maxNumRetries"    # I
    .param p3, "backoffMultiplier"    # F

<<<<<<< HEAD
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput p1, p0, Lcom/android/volley/DefaultRetryPolicy;->mCurrentTimeoutMs:I

    .line 75
    iput p2, p0, Lcom/android/volley/DefaultRetryPolicy;->mMaxNumRetries:I

    .line 76
    iput p3, p0, Lcom/android/volley/DefaultRetryPolicy;->mBackoffMultiplier:F

=======
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput p1, p0, Lcom/android/volley/DefaultRetryPolicy;->mCurrentTimeoutMs:I

    .line 56
    iput p2, p0, Lcom/android/volley/DefaultRetryPolicy;->mMaxNumRetries:I

    .line 57
    iput p3, p0, Lcom/android/volley/DefaultRetryPolicy;->mBackoffMultiplier:F

    .line 58
>>>>>>> 4d1b24c5... Update volley
    return-void
.end method


# virtual methods
.method public getBackoffMultiplier()F
    .locals 1

<<<<<<< HEAD
    .line 105
=======
    .line 74
>>>>>>> 4d1b24c5... Update volley
    iget v0, p0, Lcom/android/volley/DefaultRetryPolicy;->mBackoffMultiplier:F

    return v0
.end method

.method public getCurrentRetryCount()I
    .locals 1

<<<<<<< HEAD
    .line 96
=======
    .line 69
>>>>>>> 4d1b24c5... Update volley
    iget v0, p0, Lcom/android/volley/DefaultRetryPolicy;->mCurrentRetryCount:I

    return v0
.end method

.method public getCurrentTimeout()I
    .locals 1

<<<<<<< HEAD
    .line 86
=======
    .line 63
>>>>>>> 4d1b24c5... Update volley
    iget v0, p0, Lcom/android/volley/DefaultRetryPolicy;->mCurrentTimeoutMs:I

    return v0
.end method

.method protected hasAttemptRemaining()Z
    .locals 2

<<<<<<< HEAD
    .line 129
=======
    .line 93
>>>>>>> 4d1b24c5... Update volley
    iget v0, p0, Lcom/android/volley/DefaultRetryPolicy;->mCurrentRetryCount:I

    iget v1, p0, Lcom/android/volley/DefaultRetryPolicy;->mMaxNumRetries:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public retry(Lcom/android/volley/VolleyError;)V
    .locals 3
    .param p1, "error"    # Lcom/android/volley/VolleyError;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/VolleyError;
        }
    .end annotation

<<<<<<< HEAD
    .line 115
=======
    .line 84
>>>>>>> 4d1b24c5... Update volley
    iget v0, p0, Lcom/android/volley/DefaultRetryPolicy;->mCurrentRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/volley/DefaultRetryPolicy;->mCurrentRetryCount:I

<<<<<<< HEAD
    .line 116
    iget v0, p0, Lcom/android/volley/DefaultRetryPolicy;->mCurrentTimeoutMs:I

    int-to-float v1, v0

    int-to-float v0, v0
=======
    .line 85
    iget v0, p0, Lcom/android/volley/DefaultRetryPolicy;->mCurrentTimeoutMs:I

    int-to-float v1, v0
>>>>>>> 4d1b24c5... Update volley

    iget v2, p0, Lcom/android/volley/DefaultRetryPolicy;->mBackoffMultiplier:F

    mul-float/2addr v0, v2

<<<<<<< HEAD
    add-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Lcom/android/volley/DefaultRetryPolicy;->mCurrentTimeoutMs:I

    .line 117
=======
    float-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/volley/DefaultRetryPolicy;->mCurrentTimeoutMs:I

    .line 86
>>>>>>> 4d1b24c5... Update volley
    invoke-virtual {p0}, Lcom/android/volley/DefaultRetryPolicy;->hasAttemptRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

<<<<<<< HEAD
    return-void

    .line 118
=======
    .line 89
    return-void

    .line 87
>>>>>>> 4d1b24c5... Update volley
    :cond_0
    throw p1
.end method
