.class public final enum La/d/a/e/a$b;
.super Ljava/lang/Enum;
.source "BaseObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/d/a/e/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "La/d/a/e/a$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:La/d/a/e/a$b;

.field public static final enum b:La/d/a/e/a$b;

.field public static final enum c:La/d/a/e/a$b;

.field public static final enum d:La/d/a/e/a$b;

.field public static final enum e:La/d/a/e/a$b;

.field public static final synthetic f:[La/d/a/e/a$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, La/d/a/e/a$b;

    const-string v1, "PARSE_ERROR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, La/d/a/e/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/d/a/e/a$b;->a:La/d/a/e/a$b;

    .line 5
    new-instance v0, La/d/a/e/a$b;

    const-string v1, "BAD_NETWORK"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, La/d/a/e/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/d/a/e/a$b;->b:La/d/a/e/a$b;

    .line 9
    new-instance v0, La/d/a/e/a$b;

    const-string v1, "CONNECT_ERROR"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, La/d/a/e/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/d/a/e/a$b;->c:La/d/a/e/a$b;

    .line 13
    new-instance v0, La/d/a/e/a$b;

    const-string v1, "CONNECT_TIMEOUT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, La/d/a/e/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/d/a/e/a$b;->d:La/d/a/e/a$b;

    .line 17
    new-instance v0, La/d/a/e/a$b;

    const-string v1, "UNKNOWN_ERROR"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, La/d/a/e/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/d/a/e/a$b;->e:La/d/a/e/a$b;

    const/4 v1, 0x5

    new-array v1, v1, [La/d/a/e/a$b;

    .line 18
    sget-object v7, La/d/a/e/a$b;->a:La/d/a/e/a$b;

    aput-object v7, v1, v2

    sget-object v2, La/d/a/e/a$b;->b:La/d/a/e/a$b;

    aput-object v2, v1, v3

    sget-object v2, La/d/a/e/a$b;->c:La/d/a/e/a$b;

    aput-object v2, v1, v4

    sget-object v2, La/d/a/e/a$b;->d:La/d/a/e/a$b;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, La/d/a/e/a$b;->f:[La/d/a/e/a$b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)La/d/a/e/a$b;
    .locals 1

    .line 1
    const-class v0, La/d/a/e/a$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, La/d/a/e/a$b;

    return-object p0
.end method

.method public static values()[La/d/a/e/a$b;
    .locals 1

    .line 1
    sget-object v0, La/d/a/e/a$b;->f:[La/d/a/e/a$b;

    invoke-virtual {v0}, [La/d/a/e/a$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [La/d/a/e/a$b;

    return-object v0
.end method
