.class public Lcom/android/volley/VolleyError;
.super Ljava/lang/Exception;
.source "VolleyError.java"


# instance fields
.field public final networkResponse:Lcom/android/volley/NetworkResponse;

.field private networkTimeMs:J


# direct methods
.method public constructor <init>()V
    .locals 1

<<<<<<< HEAD
    .line 27
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

=======
    .line 25
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 26
>>>>>>> 4d1b24c5... Update volley
    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

<<<<<<< HEAD
=======
    .line 27
>>>>>>> 4d1b24c5... Update volley
    return-void
.end method

.method public constructor <init>(Lcom/android/volley/NetworkResponse;)V
    .locals 0
    .param p1, "response"    # Lcom/android/volley/NetworkResponse;

<<<<<<< HEAD
    .line 31
=======
    .line 29
>>>>>>> 4d1b24c5... Update volley
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

<<<<<<< HEAD
=======
    .line 31
>>>>>>> 4d1b24c5... Update volley
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
<<<<<<< HEAD
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 37
    iput-object p1, p0, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;
=======
    .locals 1
    .param p1, "exceptionMessage"    # Ljava/lang/String;

    .line 34
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "exceptionMessage"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/Throwable;

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    const/4 v0, 0x0
>>>>>>> 4d1b24c5... Update volley

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 42
    iput-object p1, p0, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

<<<<<<< HEAD
=======
    .line 41
>>>>>>> 4d1b24c5... Update volley
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
<<<<<<< HEAD
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    const/4 p1, 0x0
=======
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 44
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 45
    const/4 v0, 0x0
>>>>>>> 4d1b24c5... Update volley

    .line 47
    iput-object p1, p0, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

<<<<<<< HEAD
=======
    .line 46
>>>>>>> 4d1b24c5... Update volley
    return-void
.end method


# virtual methods
.method public getNetworkTimeMs()J
    .locals 2

<<<<<<< HEAD
    .line 55
=======
    .line 53
>>>>>>> 4d1b24c5... Update volley
    iget-wide v0, p0, Lcom/android/volley/VolleyError;->networkTimeMs:J

    return-wide v0
.end method

.method setNetworkTimeMs(J)V
    .locals 0
<<<<<<< HEAD

    .line 51
    iput-wide p1, p0, Lcom/android/volley/VolleyError;->networkTimeMs:J

=======
    .param p1, "networkTimeMs"    # J

    .line 49
    iput-wide p1, p0, Lcom/android/volley/VolleyError;->networkTimeMs:J

    .line 50
>>>>>>> 4d1b24c5... Update volley
    return-void
.end method
