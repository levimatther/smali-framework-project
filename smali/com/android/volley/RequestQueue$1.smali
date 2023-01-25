.class Lcom/android/volley/RequestQueue$1;
.super Ljava/lang/Object;
.source "RequestQueue.java"

# interfaces
.implements Lcom/android/volley/RequestQueue$RequestFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/volley/RequestQueue;->cancelAll(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/volley/RequestQueue;

.field final synthetic val$tag:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/android/volley/RequestQueue;Ljava/lang/Object;)V
    .locals 0
<<<<<<< HEAD

    .line 245
=======
    .param p1, "this$0"    # Lcom/android/volley/RequestQueue;

    .line 240
>>>>>>> 4d1b24c5... Update volley
    iput-object p1, p0, Lcom/android/volley/RequestQueue$1;->this$0:Lcom/android/volley/RequestQueue;

    iput-object p2, p0, Lcom/android/volley/RequestQueue$1;->val$tag:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/android/volley/Request;)Z
<<<<<<< HEAD
    .locals 1
=======
    .locals 2
>>>>>>> 4d1b24c5... Update volley
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "*>;)Z"
        }
    .end annotation

<<<<<<< HEAD
    .line 248
    invoke-virtual {p1}, Lcom/android/volley/Request;->getTag()Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lcom/android/volley/RequestQueue$1;->val$tag:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1
=======
    .line 243
    .local p1, "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    invoke-virtual {p1}, Lcom/android/volley/Request;->getTag()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/android/volley/RequestQueue$1;->val$tag:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1
>>>>>>> 4d1b24c5... Update volley

    goto :goto_0

    :cond_0
<<<<<<< HEAD
    const/4 p1, 0x0

    :goto_0
    return p1
=======
    const/4 v0, 0x0

    :goto_0
    return v0
>>>>>>> 4d1b24c5... Update volley
.end method
