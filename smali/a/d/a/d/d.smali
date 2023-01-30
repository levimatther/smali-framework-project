.class public La/d/a/d/d;
.super Ljava/lang/Object;
.source "HttpRetryInterceptor.java"

# interfaces
.implements Lokhttp3/Interceptor;


# instance fields
.field public a:I

.field public final b:J

.field public final c:J

.field public d:[I

.field public e:[I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 3
    iput v0, p0, La/d/a/d/d;->a:I

    const-wide/16 v1, 0x7530

    .line 4
    iput-wide v1, p0, La/d/a/d/d;->b:J

    const-wide/16 v1, 0x2710

    .line 5
    iput-wide v1, p0, La/d/a/d/d;->c:J

    const/16 v1, 0xb

    new-array v1, v1, [I

    .line 6
    fill-array-data v1, :array_0

    iput-object v1, p0, La/d/a/d/d;->d:[I

    new-array v0, v0, [I

    .line 7
    fill-array-data v0, :array_1

    iput-object v0, p0, La/d/a/d/d;->e:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1f4
        0x1f5
        0x1f6
        0x1f7
        0x1f9
        0x1fa
        0x1fb
        0x1fc
        0x1fd
        0x1fe
        0x1ff
    .end array-data

    :array_1
    .array-data 4
        0x198
        0x1f8
        0x257
    .end array-data
.end method

.method private a(Lokhttp3/Interceptor$Chain;Lokhttp3/Request;)Lokhttp3/Response;
    .locals 0

    .line 1
    :try_start_0
    invoke-interface {p1, p2}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1, v0}, La/d/a/d/d;->a(Lokhttp3/Interceptor$Chain;Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v1

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "code:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lokhttp3/Response;->code()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "HttpRetryInterceptor"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-eqz v1, :cond_0

    new-array v5, v4, [[I

    .line 5
    iget-object v6, p0, La/d/a/d/d;->e:[I

    aput-object v6, v5, v2

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v1}, Lokhttp3/Response;->code()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    iget v5, p0, La/d/a/d/d;->a:I

    if-gt v3, v5, :cond_1

    const-wide/16 v4, 0x7530

    .line 7
    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 9
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 12
    invoke-direct {p0, p1, v0}, La/d/a/d/d;->a(Lokhttp3/Interceptor$Chain;Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v1

    goto :goto_0

    :cond_1
    :goto_2
    if-eqz v1, :cond_2

    new-array v5, v4, [[I

    .line 16
    iget-object v6, p0, La/d/a/d/d;->d:[I

    aput-object v6, v5, v2

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v1}, Lokhttp3/Response;->code()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    iget v5, p0, La/d/a/d/d;->a:I

    if-gt v3, v5, :cond_3

    const-wide/16 v5, 0x2710

    .line 18
    :try_start_1
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v1

    .line 20
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_3
    add-int/lit8 v3, v3, 0x1

    .line 23
    invoke-direct {p0, p1, v0}, La/d/a/d/d;->a(Lokhttp3/Interceptor$Chain;Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v1

    goto :goto_2

    :cond_3
    return-object v1
.end method
