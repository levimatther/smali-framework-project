.class public abstract La/d/a/e/a;
.super Ljava/lang/Object;
.source "BaseObserver.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/d/a/e/a$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final e:Ljava/lang/String; = "token_invalid"

.field public static final f:Ljava/lang/String; = "quit_app"

.field public static final g:Ljava/lang/String; = "\u7f51\u7edc\u8fde\u63a5\u5931\u8d25,\u8bf7\u68c0\u67e5\u7f51\u7edc"

.field public static final h:Ljava/lang/String; = "\u8fde\u63a5\u8d85\u65f6,\u8bf7\u7a0d\u540e\u518d\u8bd5"

.field public static final i:Ljava/lang/String; = "\u670d\u52a1\u5668\u5f02\u5e38"

.field public static final j:Ljava/lang/String; = "\u89e3\u6790\u670d\u52a1\u5668\u54cd\u5e94\u6570\u636e\u5931\u8d25"

.field public static final k:Ljava/lang/String; = "\u672a\u77e5\u9519\u8bef"

.field public static final l:Ljava/lang/String; = "\u670d\u52a1\u5668\u8fd4\u56de\u6570\u636e\u5931\u8d25"


# instance fields
.field public a:Ljava/lang/String;

.field public b:La/d/a/c/b;

.field public c:Landroid/content/Context;

.field public d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, La/d/a/e/a;->d:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, La/d/a/e/a;->d:Z

    .line 28
    iput-object p1, p0, La/d/a/e/a;->c:Landroid/content/Context;

    .line 29
    iput-boolean p2, p0, La/d/a/e/a;->d:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, La/d/a/e/a;->d:Z

    .line 65
    iput-object p1, p0, La/d/a/e/a;->c:Landroid/content/Context;

    .line 66
    iput-boolean p2, p0, La/d/a/e/a;->d:Z

    .line 67
    iput-object p3, p0, La/d/a/e/a;->a:Ljava/lang/String;

    return-void
.end method

.method private a()V
    .locals 1

    .line 48
    iget-object v0, p0, La/d/a/e/a;->b:La/d/a/c/b;

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {v0}, La/d/a/c/b;->a()V

    :cond_0
    return-void
.end method

.method private a(La/d/a/e/a$b;)V
    .locals 2

    .line 19
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    .line 38
    invoke-static {}, Lcom/tcl/netlibrary/util/AppContextUtils;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo v1, "\u672a\u77e5\u9519\u8bef"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 41
    :cond_0
    invoke-static {}, Lcom/tcl/netlibrary/util/AppContextUtils;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo v1, "\u8fde\u63a5\u8d85\u65f6,\u8bf7\u7a0d\u540e\u518d\u8bd5"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 42
    :cond_1
    invoke-static {}, Lcom/tcl/netlibrary/util/AppContextUtils;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo v1, "\u7f51\u7edc\u8fde\u63a5\u5931\u8d25,\u8bf7\u68c0\u67e5\u7f51\u7edc"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 40
    :cond_2
    invoke-static {}, Lcom/tcl/netlibrary/util/AppContextUtils;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo v1, "\u670d\u52a1\u5668\u5f02\u5e38"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 39
    :cond_3
    invoke-static {}, Lcom/tcl/netlibrary/util/AppContextUtils;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo v1, "\u89e3\u6790\u670d\u52a1\u5668\u54cd\u5e94\u6570\u636e\u5931\u8d25"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method private b()V
    .locals 0

    .line 1
    invoke-direct {p0}, La/d/a/e/a;->a()V

    return-void
.end method

.method private c()V
    .locals 1

    .line 1
    iget-boolean v0, p0, La/d/a/e/a;->d:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, La/d/a/e/a;->e()V

    :cond_0
    return-void
.end method

.method private d()V
    .locals 0

    return-void
.end method

