.class public La/c/a/b/a$b;
.super Landroid/os/Handler;
.source "GbaClient4Qcom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/c/a/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:La/c/a/b/a;


# direct methods
.method public constructor <init>(La/c/a/b/a;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, La/c/a/b/a$b;->a:La/c/a/b/a;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    iget-object v1, p0, La/c/a/b/a$b;->a:La/c/a/b/a;

    invoke-static {v1}, La/c/a/b/a;->d(La/c/a/b/a;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, La/c/a/b/a$b;->a:La/c/a/b/a;

    invoke-static {p1}, La/c/a/b/a;->a(La/c/a/b/a;)La/d/a/h/c;

    move-result-object p1

    const-string v0, "QCT telephonyservice connected"

    invoke-virtual {p1, v0}, La/d/a/h/c;->a(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, La/c/a/b/a$b;->a:La/c/a/b/a;

    invoke-static {p1}, La/c/a/b/a;->e(La/c/a/b/a;)La/c/a/b/b;

    move-result-object p1

    iget-object v0, p0, La/c/a/b/a$b;->a:La/c/a/b/a;

    iget-object v0, v0, La/c/a/b/a;->h:La/c/a/b/c;

    invoke-virtual {p1, v0}, La/c/a/b/b;->b(La/c/a/b/c;)I

    .line 5
    iget-object p1, p0, La/c/a/b/a$b;->a:La/c/a/b/a;

    const/4 v0, 0x1

    invoke-static {p1, v0}, La/c/a/b/a;->a(La/c/a/b/a;Z)Z

    .line 6
    iget-object p1, p0, La/c/a/b/a$b;->a:La/c/a/b/a;

    invoke-static {p1}, La/c/a/b/a;->c(La/c/a/b/a;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 7
    :try_start_0
    iget-object v0, p0, La/c/a/b/a$b;->a:La/c/a/b/a;

    invoke-static {v0}, La/c/a/b/a;->c(La/c/a/b/a;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 8
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 11
    :cond_0
    iget-object p1, p0, La/c/a/b/a$b;->a:La/c/a/b/a;

    invoke-static {p1}, La/c/a/b/a;->a(La/c/a/b/a;)La/d/a/h/c;

    move-result-object p1

    const-string v0, "QCT telephonyservice disconnected"

    invoke-virtual {p1, v0}, La/d/a/h/c;->a(Ljava/lang/String;)V

    .line 12
    iget-object p1, p0, La/c/a/b/a$b;->a:La/c/a/b/a;

    const/4 v0, 0x0

    invoke-static {p1, v0}, La/c/a/b/a;->a(La/c/a/b/a;Z)Z

    :cond_1
    :goto_0
    return-void
.end method
