.class public synthetic La/d/a/e/a$a;
.super Ljava/lang/Object;
.source "BaseObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/d/a/e/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic a:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    invoke-static {}, La/d/a/e/a$b;->values()[La/d/a/e/a$b;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, La/d/a/e/a$a;->a:[I

    const/4 v1, 0x1

    const/4 v2, 0x2

    :try_start_0
    sget-object v3, La/d/a/e/a$b;->c:La/d/a/e/a$b;

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x3

    :try_start_1
    sget-object v3, La/d/a/e/a$a;->a:[I

    sget-object v4, La/d/a/e/a$b;->d:La/d/a/e/a$b;

    aput v2, v3, v0
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v2, La/d/a/e/a$a;->a:[I

    sget-object v3, La/d/a/e/a$b;->b:La/d/a/e/a$b;

    aput v0, v2, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v0, 0x4

    :try_start_3
    sget-object v1, La/d/a/e/a$a;->a:[I

    sget-object v2, La/d/a/e/a$b;->a:La/d/a/e/a$b;

    const/4 v2, 0x0

    aput v0, v1, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v1, La/d/a/e/a$a;->a:[I

    sget-object v2, La/d/a/e/a$b;->e:La/d/a/e/a$b;

    const/4 v2, 0x5

    aput v2, v1, v0
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    return-void
.end method
