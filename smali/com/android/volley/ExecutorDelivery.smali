.class public Lcom/android/volley/ExecutorDelivery;
.super Ljava/lang/Object;
.source "ExecutorDelivery.java"

# interfaces
.implements Lcom/android/volley/ResponseDelivery;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;
    }
.end annotation


# instance fields
.field private final mResponsePoster:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

<<<<<<< HEAD
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
=======
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
>>>>>>> 4d1b24c5... Update volley
    new-instance v0, Lcom/android/volley/ExecutorDelivery$1;

    invoke-direct {v0, p0, p1}, Lcom/android/volley/ExecutorDelivery$1;-><init>(Lcom/android/volley/ExecutorDelivery;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/volley/ExecutorDelivery;->mResponsePoster:Ljava/util/concurrent/Executor;

<<<<<<< HEAD
=======
    .line 41
>>>>>>> 4d1b24c5... Update volley
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 0
<<<<<<< HEAD

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/android/volley/ExecutorDelivery;->mResponsePoster:Ljava/util/concurrent/Executor;

=======
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/android/volley/ExecutorDelivery;->mResponsePoster:Ljava/util/concurrent/Executor;

    .line 50
>>>>>>> 4d1b24c5... Update volley
    return-void
.end method


# virtual methods
.method public postError(Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V
<<<<<<< HEAD
    .locals 3
=======
    .locals 4
    .param p2, "error"    # Lcom/android/volley/VolleyError;
>>>>>>> 4d1b24c5... Update volley
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "*>;",
            "Lcom/android/volley/VolleyError;",
            ")V"
        }
    .end annotation

<<<<<<< HEAD
=======
    .line 66
    .local p1, "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
>>>>>>> 4d1b24c5... Update volley
    const-string v0, "post-error"

    .line 71
    invoke-virtual {p1, v0}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

<<<<<<< HEAD
    .line 72
=======
    .line 67
>>>>>>> 4d1b24c5... Update volley
    invoke-static {p2}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object p2

<<<<<<< HEAD
    .line 73
    iget-object v0, p0, Lcom/android/volley/ExecutorDelivery;->mResponsePoster:Ljava/util/concurrent/Executor;
=======
    .line 68
    .local v0, "response":Lcom/android/volley/Response;, "Lcom/android/volley/Response<*>;"
    iget-object v1, p0, Lcom/android/volley/ExecutorDelivery;->mResponsePoster:Ljava/util/concurrent/Executor;
>>>>>>> 4d1b24c5... Update volley

    new-instance v1, Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;

    const/4 v2, 0x0

<<<<<<< HEAD
    invoke-direct {v1, p0, p1, p2, v2}, Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;-><init>(Lcom/android/volley/ExecutorDelivery;Lcom/android/volley/Request;Lcom/android/volley/Response;Ljava/lang/Runnable;)V
=======
    invoke-direct {v2, p1, v0, v3}, Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;-><init>(Lcom/android/volley/Request;Lcom/android/volley/Response;Ljava/lang/Runnable;)V
>>>>>>> 4d1b24c5... Update volley

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

<<<<<<< HEAD
=======
    .line 69
>>>>>>> 4d1b24c5... Update volley
    return-void
.end method

.method public postResponse(Lcom/android/volley/Request;Lcom/android/volley/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "*>;",
            "Lcom/android/volley/Response<",
            "*>;)V"
        }
    .end annotation

<<<<<<< HEAD
=======
    .line 54
    .local p1, "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    .local p2, "response":Lcom/android/volley/Response;, "Lcom/android/volley/Response<*>;"
>>>>>>> 4d1b24c5... Update volley
    const/4 v0, 0x0

    .line 59
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/volley/ExecutorDelivery;->postResponse(Lcom/android/volley/Request;Lcom/android/volley/Response;Ljava/lang/Runnable;)V

<<<<<<< HEAD
=======
    .line 55
>>>>>>> 4d1b24c5... Update volley
    return-void
.end method

.method public postResponse(Lcom/android/volley/Request;Lcom/android/volley/Response;Ljava/lang/Runnable;)V
    .locals 2
    .param p3, "runnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "*>;",
            "Lcom/android/volley/Response<",
            "*>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

<<<<<<< HEAD
    .line 64
    invoke-virtual {p1}, Lcom/android/volley/Request;->markDelivered()V

=======
    .line 59
    .local p1, "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    .local p2, "response":Lcom/android/volley/Response;, "Lcom/android/volley/Response<*>;"
    invoke-virtual {p1}, Lcom/android/volley/Request;->markDelivered()V

    .line 60
>>>>>>> 4d1b24c5... Update volley
    const-string v0, "post-response"

    .line 65
    invoke-virtual {p1, v0}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

<<<<<<< HEAD
    .line 66
=======
    .line 61
>>>>>>> 4d1b24c5... Update volley
    iget-object v0, p0, Lcom/android/volley/ExecutorDelivery;->mResponsePoster:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;-><init>(Lcom/android/volley/Request;Lcom/android/volley/Response;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

<<<<<<< HEAD
=======
    .line 62
>>>>>>> 4d1b24c5... Update volley
    return-void
.end method