.method private e()V
    .locals 3

    .line 1
    new-instance v0, La/d/a/c/b;

    invoke-direct {v0}, La/d/a/c/b;-><init>()V

    iput-object v0, p0, La/d/a/e/a;->b:La/d/a/c/b;

    .line 2
    iget-object v0, p0, La/d/a/e/a;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, La/d/a/e/a;->b:La/d/a/c/b;

    iget-object v1, p0, La/d/a/e/a;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, La/d/a/c/b;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, La/d/a/e/a;->b:La/d/a/c/b;

    iget-object v1, p0, La/d/a/e/a;->c:Landroid/content/Context;

    iget-object v2, p0, La/d/a/e/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, La/d/a/c/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 43
    invoke-static {p1}, La/d/a/f/a;->a(I)Ljava/lang/String;

    move-result-object p1

    .line 44
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 45
    invoke-static {}, Lcom/tcl/netlibrary/util/AppContextUtils;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo v0, "\u670d\u52a1\u5668\u8fd4\u56de\u6570\u636e\u5931\u8d25"

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 47
    :cond_0
    invoke-static {}, Lcom/tcl/netlibrary/util/AppContextUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public abstract a(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onErrorE : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseObserver"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    instance-of v0, p1, Lretrofit2/HttpException;

    if-eqz v0, :cond_0

    .line 4
    sget-object p1, La/d/a/e/a$b;->b:La/d/a/e/a$b;

    invoke-direct {p0, p1}, La/d/a/e/a;->a(La/d/a/e/a$b;)V

    goto :goto_2

    .line 5
    :cond_0
    instance-of v0, p1, Ljava/net/ConnectException;

    if-nez v0, :cond_5

    instance-of v0, p1, Ljava/net/UnknownHostException;

    if-eqz v0, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    instance-of v0, p1, Ljava/io/InterruptedIOException;

    if-eqz v0, :cond_2

    .line 10
    sget-object p1, La/d/a/e/a$b;->d:La/d/a/e/a$b;

    invoke-direct {p0, p1}, La/d/a/e/a;->a(La/d/a/e/a$b;)V

    goto :goto_2

    .line 11
    :cond_2
    instance-of v0, p1, Lcom/google/gson/JsonParseException;

    if-nez v0, :cond_4

    instance-of v0, p1, Lorg/json/JSONException;

    if-nez v0, :cond_4

    instance-of p1, p1, Ljava/text/ParseException;

    if-eqz p1, :cond_3

    goto :goto_0

    .line 16
    :cond_3
    sget-object p1, La/d/a/e/a$b;->e:La/d/a/e/a$b;

    invoke-direct {p0, p1}, La/d/a/e/a;->a(La/d/a/e/a$b;)V

    goto :goto_2

    .line 17
    :cond_4
    :goto_0
    sget-object p1, La/d/a/e/a$b;->a:La/d/a/e/a$b;

    invoke-direct {p0, p1}, La/d/a/e/a;->a(La/d/a/e/a$b;)V

    goto :goto_2

    .line 18
    :cond_5
    :goto_1
    sget-object p1, La/d/a/e/a$b;->c:La/d/a/e/a$b;

    invoke-direct {p0, p1}, La/d/a/e/a;->a(La/d/a/e/a$b;)V

    :goto_2
    return-void
.end method

.method public onComplete()V
    .locals 0

    .line 1
    invoke-direct {p0}, La/d/a/e/a;->b()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, La/d/a/e/a;->b()V

    .line 2
    invoke-virtual {p0, p1}, La/d/a/e/a;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, La/d/a/e/a;->b()V

    .line 2
    instance-of v0, p1, Lretrofit2/Response;

    if-eqz v0, :cond_1

    .line 3
    move-object v0, p1

    check-cast v0, Lretrofit2/Response;

    .line 4
    invoke-virtual {v0}, Lretrofit2/Response;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    :try_start_0
    invoke-virtual {p0, p1}, La/d/a/e/a;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 12
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lretrofit2/Response;->code()I

    move-result p1

    invoke-virtual {p0, p1}, La/d/a/e/a;->a(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 19
    :cond_1
    :try_start_2
    invoke-virtual {p0, p1}, La/d/a/e/a;->a(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, La/d/a/e/a;->c()V

    return-void
.end method
