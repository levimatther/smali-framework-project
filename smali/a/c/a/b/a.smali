.class public La/c/a/b/a;
.super Landroid/content/ContextWrapper;
.source "GbaClient4Qcom.java"


# instance fields
.field public a:La/d/a/h/c;

.field public b:La/c/a/b/b;

.field public volatile c:Z

.field public d:La/b/a/b;

.field public final e:Ljava/lang/Object;

.field public f:I

.field public g:I

.field public h:La/c/a/b/c;

.field public i:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 2
    const-class v0, La/c/a/b/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La/d/a/h/c;->b(Ljava/lang/String;)La/d/a/h/c;

    move-result-object v0

    iput-object v0, p0, La/c/a/b/a;->a:La/d/a/h/c;

    .line 7
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, La/c/a/b/a;->e:Ljava/lang/Object;

    .line 8
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, La/c/a/b/a;->f:I

    .line 9
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, La/c/a/b/a;->g:I

    .line 11
    new-instance v0, La/c/a/b/a$a;

    invoke-direct {v0, p0}, La/c/a/b/a$a;-><init>(La/c/a/b/a;)V

    iput-object v0, p0, La/c/a/b/a;->h:La/c/a/b/c;

    .line 34
    new-instance v0, La/c/a/b/a$b;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, La/c/a/b/a$b;-><init>(La/c/a/b/a;Landroid/os/Looper;)V

    iput-object v0, p0, La/c/a/b/a;->i:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, La/c/a/b/a;->c:Z

    .line 57
    new-instance v0, La/c/a/b/b;

    invoke-direct {v0, p1}, La/c/a/b/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, La/c/a/b/a;->b:La/c/a/b/b;

    return-void
.end method

.method public static synthetic a(La/c/a/b/a;La/b/a/b;)La/b/a/b;
    .locals 0

    .line 2
    iput-object p1, p0, La/c/a/b/a;->d:La/b/a/b;

    return-object p1
.end method

.method public static synthetic a(La/c/a/b/a;)La/d/a/h/c;
    .locals 0

    .line 1
    iget-object p0, p0, La/c/a/b/a;->a:La/d/a/h/c;

    return-object p0
.end method

.method private a()V
    .locals 3

    .line 4
    iget-object v0, p0, La/c/a/b/a;->a:La/d/a/h/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "serviceConnectionStatusId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, La/c/a/b/a;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, La/d/a/h/c;->a(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, La/c/a/b/a;->b:La/c/a/b/b;

    iget-object v1, p0, La/c/a/b/a;->i:Landroid/os/Handler;

    iget v2, p0, La/c/a/b/a;->f:I

    invoke-virtual {v0, v1, v2}, La/c/a/b/b;->a(Landroid/os/Handler;I)Z

    return-void
.end method

.method public static synthetic a(La/c/a/b/a;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, La/c/a/b/a;->c:Z

    return p1
.end method

.method public static synthetic b(La/c/a/b/a;)La/b/a/b;
    .locals 0

    .line 1
    iget-object p0, p0, La/c/a/b/a;->d:La/b/a/b;

    return-object p0
.end method

.method private b()Z
    .locals 3

    .line 2
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public static synthetic c(La/c/a/b/a;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, La/c/a/b/a;->e:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic d(La/c/a/b/a;)I
    .locals 0

    .line 1
    iget p0, p0, La/c/a/b/a;->f:I

    return p0
.end method

.method public static synthetic e(La/c/a/b/a;)La/c/a/b/b;
    .locals 0

    .line 1
    iget-object p0, p0, La/c/a/b/a;->b:La/c/a/b/b;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;[BZI)La/b/a/b;
    .locals 10

    .line 6
    iget-boolean p3, p0, La/c/a/b/a;->c:Z

    if-nez p3, :cond_0

    .line 7
    iget-object p3, p0, La/c/a/b/a;->a:La/d/a/h/c;

    const-string p4, "runGbaAuthentication QCT telephonyservice disconnected"

    invoke-virtual {p3, p4}, La/d/a/h/c;->a(Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, La/c/a/b/a;->a()V

    .line 9
    iget-object p3, p0, La/c/a/b/a;->e:Ljava/lang/Object;

    monitor-enter p3

    .line 11
    :try_start_0
    iget-object p4, p0, La/c/a/b/a;->a:La/d/a/h/c;

    const-string/jumbo v0, "wait service connection..."

    invoke-virtual {p4, v0}, La/d/a/h/c;->a(Ljava/lang/String;)V

    .line 12
    iget-object p4, p0, La/c/a/b/a;->e:Ljava/lang/Object;

    const-wide/16 v0, 0xbb8

    invoke-virtual {p4, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p4

    .line 14
    :try_start_1
    invoke-virtual {p4}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 16
    :goto_0
    monitor-exit p3

    goto :goto_2

    :goto_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_0
    :goto_2
    const-string p3, "fast.t-mobile.com"

    const-string p4, "tmus"

    .line 21
    iget-object v0, p0, La/c/a/b/a;->a:La/d/a/h/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mToken:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, La/c/a/b/a;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", nafSecureProtocolId:{0x01, 0x00, 0x01, 0x00, 0x2F}, nafFqdn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", slotId:0, applicationType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", forceBootStrapping:true, apn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, La/d/a/h/c;->a(Ljava/lang/String;)V

    .line 23
    iget-object v2, p0, La/c/a/b/a;->b:La/c/a/b/b;

    iget v3, p0, La/c/a/b/a;->g:I

    const/4 v6, 0x0

    const/4 v7, 0x5

    const/4 v8, 0x0

    .line 24
    invoke-direct {p0}, La/c/a/b/a;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v9, p4

    goto :goto_3

    :cond_1
    move-object v9, p3

    :goto_3
    move-object v4, p2

    move-object v5, p1

    .line 25
    invoke-virtual/range {v2 .. v9}, La/c/a/b/b;->a(I[BLjava/lang/String;IBZLjava/lang/String;)I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    .line 30
    iget-object p1, p0, La/c/a/b/a;->b:La/c/a/b/b;

    invoke-virtual {p1}, La/c/a/b/b;->a()V

    const/4 p1, 0x0

    .line 31
    iput-boolean p1, p0, La/c/a/b/a;->c:Z

    .line 32
    invoke-direct {p0}, La/c/a/b/a;->a()V

    const/4 p1, 0x0

    return-object p1

    :cond_2
    const/4 p1, 0x1

    .line 35
    iput-boolean p1, p0, La/c/a/b/a;->c:Z

    .line 37
    iget-object p1, p0, La/c/a/b/a;->e:Ljava/lang/Object;

    monitor-enter p1

    .line 39
    :try_start_2
    iget-object p2, p0, La/c/a/b/a;->a:La/d/a/h/c;

    const-string/jumbo p3, "wait GBA process..."

    invoke-virtual {p2, p3}, La/d/a/h/c;->a(Ljava/lang/String;)V

    .line 40
    iget-object p2, p0, La/c/a/b/a;->e:Ljava/lang/Object;

    const-wide/16 p3, 0x2710

    invoke-virtual {p2, p3, p4}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception p2

    goto :goto_5

    :catch_1
    move-exception p2

    .line 42
    :try_start_3
    invoke-virtual {p2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 44
    :goto_4
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 45
    iget-object p1, p0, La/c/a/b/a;->d:La/b/a/b;

    return-object p1

    .line 46
    :goto_5
    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p2
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 0

    const/4 p1, 0x5

    new-array p1, p1, [B

    .line 47
    fill-array-data p1, :array_0

    return-object p1

    nop

    :array_0
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x0t
        0x2ft
    .end array-data
.end method
