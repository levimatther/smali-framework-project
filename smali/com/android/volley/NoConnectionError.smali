.class public Lcom/android/volley/NoConnectionError;
.super Lcom/android/volley/NetworkError;
.source "NoConnectionError.java"


# direct methods
.method public constructor <init>()V
    .locals 0

<<<<<<< HEAD
    .line 25
    invoke-direct {p0}, Lcom/android/volley/NetworkError;-><init>()V

=======
    .line 23
    invoke-direct {p0}, Lcom/android/volley/NetworkError;-><init>()V

    .line 24
>>>>>>> 4d1b24c5... Update volley
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/Throwable;

<<<<<<< HEAD
    .line 29
    invoke-direct {p0, p1}, Lcom/android/volley/NetworkError;-><init>(Ljava/lang/Throwable;)V

=======
    .line 27
    invoke-direct {p0, p1}, Lcom/android/volley/NetworkError;-><init>(Ljava/lang/Throwable;)V

    .line 28
>>>>>>> 4d1b24c5... Update volley
    return-void
.end method
