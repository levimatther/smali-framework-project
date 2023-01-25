.class public Lcom/android/volley/Response;
.super Ljava/lang/Object;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/volley/Response$ErrorListener;,
        Lcom/android/volley/Response$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final cacheEntry:Lcom/android/volley/Cache$Entry;

.field public final error:Lcom/android/volley/VolleyError;

.field public intermediate:Z

.field public final result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/volley/VolleyError;)V
    .locals 1
<<<<<<< HEAD

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

=======
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .line 79
    .local p0, "this":Lcom/android/volley/Response;, "Lcom/android/volley/Response<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
>>>>>>> 4d1b24c5... Update volley
    const/4 v0, 0x0

    .line 93
    iput-boolean v0, p0, Lcom/android/volley/Response;->intermediate:Z

<<<<<<< HEAD
    const/4 v0, 0x0

    .line 113
    iput-object v0, p0, Lcom/android/volley/Response;->result:Ljava/lang/Object;

    .line 114
    iput-object v0, p0, Lcom/android/volley/Response;->cacheEntry:Lcom/android/volley/Cache$Entry;

    .line 115
    iput-object p1, p0, Lcom/android/volley/Response;->error:Lcom/android/volley/VolleyError;

=======
    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/volley/Response;->result:Ljava/lang/Object;

    .line 81
    iput-object v0, p0, Lcom/android/volley/Response;->cacheEntry:Lcom/android/volley/Cache$Entry;

    .line 82
    iput-object p1, p0, Lcom/android/volley/Response;->error:Lcom/android/volley/VolleyError;

    .line 83
>>>>>>> 4d1b24c5... Update volley
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)V
    .locals 1
    .param p2, "cacheEntry"    # Lcom/android/volley/Cache$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/android/volley/Cache$Entry;",
            ")V"
        }
    .end annotation

<<<<<<< HEAD
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

=======
    .line 73
    .local p0, "this":Lcom/android/volley/Response;, "Lcom/android/volley/Response<TT;>;"
    .local p1, "result":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
>>>>>>> 4d1b24c5... Update volley
    const/4 v0, 0x0

    .line 93
    iput-boolean v0, p0, Lcom/android/volley/Response;->intermediate:Z

<<<<<<< HEAD
    .line 107
    iput-object p1, p0, Lcom/android/volley/Response;->result:Ljava/lang/Object;

    .line 108
    iput-object p2, p0, Lcom/android/volley/Response;->cacheEntry:Lcom/android/volley/Cache$Entry;

    const/4 p1, 0x0
=======
    .line 74
    iput-object p1, p0, Lcom/android/volley/Response;->result:Ljava/lang/Object;

    .line 75
    iput-object p2, p0, Lcom/android/volley/Response;->cacheEntry:Lcom/android/volley/Cache$Entry;

    .line 76
    const/4 v0, 0x0
>>>>>>> 4d1b24c5... Update volley

    .line 109
    iput-object p1, p0, Lcom/android/volley/Response;->error:Lcom/android/volley/VolleyError;

<<<<<<< HEAD
=======
    .line 77
>>>>>>> 4d1b24c5... Update volley
    return-void
.end method

.method public static error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;
    .locals 1
    .param p0, "error"    # Lcom/android/volley/VolleyError;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/volley/VolleyError;",
            ")",
            "Lcom/android/volley/Response<",
            "TT;>;"
        }
    .end annotation

<<<<<<< HEAD
    .line 72
=======
    .line 53
>>>>>>> 4d1b24c5... Update volley
    new-instance v0, Lcom/android/volley/Response;

    invoke-direct {v0, p0}, Lcom/android/volley/Response;-><init>(Lcom/android/volley/VolleyError;)V

    return-object v0
.end method

.method public static success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;
    .locals 1
    .param p1, "cacheEntry"    # Lcom/android/volley/Cache$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/android/volley/Cache$Entry;",
            ")",
            "Lcom/android/volley/Response<",
            "TT;>;"
        }
    .end annotation

<<<<<<< HEAD
    .line 60
=======
    .line 45
    .local p0, "result":Ljava/lang/Object;, "TT;"
>>>>>>> 4d1b24c5... Update volley
    new-instance v0, Lcom/android/volley/Response;

    invoke-direct {v0, p0, p1}, Lcom/android/volley/Response;-><init>(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)V

    return-object v0
.end method


# virtual methods
.method public isSuccess()Z
    .locals 1

<<<<<<< HEAD
    .line 102
=======
    .line 70
    .local p0, "this":Lcom/android/volley/Response;, "Lcom/android/volley/Response<TT;>;"
>>>>>>> 4d1b24c5... Update volley
    iget-object v0, p0, Lcom/android/volley/Response;->error:Lcom/android/volley/VolleyError;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
