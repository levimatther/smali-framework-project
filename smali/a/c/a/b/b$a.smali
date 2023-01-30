.class public La/c/a/b/b$a;
.super Ljava/lang/Object;
.source "UimGbaManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/c/a/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:La/c/a/b/b;


# direct methods
.method public constructor <init>(La/c/a/b/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, La/c/a/b/b$a;->a:La/c/a/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string p1, "UimGbaManager"

    const-string v0, "On service connected, get the binder object"

    .line 1
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, La/c/a/b/b$a;->a:La/c/a/b/b;

    invoke-static {p2}, La/c/a/a/a$b;->a(Landroid/os/IBinder;)La/c/a/a/a;

    move-result-object p2

    invoke-static {v0, p2}, La/c/a/b/b;->a(La/c/a/b/b;La/c/a/a/a;)La/c/a/a/a;

    const-string p2, "gbaService obtained from the binder!!!!"

    .line 3
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object p2, p0, La/c/a/b/b$a;->a:La/c/a/b/b;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p2, v0}, La/c/a/b/b;->a(La/c/a/b/b;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 5
    iget-object p2, p0, La/c/a/b/b$a;->a:La/c/a/b/b;

    invoke-static {p2}, La/c/a/b/b;->b(La/c/a/b/b;)Landroid/os/Handler;

    move-result-object p2

    if-nez p2, :cond_0

    const-string p2, "ServiceStatusHandler is NULL"

    .line 6
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, La/c/a/b/b$a;->a:La/c/a/b/b;

    invoke-static {p1}, La/c/a/b/b;->b(La/c/a/b/b;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, La/c/a/b/b$a;->a:La/c/a/b/b;

    .line 9
    invoke-static {p2}, La/c/a/b/b;->c(La/c/a/b/b;)I

    move-result p2

    iget-object v0, p0, La/c/a/b/b$a;->a:La/c/a/b/b;

    invoke-static {v0}, La/c/a/b/b;->a(La/c/a/b/b;)Ljava/lang/Boolean;

    move-result-object v0

    .line 10
    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string p1, "UimGbaManager"

    const-string v0, "onServiceDisconnected, release the binder object"

    .line 1
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, La/c/a/b/b$a;->a:La/c/a/b/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, La/c/a/b/b;->a(La/c/a/b/b;La/c/a/a/a;)La/c/a/a/a;

    .line 3
    iget-object v0, p0, La/c/a/b/b$a;->a:La/c/a/b/b;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, La/c/a/b/b;->a(La/c/a/b/b;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 4
    iget-object v0, p0, La/c/a/b/b$a;->a:La/c/a/b/b;

    invoke-static {v0}, La/c/a/b/b;->b(La/c/a/b/b;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "ServiceStatusHandler is NULL"

    .line 5
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, La/c/a/b/b$a;->a:La/c/a/b/b;

    invoke-static {p1}, La/c/a/b/b;->b(La/c/a/b/b;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, La/c/a/b/b$a;->a:La/c/a/b/b;

    .line 8
    invoke-static {v0}, La/c/a/b/b;->c(La/c/a/b/b;)I

    move-result v0

    iget-object v1, p0, La/c/a/b/b$a;->a:La/c/a/b/b;

    invoke-static {v1}, La/c/a/b/b;->a(La/c/a/b/b;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void
.end method
