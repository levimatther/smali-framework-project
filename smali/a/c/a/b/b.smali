.class public La/c/a/b/b;
.super Ljava/lang/Object;
.source "UimGbaManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/c/a/b/b$b;,
        La/c/a/b/b$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Landroid/content/Context;

.field public c:Ljava/lang/Boolean;

.field public d:La/c/a/b/b$a;

.field public e:La/c/a/a/a;

.field public f:Landroid/os/Handler;

.field public g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "UimGbaManager"

    .line 2
    iput-object v0, p0, La/c/a/b/b;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, La/c/a/b/b;->e:La/c/a/a/a;

    .line 13
    iput-object v0, p0, La/c/a/b/b;->f:Landroid/os/Handler;

    .line 22
    iput-object p1, p0, La/c/a/b/b;->b:Landroid/content/Context;

    .line 23
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, La/c/a/b/b;->c:Ljava/lang/Boolean;

    return-void
.end method

.method public static synthetic a(La/c/a/b/b;La/c/a/a/a;)La/c/a/a/a;
    .locals 0

    .line 1
    iput-object p1, p0, La/c/a/b/b;->e:La/c/a/a/a;

    return-object p1
.end method

.method public static synthetic a(La/c/a/b/b;)Ljava/lang/Boolean;
    .locals 0

    .line 2
    iget-object p0, p0, La/c/a/b/b;->c:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static synthetic a(La/c/a/b/b;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 3
    iput-object p1, p0, La/c/a/b/b;->c:Ljava/lang/Boolean;

    return-object p1
.end method

.method public static synthetic b(La/c/a/b/b;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, La/c/a/b/b;->f:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic c(La/c/a/b/b;)I
    .locals 0

    .line 1
    iget p0, p0, La/c/a/b/b;->g:I

    return p0
.end method


# virtual methods
.method public a(IIBZ)I
    .locals 2

    .line 50
    iget-object v0, p0, La/c/a/b/b;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "UimGbaManager"

    if-nez v0, :cond_0

    const-string p1, "service not connected!"

    .line 51
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x2

    return p1

    :cond_0
    const-string v0, "getImpiData"

    .line 55
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :try_start_0
    iget-object v0, p0, La/c/a/b/b;->e:La/c/a/a/a;

    invoke-interface {v0, p1, p2, p3, p4}, La/c/a/a/a;->a(IIBZ)I

    move-result p1

    if-nez p1, :cond_1

    .line 62
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getImpiData return "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "getImpiData, remote exception"

    .line 66
    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x1

    :cond_1
    :goto_0
    return p1
.end method

.method public a(I[BLjava/lang/String;IBZLjava/lang/String;)I
    .locals 11

    move-object v1, p0

    .line 31
    iget-object v0, v1, La/c/a/b/b;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v2, "UimGbaManager"

    if-nez v0, :cond_0

    const-string v0, "service not connected!"

    .line 32
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    return v0

    :cond_0
    const-string/jumbo v0, "uimGbaInit"

    .line 36
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :try_start_0
    iget-object v3, v1, La/c/a/b/b;->e:La/c/a/a/a;

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    invoke-interface/range {v3 .. v10}, La/c/a/a/a;->a(I[BLjava/lang/String;IBZLjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 44
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "uimGbaInit return "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v3, "uimGbaInit, remote exception"

    .line 48
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public a(La/c/a/b/c;)I
    .locals 2

    .line 18
    iget-object v0, p0, La/c/a/b/b;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "UimGbaManager"

    if-nez v0, :cond_0

    const-string p1, "service not connected!"

    .line 19
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x2

    return p1

    :cond_0
    const-string v0, "deregisterCallback"

    .line 23
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    :try_start_0
    iget-object v0, p0, La/c/a/b/b;->e:La/c/a/a/a;

    invoke-interface {v0, p1}, La/c/a/a/a;->a(La/c/a/a/b;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "deregisterCallback, remote exception"

    .line 29
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public a()V
    .locals 2

    const-string v0, "UimGbaManager"

    const-string v1, "release uim GBA Service"

    .line 15
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    iget-object v0, p0, La/c/a/b/b;->b:Landroid/content/Context;

    iget-object v1, p0, La/c/a/b/b;->d:La/c/a/b/b$a;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, La/c/a/b/b;->d:La/c/a/b/b$a;

    return-void
.end method

.method public a(Landroid/os/Handler;I)Z
    .locals 3

    .line 4
    iput-object p1, p0, La/c/a/b/b;->f:Landroid/os/Handler;

    .line 5
    iput p2, p0, La/c/a/b/b;->g:I

    const-string p1, "UimGbaManager"

    const-string p2, "Creating uim GBA Service, if not started start"

    .line 7
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 9
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.qualcomm.qti.uimGbaApp"

    const-string v2, "com.qualcomm.qti.uimGbaApp.GbaService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 11
    new-instance v0, La/c/a/b/b$a;

    invoke-direct {v0, p0}, La/c/a/b/b$a;-><init>(La/c/a/b/b;)V

    iput-object v0, p0, La/c/a/b/b;->d:La/c/a/b/b$a;

    .line 12
    iget-object v1, p0, La/c/a/b/b;->b:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v1, p2, v0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p2

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bind Service result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p2
.end method

.method public b(La/c/a/b/c;)I
    .locals 2

    .line 2
    iget-object v0, p0, La/c/a/b/b;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "UimGbaManager"

    if-nez v0, :cond_0

    const-string p1, "service not connected!"

    .line 3
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x2

    return p1

    :cond_0
    const-string v0, "registerCallback"

    .line 7
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    :try_start_0
    iget-object v0, p0, La/c/a/b/b;->e:La/c/a/a/a;

    invoke-interface {v0, p1}, La/c/a/a/a;->b(La/c/a/a/b;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "registerCallback, remote exception"

    .line 12
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x1

    :goto_0
    return p1
.end method
