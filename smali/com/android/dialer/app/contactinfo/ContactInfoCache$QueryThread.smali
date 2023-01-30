.class Lcom/android/dialer/app/contactinfo/ContactInfoCache$QueryThread;
.super Ljava/lang/Thread;
.source "ContactInfoCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/app/contactinfo/ContactInfoCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryThread"
.end annotation


# instance fields
.field private volatile mDone:Z

.field final synthetic this$0:Lcom/android/dialer/app/contactinfo/ContactInfoCache;


# direct methods
.method public constructor <init>(Lcom/android/dialer/app/contactinfo/ContactInfoCache;)V
    .locals 0

    .line 415
    iput-object p1, p0, Lcom/android/dialer/app/contactinfo/ContactInfoCache$QueryThread;->this$0:Lcom/android/dialer/app/contactinfo/ContactInfoCache;

    const-string p1, "ContactInfoCache.QueryThread"

    .line 416
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 413
    iput-boolean p1, p0, Lcom/android/dialer/app/contactinfo/ContactInfoCache$QueryThread;->mDone:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x0

    :catch_0
    :goto_0
    move v1, v0

    .line 428
    :catch_1
    :cond_0
    iget-boolean v2, p0, Lcom/android/dialer/app/contactinfo/ContactInfoCache$QueryThread;->mDone:Z

    if-eqz v2, :cond_1

    return-void

    .line 433
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/dialer/app/contactinfo/ContactInfoCache$QueryThread;->this$0:Lcom/android/dialer/app/contactinfo/ContactInfoCache;

    invoke-static {v2}, Lcom/android/dialer/app/contactinfo/ContactInfoCache;->access$200(Lcom/android/dialer/app/contactinfo/ContactInfoCache;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/dialer/app/contactinfo/ContactInfoRequest;

    .line 434
    iget-object v3, p0, Lcom/android/dialer/app/contactinfo/ContactInfoCache$QueryThread;->this$0:Lcom/android/dialer/app/contactinfo/ContactInfoCache;

    invoke-static {v3, v2}, Lcom/android/dialer/app/contactinfo/ContactInfoCache;->access$300(Lcom/android/dialer/app/contactinfo/ContactInfoCache;Lcom/android/dialer/app/contactinfo/ContactInfoRequest;)Z

    move-result v3

    or-int/2addr v1, v3

    if-eqz v1, :cond_0

    .line 435
    iget-object v3, p0, Lcom/android/dialer/app/contactinfo/ContactInfoCache$QueryThread;->this$0:Lcom/android/dialer/app/contactinfo/ContactInfoCache;

    .line 436
    invoke-static {v3}, Lcom/android/dialer/app/contactinfo/ContactInfoCache;->access$200(Lcom/android/dialer/app/contactinfo/ContactInfoCache;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 437
    invoke-virtual {v2}, Lcom/android/dialer/app/contactinfo/ContactInfoRequest;->isLocalRequest()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/dialer/app/contactinfo/ContactInfoCache$QueryThread;->this$0:Lcom/android/dialer/app/contactinfo/ContactInfoCache;

    invoke-static {v2}, Lcom/android/dialer/app/contactinfo/ContactInfoCache;->access$200(Lcom/android/dialer/app/contactinfo/ContactInfoCache;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/dialer/app/contactinfo/ContactInfoRequest;

    invoke-virtual {v2}, Lcom/android/dialer/app/contactinfo/ContactInfoRequest;->isLocalRequest()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v2, :cond_0

    .line 439
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/android/dialer/app/contactinfo/ContactInfoCache$QueryThread;->this$0:Lcom/android/dialer/app/contactinfo/ContactInfoCache;

    invoke-static {v1}, Lcom/android/dialer/app/contactinfo/ContactInfoCache;->access$400(Lcom/android/dialer/app/contactinfo/ContactInfoCache;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public stopProcessing()V
    .locals 1

    const/4 v0, 0x1

    .line 420
    iput-boolean v0, p0, Lcom/android/dialer/app/contactinfo/ContactInfoCache$QueryThread;->mDone:Z

    return-void
.end method
