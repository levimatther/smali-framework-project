.class Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantWriteLock;
.super Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;
.source "CycleDetectingLockFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/CycleDetectingLockFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CycleDetectingReentrantWriteLock"
.end annotation


# instance fields
.field final readWriteLock:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadWriteLock;

.field final synthetic this$0:Lcom/google/common/util/concurrent/CycleDetectingLockFactory;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/CycleDetectingLockFactory;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadWriteLock;)V
    .locals 0

    .line 915
    iput-object p1, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantWriteLock;->this$0:Lcom/google/common/util/concurrent/CycleDetectingLockFactory;

    .line 916
    invoke-direct {p0, p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;-><init>(Ljava/util/concurrent/locks/ReentrantReadWriteLock;)V

    .line 917
    iput-object p2, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantWriteLock;->readWriteLock:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadWriteLock;

    return-void
.end method


# virtual methods
.method public lock()V
    .locals 2

    .line 922
    iget-object v0, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantWriteLock;->this$0:Lcom/google/common/util/concurrent/CycleDetectingLockFactory;

    iget-object v1, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantWriteLock;->readWriteLock:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadWriteLock;

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->access$600(Lcom/google/common/util/concurrent/CycleDetectingLockFactory;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;)V

    .line 924
    :try_start_0
    invoke-super {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 926
    iget-object v0, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantWriteLock;->readWriteLock:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadWriteLock;

    invoke-static {v0}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->access$700(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantWriteLock;->readWriteLock:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadWriteLock;

    invoke-static {v1}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->access$700(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;)V

    .line 927
    throw v0
.end method

.method public lockInterruptibly()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 932
    iget-object v0, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantWriteLock;->this$0:Lcom/google/common/util/concurrent/CycleDetectingLockFactory;

    iget-object v1, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantWriteLock;->readWriteLock:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadWriteLock;

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->access$600(Lcom/google/common/util/concurrent/CycleDetectingLockFactory;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;)V

    .line 934
    :try_start_0
    invoke-super {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lockInterruptibly()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 936
    iget-object v0, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantWriteLock;->readWriteLock:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadWriteLock;

    invoke-static {v0}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->access$700(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantWriteLock;->readWriteLock:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadWriteLock;

    invoke-static {v1}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->access$700(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;)V

    .line 937
    throw v0
.end method

.method public tryLock()Z
    .locals 2

    .line 942
    iget-object v0, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantWriteLock;->this$0:Lcom/google/common/util/concurrent/CycleDetectingLockFactory;

    iget-object v1, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantWriteLock;->readWriteLock:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadWriteLock;

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->access$600(Lcom/google/common/util/concurrent/CycleDetectingLockFactory;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;)V

    .line 944
    :try_start_0
    invoke-super {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->tryLock()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 946
    iget-object v1, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantWriteLock;->readWriteLock:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadWriteLock;

    invoke-static {v1}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->access$700(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;)V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantWriteLock;->readWriteLock:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadWriteLock;

    invoke-static {v1}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->access$700(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;)V

    .line 947
    throw v0
.end method

.method public tryLock(JLjava/util/concurrent/TimeUnit;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 952
    iget-object v0, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantWriteLock;->this$0:Lcom/google/common/util/concurrent/CycleDetectingLockFactory;

    iget-object v1, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantWriteLock;->readWriteLock:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadWriteLock;

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->access$600(Lcom/google/common/util/concurrent/CycleDetectingLockFactory;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;)V

    .line 954
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 956
    iget-object p2, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantWriteLock;->readWriteLock:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadWriteLock;

    invoke-static {p2}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->access$700(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;)V

    return p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantWriteLock;->readWriteLock:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadWriteLock;

    invoke-static {p2}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->access$700(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;)V

    .line 957
    throw p1
.end method

.method public unlock()V
    .locals 2

    .line 963
    :try_start_0
    invoke-super {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 965
    iget-object v0, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantWriteLock;->readWriteLock:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadWriteLock;

    invoke-static {v0}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->access$700(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantWriteLock;->readWriteLock:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadWriteLock;

    invoke-static {v1}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->access$700(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;)V

    .line 966
    throw v0
.end method
